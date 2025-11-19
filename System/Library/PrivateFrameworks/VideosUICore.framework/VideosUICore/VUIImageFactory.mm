@interface VUIImageFactory
+ (id)URLFromDescriptor:(id)a3;
+ (id)URLFromSource:(id)a3 extension:(id)a4 p3Specifier:(id)a5 cropCode:(id)a6 imageSize:(CGSize)a7 displayScaleIsPointMultiplier:(BOOL)a8 centerGrowth:(BOOL)a9 focusSizeIncrease:(double)a10;
+ (id)_getResourceImageFromDescriptor:(id)a3;
+ (id)_imageProxyWithURL:(id)a3;
+ (id)_makeImageViewWithDescriptor:(id)a3 proxy:(id)a4 existingView:(id)a5;
+ (id)_makeSourceStringFromSource:(id)a3 p3Specifier:(id)a4;
+ (id)makeImageProxyWithDescriptor:(id)a3;
+ (id)makeImageViewWithDescriptor:(id)a3 imageProxy:(id)a4 existingView:(id)a5;
+ (id)makeImageViewWithResourceDescriptor:(id)a3 existingView:(id)a4;
+ (id)makeImageWithImage:(id)a3 existingView:(id)a4;
@end

@implementation VUIImageFactory

+ (id)makeImageProxyWithDescriptor:(id)a3
{
  v3 = [VUIImageFactory URLFromDescriptor:a3];
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

+ (id)URLFromDescriptor:(id)a3
{
  v3 = a3;
  v4 = [v3 src];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 src];
    v7 = [v3 extension];
    v8 = [v3 p3Specifier];
    v9 = [v3 cropCode];
    [v3 downloadSize];
    if (v11 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8))
    {
      [v3 boundingSize];
    }

    else
    {
      [v3 downloadSize];
    }

    v15 = +[VUIImageFactory URLFromSource:extension:p3Specifier:cropCode:imageSize:displayScaleIsPointMultiplier:centerGrowth:focusSizeIncrease:](VUIImageFactory, "URLFromSource:extension:p3Specifier:cropCode:imageSize:displayScaleIsPointMultiplier:centerGrowth:focusSizeIncrease:", v6, v7, v8, v9, [v3 displayScaleIsPointMultiplier], 0, v13, v14, 0.0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)makeImageViewWithDescriptor:(id)a3 imageProxy:(id)a4 existingView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = v8;
    if (!v10)
    {
      v10 = [VUIImageFactory makeImageProxyWithDescriptor:v7];
    }

    v11 = [VUIImageFactory _makeImageViewWithDescriptor:v7 proxy:v10 existingView:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)makeImageWithImage:(id)a3 existingView:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  [v7 setImage:v5];

  return v8;
}

+ (id)makeImageViewWithResourceDescriptor:(id)a3 existingView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 type];
  v8 = [VUIImageFactory _getResourceImageFromDescriptor:v5];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v11 = v7 == 1;
  v12 = v7 == 1;
  v13 = !v11;
  [v9 setImage:v8];
  [v10 setSymbolImage:v13];
  [v10 setResourceImage:v12];
  [v5 size];
  [v10 setLocalImageViewSize:?];
  v14 = [v5 tintColor];
  [v10 _setTintColor:v14];

  v15 = [v5 highlightColor];
  [v10 _setFocusedColor:v15];

  [v5 borderRadii];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if (![VUICoreUtilities radiiIsZero:?])
  {
    [VUICoreUtilities radiusFromCornerRadii:v17, v19, v21, v23];
    [v10 setCornerRadius:?];
  }

  if ([v5 scaleMode] == 1)
  {
    v24 = 1;
LABEL_15:
    [v10 setVuiContentMode:v24];
    goto LABEL_16;
  }

  if ([v5 scaleMode] == 3)
  {
    v24 = 2;
    goto LABEL_15;
  }

LABEL_16:
  v25 = [v5 accessibilityText];
  if ([v25 length])
  {
    [v10 vui_setAccessibilityText:v25];
    [v10 vui_isAccessibilityElement:1];
  }

LABEL_19:

  return v10;
}

