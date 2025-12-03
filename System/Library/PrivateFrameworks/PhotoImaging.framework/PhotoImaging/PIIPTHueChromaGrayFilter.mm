@interface PIIPTHueChromaGrayFilter
+ (id)filterLumaKernel;
- (id)outputImage;
@end

@implementation PIIPTHueChromaGrayFilter

+ (id)filterLumaKernel
{
  hueChromaKernels = [self hueChromaKernels];
  v3 = [hueChromaKernels objectForKeyedSubscript:@"ipt_hue_chroma_filter_luma"];

  return v3;
}

- (id)outputImage
{
  v38[2] = *MEMORY[0x1E69E9840];
  inputImage = [(PIIPTHueChromaGrayFilter *)self inputImage];

  if (inputImage)
  {
    inputLumaTarget = [(PIIPTHueChromaGrayFilter *)self inputLumaTarget];
    v5 = inputLumaTarget;
    v6 = &unk_1F471F3B0;
    if (inputLumaTarget)
    {
      v6 = inputLumaTarget;
    }

    v7 = v6;

    inputLumaRange = [(PIIPTHueChromaGrayFilter *)self inputLumaRange];
    v9 = inputLumaRange;
    v10 = &unk_1F471F3C0;
    if (inputLumaRange)
    {
      v10 = inputLumaRange;
    }

    v11 = v10;

    inputChromaMax = [(PIIPTHueChromaGrayFilter *)self inputChromaMax];
    v13 = inputChromaMax;
    v14 = &unk_1F471F3A0;
    if (inputChromaMax)
    {
      v14 = inputChromaMax;
    }

    v15 = v14;

    v16 = MEMORY[0x1E695F688];
    [v7 doubleValue];
    v18 = v17;

    [v11 doubleValue];
    v20 = v19;

    [v15 doubleValue];
    v22 = v21;

    v23 = [v16 vectorWithX:v18 Y:v20 Z:v22];
    filterLumaKernel = [objc_opt_class() filterLumaKernel];
    inputImage2 = [(PIIPTHueChromaGrayFilter *)self inputImage];
    [inputImage2 extent];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    inputImage3 = [(PIIPTHueChromaGrayFilter *)self inputImage];
    v38[0] = inputImage3;
    v38[1] = v23;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v36 = [filterLumaKernel applyWithExtent:v35 arguments:{v27, v29, v31, v33}];
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

@end