@interface VUIImageFactory
+ (id)URLFromDescriptor:(id)descriptor;
+ (id)URLFromSource:(id)source extension:(id)extension p3Specifier:(id)specifier cropCode:(id)code imageSize:(CGSize)size displayScaleIsPointMultiplier:(BOOL)multiplier centerGrowth:(BOOL)growth focusSizeIncrease:(double)self0;
+ (id)_getResourceImageFromDescriptor:(id)descriptor;
+ (id)_imageProxyWithURL:(id)l;
+ (id)_makeImageViewWithDescriptor:(id)descriptor proxy:(id)proxy existingView:(id)view;
+ (id)_makeSourceStringFromSource:(id)source p3Specifier:(id)specifier;
+ (id)makeImageProxyWithDescriptor:(id)descriptor;
+ (id)makeImageViewWithDescriptor:(id)descriptor imageProxy:(id)proxy existingView:(id)view;
+ (id)makeImageViewWithResourceDescriptor:(id)descriptor existingView:(id)view;
+ (id)makeImageWithImage:(id)image existingView:(id)view;
@end

@implementation VUIImageFactory

+ (id)makeImageProxyWithDescriptor:(id)descriptor
{
  v3 = [VUIImageFactory URLFromDescriptor:descriptor];
  if (v3)
  {
    v4 = [VUIImageFactory _imageProxyWithURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)URLFromDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [descriptorCopy src];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [descriptorCopy src];
    extension = [descriptorCopy extension];
    p3Specifier = [descriptorCopy p3Specifier];
    cropCode = [descriptorCopy cropCode];
    [descriptorCopy downloadSize];
    if (v11 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8))
    {
      [descriptorCopy boundingSize];
    }

    else
    {
      [descriptorCopy downloadSize];
    }

    v15 = +[VUIImageFactory URLFromSource:extension:p3Specifier:cropCode:imageSize:displayScaleIsPointMultiplier:centerGrowth:focusSizeIncrease:](VUIImageFactory, "URLFromSource:extension:p3Specifier:cropCode:imageSize:displayScaleIsPointMultiplier:centerGrowth:focusSizeIncrease:", v6, extension, p3Specifier, cropCode, [descriptorCopy displayScaleIsPointMultiplier], 0, v13, v14, 0.0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)makeImageViewWithDescriptor:(id)descriptor imageProxy:(id)proxy existingView:(id)view
{
  descriptorCopy = descriptor;
  proxyCopy = proxy;
  viewCopy = view;
  if (descriptorCopy)
  {
    v10 = proxyCopy;
    if (!v10)
    {
      v10 = [VUIImageFactory makeImageProxyWithDescriptor:descriptorCopy];
    }

    v11 = [VUIImageFactory _makeImageViewWithDescriptor:descriptorCopy proxy:v10 existingView:viewCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)makeImageWithImage:(id)image existingView:(id)view
{
  imageCopy = image;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  [v7 setImage:imageCopy];

  return v8;
}

+ (id)makeImageViewWithResourceDescriptor:(id)descriptor existingView:(id)view
{
  descriptorCopy = descriptor;
  viewCopy = view;
  type = [descriptorCopy type];
  v8 = [VUIImageFactory _getResourceImageFromDescriptor:descriptorCopy];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = viewCopy;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v11 = type == 1;
  v12 = type == 1;
  v13 = !v11;
  [v9 setImage:v8];
  [v10 setSymbolImage:v13];
  [v10 setResourceImage:v12];
  [descriptorCopy size];
  [v10 setLocalImageViewSize:?];
  tintColor = [descriptorCopy tintColor];
  [v10 _setTintColor:tintColor];

  highlightColor = [descriptorCopy highlightColor];
  [v10 _setFocusedColor:highlightColor];

  [descriptorCopy borderRadii];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if (![VUICoreUtilities radiiIsZero:?])
  {
    [VUICoreUtilities radiusFromCornerRadii:v17, v19, v21, v23];
    [v10 setCornerRadius:?];
  }

  if ([descriptorCopy scaleMode] == 1)
  {
    v24 = 1;
LABEL_15:
    [v10 setVuiContentMode:v24];
    goto LABEL_16;
  }

  if ([descriptorCopy scaleMode] == 3)
  {
    v24 = 2;
    goto LABEL_15;
  }

LABEL_16:
  accessibilityText = [descriptorCopy accessibilityText];
  if ([accessibilityText length])
  {
    [v10 vui_setAccessibilityText:accessibilityText];
    [v10 vui_isAccessibilityElement:1];
  }

LABEL_19:

  return v10;
}

+ (id)_makeImageViewWithDescriptor:(id)descriptor proxy:(id)proxy existingView:(id)view
{
  descriptorCopy = descriptor;
  proxyCopy = proxy;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    goto LABEL_53;
  }

  tintColor = [descriptorCopy tintColor];
  highlightColor = [descriptorCopy highlightColor];
  [descriptorCopy boundingSize];
  v14 = v13;
  v16 = v15;
  [descriptorCopy borderRadii];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  scaleMode = [descriptorCopy scaleMode];
  optimizedImageRendering = [descriptorCopy optimizedImageRendering];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    borderColor = [descriptorCopy borderColor];
    [descriptorCopy borderWidth];
    v29 = v28;
    if ([descriptorCopy decoratorType] == 1 || (optimizedImageRendering & 1) != 0 || !borderColor || v29 <= 0.0)
    {
      v30 = objc_alloc_init(VUIImageScaleDecorator);
    }

    else
    {
      v30 = [VUIImageOutlineDecorator decoratorWithOutlineColor:borderColor outlineWidths:v29, v29, v29, v29];
    }

    v31 = v30;
    if (v30)
    {
      [(VUIImageScaleDecorator *)v30 setScaleToSize:v14, v16];
      [(VUIImageScaleDecorator *)v31 setScaleMode:scaleMode];
      if ((optimizedImageRendering & 1) == 0)
      {
        [(VUIImageScaleDecorator *)v31 setCornerRadii:v18, v20, v22, v24];
        -[VUIImageScaleDecorator setCornerContinuous:](v31, "setCornerContinuous:", [descriptorCopy continuousBorder]);
      }

      if (scaleMode == 2)
      {
        backgroundColor = [descriptorCopy backgroundColor];
        [(VUIImageScaleDecorator *)v31 setBgColor:backgroundColor];
      }

      decorator = [proxyCopy decorator];

      if (!decorator)
      {
        [proxyCopy setDecorator:v31];
        [proxyCopy setOptimizedImageRendering:optimizedImageRendering];
      }
    }
  }

  if (v14 != *MEMORY[0x277CBF3A8] || v16 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v65 = scaleMode;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = viewCopy;
    }

    else
    {
      v35 = objc_alloc_init(VUIImageView);
    }

    v10 = v35;
    accessibilityText = [descriptorCopy accessibilityText];
    v37 = [accessibilityText length];

    if (v37)
    {
      accessibilityText2 = [descriptorCopy accessibilityText];
      [(UIView *)v10 vui_setAccessibilityText:accessibilityText2];

      [(UIView *)v10 vui_isAccessibilityElement:1];
    }

    if (([descriptorCopy sizeComputationOnly] & 1) == 0)
    {
      [(VUIImageView *)v10 setBounds:0.0, 0.0, v14, v16];
    }

    if (([descriptorCopy sizeComputationOnly] & 1) == 0)
    {
      -[VUIImageView setImageProxy:clearingExisting:completion:](v10, "setImageProxy:clearingExisting:completion:", proxyCopy, [descriptorCopy clearsExisting], 0);
    }

    if (optimizedImageRendering)
    {
      [VUICoreUtilities radiusFromCornerRadii:v18, v20, v22, v24];
      [(VUIImageView *)v10 setCornerRadius:?];
      borderColor2 = [descriptorCopy borderColor];
      [(VUIImageView *)v10 setBorderColor:borderColor2];

      [descriptorCopy borderWidth];
      [(VUIImageView *)v10 setBorderWidth:?];
      if ([descriptorCopy scaleMode] == 1)
      {
        v40 = v10;
        v41 = 1;
LABEL_38:
        [(VUIImageView *)v40 setVuiContentMode:v41];
        goto LABEL_39;
      }

      if ([descriptorCopy scaleMode] == 3)
      {
        v40 = v10;
        v41 = 2;
        goto LABEL_38;
      }
    }

    else
    {
      [(VUIImageView *)v10 setImageContainsCornerRadius:1];
    }

LABEL_39:
    placeholderSrc = [descriptorCopy placeholderSrc];
    placeholderColor = [descriptorCopy placeholderColor];
    if (placeholderColor)
    {
      [(VUIImageView *)v10 setPlaceholderColor:placeholderColor];
    }

    else if ([placeholderSrc length])
    {
      [descriptorCopy accessibilityText];
      v44 = highlightColor;
      v46 = v45 = tintColor;
      v47 = [VUICoreUtilities imageForResource:placeholderSrc accessibilityDescription:v46];

      tintColor = v45;
      highlightColor = v44;
      [(VUIImageView *)v10 setPlaceholderImage:v47];
    }

    shadow = [descriptorCopy shadow];
    if (shadow)
    {
      [(VUIImageView *)v10 setImageContainsShadow:1];
      -[VUIImageView setAnimatesShadowChanges:](v10, "setAnimatesShadowChanges:", [descriptorCopy animatesShadowChanges]);
      [(VUIImageView *)v10 setShadowRadii:v18, v20, v22, v24];
      [(VUIImageView *)v10 layer];
      v64 = placeholderSrc;
      v49 = highlightColor;
      v51 = v50 = tintColor;
      [v51 setMasksToBounds:0];

      layer = [(VUIImageView *)v10 layer];
      [descriptorCopy containerSize];
      [layer setShadowPath:{+[VUICoreUtilities shadowPathWithCornerRadii:andScaledSize:](VUICoreUtilities, "shadowPathWithCornerRadii:andScaledSize:", v18, v20, v22, v24, v53, v54)}];

      layer2 = [(VUIImageView *)v10 layer];
      [shadow shadowOffset];
      [layer2 setShadowOffset:?];

      layer3 = [(VUIImageView *)v10 layer];
      [shadow shadowBlurRadius];
      [layer3 setShadowRadius:?];

      layer4 = [(VUIImageView *)v10 layer];
      shadowColor = [shadow shadowColor];
      [layer4 setShadowColor:{objc_msgSend(shadowColor, "CGColor")}];

      tintColor = v50;
      highlightColor = v49;
      placeholderSrc = v64;

      v59 = 1.0;
    }

    else
    {
      [(VUIImageView *)v10 setImageContainsShadow:0];
      [(VUIImageView *)v10 setAnimatesShadowChanges:0];
      [(VUIImageView *)v10 setShadowRadii:0.0, 0.0, 0.0, 0.0];
      v59 = 0.0;
    }

    layer5 = [(VUIImageView *)v10 layer];
    *&v61 = v59;
    [layer5 setShadowOpacity:v61];

    if (v65 == 3)
    {
      v62 = 2;
    }

    else
    {
      v62 = 1;
    }

    [(VUIImageView *)v10 setVuiContentMode:v62];
    [(VUIImageView *)v10 setContentsPosition:2];
    [(VUIImageView *)v10 _setTintColor:tintColor];
    [(VUIImageView *)v10 _setFocusedColor:highlightColor];
    if ([descriptorCopy loadsImmediately])
    {
      [(VUIImageView *)v10 _loadImage];
    }

    goto LABEL_52;
  }

  v10 = 0;
LABEL_52:

LABEL_53:

  return v10;
}

