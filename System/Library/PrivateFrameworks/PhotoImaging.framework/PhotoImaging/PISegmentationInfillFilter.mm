@interface PISegmentationInfillFilter
+ (BOOL)isMLInpaintingAvailable;
+ (id)blackInfillImage:(id)a3 matte:(id)a4;
+ (id)fastInfillImage:(id)a3 matte:(id)a4;
+ (id)inpaintingInfillImage:(id)a3 matte:(id)a4;
+ (id)watchInfillImage:(id)a3 matte:(id)a4;
- (id)outputImage;
@end

@implementation PISegmentationInfillFilter

+ (id)inpaintingInfillImage:(id)a3 matte:(id)a4
{
  v14[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [PISegmentationHelper invertImage:a4];
  v7 = MEMORY[0x1E695F648];
  v8 = *MEMORY[0x1E695FAC8];
  v13[0] = *MEMORY[0x1E695FAB0];
  v13[1] = v8;
  v14[0] = v5;
  v14[1] = v6;
  v13[2] = @"inputInpaintingMode";
  v14[2] = &unk_1F471E8E0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v10 = [v7 filterWithName:@"CIInpaintingFilter" withInputParameters:v9];

  v11 = [v10 outputImage];

  return v11;
}

+ (id)watchInfillImage:(id)a3 matte:(id)a4
{
  v5 = MEMORY[0x1E695F620];
  v6 = a4;
  v7 = a3;
  v8 = [v5 context];
  memset(&v31, 0, sizeof(v31));
  [v7 extent];
  v10 = 1024.0 / v9;
  [v7 extent];
  CGAffineTransformMakeScale(&v31, v10, 1024.0 / v11);
  memset(&v30, 0, sizeof(v30));
  [v7 extent];
  v13 = v12 * 0.0009765625;
  [v7 extent];
  CGAffineTransformMakeScale(&v30, v13, v14 * 0.0009765625);
  memset(&v29, 0, sizeof(v29));
  [v6 extent];
  v16 = 1024.0 / v15;
  [v6 extent];
  CGAffineTransformMakeScale(&v29, v16, 1024.0 / v17);
  v28 = v31;
  v18 = [v7 imageByApplyingTransform:&v28 highQualityDownsample:1];
  v28 = v29;
  v19 = [v6 imageByApplyingTransform:&v28 highQualityDownsample:1];
  [v18 extent];
  v20 = [v8 createCGImage:v18 fromRect:?];
  [v19 extent];
  v21 = [v8 createCGImage:v19 fromRect:?];
  v22 = [PIRepairUtilities newWatchInfillFromImage:v20 mask:v21];
  v23 = [MEMORY[0x1E695F658] imageWithCGImage:v22];
  CGImageRelease(v20);
  CGImageRelease(v21);
  CGImageRelease(v22);
  v28 = v30;
  v24 = [v23 imageByApplyingTransform:&v28 highQualityDownsample:1];
  v25 = [PISegmentationHelper foregroundForImage:v24 matte:v6];

  v26 = [v25 imageByCompositingOverImage:v7];

  return v26;
}

+ (id)fastInfillImage:(id)a3 matte:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695F648];
  v6 = a4;
  v7 = a3;
  v8 = [v5 blendWithRedMaskFilter];
  [v8 setBackgroundImage:0];
  [v8 setInputImage:v7];
  v9 = [PISegmentationHelper invertImage:v6];

  [v8 setMaskImage:v9];
  v10 = [v8 outputImage];
  [v7 extent];
  v11 = [v10 imageByCroppingToRect:?];

  [v7 extent];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v23[0] = v11;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v21 = [(CIImageProcessorKernel *)PISegmentationInwardFillProcessor applyWithExtent:v20 inputs:MEMORY[0x1E695E0F8] arguments:0 error:v13, v15, v17, v19];

  return v21;
}

+ (id)blackInfillImage:(id)a3 matte:(id)a4
{
  v5 = MEMORY[0x1E695F648];
  v6 = a4;
  v7 = a3;
  v8 = [v5 blendWithMaskFilter];
  v9 = MEMORY[0x1E695F658];
  v10 = [MEMORY[0x1E695F610] blackColor];
  v11 = [v9 imageWithColor:v10];
  [v8 setBackgroundImage:v11];

  [v8 setInputImage:v7];
  v12 = [PISegmentationHelper invertImage:v6];

  [v8 setMaskImage:v12];
  v13 = [v8 outputImage];
  [v7 extent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [v13 imageByCroppingToRect:{v15, v17, v19, v21}];

  return v22;
}

+ (BOOL)isMLInpaintingAvailable
{
  if (isMLInpaintingAvailable_once != -1)
  {
    dispatch_once(&isMLInpaintingAvailable_once, &__block_literal_global_1437);
  }

  return isMLInpaintingAvailable_canUseMLInfill;
}

void __53__PISegmentationInfillFilter_isMLInpaintingAvailable__block_invoke()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  isMLInpaintingAvailable_canUseMLInfill = [v0 fileExistsAtPath:@"/System/Library/Frameworks/CoreImage.framework/inp_gen_eds2_00_q16.espresso.weights"];
}

- (id)outputImage
{
  v3 = [(PISegmentationInfillFilter *)self inputImage];
  v4 = [(PISegmentationInfillFilter *)self inputMatteImage];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [(PISegmentationInfillFilter *)self infillAlgorithm];
    v8 = 5;
    if (v7)
    {
      v8 = v7;
    }

    if (v8 > 3)
    {
      if (v8 == 4)
      {
        v9 = [objc_opt_class() fastInfillImage:v3 matte:v5];
        goto LABEL_15;
      }

      if (v8 == 5)
      {
        v9 = v3;
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 == 2)
      {
        v9 = [objc_opt_class() watchInfillImage:v3 matte:v5];
        goto LABEL_15;
      }

      if (v8 == 3)
      {
        v9 = [objc_opt_class() inpaintingInfillImage:v3 matte:v5];
LABEL_15:
        v6 = v9;
        goto LABEL_16;
      }
    }

    v9 = [objc_opt_class() blackInfillImage:v3 matte:v5];
    goto LABEL_15;
  }

LABEL_16:

  return v6;
}

@end