+ (id)_makeImageViewWithDescriptor:(id)a3 proxy:(id)a4 existingView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    goto LABEL_53;
  }

  v11 = [v7 tintColor];
  v12 = [v7 highlightColor];
  [v7 boundingSize];
  v14 = v13;
  v16 = v15;
  [v7 borderRadii];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v7 scaleMode];
  v26 = [v7 optimizedImageRendering];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [v7 borderColor];
    [v7 borderWidth];
    v29 = v28;
    if ([v7 decoratorType] == 1 || (v26 & 1) != 0 || !v27 || v29 <= 0.0)
    {
      v30 = objc_alloc_init(VUIImageScaleDecorator);
    }

    else
    {
      v30 = [VUIImageOutlineDecorator decoratorWithOutlineColor:v27 outlineWidths:v29, v29, v29, v29];
    }

    v31 = v30;
    if (v30)
    {
      [(VUIImageScaleDecorator *)v30 setScaleToSize:v14, v16];
      [(VUIImageScaleDecorator *)v31 setScaleMode:v25];
      if ((v26 & 1) == 0)
      {
        [(VUIImageScaleDecorator *)v31 setCornerRadii:v18, v20, v22, v24];
        -[VUIImageScaleDecorator setCornerContinuous:](v31, "setCornerContinuous:", [v7 continuousBorder]);
      }

      if (v25 == 2)
      {
        v32 = [v7 backgroundColor];
        [(VUIImageScaleDecorator *)v31 setBgColor:v32];
      }

      v33 = [v8 decorator];

      if (!v33)
      {
        [v8 setDecorator:v31];
        [v8 setOptimizedImageRendering:v26];
      }
    }
  }

  if (v14 != *MEMORY[0x277CBF3A8] || v16 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v65 = v25;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v9;
    }

    else
    {
      v35 = objc_alloc_init(VUIImageView);
    }

    v10 = v35;
    v36 = [v7 accessibilityText];
    v37 = [v36 length];

    if (v37)
    {
      v38 = [v7 accessibilityText];
      [(UIView *)v10 vui_setAccessibilityText:v38];

      [(UIView *)v10 vui_isAccessibilityElement:1];
    }

    if (([v7 sizeComputationOnly] & 1) == 0)
    {
      [(VUIImageView *)v10 setBounds:0.0, 0.0, v14, v16];
    }

    if (([v7 sizeComputationOnly] & 1) == 0)
    {
      -[VUIImageView setImageProxy:clearingExisting:completion:](v10, "setImageProxy:clearingExisting:completion:", v8, [v7 clearsExisting], 0);
    }

    if (v26)
    {
      [VUICoreUtilities radiusFromCornerRadii:v18, v20, v22, v24];
      [(VUIImageView *)v10 setCornerRadius:?];
      v39 = [v7 borderColor];
      [(VUIImageView *)v10 setBorderColor:v39];

      [v7 borderWidth];
      [(VUIImageView *)v10 setBorderWidth:?];
      if ([v7 scaleMode] == 1)
      {
        v40 = v10;
        v41 = 1;
LABEL_38:
        [(VUIImageView *)v40 setVuiContentMode:v41];
        goto LABEL_39;
      }

      if ([v7 scaleMode] == 3)
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
    v42 = [v7 placeholderSrc];
    v43 = [v7 placeholderColor];
    if (v43)
    {
      [(VUIImageView *)v10 setPlaceholderColor:v43];
    }

    else if ([v42 length])
    {
      [v7 accessibilityText];
      v44 = v12;
      v46 = v45 = v11;
      v47 = [VUICoreUtilities imageForResource:v42 accessibilityDescription:v46];

      v11 = v45;
      v12 = v44;
      [(VUIImageView *)v10 setPlaceholderImage:v47];
    }

    v48 = [v7 shadow];
    if (v48)
    {
      [(VUIImageView *)v10 setImageContainsShadow:1];
      -[VUIImageView setAnimatesShadowChanges:](v10, "setAnimatesShadowChanges:", [v7 animatesShadowChanges]);
      [(VUIImageView *)v10 setShadowRadii:v18, v20, v22, v24];
      [(VUIImageView *)v10 layer];
      v64 = v42;
      v49 = v12;
      v51 = v50 = v11;
      [v51 setMasksToBounds:0];

      v52 = [(VUIImageView *)v10 layer];
      [v7 containerSize];
      [v52 setShadowPath:{+[VUICoreUtilities shadowPathWithCornerRadii:andScaledSize:](VUICoreUtilities, "shadowPathWithCornerRadii:andScaledSize:", v18, v20, v22, v24, v53, v54)}];

      v55 = [(VUIImageView *)v10 layer];
      [v48 shadowOffset];
      [v55 setShadowOffset:?];

      v56 = [(VUIImageView *)v10 layer];
      [v48 shadowBlurRadius];
      [v56 setShadowRadius:?];

      v57 = [(VUIImageView *)v10 layer];
      v58 = [v48 shadowColor];
      [v57 setShadowColor:{objc_msgSend(v58, "CGColor")}];

      v11 = v50;
      v12 = v49;
      v42 = v64;

      v59 = 1.0;
    }

    else
    {
      [(VUIImageView *)v10 setImageContainsShadow:0];
      [(VUIImageView *)v10 setAnimatesShadowChanges:0];
      [(VUIImageView *)v10 setShadowRadii:0.0, 0.0, 0.0, 0.0];
      v59 = 0.0;
    }

    v60 = [(VUIImageView *)v10 layer];
    *&v61 = v59;
    [v60 setShadowOpacity:v61];

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
    [(VUIImageView *)v10 _setTintColor:v11];
    [(VUIImageView *)v10 _setFocusedColor:v12];
    if ([v7 loadsImmediately])
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

+ (id)URLFromSource:(id)a3 extension:(id)a4 p3Specifier:(id)a5 cropCode:(id)a6 imageSize:(CGSize)a7 displayScaleIsPointMultiplier:(BOOL)a8 centerGrowth:(BOOL)a9 focusSizeIncrease:(double)a10
{
  v11 = a9;
  height = a7.height;
  width = a7.width;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  if (URLFromSource_extension_p3Specifier_cropCode_imageSize_displayScaleIsPointMultiplier_centerGrowth_focusSizeIncrease__onceToken == -1)
  {
    if (a8)
    {
LABEL_3:
      v23 = [MEMORY[0x277D759A0] mainScreen];
      [v23 vui_scale];
      v25 = v24;

      goto LABEL_6;
    }
  }

  else
  {
    +[VUIImageFactory URLFromSource:extension:p3Specifier:cropCode:imageSize:displayScaleIsPointMultiplier:centerGrowth:focusSizeIncrease:];
    if (a8)
    {
      goto LABEL_3;
    }
  }

  v25 = *&URLFromSource_extension_p3Specifier_cropCode_imageSize_displayScaleIsPointMultiplier_centerGrowth_focusSizeIncrease__sPointMultiplier;
LABEL_6:
  v26 = fabs(round(width * v25));
  v27 = round(height * v25);
  v28 = fabs(v27);
  if (v11)
  {
    v29 = v28 + a10 * v25;
  }

  else
  {
    v30 = v27;
    v31 = round(v26 / fabsf(v30) * 100.0) / 100.0;
    if (v26 <= v28)
    {
      v29 = v28 + a10 * v25;
      v26 = round(v29 * v31);
    }

    else
    {
      v26 = v26 + a10 * v25;
      v29 = round(v26 / v31);
    }
  }

  v32 = MEMORY[0x277CCA900];
  v33 = v19;
  v34 = [v32 whitespaceAndNewlineCharacterSet];
  v35 = [v33 stringByTrimmingCharactersInSet:v34];

  LODWORD(v36) = vcvtpd_s64_f64(v26);
  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v36];
  v38 = [v35 stringByReplacingOccurrencesOfString:@"{w}" withString:v37];

  LODWORD(v39) = vcvtpd_s64_f64(v29);
  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v39];
  v41 = [v38 stringByReplacingOccurrencesOfString:@"{h}" withString:v40];

  if (v22)
  {
    v42 = v22;
  }

  else
  {
    v42 = &stru_2880D3950;
  }

  v43 = [v41 stringByReplacingOccurrencesOfString:@"{c}" withString:v42];

  if (v20)
  {
    v44 = v20;
  }

  else
  {
    v44 = &stru_2880D3950;
  }

  v45 = [v43 stringByReplacingOccurrencesOfString:@"{f}" withString:v44];

  v46 = [a1 _makeSourceStringFromSource:v45 p3Specifier:v21];

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

