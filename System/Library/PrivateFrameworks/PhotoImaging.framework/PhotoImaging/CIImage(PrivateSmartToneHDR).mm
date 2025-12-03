@interface CIImage(PrivateSmartToneHDR)
- (id)smartToneHDRStatistics;
@end

@implementation CIImage(PrivateSmartToneHDR)

- (id)smartToneHDRStatistics
{
  v1 = MEMORY[0x1EEE9AC00](self);
  v64[2] = *MEMORY[0x1E69E9840];
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  properties = [v1 properties];

  if (!properties)
  {
    NSLog(&cfstr_WarningSmartto.isa);
  }

  properties2 = [v1 properties];
  v4 = [properties2 valueForKey:*MEMORY[0x1E696D9B0]];
  v5 = [v4 valueForKey:*MEMORY[0x1E696D9F0]];

  v6 = 1.0;
  if (v5)
  {
    if ([v5 intValue])
    {
      v6 = 0.6;
    }

    else
    {
      v6 = 1.0;
    }
  }

  v51 = v5;
  context = objc_autoreleasePoolPush();
  v7 = MEMORY[0x1E695F620];
  v63[0] = *MEMORY[0x1E695F870];
  v8 = MEMORY[0x1E696AD98];
  v9 = *MEMORY[0x1E695F920];
  v10 = v1;
  v11 = [v8 numberWithInt:v9];
  v63[1] = *MEMORY[0x1E695F830];
  v64[0] = v11;
  v64[1] = @"PISmartToneFilterHDR-histogram";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
  v48 = [v7 contextWithOptions:v12];

  [v10 extent];
  v67 = CGRectIntegral(v66);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v17 = v67.size.width;
  v18 = v67.size.height;
  v19 = 4 * v67.size.width;
  v20 = [MEMORY[0x1E695DF88] dataWithLength:v19 * v67.size.height];
  bytes = [v20 bytes];
  v61[0] = @"inputRVector";
  v47 = [MEMORY[0x1E695F688] vectorWithX:0.333333333 Y:0.333333333 Z:0.333333333 W:0.0];
  v62[0] = v47;
  v61[1] = @"inputGVector";
  v46 = [MEMORY[0x1E695F688] vectorWithX:0.166666667 Y:0.166666667 Z:0.166666667 W:0.0];
  v62[1] = v46;
  v61[2] = @"inputBVector";
  v21 = [MEMORY[0x1E695F688] vectorWithX:-1.0 Y:-1.0 Z:-1.0 W:0.0];
  v62[2] = v21;
  v61[3] = @"inputAVector";
  v22 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
  v62[3] = v22;
  v61[4] = @"inputBiasVector";
  v23 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  v62[4] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:5];
  v25 = [v10 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v24];

  mutableBytes = [v20 mutableBytes];
  [v48 render:v25 toBitmap:mutableBytes rowBytes:v19 bounds:*MEMORY[0x1E695F910] format:0 colorSpace:{x, y, width, height}];
  bzero(v60, 0x1000uLL);
  if (v18)
  {
    v27 = 0;
    v28 = 1.0 / (v18 * v17);
    v29 = (bytes + 2);
    while (1)
    {
      v30 = v29;
      v31 = v17;
      if (v17)
      {
        break;
      }

LABEL_17:
      ++v27;
      v29 += v19;
      if (v27 == v18)
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      v32 = *v30;
      v33 = *(v30 - 1);
      v60[*(v30 - 2)] = v28 + v60[*(v30 - 2)];
      if (v33 < 0)
      {
        break;
      }

      if (v32)
      {
        goto LABEL_15;
      }

LABEL_16:
      v30 += 4;
      if (!--v31)
      {
        goto LABEL_17;
      }
    }

    v60[2 * v33] = v28 + v60[2 * v33];
    if (!v32)
    {
      goto LABEL_16;
    }

LABEL_15:
    v60[v32 + 255] = v28 + v60[v32 + 255];
    goto LABEL_16;
  }

LABEL_18:

  objc_autoreleasePoolPop(context);
  smart_tone_stats_from_histogram(v60, 0x100uLL, 256, &v52);
  v58[0] = @"tonalRange";
  contexta = [MEMORY[0x1E696AD98] numberWithDouble:*&v52];
  v59[0] = contexta;
  v58[1] = @"highKey";
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v52 + 1)];
  v59[1] = v34;
  v58[2] = @"p02";
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:*&v53];
  v59[2] = v35;
  v58[3] = @"p10";
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v53 + 1)];
  v59[3] = v36;
  v58[4] = @"p25";
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:*&v54];
  v59[4] = v37;
  v58[5] = @"p50";
  v38 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v54 + 1)];
  v59[5] = v38;
  v58[6] = @"p98";
  v39 = [MEMORY[0x1E696AD98] numberWithDouble:*&v55];
  v59[6] = v39;
  v58[7] = @"autoValue";
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:v6 * *(&v55 + 1)];
  v59[7] = v40;
  v58[8] = @"blackPoint";
  v41 = [MEMORY[0x1E696AD98] numberWithDouble:*&v56];
  v59[8] = v41;
  v58[9] = @"whitePoint";
  v42 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v56 + 1)];
  v59[9] = v42;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:10];

  return v43;
}

@end