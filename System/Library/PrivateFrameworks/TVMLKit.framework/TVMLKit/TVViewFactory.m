@interface TVViewFactory
+ (CGSize)decorateImageProxy:(id)a3 forLayout:(id)a4;
+ (id)imageProxyWithURL:(id)a3;
+ (id)imageStackViewWithDescription:(id)a3 layout:(id)a4 existingView:(id)a5;
+ (id)imageURLWithDescription:(id)a3;
+ (id)imageViewWithDescription:(id)a3 layout:(id)a4 existingView:(id)a5;
@end

@implementation TVViewFactory

+ (id)imageURLWithDescription:(id)a3
{
  v3 = a3;
  if (imageURLWithDescription__onceToken != -1)
  {
    +[TVViewFactory imageURLWithDescription:];
  }

  [v3 imageSize];
  v5 = round(v4 * *&imageURLWithDescription__sPointMultiplier);
  [v3 imageSize];
  v7 = round(v6 * *&imageURLWithDescription__sPointMultiplier);
  if ([v3 centerGrowth])
  {
    [v3 focusSizeIncrease];
    v9 = v7 + v8 * *&imageURLWithDescription__sPointMultiplier;
  }

  else
  {
    v10 = v7;
    v11 = v5 / v10;
    [v3 focusSizeIncrease];
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

  v18 = [v3 url];
  v19 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v20 = [v18 stringByTrimmingCharactersInSet:v19];

  LODWORD(v21) = vcvtpd_s64_f64(v5);
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v21];
  v23 = [v20 stringByReplacingOccurrencesOfString:@"{w}" withString:v22];

  LODWORD(v24) = vcvtpd_s64_f64(v9);
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v24];
  v26 = [v23 stringByReplacingOccurrencesOfString:@"{h}" withString:v25];

  v27 = [v3 cropCode];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = &stru_287E12870;
  }

  v30 = [v26 stringByReplacingOccurrencesOfString:@"{c}" withString:v29];

  v31 = [v3 urlFormat];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
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

+ (id)imageProxyWithURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  if ([v3 tv_isAppIconURL])
  {
    v5 = [v4 host];
    v6 = [TVImageProxy alloc];
    v7 = +[_TVAppIconImageLoader sharedInstance];
    v8 = [(TVImageProxy *)v6 initWithObject:v5 imageLoader:v7 groupType:0];

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

+ (CGSize)decorateImageProxy:(id)a3 forLayout:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 decoratorSize];
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v11 = v5;
  v12 = [v6 imageTreatment];
  [v6 padding];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v6 allowsNonOpaqueShadows];
  [v6 focusSizeIncrease];
  v23 = v22;
  [v6 borderRadii];
  [TVCornerUtilities radiusFromCornerRadii:?];
  v25 = v24;
  v26 = [v6 scaleMode];
  if (![v12 isEqualToString:@"postcard"])
  {
    if ([v12 isEqualToString:@"16x9"])
    {
      v28 = _TVImage16x9Decorator;
    }

    else
    {
      if (![v12 isEqualToString:@"keyframeArt"])
      {
        v38 = [v6 tintColor];

        if (!v38)
        {
          v27 = [[TVImageScaleDecorator alloc] initWithScaleToSize:v8, v10];
          goto LABEL_10;
        }

        v39 = [_TVTintedImageDecorator alloc];
        v30 = [v6 ikTintColor];
        v31 = [(_TVTintedImageDecorator *)v39 initWithTintColor:v30];
        goto LABEL_9;
      }

      v28 = _TVImageKeyFrameArtDecorator;
    }

    v29 = [v28 alloc];
    v30 = [v6 inlineTitle];
    v31 = [v29 initWithInlineTitle:v30];
LABEL_9:
    v27 = v31;

    goto LABEL_10;
  }

  v8 = v8 + v16 + v20;
  v10 = v10 + v14 + v18;
  v27 = [[TVImageScaleDecorator alloc] initWithScaleToSize:v8, v10];
  v26 = 2;
LABEL_10:
  -[TVImageScaleDecorator setCenterGrowth:](v27, "setCenterGrowth:", [v6 centerGrowth]);
  [(TVImageScaleDecorator *)v27 setScaleToSize:v8, v10];
  [(TVImageScaleDecorator *)v27 setPadding:v14, v16, v18, v20];
  [(TVImageScaleDecorator *)v27 setScaleMode:v26];
  [(TVImageScaleDecorator *)v27 setFocusedSizeIncrease:v23];
  if (((v21 & 1) != 0 || !+[TVMLUtilities canHandleDecodingOnRenderThread](TVMLUtilities, "canHandleDecodingOnRenderThread")) && ([v6 centerGrowth] & 1) == 0)
  {
    [TVCornerUtilities radiiFromRadius:v25];
    [(TVImageScaleDecorator *)v27 setCornerRadii:?];
  }

  if (v26 == 2)
  {
    v32 = [v6 backgroundColor];
    [(TVImageScaleDecorator *)v27 setBgColor:v32];
  }

  v33 = [v11 decorator];

  if (!v33)
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

+ (id)imageStackViewWithDescription:(id)a3 layout:(id)a4 existingView:(id)a5
{
  v7 = a3;
  v8 = a4;
  [v7 configureForMetrics];
  [v8 decoratorSize];
  if (v10 >= 0.00000011920929 && v9 >= 0.00000011920929)
  {
    v12 = [v7 imageProxy];
    [a1 decorateImageProxy:v12 forLayout:v8];

    [0 tv_setLayout:v8];
  }

  return 0;
}

