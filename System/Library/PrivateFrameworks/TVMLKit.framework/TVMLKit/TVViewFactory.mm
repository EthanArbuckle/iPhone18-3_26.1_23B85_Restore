@interface TVViewFactory
+ (CGSize)decorateImageProxy:(id)proxy forLayout:(id)layout;
+ (id)imageProxyWithURL:(id)l;
+ (id)imageStackViewWithDescription:(id)description layout:(id)layout existingView:(id)view;
+ (id)imageURLWithDescription:(id)description;
+ (id)imageViewWithDescription:(id)description layout:(id)layout existingView:(id)view;
@end

@implementation TVViewFactory

+ (id)imageURLWithDescription:(id)description
{
  descriptionCopy = description;
  if (imageURLWithDescription__onceToken != -1)
  {
    +[TVViewFactory imageURLWithDescription:];
  }

  [descriptionCopy imageSize];
  v5 = round(v4 * *&imageURLWithDescription__sPointMultiplier);
  [descriptionCopy imageSize];
  v7 = round(v6 * *&imageURLWithDescription__sPointMultiplier);
  if ([descriptionCopy centerGrowth])
  {
    [descriptionCopy focusSizeIncrease];
    v9 = v7 + v8 * *&imageURLWithDescription__sPointMultiplier;
  }

  else
  {
    v10 = v7;
    v11 = v5 / v10;
    [descriptionCopy focusSizeIncrease];
    v12 = v5 <= v7;
    v14 = v7 + v13 * *&imageURLWithDescription__sPointMultiplier;
    v15 = ceil(v11 * v14);
    v16 = v5 + v13 * *&imageURLWithDescription__sPointMultiplier;
    v17 = ceil(v16 / v11);
    if (v5 > v7)
    {
      v9 = v17;
    }

    else
    {
      v9 = v14;
    }

    if (v12)
    {
      v5 = v15;
    }

    else
    {
      v5 = v16;
    }
  }

  v18 = [descriptionCopy url];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v20 = [v18 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  LODWORD(v21) = vcvtpd_s64_f64(v5);
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v21];
  v23 = [v20 stringByReplacingOccurrencesOfString:@"{w}" withString:v22];

  LODWORD(v24) = vcvtpd_s64_f64(v9);
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v24];
  v26 = [v23 stringByReplacingOccurrencesOfString:@"{h}" withString:v25];

  cropCode = [descriptionCopy cropCode];
  v28 = cropCode;
  if (cropCode)
  {
    v29 = cropCode;
  }

  else
  {
    v29 = &stru_287E12870;
  }

  v30 = [v26 stringByReplacingOccurrencesOfString:@"{c}" withString:v29];

  urlFormat = [descriptionCopy urlFormat];
  v32 = urlFormat;
  if (urlFormat)
  {
    v33 = urlFormat;
  }

  else
  {
    v33 = &stru_287E12870;
  }

  v34 = [v30 stringByReplacingOccurrencesOfString:@"{f}" withString:v33];

  v35 = [MEMORY[0x277CBEBC0] URLWithString:v34];

  return v35;
}

void __41__TVViewFactory_imageURLWithDescription___block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v0 traitCollection];

  [v4 displayScale];
  v2 = v1 == 2.0;
  v3 = 1.5;
  if (!v2)
  {
    v3 = 2.0;
  }

  imageURLWithDescription__sPointMultiplier = *&v3;
}

