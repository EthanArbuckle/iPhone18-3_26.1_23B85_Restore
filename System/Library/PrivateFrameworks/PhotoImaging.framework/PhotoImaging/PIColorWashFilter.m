@interface PIColorWashFilter
+ (id)colorWashFixedKernel;
+ (id)colorWashFixedSmoothKernel;
+ (id)colorWashKernels;
+ (id)colorWashVariableKernel;
+ (id)colorWashVariableSmoothKernel;
+ (id)customAttributes;
+ (id)hueChromaColorWashKernel;
+ (id)hueChromaFixedColorWashKernel;
+ (id)hueChromaVariableColorWashKernel;
- (id)outputImage;
@end

@implementation PIColorWashFilter

+ (id)customAttributes
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = *MEMORY[0x1E695FA78];
  v3 = *MEMORY[0x1E695F738];
  v4 = *MEMORY[0x1E695F6A0];
  v12[0] = *MEMORY[0x1E695F6F0];
  v2 = v12[0];
  v12[1] = v4;
  v13[0] = v3;
  v5 = [MEMORY[0x1E695F610] magentaColor];
  v13[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[1] = @"inputMode";
  v15[0] = v6;
  v10[0] = @"PIAttributeAvailableModes";
  v10[1] = v4;
  v11[0] = &unk_1F471FD40;
  v11[1] = @"HueChroma";
  v10[2] = v2;
  v11[2] = @"PIAttributeTypeMode";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)colorWashVariableSmoothKernel
{
  v2 = [a1 colorWashKernels];
  v3 = [v2 objectForKeyedSubscript:@"rgb_color_wash_variable_smooth"];

  return v3;
}

+ (id)colorWashFixedSmoothKernel
{
  v2 = [a1 colorWashKernels];
  v3 = [v2 objectForKeyedSubscript:@"rgb_color_wash_fixed_smooth"];

  return v3;
}

+ (id)colorWashVariableKernel
{
  v2 = [a1 colorWashKernels];
  v3 = [v2 objectForKeyedSubscript:@"rgb_color_wash_variable"];

  return v3;
}

+ (id)colorWashFixedKernel
{
  v2 = [a1 colorWashKernels];
  v3 = [v2 objectForKeyedSubscript:@"rgb_color_wash_fixed"];

  return v3;
}

+ (id)hueChromaVariableColorWashKernel
{
  v2 = [a1 colorWashKernels];
  v3 = [v2 objectForKeyedSubscript:@"ipt_hue_chroma_color_wash_variable"];

  return v3;
}

+ (id)hueChromaFixedColorWashKernel
{
  v2 = [a1 colorWashKernels];
  v3 = [v2 objectForKeyedSubscript:@"ipt_hue_chroma_color_wash_fixed"];

  return v3;
}

+ (id)hueChromaColorWashKernel
{
  v2 = [a1 colorWashKernels];
  v3 = [v2 objectForKeyedSubscript:@"ipt_hue_chroma_color_wash"];

  return v3;
}

+ (id)colorWashKernels
{
  if (colorWashKernels_onceToken != -1)
  {
    dispatch_once(&colorWashKernels_onceToken, &__block_literal_global_18174);
  }

  v3 = colorWashKernels_kernels;

  return v3;
}

uint64_t __37__PIColorWashFilter_colorWashKernels__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelsDictionaryWithString:&cfstr_KernelVec4IptH];
  v1 = colorWashKernels_kernels;
  colorWashKernels_kernels = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)outputImage
{
  v54[2] = *MEMORY[0x1E69E9840];
  v3 = [(PIColorWashFilter *)self inputImage];
  if (!v3)
  {
    v8 = 0;
    goto LABEL_31;
  }

  v4 = v3;
  v5 = [(PIColorWashFilter *)self inputColor];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695F610] magentaColor];
  }

  v9 = v7;

  v10 = [(PIColorWashFilter *)self inputMode];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"HueChroma";
  }

  v13 = v12;

  if ([(__CFString *)v13 hasPrefix:@"HueChroma"])
  {
    v14 = [MEMORY[0x1E69C0750] colorWithCGColor:{objc_msgSend(v9, "cgColor")}];
    v15 = [v4 imageByUnpremultiplyingAlpha];
    v16 = [PIIPTHueChromaFilter convertRGBImageToHueChroma:v15];

    if ([(__CFString *)v13 isEqualToString:@"HueChromaFixed"])
    {
      v17 = [objc_opt_class() hueChromaFixedColorWashKernel];
    }

    else
    {
      v19 = [(__CFString *)v13 isEqualToString:@"HueChromaVariable"];
      v20 = objc_opt_class();
      if (v19)
      {
        [v20 hueChromaVariableColorWashKernel];
      }

      else
      {
        [v20 hueChromaColorWashKernel];
      }
      v17 = ;
    }

    v18 = v17;
    [v4 extent];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v54[0] = v16;
    v30 = MEMORY[0x1E695F688];
    [v14 luma];
    v32 = v31;
    [v14 hue];
    v34 = v33 * 3.14159265 / 180.0;
    [v14 chroma];
    v36 = [v30 vectorWithX:v32 Y:v34 Z:v35];
    v54[1] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    v38 = [v18 applyWithExtent:v37 arguments:{v23, v25, v27, v29}];

    v39 = [PIIPTHueChromaFilter convertHueChromaImageToRGB:v38];
    v8 = [v39 imageByPremultiplyingAlpha];

    goto LABEL_21;
  }

  if (![(__CFString *)v13 isEqualToString:@"MonoLight"])
  {
    if ([(__CFString *)v13 isEqualToString:@"RGBFixed"])
    {
      v21 = [objc_opt_class() colorWashFixedKernel];
    }

    else if ([(__CFString *)v13 isEqualToString:@"RGBVariable"])
    {
      v21 = [objc_opt_class() colorWashVariableKernel];
    }

    else if ([(__CFString *)v13 isEqualToString:@"RGBFixedSmooth"])
    {
      v21 = [objc_opt_class() colorWashFixedSmoothKernel];
    }

    else
    {
      if (![(__CFString *)v13 isEqualToString:@"RGBVariableSmooth"])
      {
        v14 = 0;
        goto LABEL_29;
      }

      v21 = [objc_opt_class() colorWashVariableSmoothKernel];
    }

    v14 = v21;
LABEL_29:
    v40 = [v4 imageByUnpremultiplyingAlpha];

    [v40 extent];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v51[0] = v40;
    v51[1] = v9;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v16 = [v14 applyWithExtent:v49 arguments:{v42, v44, v46, v48}];

    v8 = [v16 imageByPremultiplyingAlpha];
    v4 = v40;
    goto LABEL_30;
  }

  v14 = [v4 imageByApplyingFilter:@"CIPhotoEffectMono"];
  v16 = [MEMORY[0x1E695F658] imageWithColor:v9];
  v52 = *MEMORY[0x1E695FA48];
  v53 = v14;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v8 = [v16 imageByApplyingFilter:@"CISoftLightBlendMode" withInputParameters:v18];
LABEL_21:

LABEL_30:
LABEL_31:

  return v8;
}

@end