+ (id)URLFromSource:(id)source extension:(id)extension p3Specifier:(id)specifier cropCode:(id)code imageSize:(CGSize)size displayScaleIsPointMultiplier:(BOOL)multiplier centerGrowth:(BOOL)growth focusSizeIncrease:(double)self0
{
  growthCopy = growth;
  height = size.height;
  width = size.width;
  sourceCopy = source;
  extensionCopy = extension;
  specifierCopy = specifier;
  codeCopy = code;
  if (URLFromSource_extension_p3Specifier_cropCode_imageSize_displayScaleIsPointMultiplier_centerGrowth_focusSizeIncrease__onceToken == -1)
  {
    if (multiplier)
    {
LABEL_3:
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen vui_scale];
      v25 = v24;

      goto LABEL_6;
    }
  }

  else
  {
    +[VUIImageFactory URLFromSource:extension:p3Specifier:cropCode:imageSize:displayScaleIsPointMultiplier:centerGrowth:focusSizeIncrease:];
    if (multiplier)
    {
      goto LABEL_3;
    }
  }

  v25 = *&URLFromSource_extension_p3Specifier_cropCode_imageSize_displayScaleIsPointMultiplier_centerGrowth_focusSizeIncrease__sPointMultiplier;
LABEL_6:
  v26 = fabs(round(width * v25));
  v27 = round(height * v25);
  v28 = fabs(v27);
  if (growthCopy)
  {
    v29 = v28 + increase * v25;
  }

  else
  {
    v30 = v27;
    v31 = round(v26 / fabsf(v30) * 100.0) / 100.0;
    if (v26 <= v28)
    {
      v29 = v28 + increase * v25;
      v26 = round(v29 * v31);
    }

    else
    {
      v26 = v26 + increase * v25;
      v29 = round(v26 / v31);
    }
  }

  v32 = MEMORY[0x277CCA900];
  v33 = sourceCopy;
  whitespaceAndNewlineCharacterSet = [v32 whitespaceAndNewlineCharacterSet];
  v35 = [v33 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  LODWORD(v36) = vcvtpd_s64_f64(v26);
  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v36];
  v38 = [v35 stringByReplacingOccurrencesOfString:@"{w}" withString:v37];

  LODWORD(v39) = vcvtpd_s64_f64(v29);
  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v39];
  v41 = [v38 stringByReplacingOccurrencesOfString:@"{h}" withString:v40];

  if (codeCopy)
  {
    v42 = codeCopy;
  }

  else
  {
    v42 = &stru_2880D3950;
  }

  v43 = [v41 stringByReplacingOccurrencesOfString:@"{c}" withString:v42];

  if (extensionCopy)
  {
    v44 = extensionCopy;
  }

  else
  {
    v44 = &stru_2880D3950;
  }

  v45 = [v43 stringByReplacingOccurrencesOfString:@"{f}" withString:v44];

  v46 = [self _makeSourceStringFromSource:v45 p3Specifier:specifierCopy];

  v47 = [MEMORY[0x277CBEBC0] URLWithString:v46];

  return v47;
}

