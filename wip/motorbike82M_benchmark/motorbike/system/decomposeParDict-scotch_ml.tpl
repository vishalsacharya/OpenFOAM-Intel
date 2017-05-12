/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  2.2.0                                 |
|   \\  /    A nd           | Web:      www.OpenFOAM.org                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       dictionary;
    location    "system";
    object      decomposeParDict;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

numberOfSubdomains #NPROCS#;

method          multiLevel;

multiLevelCoeffs
{
    level0
    {
        numberOfSubdomains #NNODES#;
        method scotch;
    }
    level1
    {
        numberOfSubdomains #PPN#;
        method scotch;
    }
}

scotchCoeffs
{
}

// ************************************************************************* //
