@interface PIColorWashDuoFilter
+ (id)customAttributes;
+ (id)hueChromaColorWashDuoFixedKernel;
+ (id)hueChromaColorWashDuoKernel;
+ (id)hueChromaColorWashDuoVariableKernel;
+ (id)iptColorWashDuoFixedKernel;
+ (id)iptColorWashDuoKernel;
+ (id)iptColorWashDuoVariableKernel;
+ (id)rgbColorWashDuoFixedKernel;
+ (id)rgbColorWashDuoKernel;
+ (id)rgbColorWashDuoVariableKernel;
- (id)outputImage;
@end

@implementation PIColorWashDuoFilter

+ (id)customAttributes
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18[0] = @"inputShadowColor";
  v3 = *MEMORY[0x1E695F738];
  v4 = *MEMORY[0x1E695F6A0];
  v16[0] = *MEMORY[0x1E695F6F0];
  v2 = v16[0];
  v16[1] = v4;
  v17[0] = v3;
  blueColor = [MEMORY[0x1E695F610] blueColor];
  v17[1] = blueColor;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v6;
  v18[1] = @"inputHighlightColor";
  v14[1] = v4;
  v15[0] = v3;
  v14[0] = v2;
  yellowColor = [MEMORY[0x1E695F610] yellowColor];
  v15[1] = yellowColor;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v18[2] = @"inputMode";
  v19[1] = v8;
  v12[0] = @"PIAttributeAvailableModes";
  v12[1] = v4;
  v13[0] = &unk_1F471FD58;
  v13[1] = @"IPT";
  v12[2] = v2;
  v13[2] = @"PIAttributeTypeMode";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v19[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

  return v10;
}

+ (id)rgbColorWashDuoVariableKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"rgb_color_wash_duo_variable"];

  return v3;
}

+ (id)rgbColorWashDuoFixedKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"rgb_color_wash_duo_fixed"];

  return v3;
}

+ (id)rgbColorWashDuoKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"rgb_color_wash_duo"];

  return v3;
}

+ (id)hueChromaColorWashDuoVariableKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"ipt_hue_chroma_color_wash_duo_variable"];

  return v3;
}

+ (id)hueChromaColorWashDuoFixedKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"ipt_hue_chroma_color_wash_duo_fixed"];

  return v3;
}

+ (id)hueChromaColorWashDuoKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"ipt_hue_chroma_color_wash_duo"];

  return v3;
}

+ (id)iptColorWashDuoVariableKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"ipt_color_wash_duo_variable"];

  return v3;
}

+ (id)iptColorWashDuoFixedKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"ipt_color_wash_duo_fixed"];

  return v3;
}

+ (id)iptColorWashDuoKernel
{
  colorWashKernels = [self colorWashKernels];
  v3 = [colorWashKernels objectForKeyedSubscript:@"ipt_color_wash_duo"];

  return v3;
}

