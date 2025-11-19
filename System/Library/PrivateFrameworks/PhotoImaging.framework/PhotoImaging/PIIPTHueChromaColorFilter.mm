@interface PIIPTHueChromaColorFilter
+ (id)filterHueKernel;
- (id)outputImage;
@end

@implementation PIIPTHueChromaColorFilter

+ (id)filterHueKernel
{
  v2 = [a1 hueChromaKernels];
  v3 = [v2 objectForKeyedSubscript:@"ipt_hue_chroma_filter_hue"];

  return v3;
}

- (id)outputImage
{
  v41[2] = *MEMORY[0x1E69E9840];
  v3 = [(PIIPTHueChromaColorFilter *)self inputImage];

  if (v3)
  {
    v4 = [(PIIPTHueChromaColorFilter *)self inputHueTarget];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = &unk_1F471F390;
    }

    v7 = v6;

    v8 = [(PIIPTHueChromaColorFilter *)self inputHueRange];
    v9 = v8;
    v10 = &unk_1F471F3A0;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [(PIIPTHueChromaColorFilter *)self inputChromaMin];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_1F471F390;
    }

    v15 = v14;

    v16 = [(PIIPTHueChromaColorFilter *)self inputHueIsNormalized];
    v17 = [v16 BOOLValue];

    if (v17)
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
    v27 = [objc_opt_class() filterHueKernel];
    v28 = [(PIIPTHueChromaColorFilter *)self inputImage];
    [v28 extent];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [(PIIPTHueChromaColorFilter *)self inputImage];
    v41[0] = v37;
    v41[1] = v26;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v39 = [v27 applyWithExtent:v38 arguments:{v30, v32, v34, v36}];
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

@end