void __135__VUIImageFactory_URLFromSource_extension_p3Specifier_cropCode_imageSize_displayScaleIsPointMultiplier_centerGrowth_focusSizeIncrease___block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 vui_scale];
  v2 = v1;

  v3 = 2.0;
  if (v2 == 2.0)
  {
    v3 = 1.5;
  }

  URLFromSource_extension_p3Specifier_cropCode_imageSize_displayScaleIsPointMultiplier_centerGrowth_focusSizeIncrease__sPointMultiplier = *&v3;
}

+ (id)_makeSourceStringFromSource:(id)source p3Specifier:(id)specifier
{
  sourceCopy = source;
  specifierCopy = specifier;
  if ([(__CFString *)specifierCopy length])
  {
    vui_main = [MEMORY[0x277D759A0] vui_main];
    vui_canRepresentDisplayGamutP3 = [vui_main vui_canRepresentDisplayGamutP3];

    v9 = &stru_2880D3950;
    if (vui_canRepresentDisplayGamutP3)
    {
      if (specifierCopy)
      {
        v10 = specifierCopy;
      }

      else
      {
        v10 = &stru_2880D3950;
      }

      v9 = v10;
    }
  }

  else
  {
    v9 = &stru_2880D3950;
  }

  v11 = [sourceCopy stringByReplacingOccurrencesOfString:@"{p3}" withString:v9];

  return v11;
}

