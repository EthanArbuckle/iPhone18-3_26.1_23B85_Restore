@interface _WTLightEffectPalette
+ (id)coolColors;
+ (id)finaleSweep;
+ (id)ponderingLightEdge;
+ (id)ponderingLightEdgeDestination;
+ (id)ponderingPurple;
+ (id)ponderingSweep;
+ (id)replaceBuildIn;
+ (id)replaceBuildOut;
+ (id)replaceDestinationColors;
+ (id)replaceDestinationSweepMask;
+ (id)replaceSourceSweepMask;
+ (id)warmColors;
@end

@implementation _WTLightEffectPalette

+ (id)coolColors
{
  v18[7] = *MEMORY[0x1E69E9840];
  v17 = [_WTColor colorWithHue:0.67 saturation:1.0 brightness:0.81 alpha:0.0];
  v16 = [_WTLocatedColor locatedColor:v17 location:0.0];
  v18[0] = v16;
  v15 = [_WTColor colorWithHue:0.67 saturation:1.0 brightness:0.81 alpha:0.04];
  v14 = [_WTLocatedColor locatedColor:v15 location:0.16];
  v18[1] = v14;
  v13 = [_WTColor colorWithHue:0.72 saturation:1.0 brightness:0.81 alpha:0.38];
  v2 = [_WTLocatedColor locatedColor:v13 location:0.48];
  v18[2] = v2;
  v3 = [_WTColor colorWithHue:0.76 saturation:0.96 brightness:0.99 alpha:0.53];
  v4 = [_WTLocatedColor locatedColor:v3 location:0.59];
  v18[3] = v4;
  v5 = [_WTColor colorWithHue:0.8 saturation:0.96 brightness:0.99 alpha:0.78];
  v6 = [_WTLocatedColor locatedColor:v5 location:0.78];
  v18[4] = v6;
  v7 = [_WTColor colorWithHue:0.81 saturation:1.0 brightness:1.0 alpha:1.0];
  v8 = [_WTLocatedColor locatedColor:v7 location:0.94];
  v18[5] = v8;
  v9 = [_WTColor colorWithHue:0.12 saturation:1.0 brightness:1.0 alpha:0.0];
  v10 = [_WTLocatedColor locatedColor:v9 location:0.99];
  v18[6] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:7];

  return v11;
}

+ (id)warmColors
{
  v14[5] = *MEMORY[0x1E69E9840];
  v13 = [_WTColor colorWithHue:0.76 saturation:0.73 brightness:1.0 alpha:0.0];
  v2 = [_WTLocatedColor locatedColor:v13 location:0.0];
  v14[0] = v2;
  v3 = [_WTColor colorWithHue:0.76 saturation:0.73 brightness:1.0 alpha:0.21];
  v4 = [_WTLocatedColor locatedColor:v3 location:0.33];
  v14[1] = v4;
  v5 = [_WTColor colorWithHue:0.95 saturation:0.96 brightness:0.99 alpha:0.8];
  v6 = [_WTLocatedColor locatedColor:v5 location:0.6];
  v14[2] = v6;
  v7 = [_WTColor colorWithHue:0.11 saturation:1.0 brightness:1.0 alpha:1.0];
  v8 = [_WTLocatedColor locatedColor:v7 location:0.8];
  v14[3] = v8;
  v9 = [_WTColor colorWithHue:0.12 saturation:1.0 brightness:1.0 alpha:0.0];
  v10 = [_WTLocatedColor locatedColor:v9 location:1.0];
  v14[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];

  return v11;
}

+ (id)replaceSourceSweepMask
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = [_WTColor colorWithHue:1.0 saturation:1.0 brightness:1.0 alpha:0.0];
  v3 = [_WTLocatedColor locatedColor:v2 location:0.0];
  v12[0] = v3;
  v4 = [_WTColor colorWithHue:1.0 saturation:1.0 brightness:1.0 alpha:0.0];
  v5 = [_WTLocatedColor locatedColor:v4 location:0.9];
  v12[1] = v5;
  v6 = [_WTColor colorWithHue:1.0 saturation:1.0 brightness:1.0 alpha:1.0];
  v7 = [_WTLocatedColor locatedColor:v6 location:0.95];
  v12[2] = v7;
  v8 = [_WTColor colorWithHue:1.0 saturation:1.0 brightness:1.0 alpha:1.0];
  v9 = [_WTLocatedColor locatedColor:v8 location:1.0];
  v12[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  return v10;
}

