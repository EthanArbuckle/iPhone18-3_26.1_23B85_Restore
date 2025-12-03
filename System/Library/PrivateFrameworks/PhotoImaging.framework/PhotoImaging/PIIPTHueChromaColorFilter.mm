@interface PIIPTHueChromaColorFilter
+ (id)filterHueKernel;
- (id)outputImage;
@end

@implementation PIIPTHueChromaColorFilter

+ (id)filterHueKernel
{
  hueChromaKernels = [self hueChromaKernels];
  v3 = [hueChromaKernels objectForKeyedSubscript:@"ipt_hue_chroma_filter_hue"];

  return v3;
}

- (id)outputImage
{
  v41[2] = *MEMORY[0x1E69E9840];
  inputImage = [(PIIPTHueChromaColorFilter *)self inputImage];

  if (inputImage)
  {
    inputHueTarget = [(PIIPTHueChromaColorFilter *)self inputHueTarget];
    v5 = inputHueTarget;
    if (inputHueTarget)
    {
      v6 = inputHueTarget;
    }

    else
    {
      v6 = &unk_1F471F390;
    }

    v7 = v6;

    inputHueRange = [(PIIPTHueChromaColorFilter *)self inputHueRange];
    v9 = inputHueRange;
    v10 = &unk_1F471F3A0;
    if (inputHueRange)
    {
      v10 = inputHueRange;
    }

    v11 = v10;

    inputChromaMin = [(PIIPTHueChromaColorFilter *)self inputChromaMin];
    v13 = inputChromaMin;
    if (inputChromaMin)
    {
      v14 = inputChromaMin;
    }

    else
    {
      v14 = &unk_1F471F390;
    }

    v15 = v14;

    inputHueIsNormalized = [(PIIPTHueChromaColorFilter *)self inputHueIsNormalized];
    bOOLValue = [inputHueIsNormalized BOOLValue];

    if (bOOLValue)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 6.28318531;
    }

    v19 = MEMORY[0x1E695F688];
    [v7 doubleValue];
    v21 = v20;
    [v11 doubleValue];
    v23 = v22;

    [v15 doubleValue];
    v25 = v24;

    v26 = [v19 vectorWithX:v21 Y:v23 Z:v18 W:v25];
    filterHueKernel = [objc_opt_class() filterHueKernel];
    inputImage2 = [(PIIPTHueChromaColorFilter *)self inputImage];
    [inputImage2 extent];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    inputImage3 = [(PIIPTHueChromaColorFilter *)self inputImage];
    v41[0] = inputImage3;
    v41[1] = v26;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v39 = [filterHueKernel applyWithExtent:v38 arguments:{v30, v32, v34, v36}];
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

@end