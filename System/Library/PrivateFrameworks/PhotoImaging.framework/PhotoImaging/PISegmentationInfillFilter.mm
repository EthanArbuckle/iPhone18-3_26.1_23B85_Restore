@interface PISegmentationInfillFilter
+ (BOOL)isMLInpaintingAvailable;
+ (id)blackInfillImage:(id)image matte:(id)matte;
+ (id)fastInfillImage:(id)image matte:(id)matte;
+ (id)inpaintingInfillImage:(id)image matte:(id)matte;
+ (id)watchInfillImage:(id)image matte:(id)matte;
- (id)outputImage;
@end

@implementation PISegmentationInfillFilter

+ (id)inpaintingInfillImage:(id)image matte:(id)matte
{
  v14[3] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v6 = [PISegmentationHelper invertImage:matte];
  v7 = MEMORY[0x1E695F648];
  v8 = *MEMORY[0x1E695FAC8];
  v13[0] = *MEMORY[0x1E695FAB0];
  v13[1] = v8;
  v14[0] = imageCopy;
  v14[1] = v6;
  v13[2] = @"inputInpaintingMode";
  v14[2] = &unk_1F471E8E0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v10 = [v7 filterWithName:@"CIInpaintingFilter" withInputParameters:v9];

  outputImage = [v10 outputImage];

  return outputImage;
}

+ (id)watchInfillImage:(id)image matte:(id)matte
{
  v5 = MEMORY[0x1E695F620];
  matteCopy = matte;
  imageCopy = image;
  context = [v5 context];
  memset(&v31, 0, sizeof(v31));
  [imageCopy extent];
  v10 = 1024.0 / v9;
  [imageCopy extent];
  CGAffineTransformMakeScale(&v31, v10, 1024.0 / v11);
  memset(&v30, 0, sizeof(v30));
  [imageCopy extent];
  v13 = v12 * 0.0009765625;
  [imageCopy extent];
  CGAffineTransformMakeScale(&v30, v13, v14 * 0.0009765625);
  memset(&v29, 0, sizeof(v29));
  [matteCopy extent];
  v16 = 1024.0 / v15;
  [matteCopy extent];
  CGAffineTransformMakeScale(&v29, v16, 1024.0 / v17);
  v28 = v31;
  v18 = [imageCopy imageByApplyingTransform:&v28 highQualityDownsample:1];
  v28 = v29;
  v19 = [matteCopy imageByApplyingTransform:&v28 highQualityDownsample:1];
  [v18 extent];
  v20 = [context createCGImage:v18 fromRect:?];
  [v19 extent];
  v21 = [context createCGImage:v19 fromRect:?];
  v22 = [PIRepairUtilities newWatchInfillFromImage:v20 mask:v21];
  v23 = [MEMORY[0x1E695F658] imageWithCGImage:v22];
  CGImageRelease(v20);
  CGImageRelease(v21);
  CGImageRelease(v22);
  v28 = v30;
  v24 = [v23 imageByApplyingTransform:&v28 highQualityDownsample:1];
  v25 = [PISegmentationHelper foregroundForImage:v24 matte:matteCopy];

  v26 = [v25 imageByCompositingOverImage:imageCopy];

  return v26;
}

+ (id)fastInfillImage:(id)image matte:(id)matte
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695F648];
  matteCopy = matte;
  imageCopy = image;
  blendWithRedMaskFilter = [v5 blendWithRedMaskFilter];
  [blendWithRedMaskFilter setBackgroundImage:0];
  [blendWithRedMaskFilter setInputImage:imageCopy];
  v9 = [PISegmentationHelper invertImage:matteCopy];

  [blendWithRedMaskFilter setMaskImage:v9];
  outputImage = [blendWithRedMaskFilter outputImage];
  [imageCopy extent];
  v11 = [outputImage imageByCroppingToRect:?];

  [imageCopy extent];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v23[0] = v11;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v21 = [(CIImageProcessorKernel *)PISegmentationInwardFillProcessor applyWithExtent:v20 inputs:MEMORY[0x1E695E0F8] arguments:0 error:v13, v15, v17, v19];

  return v21;
}

+ (id)blackInfillImage:(id)image matte:(id)matte
{
  v5 = MEMORY[0x1E695F648];
  matteCopy = matte;
  imageCopy = image;
  blendWithMaskFilter = [v5 blendWithMaskFilter];
  v9 = MEMORY[0x1E695F658];
  blackColor = [MEMORY[0x1E695F610] blackColor];
  v11 = [v9 imageWithColor:blackColor];
  [blendWithMaskFilter setBackgroundImage:v11];

  [blendWithMaskFilter setInputImage:imageCopy];
  v12 = [PISegmentationHelper invertImage:matteCopy];

  [blendWithMaskFilter setMaskImage:v12];
  outputImage = [blendWithMaskFilter outputImage];
  [imageCopy extent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [outputImage imageByCroppingToRect:{v15, v17, v19, v21}];

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
  inputImage = [(PISegmentationInfillFilter *)self inputImage];
  inputMatteImage = [(PISegmentationInfillFilter *)self inputMatteImage];
  v5 = inputMatteImage;
  v6 = 0;
  if (inputImage && inputMatteImage)
  {
    infillAlgorithm = [(PISegmentationInfillFilter *)self infillAlgorithm];
    v8 = 5;
    if (infillAlgorithm)
    {
      v8 = infillAlgorithm;
    }

    if (v8 > 3)
    {
      if (v8 == 4)
      {
        v9 = [objc_opt_class() fastInfillImage:inputImage matte:v5];
        goto LABEL_15;
      }

      if (v8 == 5)
      {
        v9 = inputImage;
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 == 2)
      {
        v9 = [objc_opt_class() watchInfillImage:inputImage matte:v5];
        goto LABEL_15;
      }

      if (v8 == 3)
      {
        v9 = [objc_opt_class() inpaintingInfillImage:inputImage matte:v5];
LABEL_15:
        v6 = v9;
        goto LABEL_16;
      }
    }

    v9 = [objc_opt_class() blackInfillImage:inputImage matte:v5];
    goto LABEL_15;
  }

LABEL_16:

  return v6;
}

@end