@interface PIIPTHueChromaGrayFilter
+ (id)filterLumaKernel;
- (id)outputImage;
@end

@implementation PIIPTHueChromaGrayFilter

+ (id)filterLumaKernel
{
  v2 = [a1 hueChromaKernels];
  v3 = [v2 objectForKeyedSubscript:@"ipt_hue_chroma_filter_luma"];

  return v3;
}

- (id)outputImage
{
  v38[2] = *MEMORY[0x1E69E9840];
  v3 = [(PIIPTHueChromaGrayFilter *)self inputImage];

  if (v3)
  {
    v4 = [(PIIPTHueChromaGrayFilter *)self inputLumaTarget];
    v5 = v4;
    v6 = &unk_1F471F3B0;
    if (v4)
    {
      v6 = v4;
    }

    v7 = v6;

    v8 = [(PIIPTHueChromaGrayFilter *)self inputLumaRange];
    v9 = v8;
    v10 = &unk_1F471F3C0;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [(PIIPTHueChromaGrayFilter *)self inputChromaMax];
    v13 = v12;
    v14 = &unk_1F471F3A0;
    if (v12)
    {
      v14 = v12;
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
    v24 = [objc_opt_class() filterLumaKernel];
    v25 = [(PIIPTHueChromaGrayFilter *)self inputImage];
    [v25 extent];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [(PIIPTHueChromaGrayFilter *)self inputImage];
    v38[0] = v34;
    v38[1] = v23;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v36 = [v24 applyWithExtent:v35 arguments:{v27, v29, v31, v33}];
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

@end