+ (id)imageProxyWithURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (!lCopy)
  {
    goto LABEL_5;
  }

  if ([lCopy tv_isAppIconURL])
  {
    host = [v4 host];
    v6 = [TVImageProxy alloc];
    v7 = +[_TVAppIconImageLoader sharedInstance];
    v8 = [(TVImageProxy *)v6 initWithObject:host imageLoader:v7 groupType:0];

    [(TVImageProxy *)v8 setCacheOnLoad:+[TVMLUtilities canHandleDecodingOnRenderThread]^ 1];
    goto LABEL_7;
  }

  if ([v4 tv_imageURLType] != 1)
  {
    v9 = [TVImageProxy alloc];
    v10 = +[TVURLImageLoader sharedInstance];
    v8 = [(TVImageProxy *)v9 initWithObject:v4 imageLoader:v10 groupType:0];

    [(TVImageProxy *)v8 setCacheOnLoad:+[TVMLUtilities canHandleDecodingOnRenderThread]^ 1];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

+ (CGSize)decorateImageProxy:(id)proxy forLayout:(id)layout
{
  proxyCopy = proxy;
  layoutCopy = layout;
  [layoutCopy decoratorSize];
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v11 = proxyCopy;
  imageTreatment = [layoutCopy imageTreatment];
  [layoutCopy padding];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  allowsNonOpaqueShadows = [layoutCopy allowsNonOpaqueShadows];
  [layoutCopy focusSizeIncrease];
  v23 = v22;
  [layoutCopy borderRadii];
  [TVCornerUtilities radiusFromCornerRadii:?];
  v25 = v24;
  scaleMode = [layoutCopy scaleMode];
  if (![imageTreatment isEqualToString:@"postcard"])
  {
    if ([imageTreatment isEqualToString:@"16x9"])
    {
      v28 = _TVImage16x9Decorator;
    }

    else
    {
      if (![imageTreatment isEqualToString:@"keyframeArt"])
      {
        tintColor = [layoutCopy tintColor];

        if (!tintColor)
        {
          v27 = [[TVImageScaleDecorator alloc] initWithScaleToSize:v8, v10];
          goto LABEL_10;
        }

        v39 = [_TVTintedImageDecorator alloc];
        ikTintColor = [layoutCopy ikTintColor];
        v31 = [(_TVTintedImageDecorator *)v39 initWithTintColor:ikTintColor];
        goto LABEL_9;
      }

      v28 = _TVImageKeyFrameArtDecorator;
    }

    v29 = [v28 alloc];
    ikTintColor = [layoutCopy inlineTitle];
    v31 = [v29 initWithInlineTitle:ikTintColor];
LABEL_9:
    v27 = v31;

    goto LABEL_10;
  }

  v8 = v8 + v16 + v20;
  v10 = v10 + v14 + v18;
  v27 = [[TVImageScaleDecorator alloc] initWithScaleToSize:v8, v10];
  scaleMode = 2;
LABEL_10:
  -[TVImageScaleDecorator setCenterGrowth:](v27, "setCenterGrowth:", [layoutCopy centerGrowth]);
  [(TVImageScaleDecorator *)v27 setScaleToSize:v8, v10];
  [(TVImageScaleDecorator *)v27 setPadding:v14, v16, v18, v20];
  [(TVImageScaleDecorator *)v27 setScaleMode:scaleMode];
  [(TVImageScaleDecorator *)v27 setFocusedSizeIncrease:v23];
  if (((allowsNonOpaqueShadows & 1) != 0 || !+[TVMLUtilities canHandleDecodingOnRenderThread](TVMLUtilities, "canHandleDecodingOnRenderThread")) && ([layoutCopy centerGrowth] & 1) == 0)
  {
    [TVCornerUtilities radiiFromRadius:v25];
    [(TVImageScaleDecorator *)v27 setCornerRadii:?];
  }

  if (scaleMode == 2)
  {
    backgroundColor = [layoutCopy backgroundColor];
    [(TVImageScaleDecorator *)v27 setBgColor:backgroundColor];
  }

  decorator = [v11 decorator];

  if (!decorator)
  {
    [v11 setDecorator:v27];
  }

  [v11 expectedSize];
  v8 = v34;
  v10 = v35;

LABEL_19:
  v36 = v8;
  v37 = v10;
  result.height = v37;
  result.width = v36;
  return result;
}

+ (id)imageStackViewWithDescription:(id)description layout:(id)layout existingView:(id)view
{
  descriptionCopy = description;
  layoutCopy = layout;
  [descriptionCopy configureForMetrics];
  [layoutCopy decoratorSize];
  if (v10 >= 0.00000011920929 && v9 >= 0.00000011920929)
  {
    imageProxy = [descriptionCopy imageProxy];
    [self decorateImageProxy:imageProxy forLayout:layoutCopy];

    [0 tv_setLayout:layoutCopy];
  }

  return 0;
}

+ (id)imageViewWithDescription:(id)description layout:(id)layout existingView:(id)view
{
  descriptionCopy = description;
  layoutCopy = layout;
  viewCopy = view;
  imageProxy = [descriptionCopy imageProxy];
  tintColor = [layoutCopy tintColor];
  highlightColor = [layoutCopy highlightColor];
  [layoutCopy decoratorSize];
  v13 = v12;
  v15 = v14;
  [layoutCopy padding];
  v17 = v16;
  v19 = v18;
  v77 = v21;
  v78 = v20;
  [layoutCopy focusSizeIncrease];
  v76 = v22;
  [layoutCopy borderRadii];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  continuousBorder = [layoutCopy continuousBorder];
  scaleMode = [layoutCopy scaleMode];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v75 = tintColor;
  borderColor = [layoutCopy borderColor];
  [layoutCopy borderWidth];
  v73 = v34;
  v74 = v35;
  v71 = v36;
  v72 = v37;
  imageTreatment = [layoutCopy imageTreatment];
  if ([descriptionCopy isInBackgroundOrBanner])
  {
    goto LABEL_3;
  }

  if (borderColor)
  {
    v40.f64[0] = v73;
    v40.f64[1] = v74;
    v41.f64[0] = v71;
    v41.f64[1] = v72;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v40, *MEMORY[0x277D768C8]), vceqq_f64(v41, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
    {
      v39 = [TVImageOutlineDecorator decoratorWithOutlineColor:borderColor outlineWidths:v73, v74, v71, v72];
      goto LABEL_7;
    }
  }

  if ([imageTreatment isEqualToString:{@"postcard", v73, v74, v71, v72}])
  {
    v13 = v13 + v19 + v77;
    v15 = v15 + v17 + v78;
    v42 = [[TVImageScaleDecorator alloc] initWithScaleToSize:v13, v15];
    scaleMode = 2;
    goto LABEL_8;
  }

  if ([descriptionCopy hasGradient])
  {
    v67 = [_TVTintedImageDecorator alloc];
    ikTintColor = [layoutCopy ikTintColor];
    v69 = [(_TVTintedImageDecorator *)v67 initWithTintColor:ikTintColor];
LABEL_42:
    v42 = v69;

    goto LABEL_8;
  }

  if ([imageTreatment isEqualToString:@"16x9"])
  {
    v70 = [_TVImage16x9Decorator alloc];
    ikTintColor = [layoutCopy inlineTitle];
    v69 = [(_TVImage16x9Decorator *)v70 initWithInlineTitle:ikTintColor];
    goto LABEL_42;
  }

LABEL_3:
  v39 = objc_alloc_init(TVImageScaleDecorator);
LABEL_7:
  v42 = v39;
LABEL_8:
  if (v42)
  {
    [(TVImageScaleDecorator *)v42 setScaleToSize:v13, v15];
    [(TVImageScaleDecorator *)v42 setPadding:v17, v19, v78, v77];
    [(TVImageScaleDecorator *)v42 setFocusedSizeIncrease:v76];
    [(TVImageScaleDecorator *)v42 setScaleMode:scaleMode];
    [(TVImageScaleDecorator *)v42 setCornerRadii:v24, v26, v28, v30];
    [(TVImageScaleDecorator *)v42 setCornerContinuous:continuousBorder];
    if (scaleMode == 2)
    {
      backgroundColor = [layoutCopy backgroundColor];
      [(TVImageScaleDecorator *)v42 setBgColor:backgroundColor];
    }

    decorator = [imageProxy decorator];

    if (!decorator)
    {
      [imageProxy setDecorator:v42];
    }
  }

  tintColor = v75;
LABEL_14:
  if (v13 == *MEMORY[0x277CBF3A8] && v15 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v47 = 0;
    v48 = highlightColor;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = viewCopy;
    }

    else
    {
      v46 = objc_alloc_init(_TVImageView);
    }

    v47 = v46;
    -[_TVImageView setSemanticContentAttribute:](v46, "setSemanticContentAttribute:", [descriptionCopy semanticContentAttribute]);
    accessibilityText = [descriptionCopy accessibilityText];
    v50 = [accessibilityText length];

    if (v50)
    {
      accessibilityText2 = [descriptionCopy accessibilityText];
      [(UIView *)v47 tv_setAccessibilityText:accessibilityText2];
    }

    siriData = [descriptionCopy siriData];
    [(UIView *)v47 tv_setSiriData:siriData];

    [(_TVImageView *)v47 setBounds:0.0, 0.0, v13, v15];
    if (([descriptionCopy configureForMetrics] & 1) == 0)
    {
      v53 = tintColor;
      [(_TVImageView *)v47 setImageProxy:imageProxy];
      [TVCornerUtilities radiusFromCornerRadii:v24, v26, v28, v30];
      [(_TVImageView *)v47 setCornerRadius:?];
      [(_TVImageView *)v47 setImageContainsCornerRadius:1];
      placeholderImage = [descriptionCopy placeholderImage];
      [(_TVImageView *)v47 setPlaceholderImage:placeholderImage];

      shadow = [layoutCopy shadow];
      layer = [(_TVImageView *)v47 layer];
      v57 = layer;
      if (shadow)
      {
        [layer setShadowPath:{+[TVMLUtilities shadowPathWithCornerRadii:andScaledSize:](TVMLUtilities, "shadowPathWithCornerRadii:andScaledSize:", v24, v26, v28, v30, v13, v15)}];

        layer2 = [(_TVImageView *)v47 layer];
        [shadow shadowOffset];
        [layer2 setShadowOffset:?];

        layer3 = [(_TVImageView *)v47 layer];
        [shadow shadowBlurRadius];
        [layer3 setShadowRadius:?];

        layer4 = [(_TVImageView *)v47 layer];
        shadowColor = [shadow shadowColor];
        [layer4 setShadowColor:{objc_msgSend(shadowColor, "CGColor")}];

        layer = [(_TVImageView *)v47 layer];
        v57 = layer;
        LODWORD(v62) = 1.0;
      }

      else
      {
        v62 = 0.0;
      }

      [layer setShadowOpacity:v62];

      tintColor = v53;
    }

    if (scaleMode == 3)
    {
      v63 = 2;
    }

    else
    {
      v63 = 1;
    }

    [(_TVImageView *)v47 setContentMode:v63];
    [(_TVImageView *)v47 setContentsPosition:2];
    [(_TVImageView *)v47 _setTintColor:tintColor];
    darkTintColor = [layoutCopy darkTintColor];
    [(_TVImageView *)v47 _setDarkTintColor:darkTintColor];

    v48 = highlightColor;
    [(_TVImageView *)v47 _setFocusedColor:highlightColor];
    imageSymbolConfiguration = [layoutCopy imageSymbolConfiguration];
    [(_TVImageView *)v47 _setPreferredSymbolConfiguration:imageSymbolConfiguration];

    [(UIView *)v47 tv_setLayout:layoutCopy];
  }

  return v47;
}

@end