+ (id)replaceDestinationSweepMask
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = [_WTColor colorWithHue:1.0 saturation:1.0 brightness:1.0 alpha:1.0];
  v3 = [_WTLocatedColor locatedColor:v2 location:0.0];
  v12[0] = v3;
  v4 = [_WTColor colorWithHue:1.0 saturation:1.0 brightness:1.0 alpha:1.0];
  v5 = [_WTLocatedColor locatedColor:v4 location:0.85];
  v12[1] = v5;
  v6 = [_WTColor colorWithHue:1.0 saturation:1.0 brightness:1.0 alpha:0.0];
  v7 = [_WTLocatedColor locatedColor:v6 location:0.9];
  v12[2] = v7;
  v8 = [_WTColor colorWithHue:1.0 saturation:1.0 brightness:1.0 alpha:0.0];
  v9 = [_WTLocatedColor locatedColor:v8 location:1.0];
  v12[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  return v10;
}

+ (id)replaceDestinationColors
{
  v18[7] = *MEMORY[0x1E69E9840];
  v17 = [_WTColor colorWithRed:0.489 green:0.631 blue:0.845 alpha:0.0];
  v16 = [_WTLocatedColor locatedColor:v17 location:0.0];
  v18[0] = v16;
  v15 = [_WTColor colorWithRed:0.49 green:0.631 blue:0.847 alpha:0.5];
  v14 = [_WTLocatedColor locatedColor:v15 location:0.31];
  v18[1] = v14;
  v13 = [_WTColor colorWithRed:0.801 green:0.615 blue:0.875 alpha:0.72];
  v2 = [_WTLocatedColor locatedColor:v13 location:0.59];
  v18[2] = v2;
  v3 = [_WTColor colorWithHue:0.986 saturation:0.349 brightness:0.948 alpha:1.0];
  v4 = [_WTLocatedColor locatedColor:v3 location:0.7];
  v18[3] = v4;
  v5 = [_WTColor colorWithHue:0.121 saturation:0.319 brightness:0.864 alpha:1.0];
  v6 = [_WTLocatedColor locatedColor:v5 location:0.8];
  v18[4] = v6;
  v7 = [_WTColor colorWithHue:0.057 saturation:0.092 brightness:0.95 alpha:1.0];
  v8 = [_WTLocatedColor locatedColor:v7 location:0.94];
  v18[5] = v8;
  v9 = [_WTColor colorWithHue:0.129 saturation:1.0 brightness:1.0 alpha:0.0];
  v10 = [_WTLocatedColor locatedColor:v9 location:1.0];
  v18[6] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:7];

  return v11;
}

+ (id)ponderingSweep
{
  v18[7] = *MEMORY[0x1E69E9840];
  v17 = [_WTColor colorWithHue:0.665 saturation:1.0 brightness:0.81 alpha:0.0];
  v16 = [_WTLocatedColor locatedColor:v17 location:0.0];
  v18[0] = v16;
  v15 = [_WTColor colorWithHue:0.67 saturation:0.333 brightness:0.94 alpha:0.2];
  v14 = [_WTLocatedColor locatedColor:v15 location:0.15];
  v18[1] = v14;
  v13 = [_WTColor colorWithHue:0.727 saturation:0.554 brightness:0.92 alpha:0.38];
  v2 = [_WTLocatedColor locatedColor:v13 location:0.37];
  v18[2] = v2;
  v3 = [_WTColor colorWithHue:0.73 saturation:0.402 brightness:0.88 alpha:0.57];
  v4 = [_WTLocatedColor locatedColor:v3 location:0.59];
  v18[3] = v4;
  v5 = [_WTColor colorWithHue:0.75 saturation:0.493 brightness:0.91 alpha:0.79];
  v6 = [_WTLocatedColor locatedColor:v5 location:0.78];
  v18[4] = v6;
  v7 = [_WTColor colorWithHue:0.75 saturation:0.49 brightness:0.93 alpha:1.0];
  v8 = [_WTLocatedColor locatedColor:v7 location:0.9];
  v18[5] = v8;
  v9 = [_WTColor colorWithHue:0.0 saturation:1.0 brightness:1.0 alpha:0.0];
  v10 = [_WTLocatedColor locatedColor:v9 location:1.0];
  v18[6] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:7];

  return v11;
}