- (id)outputImage
{
  v99[3] = *MEMORY[0x1E69E9840];
  inputImage = [(PIColorWashDuoFilter *)self inputImage];
  if (!inputImage)
  {
    imageByPremultiplyingAlpha = 0;
    goto LABEL_41;
  }

  v4 = inputImage;
  inputShadowColor = [(PIColorWashDuoFilter *)self inputShadowColor];
  v6 = inputShadowColor;
  if (inputShadowColor)
  {
    blueColor = inputShadowColor;
  }

  else
  {
    blueColor = [MEMORY[0x1E695F610] blueColor];
  }

  v9 = blueColor;

  inputHighlightColor = [(PIColorWashDuoFilter *)self inputHighlightColor];
  v11 = inputHighlightColor;
  if (inputHighlightColor)
  {
    blueColor2 = inputHighlightColor;
  }

  else
  {
    blueColor2 = [MEMORY[0x1E695F610] blueColor];
  }

  v13 = blueColor2;

  inputMode = [(PIColorWashDuoFilter *)self inputMode];
  v15 = inputMode;
  if (inputMode)
  {
    v16 = inputMode;
  }

  else
  {
    v16 = @"IPT";
  }

  v17 = v16;

  if (![(__CFString *)v17 hasPrefix:@"IPT"])
  {
    if ([(__CFString *)v17 hasPrefix:@"HueChroma"])
    {
      v96 = v9;
      v18 = [MEMORY[0x1E69C0750] colorWithCGColor:{objc_msgSend(v9, "cgColor")}];
      v19 = [MEMORY[0x1E69C0750] colorWithCGColor:{objc_msgSend(v13, "cgColor")}];
      imageByUnpremultiplyingAlpha = [v4 imageByUnpremultiplyingAlpha];
      v21 = [PIIPTHueChromaFilter convertRGBImageToHueChroma:imageByUnpremultiplyingAlpha];

      if ([(__CFString *)v17 isEqualToString:@"HueChromaFixed"])
      {
        hueChromaColorWashDuoFixedKernel = [objc_opt_class() hueChromaColorWashDuoFixedKernel];
      }

      else
      {
        v28 = [(__CFString *)v17 isEqualToString:@"HueChromaVariable"];
        v29 = objc_opt_class();
        if (v28)
        {
          [v29 hueChromaColorWashDuoVariableKernel];
        }

        else
        {
          [v29 hueChromaColorWashDuoKernel];
        }
        hueChromaColorWashDuoFixedKernel = ;
      }

      v30 = hueChromaColorWashDuoFixedKernel;
      [v18 hue];
      v57 = v56;
      [v19 hue];
      v59 = v58;
      v60 = v58 - v57;
      v61 = 360.0;
      v62 = vabdd_f64(v59, v57);
      v95 = v13;
      if (fabs(v60 + 360.0) < v62 || (v61 = -360.0, fabs(v60 + -360.0) < v62))
      {
        v59 = v59 + v61;
      }

      [v4 extent];
      v94 = v63;
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v98[0] = v21;
      v70 = MEMORY[0x1E695F688];
      [v18 luma];
      v72 = v71;
      [v18 chroma];
      v74 = [v70 vectorWithX:v72 Y:v57 * 3.14159265 / 180.0 Z:v73];
      v98[1] = v74;
      v75 = MEMORY[0x1E695F688];
      [v19 luma];
      v77 = v76;
      [v19 chroma];
      v79 = [v75 vectorWithX:v77 Y:v59 * 3.14159265 / 180.0 Z:v78];
      v98[2] = v79;
      v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:3];
      v81 = [v30 applyWithExtent:v80 arguments:{v94, v65, v67, v69}];

      v82 = [PIIPTHueChromaFilter convertHueChromaImageToRGB:v81];
      imageByPremultiplyingAlpha = [v82 imageByPremultiplyingAlpha];

      goto LABEL_35;
    }

    if ([(__CFString *)v17 isEqualToString:@"RGB"])
    {
      rgbColorWashDuoKernel = [objc_opt_class() rgbColorWashDuoKernel];
    }

    else if ([(__CFString *)v17 isEqualToString:@"RGBFixed"])
    {
      rgbColorWashDuoKernel = [objc_opt_class() rgbColorWashDuoFixedKernel];
    }

    else
    {
      if (![(__CFString *)v17 isEqualToString:@"RGBVariable"])
      {
        v18 = 0;
        goto LABEL_39;
      }

      rgbColorWashDuoKernel = [objc_opt_class() rgbColorWashDuoVariableKernel];
    }

    v18 = rgbColorWashDuoKernel;
LABEL_39:
    imageByUnpremultiplyingAlpha2 = [v4 imageByUnpremultiplyingAlpha];

    [imageByUnpremultiplyingAlpha2 extent];
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v97[0] = imageByUnpremultiplyingAlpha2;
    v97[1] = v9;
    v97[2] = v13;
    v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:3];
    v19 = [v18 applyWithExtent:v92 arguments:{v85, v87, v89, v91}];

    imageByPremultiplyingAlpha = [v19 imageByPremultiplyingAlpha];
    v4 = imageByUnpremultiplyingAlpha2;
    goto LABEL_40;
  }

  v96 = v9;
  v18 = [MEMORY[0x1E69C0750] colorWithCGColor:{objc_msgSend(v9, "cgColor")}];
  v19 = [MEMORY[0x1E69C0750] colorWithCGColor:{objc_msgSend(v13, "cgColor")}];
  imageByUnpremultiplyingAlpha3 = [v4 imageByUnpremultiplyingAlpha];
  v21 = [PIIPTHueChromaFilter convertRGBImageToIPT:imageByUnpremultiplyingAlpha3];

  v95 = v13;
  if ([(__CFString *)v17 isEqualToString:@"IPTFixed"])
  {
    iptColorWashDuoFixedKernel = [objc_opt_class() iptColorWashDuoFixedKernel];
  }

  else
  {
    v25 = [(__CFString *)v17 isEqualToString:@"IPTVariable"];
    v26 = objc_opt_class();
    if (v25)
    {
      [v26 iptColorWashDuoVariableKernel];
    }

    else
    {
      [v26 iptColorWashDuoKernel];
    }
    iptColorWashDuoFixedKernel = ;
  }

  v30 = iptColorWashDuoFixedKernel;
  [v4 extent];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v99[0] = v21;
  v39 = MEMORY[0x1E695F688];
  [v18 luma];
  v41 = v40;
  [v18 pt];
  v43 = v42;
  [v18 pt];
  v45 = [v39 vectorWithX:v41 Y:v43 Z:v44];
  v99[1] = v45;
  v46 = MEMORY[0x1E695F688];
  [v19 luma];
  v48 = v47;
  [v19 pt];
  v50 = v49;
  [v19 pt];
  v52 = [v46 vectorWithX:v48 Y:v50 Z:v51];
  v99[2] = v52;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:3];
  v54 = [v30 applyWithExtent:v53 arguments:{v32, v34, v36, v38}];

  v55 = [PIIPTHueChromaFilter convertIPTImageToRGB:v54];
  imageByPremultiplyingAlpha = [v55 imageByPremultiplyingAlpha];

LABEL_35:
  v13 = v95;
  v9 = v96;
LABEL_40:

LABEL_41:

  return imageByPremultiplyingAlpha;
}

@end