+ (id)imageViewWithDescription:(id)a3 layout:(id)a4 existingView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 imageProxy];
  v11 = [v8 tintColor];
  v79 = [v8 highlightColor];
  [v8 decoratorSize];
  v13 = v12;
  v15 = v14;
  [v8 padding];
  v17 = v16;
  v19 = v18;
  v77 = v21;
  v78 = v20;
  [v8 focusSizeIncrease];
  v76 = v22;
  [v8 borderRadii];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v8 continuousBorder];
  v32 = [v8 scaleMode];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v75 = v11;
  v33 = [v8 borderColor];
  [v8 borderWidth];
  v73 = v34;
  v74 = v35;
  v71 = v36;
  v72 = v37;
  v38 = [v8 imageTreatment];
  if ([v7 isInBackgroundOrBanner])
  {
    goto LABEL_3;
  }

  if (v33)
  {
    v40.f64[0] = v73;
    v40.f64[1] = v74;
    v41.f64[0] = v71;
    v41.f64[1] = v72;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v40, *MEMORY[0x277D768C8]), vceqq_f64(v41, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
    {
      v39 = [TVImageOutlineDecorator decoratorWithOutlineColor:v33 outlineWidths:v73, v74, v71, v72];
      goto LABEL_7;
    }
  }

  if ([v38 isEqualToString:{@"postcard", v73, v74, v71, v72}])
  {
    v13 = v13 + v19 + v77;
    v15 = v15 + v17 + v78;
    v42 = [[TVImageScaleDecorator alloc] initWithScaleToSize:v13, v15];
    v32 = 2;
    goto LABEL_8;
  }

  if ([v7 hasGradient])
  {
    v67 = [_TVTintedImageDecorator alloc];
    v68 = [v8 ikTintColor];
    v69 = [(_TVTintedImageDecorator *)v67 initWithTintColor:v68];
LABEL_42:
    v42 = v69;

    goto LABEL_8;
  }

  if ([v38 isEqualToString:@"16x9"])
  {
    v70 = [_TVImage16x9Decorator alloc];
    v68 = [v8 inlineTitle];
    v69 = [(_TVImage16x9Decorator *)v70 initWithInlineTitle:v68];
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
    [(TVImageScaleDecorator *)v42 setScaleMode:v32];
    [(TVImageScaleDecorator *)v42 setCornerRadii:v24, v26, v28, v30];
    [(TVImageScaleDecorator *)v42 setCornerContinuous:v31];
    if (v32 == 2)
    {
      v43 = [v8 backgroundColor];
      [(TVImageScaleDecorator *)v42 setBgColor:v43];
    }

    v44 = [v10 decorator];

    if (!v44)
    {
      [v10 setDecorator:v42];
    }
  }

  v11 = v75;
LABEL_14:
  if (v13 == *MEMORY[0x277CBF3A8] && v15 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v47 = 0;
    v48 = v79;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v9;
    }

    else
    {
      v46 = objc_alloc_init(_TVImageView);
    }

    v47 = v46;
    -[_TVImageView setSemanticContentAttribute:](v46, "setSemanticContentAttribute:", [v7 semanticContentAttribute]);
    v49 = [v7 accessibilityText];
    v50 = [v49 length];

    if (v50)
    {
      v51 = [v7 accessibilityText];
      [(UIView *)v47 tv_setAccessibilityText:v51];
    }

    v52 = [v7 siriData];
    [(UIView *)v47 tv_setSiriData:v52];

    [(_TVImageView *)v47 setBounds:0.0, 0.0, v13, v15];
    if (([v7 configureForMetrics] & 1) == 0)
    {
      v53 = v11;
      [(_TVImageView *)v47 setImageProxy:v10];
      [TVCornerUtilities radiusFromCornerRadii:v24, v26, v28, v30];
      [(_TVImageView *)v47 setCornerRadius:?];
      [(_TVImageView *)v47 setImageContainsCornerRadius:1];
      v54 = [v7 placeholderImage];
      [(_TVImageView *)v47 setPlaceholderImage:v54];

      v55 = [v8 shadow];
      v56 = [(_TVImageView *)v47 layer];
      v57 = v56;
      if (v55)
      {
        [v56 setShadowPath:{+[TVMLUtilities shadowPathWithCornerRadii:andScaledSize:](TVMLUtilities, "shadowPathWithCornerRadii:andScaledSize:", v24, v26, v28, v30, v13, v15)}];

        v58 = [(_TVImageView *)v47 layer];
        [v55 shadowOffset];
        [v58 setShadowOffset:?];

        v59 = [(_TVImageView *)v47 layer];
        [v55 shadowBlurRadius];
        [v59 setShadowRadius:?];

        v60 = [(_TVImageView *)v47 layer];
        v61 = [v55 shadowColor];
        [v60 setShadowColor:{objc_msgSend(v61, "CGColor")}];

        v56 = [(_TVImageView *)v47 layer];
        v57 = v56;
        LODWORD(v62) = 1.0;
      }

      else
      {
        v62 = 0.0;
      }

      [v56 setShadowOpacity:v62];

      v11 = v53;
    }

    if (v32 == 3)
    {
      v63 = 2;
    }

    else
    {
      v63 = 1;
    }

    [(_TVImageView *)v47 setContentMode:v63];
    [(_TVImageView *)v47 setContentsPosition:2];
    [(_TVImageView *)v47 _setTintColor:v11];
    v64 = [v8 darkTintColor];
    [(_TVImageView *)v47 _setDarkTintColor:v64];

    v48 = v79;
    [(_TVImageView *)v47 _setFocusedColor:v79];
    v65 = [v8 imageSymbolConfiguration];
    [(_TVImageView *)v47 _setPreferredSymbolConfiguration:v65];

    [(UIView *)v47 tv_setLayout:v8];
  }

  return v47;
}

@end