+ (id)ponderingLightEdge
{
  v16[6] = *MEMORY[0x1E69E9840];
  v15 = [_WTColor colorWithRed:1.6 green:1.6 blue:1.6 alpha:0.0];
  v14 = [_WTLocatedColor locatedColor:v15 location:0.0];
  v16[0] = v14;
  v13 = [_WTColor colorWithRed:1.6 green:1.6 blue:1.6 alpha:0.07];
  v12 = [_WTLocatedColor locatedColor:v13 location:0.5];
  v16[1] = v12;
  v2 = [_WTColor colorWithRed:1.6 green:1.6 blue:1.6 alpha:0.53];
  v3 = [_WTLocatedColor locatedColor:v2 location:0.75];
  v16[2] = v3;
  v4 = [_WTColor colorWithRed:1.6 green:1.6 blue:1.6 alpha:1.0];
  v5 = [_WTLocatedColor locatedColor:v4 location:0.8];
  v16[3] = v5;
  v6 = [_WTColor colorWithRed:1.6 green:1.6 blue:1.6 alpha:1.0];
  v7 = [_WTLocatedColor locatedColor:v6 location:0.98];
  v16[4] = v7;
  v8 = [_WTColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v9 = [_WTLocatedColor locatedColor:v8 location:1.0];
  v16[5] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];

  return v10;
}

+ (id)ponderingLightEdgeDestination
{
  v14[5] = *MEMORY[0x1E69E9840];
  v13 = [_WTColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v2 = [_WTLocatedColor locatedColor:v13 location:0.0];
  v14[0] = v2;
  v3 = [_WTColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v4 = [_WTLocatedColor locatedColor:v3 location:0.8];
  v14[1] = v4;
  v5 = [_WTColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
  v6 = [_WTLocatedColor locatedColor:v5 location:0.86];
  v14[2] = v6;
  v7 = [_WTColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v8 = [_WTLocatedColor locatedColor:v7 location:0.87];
  v14[3] = v8;
  v9 = [_WTColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v10 = [_WTLocatedColor locatedColor:v9 location:0.95];
  v14[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];

  return v11;
}

+ (id)finaleSweep
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = +[_WTColor redColor];
  v3 = +[_WTColor greenColor];
  v11[1] = v3;
  v4 = +[_WTColor blueColor];
  v11[2] = v4;
  v5 = +[_WTColor redColor];
  v11[3] = v5;
  v6 = +[_WTColor greenColor];
  v11[4] = v6;
  v7 = +[_WTColor blueColor];
  v11[5] = v7;
  v8 = +[_WTColor redColor];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

+ (id)ponderingPurple
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [_WTColor colorWithRed:0.804 green:0.612 blue:0.867 alpha:0.0];
  v10[0] = v2;
  v3 = [_WTColor colorWithRed:0.804 green:0.612 blue:0.867 alpha:1.0];
  v10[1] = v3;
  v4 = [_WTColor colorWithRed:0.682 green:0.51 blue:0.796 alpha:1.0];
  v10[2] = v4;
  v5 = [_WTColor colorWithRed:0.686 green:0.421 blue:0.87 alpha:1.0];
  v10[3] = v5;
  v6 = [_WTColor colorWithRed:1.0 green:0.796 blue:1.0 alpha:1.0];
  v10[4] = v6;
  v7 = [_WTColor colorWithRed:0.682 green:0.51 blue:0.796 alpha:0.0];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)replaceBuildOut
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [_WTColor colorWithRed:0.925 green:0.553 blue:0.918 alpha:1.0];
  v6[0] = v2;
  v3 = [_WTColor colorWithRed:0.604 green:0.431 blue:0.843 alpha:1.0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)replaceBuildIn
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [_WTColor colorWithRed:0.475 green:0.345 blue:0.773 alpha:1.0];
  v8[0] = v2;
  v3 = [_WTColor colorWithRed:0.812 green:0.518 blue:0.4 alpha:1.0];
  v8[1] = v3;
  v4 = [_WTColor colorWithRed:0.945 green:0.678 blue:0.388 alpha:1.0];
  v8[2] = v4;
  v5 = [_WTColor colorWithWhite:1.0 alpha:1.0];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

@end