+ (id)_imageProxyWithURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (!lCopy)
  {
    goto LABEL_5;
  }

  if ([lCopy vuicore_isAppIconURL])
  {
    host = [v4 host];
    v6 = [VUIImageProxy alloc];
    v7 = +[VUIAppIconImageLoader sharedInstance];
    v8 = [(VUIImageProxy *)v6 initWithObject:host imageLoader:v7 groupType:0];

    [(VUIImageProxy *)v8 setCacheOnLoad:+[VUICoreUtilities canHandleDecodingOnRenderThread]^ 1];
    goto LABEL_7;
  }

  if ([v4 vuicore_imageURLType] != 1)
  {
    v9 = [VUIImageProxy alloc];
    v10 = +[VUIURLImageLoader sharedInstance];
    v8 = [(VUIImageProxy *)v9 initWithObject:v4 imageLoader:v10 groupType:0];

    [(VUIImageProxy *)v8 setCacheOnLoad:+[VUICoreUtilities canHandleDecodingOnRenderThread]^ 1];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

+ (id)_getResourceImageFromDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  name = [descriptorCopy name];
  v5 = name;
  if (descriptorCopy && [name length])
  {
    if ([descriptorCopy type])
    {
      accessibilityText = [descriptorCopy accessibilityText];
      symbolConfiguration = [VUICoreUtilities imageForResource:v5 accessibilityDescription:accessibilityText];

      if (![descriptorCopy shouldRenderAsTemplate])
      {
        goto LABEL_9;
      }

      vuiTemplateImage = [symbolConfiguration vuiTemplateImage];
    }

    else
    {
      v9 = MEMORY[0x277D755B8];
      symbolConfiguration = [descriptorCopy symbolConfiguration];
      accessibilityText2 = [descriptorCopy accessibilityText];
      vuiTemplateImage = [v9 vuiSystemImageNamed:v5 withConfiguration:symbolConfiguration accessibilityDescription:accessibilityText2];
    }

    symbolConfiguration = vuiTemplateImage;
  }

  else
  {
    symbolConfiguration = 0;
  }

LABEL_9:

  return symbolConfiguration;
}

@end