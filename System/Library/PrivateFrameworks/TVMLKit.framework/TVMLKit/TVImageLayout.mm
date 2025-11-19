@interface TVImageLayout
+ (id)layoutWithLayout:(id)a3 element:(id)a4;
- (CGSize)_aspectFitToSize:(CGSize)a3 scaleToSize:(CGSize)a4 aspectRatio:(double)a5;
- (CGSize)decoratorSize;
- (CGSize)imageSize;
- (TVCornerRadii)borderRadii;
- (TVImageLayout)init;
- (UIEdgeInsets)borderWidth;
- (double)defaultFocusSizeIncrease;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TVImageLayout

+ (id)layoutWithLayout:(id)a3 element:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v22 = v6;
    goto LABEL_88;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = 0;
    goto LABEL_88;
  }

  v8 = v6;
  if (!v8)
  {
    v8 = objc_opt_new();
  }

  v104.receiver = a1;
  v104.super_class = &OBJC_METACLASS___TVImageLayout;
  v9 = objc_msgSendSuper2(&v104, sel_layoutWithLayout_element_, v8, v7);
  v10 = v7;
  v11 = [v10 style];
  v12 = [v11 tv_tintColor];
  if (![v12 colorType])
  {
    v13 = [v11 tv_tintColor];
    v14 = [v13 color];

    if (!v14)
    {
      goto LABEL_9;
    }

    [v8 setTintColor:v14];
    [v8 setDarkTintColor:v14];
    v12 = v14;
  }

LABEL_9:
  v15 = [v11 tv_darkTintColor];
  if (![v15 colorType])
  {
    v16 = [v11 tv_darkTintColor];
    v17 = [v16 color];

    if (!v17)
    {
      goto LABEL_13;
    }

    [v8 setDarkTintColor:v17];
    v15 = v17;
  }

LABEL_13:
  v18 = [v11 tv_highlightColor];
  v19 = [v18 color];

  if (v19)
  {
    [v8 setHighlightColor:v19];
  }

  [v11 tv_width];
  if (v20 == 0.0)
  {
    [v10 width];
  }

  else
  {
    [v11 tv_width];
  }

  v23 = v21;
  [v11 tv_height];
  if (v24 == 0.0)
  {
    [v10 height];
  }

  else
  {
    [v11 tv_height];
  }

  v26 = v25;
  if (v23 == 0.0)
  {
    [v8 imageSize];
    v23 = v27;
  }

  v99 = v19;
  v100 = v7;
  if (v26 == 0.0)
  {
    [v8 imageSize];
    v26 = v28;
  }

  v29 = [v8 imageSymbolConfiguration];
  v30 = [v11 tv_symbolScale];
  if (v30)
  {
    v31 = [MEMORY[0x277D755D0] configurationWithScale:v30];
    v32 = v31;
    if (v29)
    {
      v33 = [v29 configurationByApplyingConfiguration:v31];

      v29 = v33;
    }

    else
    {
      v29 = v31;
    }
  }

  v34 = [v11 tv_symbolWeight];
  if (v34)
  {
    v35 = [MEMORY[0x277D755D0] configurationWithWeight:v34];
    v36 = v35;
    if (v29)
    {
      v37 = [v29 configurationByApplyingConfiguration:v35];

      v29 = v37;
    }

    else
    {
      v29 = v35;
    }
  }

  [v11 tv_symbolPointSize];
  if (v38 != 0.0)
  {
    v39 = [MEMORY[0x277D755D0] configurationWithPointSize:?];
    v40 = v39;
    if (v29)
    {
      v41 = [v29 configurationByApplyingConfiguration:v39];

      v29 = v41;
    }

    else
    {
      v29 = v39;
    }
  }

  v42 = [v11 tv_symbolTextStyle];
  v98 = v42;
  if (v42)
  {
    v43 = [MEMORY[0x277D755D0] configurationWithTextStyle:v42];
    v44 = v43;
    if (v29)
    {
      v45 = [v29 configurationByApplyingConfiguration:v43];

      v29 = v45;
    }

    else
    {
      v29 = v43;
    }
  }

  [v8 setImageSymbolConfiguration:v29];
  if (v23 != *MEMORY[0x277CBF3A8] || v26 != *(MEMORY[0x277CBF3A8] + 8))
  {
    goto LABEL_57;
  }

  v46 = [v10 url];
  v47 = [v46 tv_isResourceURL];

  if (v47)
  {
    v48 = +[TVInterfaceFactory sharedInterfaceFactory];
    v49 = [v10 url];
    v50 = [v49 tv_resourceName];
    v51 = [v48 imageForResource:v50];

    goto LABEL_54;
  }

  v52 = [v10 url];
  v53 = [v52 tv_isSymbolURL];

  if (v53)
  {
    v54 = MEMORY[0x277D755B8];
    v55 = [v10 url];
    v56 = [v55 tv_symbolName];
    v57 = [v8 imageSymbolConfiguration];
    v48 = [v54 systemImageNamed:v56 withConfiguration:v57];

    if (!v48)
    {
      v51 = 0;
LABEL_55:

      if (v51)
      {
        [v51 size];
        v23 = v60;
        v26 = v61;
      }

      goto LABEL_57;
    }

    v58 = MEMORY[0x277D755B8];
    v59 = [v48 CGImage];
    v49 = [MEMORY[0x277D759A0] mainScreen];
    [v49 scale];
    v51 = [v58 imageWithCGImage:v59 scale:0 orientation:?];
LABEL_54:

    goto LABEL_55;
  }

