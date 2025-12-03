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
  magentaColor = [MEMORY[0x1E695F610] magentaColor];
  v13[1] = magentaColor;
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
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"rgb_color_wash_variable_smooth"];

  return v3;
}

+ (id)colorWashFixedSmoothKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"rgb_color_wash_fixed_smooth"];

  return v3;
}

+ (id)colorWashVariableKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"rgb_color_wash_variable"];

  return v3;
}

+ (id)colorWashFixedKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"rgb_color_wash_fixed"];

  return v3;
}

+ (id)hueChromaVariableColorWashKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"ipt_hue_chroma_color_wash_variable"];

  return v3;
}

+ (id)hueChromaFixedColorWashKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"ipt_hue_chroma_color_wash_fixed"];

  return v3;
}

+ (id)hueChromaColorWashKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"ipt_hue_chroma_color_wash"];

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
  inputImage = [(PIColorWashFilter *)self inputImage];
  if (!inputImage)
  {
    imageByPremultiplyingAlpha = 0;
    goto LABEL_31;
  }

  v4 = inputImage;
  inputColor = [(PIColorWashFilter *)self inputColor];
  v6 = inputColor;
  if (inputColor)
  {
    magentaColor = inputColor;
  }

  else
  {
    magentaColor = [MEMORY[0x1E695F610] magentaColor];
  }

  v9 = magentaColor;

  inputMode = [(PIColorWashFilter *)self inputMode];
  v11 = inputMode;
  if (inputMode)
  {
    v12 = inputMode;
  }

  else
  {
    v12 = @"HueChroma";
  }

  v13 = v12;

  if ([(__CFString *)v13 hasPrefix:@"HueChroma"])
  {
    v14 = [MEMORY[0x1E69C0750] colorWithCGColor:{objc_msgSend(v9, "cgColor")}];
    imageByUnpremultiplyingAlpha = [v4 imageByUnpremultiplyingAlpha];
    v16 = [PIIPTHueChromaFilter convertRGBImageToHueChroma:imageByUnpremultiplyingAlpha];

    if ([(__CFString *)v13 isEqualToString:@"HueChromaFixed"])
    {
      hueChromaFixedColorWashKernel = [objc_opt_class() hueChromaFixedColorWashKernel];
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
      hueChromaFixedColorWashKernel = ;
    }

    v18 = hueChromaFixedColorWashKernel;
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
    imageByPremultiplyingAlpha = [v39 imageByPremultiplyingAlpha];

    goto LABEL_21;
  }

  if (![(__CFString *)v13 isEqualToString:@"MonoLight"])
  {
    if ([(__CFString *)v13 isEqualToString:@"RGBFixed"])
    {
      colorWashFixedKernel = [objc_opt_class() colorWashFixedKernel];
    }

    else if ([(__CFString *)v13 isEqualToString:@"RGBVariable"])
    {
      colorWashFixedKernel = [objc_opt_class() colorWashVariableKernel];
    }

    else if ([(__CFString *)v13 isEqualToString:@"RGBFixedSmooth"])
    {
      colorWashFixedKernel = [objc_opt_class() colorWashFixedSmoothKernel];
    }

    else
    {
      if (![(__CFString *)v13 isEqualToString:@"RGBVariableSmooth"])
      {
        v14 = 0;
        goto LABEL_29;
      }

      colorWashFixedKernel = [objc_opt_class() colorWashVariableSmoothKernel];
    }

    v14 = colorWashFixedKernel;
LABEL_29:
    imageByUnpremultiplyingAlpha2 = [v4 imageByUnpremultiplyingAlpha];

    [imageByUnpremultiplyingAlpha2 extent];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v51[0] = imageByUnpremultiplyingAlpha2;
    v51[1] = v9;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v16 = [v14 applyWithExtent:v49 arguments:{v42, v44, v46, v48}];

    imageByPremultiplyingAlpha = [v16 imageByPremultiplyingAlpha];
    v4 = imageByUnpremultiplyingAlpha2;
    goto LABEL_30;
  }

  v14 = [v4 imageByApplyingFilter:@"CIPhotoEffectMono"];
  v16 = [MEMORY[0x1E695F658] imageWithColor:v9];
  v52 = *MEMORY[0x1E695FA48];
  v53 = v14;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  imageByPremultiplyingAlpha = [v16 imageByApplyingFilter:@"CISoftLightBlendMode" withInputParameters:v18];
LABEL_21:

LABEL_30:
LABEL_31:

  return imageByPremultiplyingAlpha;
}

@end