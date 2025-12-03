@interface SKUIImageView
+ (Class)layerClass;
- (CGSize)imageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UITapGestureRecognizer)tapRecognizer;
- (void)layoutSubviews;
- (void)setContents:(id)contents;
- (void)setImage:(id)image;
- (void)setPlaceholder:(id)placeholder;
@end

@implementation SKUIImageView

+ (Class)layerClass
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        [(SKUIImageView *)v2 layerClass:v3];
      }
    }
  }

  v10 = objc_opt_class();

  return v10;
}

- (UITapGestureRecognizer)tapRecognizer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIImageView *)v3 tapRecognizer:v4];
      }
    }
  }

  tapRecognizer = self->_tapRecognizer;
  if (!tapRecognizer)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75B80]);
    v13 = self->_tapRecognizer;
    self->_tapRecognizer = v12;

    [(SKUIImageView *)self addGestureRecognizer:self->_tapRecognizer];
    tapRecognizer = self->_tapRecognizer;
  }

  return tapRecognizer;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIImageView *)v5 setImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v22.receiver = self;
  v22.super_class = SKUIImageView;
  [(SKUIImageView *)&v22 setImage:imageCopy];
  if (imageCopy)
  {
    [(SKUIImageView *)self setPlaceholder:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    layer2 = imageCopy;
    [layer2 cornerRadius];
    v15 = fabs(v14);
    if (v15 < 2.22044605e-16)
    {
      [(SKUIImageView *)self _setCornerRadius:0.0];
      v17 = 0.0;
    }

    else
    {
      cornerType = [layer2 cornerType];
      if (cornerType == 1)
      {
        [layer2 cornerRadius];
        [(SKUIImageView *)self _setCornerRadius:?];
        goto LABEL_15;
      }

      if (cornerType)
      {
LABEL_15:
        [(SKUIImageView *)self setClipsToBounds:v15 >= 2.22044605e-16];
        layer = [(SKUIImageView *)self layer];
        [layer2 borderWidth];
        matched = SKUIGraphicsMatchViewBorderToStroke(self, v19);
        [layer setBorderWidth:?];
        borderColor = [layer2 borderColor];
        [layer setBorderColor:{objc_msgSend(borderColor, "CGColor")}];

        [layer setAllowsEdgeAntialiasing:fabs(matched) >= 2.22044605e-16];
        goto LABEL_16;
      }

      [layer2 cornerRadius];
    }

    [(SKUIImageView *)self _setContinuousCornerRadius:v17];
    goto LABEL_15;
  }

  [(SKUIImageView *)self _setContinuousCornerRadius:0.0];
  [(SKUIImageView *)self _setCornerRadius:0.0];
  [(SKUIImageView *)self setClipsToBounds:0];
  layer2 = [(SKUIImageView *)self layer];
  [layer2 setBorderWidth:0.0];
  [layer2 setBorderColor:0];
  [layer2 setAllowsEdgeAntialiasing:0];
LABEL_16:
}

- (void)setPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        [(SKUIImageView *)v6 setPlaceholder:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_placeholder != placeholderCopy)
  {
    objc_storeStrong(&self->_placeholder, placeholder);
    layer = [(SKUIImageView *)self layer];
    if (placeholderCopy)
    {
      borderColor = [(SKUIImagePlaceholder *)placeholderCopy borderColor];
      [layer setStrokeColor:{objc_msgSend(borderColor, "CGColor")}];

      [(SKUIImagePlaceholder *)placeholderCopy borderWidth];
      [layer setLineWidth:{SKUIGraphicsMatchViewBorderToStroke(self, v16)}];
      cornerPathBlock = [(SKUIImagePlaceholder *)placeholderCopy cornerPathBlock];
      if (cornerPathBlock)
      {
        [(SKUIImageView *)self setCornerPathBlock:cornerPathBlock];
        self->_lastLayoutSize = *MEMORY[0x277CBF3A8];
        [(SKUIImageView *)self setNeedsLayout];
      }

      else
      {
        [(SKUIImageView *)self setCornerPathBlock:0];
        [layer setPath:0];
      }

      backgroundColor = [(SKUIImagePlaceholder *)placeholderCopy backgroundColor];
      [layer setFillColor:{objc_msgSend(backgroundColor, "CGColor")}];
    }

    else
    {
      [(SKUIImageView *)self setCornerPathBlock:0];
      [layer setStrokeColor:0];
      [layer setLineWidth:0.0];
      [layer setPath:0];
      [layer setFillColor:0];
    }
  }
}

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIImageView *)v5 setContents:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SKUIImageView *)self setImage:contentsCopy];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    [(SKUIImageView *)self setImage:0];
    if (isKindOfClass)
    {
      v14 = contentsCopy;
    }

    else
    {
      v14 = 0;
    }

    [(SKUIImageView *)self setPlaceholder:v14];
  }
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIImageView *)v3 layoutSubviews:v4];
      }
    }
  }

  v26.receiver = self;
  v26.super_class = SKUIImageView;
  [(SKUIImageView *)&v26 layoutSubviews];
  [(SKUIImageView *)self bounds];
  if (self->_cornerPathBlock)
  {
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    p_lastLayoutSize = &self->_lastLayoutSize;
    if (self->_lastLayoutSize.width != v13 || self->_lastLayoutSize.height != v14)
    {
      layer = [(SKUIImageView *)self layer];
      [layer lineWidth];
      UIRoundToViewScale();
      v23 = v22;

      v27.origin.x = v15;
      v27.origin.y = v16;
      v27.size.width = v17;
      v27.size.height = v18;
      v28 = CGRectInset(v27, v23, v23);
      v24 = (*(self->_cornerPathBlock + 2))(v28.origin, *&v28.origin.y, v28.size, *&v28.size.height);
      layer2 = [(SKUIImageView *)self layer];
      [layer2 setPath:{objc_msgSend(v24, "CGPath")}];

      p_lastLayoutSize->width = v17;
      p_lastLayoutSize->height = v18;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        [(SKUIImageView *)v6 sizeThatFits:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v14 = self->_imageSize.width;
  v15 = self->_imageSize.height;
  v16 = *MEMORY[0x277CBF3A8];
  v17 = *(MEMORY[0x277CBF3A8] + 8);
  if (v14 == *MEMORY[0x277CBF3A8] && v15 == v17)
  {
    image = [(SKUIImageView *)self image];
    [image size];
    v14 = v20;
    v15 = v21;
  }

  if (width >= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = width;
  }

  if (height == v17 && width == v16)
  {
    v22 = v14;
  }

  v24 = v15;
  result.height = v24;
  result.width = v22;
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

@end