+ (id)_makeSourceStringFromSource:(id)a3 p3Specifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([(__CFString *)v6 length])
  {
    v7 = [MEMORY[0x277D759A0] vui_main];
    v8 = [v7 vui_canRepresentDisplayGamutP3];

    v9 = &stru_2880D3950;
    if (v8)
    {
      if (v6)
      {
        v10 = v6;
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

  v11 = [v5 stringByReplacingOccurrencesOfString:@"{p3}" withString:v9];

  return v11;
}

+ (id)_imageProxyWithURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  if ([v3 vuicore_isAppIconURL])
  {
    v5 = [v4 host];
    v6 = [VUIImageProxy alloc];
    v7 = +[VUIAppIconImageLoader sharedInstance];
    v8 = [(VUIImageProxy *)v6 initWithObject:v5 imageLoader:v7 groupType:0];

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

+ (id)_getResourceImageFromDescriptor:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = v4;
  if (v3 && [v4 length])
  {
    if ([v3 type])
    {
      v6 = [v3 accessibilityText];
      v7 = [VUICoreUtilities imageForResource:v5 accessibilityDescription:v6];

      if (![v3 shouldRenderAsTemplate])
      {
        goto LABEL_9;
      }

      v8 = [v7 vuiTemplateImage];
    }

    else
    {
      v9 = MEMORY[0x277D755B8];
      v7 = [v3 symbolConfiguration];
      v10 = [v3 accessibilityText];
      v8 = [v9 vuiSystemImageNamed:v5 withConfiguration:v7 accessibilityDescription:v10];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

@end