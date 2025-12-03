@interface TVImageLayout
+ (id)layoutWithLayout:(id)layout element:(id)element;
- (CGSize)_aspectFitToSize:(CGSize)size scaleToSize:(CGSize)toSize aspectRatio:(double)ratio;
- (CGSize)decoratorSize;
- (CGSize)imageSize;
- (TVCornerRadii)borderRadii;
- (TVImageLayout)init;
- (UIEdgeInsets)borderWidth;
- (double)defaultFocusSizeIncrease;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TVImageLayout

+ (id)layoutWithLayout:(id)layout element:(id)element
{
  layoutCopy = layout;
  elementCopy = element;
  if (!elementCopy)
  {
    v22 = layoutCopy;
    goto LABEL_88;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = 0;
    goto LABEL_88;
  }

  v8 = layoutCopy;
  if (!v8)
  {
    v8 = objc_opt_new();
  }

  v104.receiver = self;
  v104.super_class = &OBJC_METACLASS___TVImageLayout;
  v9 = objc_msgSendSuper2(&v104, sel_layoutWithLayout_element_, v8, elementCopy);
  v10 = elementCopy;
  style = [v10 style];
  tv_tintColor = [style tv_tintColor];
  if (![tv_tintColor colorType])
  {
    tv_tintColor2 = [style tv_tintColor];
    color = [tv_tintColor2 color];

    if (!color)
    {
      goto LABEL_9;
    }

    [v8 setTintColor:color];
    [v8 setDarkTintColor:color];
    tv_tintColor = color;
  }

LABEL_9:
  tv_darkTintColor = [style tv_darkTintColor];
  if (![tv_darkTintColor colorType])
  {
    tv_darkTintColor2 = [style tv_darkTintColor];
    color2 = [tv_darkTintColor2 color];

    if (!color2)
    {
      goto LABEL_13;
    }

    [v8 setDarkTintColor:color2];
    tv_darkTintColor = color2;
  }

LABEL_13:
  tv_highlightColor = [style tv_highlightColor];
  color3 = [tv_highlightColor color];

  if (color3)
  {
    [v8 setHighlightColor:color3];
  }

  [style tv_width];
  if (v20 == 0.0)
  {
    [v10 width];
  }

  else
  {
    [style tv_width];
  }

  v23 = v21;
  [style tv_height];
  if (v24 == 0.0)
  {
    [v10 height];
  }

  else
  {
    [style tv_height];
  }

  v26 = v25;
  if (v23 == 0.0)
  {
    [v8 imageSize];
    v23 = v27;
  }

  v99 = color3;
  v100 = elementCopy;
  if (v26 == 0.0)
  {
    [v8 imageSize];
    v26 = v28;
  }

  imageSymbolConfiguration = [v8 imageSymbolConfiguration];
  tv_symbolScale = [style tv_symbolScale];
  if (tv_symbolScale)
  {
    v31 = [MEMORY[0x277D755D0] configurationWithScale:tv_symbolScale];
    v32 = v31;
    if (imageSymbolConfiguration)
    {
      v33 = [imageSymbolConfiguration configurationByApplyingConfiguration:v31];

      imageSymbolConfiguration = v33;
    }

    else
    {
      imageSymbolConfiguration = v31;
    }
  }

  tv_symbolWeight = [style tv_symbolWeight];
  if (tv_symbolWeight)
  {
    v35 = [MEMORY[0x277D755D0] configurationWithWeight:tv_symbolWeight];
    v36 = v35;
    if (imageSymbolConfiguration)
    {
      v37 = [imageSymbolConfiguration configurationByApplyingConfiguration:v35];

      imageSymbolConfiguration = v37;
    }

    else
    {
      imageSymbolConfiguration = v35;
    }
  }

  [style tv_symbolPointSize];
  if (v38 != 0.0)
  {
    v39 = [MEMORY[0x277D755D0] configurationWithPointSize:?];
    v40 = v39;
    if (imageSymbolConfiguration)
    {
      v41 = [imageSymbolConfiguration configurationByApplyingConfiguration:v39];

      imageSymbolConfiguration = v41;
    }

    else
    {
      imageSymbolConfiguration = v39;
    }
  }

  tv_symbolTextStyle = [style tv_symbolTextStyle];
  v98 = tv_symbolTextStyle;
  if (tv_symbolTextStyle)
  {
    v43 = [MEMORY[0x277D755D0] configurationWithTextStyle:tv_symbolTextStyle];
    v44 = v43;
    if (imageSymbolConfiguration)
    {
      v45 = [imageSymbolConfiguration configurationByApplyingConfiguration:v43];

      imageSymbolConfiguration = v45;
    }

    else
    {
      imageSymbolConfiguration = v43;
    }
  }

  [v8 setImageSymbolConfiguration:imageSymbolConfiguration];
  if (v23 != *MEMORY[0x277CBF3A8] || v26 != *(MEMORY[0x277CBF3A8] + 8))
  {
    goto LABEL_57;
  }

  v46 = [v10 url];
  tv_isResourceURL = [v46 tv_isResourceURL];

  if (tv_isResourceURL)
  {
    v48 = +[TVInterfaceFactory sharedInterfaceFactory];
    mainScreen = [v10 url];
    tv_resourceName = [mainScreen tv_resourceName];
    v51 = [v48 imageForResource:tv_resourceName];

    goto LABEL_54;
  }

  v52 = [v10 url];
  tv_isSymbolURL = [v52 tv_isSymbolURL];

  if (tv_isSymbolURL)
  {
    v54 = MEMORY[0x277D755B8];
    v55 = [v10 url];
    tv_symbolName = [v55 tv_symbolName];
    imageSymbolConfiguration2 = [v8 imageSymbolConfiguration];
    v48 = [v54 systemImageNamed:tv_symbolName withConfiguration:imageSymbolConfiguration2];

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
    cGImage = [v48 CGImage];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v51 = [v58 imageWithCGImage:cGImage scale:0 orientation:?];
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

  [style tv_imageUpscaleFactor];
  if (v63 != 0.0)
  {
    [v8 setUpscaleFactor:?];
  }

  v64 = [v10 tv_scaleModeWithDefaultMode:{objc_msgSend(v8, "scaleMode")}];
  if (v64)
  {
    [v8 setScaleMode:v64];
  }

  tv_borderColor = [style tv_borderColor];
  color4 = [tv_borderColor color];

  if (color4)
  {
    [v8 setBorderColor:color4];
  }

  [style tv_borderWidths];
  v68.f64[0] = v67;
  v68.f64[1] = v69;
  v71.f64[0] = v70;
  v71.f64[1] = v72;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v68, *MEMORY[0x277D768C8]), vceqq_f64(v71, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
  {
    [v8 setBorderWidth:?];
  }

  tv_shadow = [style tv_shadow];
  if (tv_shadow)
  {
    [v8 setShadow:tv_shadow];
  }

  v96 = tv_shadow;
  tv_tintColor3 = [style tv_tintColor];

  if (tv_tintColor3)
  {
    tv_tintColor4 = [style tv_tintColor];
    [v8 setIkTintColor:tv_tintColor4];

    tv_tintColor5 = [style tv_tintColor];
    [v8 setIkDarkTintColor:tv_tintColor5];
  }

  tv_imageTreatment = [style tv_imageTreatment];
  if (tv_imageTreatment)
  {
    [v8 setImageTreatment:tv_imageTreatment];
  }

  v95 = tv_imageTreatment;
  v78 = [style valueForStyle:@"tv-placeholder"];
  if (v78)
  {
    v79 = v78;
    if ([v78 isEqualToString:@"none"])
    {

      v79 = 0;
    }

    [v8 setPlaceholderArtworkName:v79];
  }

  attributes = [v10 attributes];
  v81 = [attributes valueForKey:@"inline-title"];

  if (v81)
  {
    [v8 setInlineTitle:v81];
  }

  borderRadius = [style borderRadius];
  if (borderRadius)
  {
    [v8 setIkBorderRadius:borderRadius];
  }

  v102 = TVCornerRadiiZero;
  v103 = *&qword_26CE880D8;
  if ([TVMLUtilities _cornerRadiiFromImageLayout:v8 cornerRadii:&v102 circle:0])
  {
    [v8 setBorderRadii:{v102, v103}];
  }

  v97 = imageSymbolConfiguration;
  v101 = layoutCopy;
  v83 = [style valueForStyle:@"tv-border-continuous"];

  if (v83)
  {
    [v8 setContinuousBorder:{objc_msgSend(style, "tv_borderContinuous")}];
  }

  v84 = color4;
  attributes2 = [v10 attributes];
  [attributes2 objectForKeyedSubscript:@"opaque"];
  v87 = v86 = v10;

  if (v87)
  {
    attributes3 = [v86 attributes];
    v89 = [attributes3 objectForKeyedSubscript:@"opaque"];
    [v8 setAllowsNonOpaqueShadows:{objc_msgSend(v89, "BOOLValue") ^ 1}];
  }

  appDocument = [v86 appDocument];
  templateElement = [appDocument templateElement];
  style2 = [templateElement style];
  tv_searchStyle = [style2 tv_searchStyle];
  [v8 setUseInSearchPartial:{objc_msgSend(tv_searchStyle, "isEqualToString:", @"partial"}];

  v22 = v8;
  elementCopy = v100;
  layoutCopy = v101;
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

- (id)copyWithZone:(_NSZone *)zone
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
  v6 = [(UIColor *)self->_borderColor copyWithZone:zone];
  [v5 setBorderColor:v6];

  [v5 setContinuousBorder:self->_continuousBorder];
  v7 = [(IKColor *)self->_ikTintColor copyWithZone:zone];
  [v5 setIkTintColor:v7];

  v8 = [(IKColor *)self->_ikDarkTintColor copyWithZone:zone];
  [v5 setIkDarkTintColor:v8];

  v9 = [(NSShadow *)self->_shadow copyWithZone:zone];
  [v5 setShadow:v9];

  v10 = [(NSString *)self->_placeholderArtworkName copyWithZone:zone];
  [v5 setPlaceholderArtworkName:v10];

  v11 = [(NSString *)self->_cropCode copyWithZone:zone];
  [v5 setCropCode:v11];

  v12 = [(UIImageSymbolConfiguration *)self->_imageSymbolConfiguration copyWithZone:zone];
  [v5 setImageSymbolConfiguration:v12];

  v13 = [(NSString *)self->_imageTreatment copyWithZone:zone];
  [v5 setImageTreatment:v13];

  [v5 setIkBorderRadius:self->_ikBorderRadius];
  v14 = [(NSString *)self->_inlineTitle copyWithZone:zone];
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

- (CGSize)_aspectFitToSize:(CGSize)size scaleToSize:(CGSize)toSize aspectRatio:(double)ratio
{
  width = toSize.width;
  height = size.height;
  v7 = size.width;
  if (size.width == 0.0 || size.height == 0.0)
  {
    if (size.height != 0.0)
    {
      if (ratio != 0.0 && toSize.width == *MEMORY[0x277CBF3A8] && toSize.height == *(MEMORY[0x277CBF3A8] + 8))
      {
        width = ceil(size.height * ratio);
      }

      else
      {
        if (toSize.height <= size.height)
        {
          goto LABEL_30;
        }

        width = size.height * (toSize.width / toSize.height);
      }

      toSize.height = size.height;
      goto LABEL_30;
    }

    if (size.width == 0.0)
    {
      goto LABEL_30;
    }

    if (ratio != 0.0 && (toSize.width == *MEMORY[0x277CBF3A8] ? (v18 = toSize.height == *(MEMORY[0x277CBF3A8] + 8)) : (v18 = 0), v18))
    {
      v19 = size.width / ratio;
    }

    else
    {
      if (toSize.width <= size.width || toSize.height <= 0.0)
      {
        goto LABEL_30;
      }

      v19 = size.width / (toSize.width / toSize.height);
    }

    toSize.height = ceil(v19);
    width = v7;
    goto LABEL_30;
  }

  v8 = ceil(size.height * ratio);
  if (toSize.width != *MEMORY[0x277CBF3A8] || toSize.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    v8 = toSize.width;
    size.height = toSize.height;
  }

  v9 = 0;
  v10 = 0;
  v11 = v7;
  v23 = AVMakeRectWithAspectRatioInsideRect(size, *(&height - 3));
  x = v23.origin.x;
  y = v23.origin.y;
  v14 = v23.size.width;
  v15 = v23.size.height;
  width = ceil(CGRectGetWidth(v23));
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = v14;
  v24.size.height = v15;
  toSize.height = ceil(CGRectGetHeight(v24));
LABEL_30:
  v20 = width;
  v21 = toSize.height;
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
    useInSearchPartial = [(TVImageLayout *)self useInSearchPartial];

    [TVMLUtilities focusedSizeIncreaseForSize:useInSearchPartial upscaleFactor:v6 useInSearchPartial:v8, upscaleFactor];
  }

  return result;
}

@end