LABEL_57:
  [v8 setImageSize:{v23, v26}];
  [v10 aspectRatio];
  if (v62 != 0.0)
  {
    [v8 setAspectRatio:?];
  }

  [v11 tv_imageUpscaleFactor];
  if (v63 != 0.0)
  {
    [v8 setUpscaleFactor:?];
  }

  v64 = [v10 tv_scaleModeWithDefaultMode:{objc_msgSend(v8, "scaleMode")}];
  if (v64)
  {
    [v8 setScaleMode:v64];
  }

  v65 = [v11 tv_borderColor];
  v66 = [v65 color];

  if (v66)
  {
    [v8 setBorderColor:v66];
  }

  [v11 tv_borderWidths];
  v68.f64[0] = v67;
  v68.f64[1] = v69;
  v71.f64[0] = v70;
  v71.f64[1] = v72;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v68, *MEMORY[0x277D768C8]), vceqq_f64(v71, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
  {
    [v8 setBorderWidth:?];
  }

  v73 = [v11 tv_shadow];
  if (v73)
  {
    [v8 setShadow:v73];
  }

  v96 = v73;
  v74 = [v11 tv_tintColor];

  if (v74)
  {
    v75 = [v11 tv_tintColor];
    [v8 setIkTintColor:v75];

    v76 = [v11 tv_tintColor];
    [v8 setIkDarkTintColor:v76];
  }

  v77 = [v11 tv_imageTreatment];
  if (v77)
  {
    [v8 setImageTreatment:v77];
  }

  v95 = v77;
  v78 = [v11 valueForStyle:@"tv-placeholder"];
  if (v78)
  {
    v79 = v78;
    if ([v78 isEqualToString:@"none"])
    {

      v79 = 0;
    }

    [v8 setPlaceholderArtworkName:v79];
  }

  v80 = [v10 attributes];
  v81 = [v80 valueForKey:@"inline-title"];

  if (v81)
  {
    [v8 setInlineTitle:v81];
  }

  v82 = [v11 borderRadius];
  if (v82)
  {
    [v8 setIkBorderRadius:v82];
  }

  v102 = TVCornerRadiiZero;
  v103 = *&qword_26CE880D8;
  if ([TVMLUtilities _cornerRadiiFromImageLayout:v8 cornerRadii:&v102 circle:0])
  {
    [v8 setBorderRadii:{v102, v103}];
  }

  v97 = v29;
  v101 = v6;
  v83 = [v11 valueForStyle:@"tv-border-continuous"];

  if (v83)
  {
    [v8 setContinuousBorder:{objc_msgSend(v11, "tv_borderContinuous")}];
  }

  v84 = v66;
  v85 = [v10 attributes];
  [v85 objectForKeyedSubscript:@"opaque"];
  v87 = v86 = v10;

  if (v87)
  {
    v88 = [v86 attributes];
    v89 = [v88 objectForKeyedSubscript:@"opaque"];
    [v8 setAllowsNonOpaqueShadows:{objc_msgSend(v89, "BOOLValue") ^ 1}];
  }

  v90 = [v86 appDocument];
  v91 = [v90 templateElement];
  v92 = [v91 style];
  v93 = [v92 tv_searchStyle];
  [v8 setUseInSearchPartial:{objc_msgSend(v93, "isEqualToString:", @"partial"}];

  v22 = v8;
  v7 = v100;
  v6 = v101;
LABEL_88:

  return v22;
}

- (TVImageLayout)init
{
  v3.receiver = self;
  v3.super_class = TVImageLayout;
  result = [(TVViewLayout *)&v3 init];
  if (result)
  {
    result->_scaleMode = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = TVImageLayout;
  v5 = [(TVViewLayout *)&v16 copyWithZone:?];
  [v5 setImageSize:{self->_imageSize.width, self->_imageSize.height}];
  [v5 setUpscaleFactor:self->_upscaleFactor];
  [v5 setAspectRatio:self->_aspectRatio];
  [v5 setScaleMode:self->_scaleMode];
  [v5 setBorderRadii:{self->_borderRadii.topLeft, self->_borderRadii.topRight, self->_borderRadii.bottomLeft, self->_borderRadii.bottomRight}];
  [v5 setBorderWidth:{self->_borderWidth.top, self->_borderWidth.left, self->_borderWidth.bottom, self->_borderWidth.right}];
  v6 = [(UIColor *)self->_borderColor copyWithZone:a3];
  [v5 setBorderColor:v6];

  [v5 setContinuousBorder:self->_continuousBorder];
  v7 = [(IKColor *)self->_ikTintColor copyWithZone:a3];
  [v5 setIkTintColor:v7];

  v8 = [(IKColor *)self->_ikDarkTintColor copyWithZone:a3];
  [v5 setIkDarkTintColor:v8];

  v9 = [(NSShadow *)self->_shadow copyWithZone:a3];
  [v5 setShadow:v9];

  v10 = [(NSString *)self->_placeholderArtworkName copyWithZone:a3];
  [v5 setPlaceholderArtworkName:v10];

  v11 = [(NSString *)self->_cropCode copyWithZone:a3];
  [v5 setCropCode:v11];

  v12 = [(UIImageSymbolConfiguration *)self->_imageSymbolConfiguration copyWithZone:a3];
  [v5 setImageSymbolConfiguration:v12];

  v13 = [(NSString *)self->_imageTreatment copyWithZone:a3];
  [v5 setImageTreatment:v13];

  [v5 setIkBorderRadius:self->_ikBorderRadius];
  v14 = [(NSString *)self->_inlineTitle copyWithZone:a3];
  [v5 setInlineTitle:v14];

  return v5;
}

- (CGSize)decoratorSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  aspectRatio = self->_aspectRatio;
  if (aspectRatio != 0.0)
  {
    if (width == 0.0)
    {
      width = ceil(height * aspectRatio);
    }

    else if (height == 0.0)
    {
      height = ceil(width / aspectRatio);
    }
  }

  [(TVViewLayout *)self maxWidth];
  if (v6 != 0.0 || ([(TVViewLayout *)self maxHeight], v7 != 0.0))
  {
    if (self->_scaleMode == 1)
    {
      [(TVViewLayout *)self maxWidth];
      v9 = v8;
      [(TVViewLayout *)self maxHeight];
      [(TVImageLayout *)self _aspectFitToSize:v9 scaleToSize:v10 aspectRatio:width, height, aspectRatio];
      width = v11;
      height = v12;
    }
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)_aspectFitToSize:(CGSize)a3 scaleToSize:(CGSize)a4 aspectRatio:(double)a5
{
  width = a4.width;
  height = a3.height;
  v7 = a3.width;
  if (a3.width == 0.0 || a3.height == 0.0)
  {
    if (a3.height != 0.0)
    {
      if (a5 != 0.0 && a4.width == *MEMORY[0x277CBF3A8] && a4.height == *(MEMORY[0x277CBF3A8] + 8))
      {
        width = ceil(a3.height * a5);
      }

      else
      {
        if (a4.height <= a3.height)
        {
          goto LABEL_30;
        }

        width = a3.height * (a4.width / a4.height);
      }

      a4.height = a3.height;
      goto LABEL_30;
    }

    if (a3.width == 0.0)
    {
      goto LABEL_30;
    }

    if (a5 != 0.0 && (a4.width == *MEMORY[0x277CBF3A8] ? (v18 = a4.height == *(MEMORY[0x277CBF3A8] + 8)) : (v18 = 0), v18))
    {
      v19 = a3.width / a5;
    }

    else
    {
      if (a4.width <= a3.width || a4.height <= 0.0)
      {
        goto LABEL_30;
      }

      v19 = a3.width / (a4.width / a4.height);
    }

    a4.height = ceil(v19);
    width = v7;
    goto LABEL_30;
  }

  v8 = ceil(a3.height * a5);
  if (a4.width != *MEMORY[0x277CBF3A8] || a4.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    v8 = a4.width;
    a3.height = a4.height;
  }

  v9 = 0;
  v10 = 0;
  v11 = v7;
  v23 = AVMakeRectWithAspectRatioInsideRect(a3, *(&height - 3));
  x = v23.origin.x;
  y = v23.origin.y;
  v14 = v23.size.width;
  v15 = v23.size.height;
  width = ceil(CGRectGetWidth(v23));
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = v14;
  v24.size.height = v15;
  a4.height = ceil(CGRectGetHeight(v24));
LABEL_30:
  v20 = width;
  v21 = a4.height;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TVCornerRadii)borderRadii
{
  topLeft = self->_borderRadii.topLeft;
  topRight = self->_borderRadii.topRight;
  bottomLeft = self->_borderRadii.bottomLeft;
  bottomRight = self->_borderRadii.bottomRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topRight = topRight;
  result.topLeft = topLeft;
  return result;
}

- (UIEdgeInsets)borderWidth
{
  top = self->_borderWidth.top;
  left = self->_borderWidth.left;
  bottom = self->_borderWidth.bottom;
  right = self->_borderWidth.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)defaultFocusSizeIncrease
{
  if ([(TVViewLayout *)self centerGrowth])
  {
    v3 = +[TVMLUtilities _isSolariumMetricsEnabled];
    result = 60.0;
    if (v3)
    {
      return 40.0;
    }
  }

  else
  {
    [(TVImageLayout *)self decoratorSize];
    v6 = v5;
    v8 = v7;
    upscaleFactor = self->_upscaleFactor;
    v10 = [(TVImageLayout *)self useInSearchPartial];

    [TVMLUtilities focusedSizeIncreaseForSize:v10 upscaleFactor:v6 useInSearchPartial:v8, upscaleFactor];
  }

  return result;
}

@end