@interface SKUIImageView
+ (Class)layerClass;
- (CGSize)imageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UITapGestureRecognizer)tapRecognizer;
- (void)layoutSubviews;
- (void)setContents:(id)a3;
- (void)setImage:(id)a3;
- (void)setPlaceholder:(id)a3;
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

- (void)setImage:(id)a3
{
  v4 = a3;
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
  [(SKUIImageView *)&v22 setImage:v4];
  if (v4)
  {
    [(SKUIImageView *)self setPlaceholder:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v4;
    [v13 cornerRadius];
    v15 = fabs(v14);
    if (v15 < 2.22044605e-16)
    {
      [(SKUIImageView *)self _setCornerRadius:0.0];
      v17 = 0.0;
    }

    else
    {
      v16 = [v13 cornerType];
      if (v16 == 1)
      {
        [v13 cornerRadius];
        [(SKUIImageView *)self _setCornerRadius:?];
        goto LABEL_15;
      }

      if (v16)
      {
LABEL_15:
        [(SKUIImageView *)self setClipsToBounds:v15 >= 2.22044605e-16];
        v18 = [(SKUIImageView *)self layer];
        [v13 borderWidth];
        matched = SKUIGraphicsMatchViewBorderToStroke(self, v19);
        [v18 setBorderWidth:?];
        v21 = [v13 borderColor];
        [v18 setBorderColor:{objc_msgSend(v21, "CGColor")}];

        [v18 setAllowsEdgeAntialiasing:fabs(matched) >= 2.22044605e-16];
        goto LABEL_16;
      }

      [v13 cornerRadius];
    }

    [(SKUIImageView *)self _setContinuousCornerRadius:v17];
    goto LABEL_15;
  }

  [(SKUIImageView *)self _setContinuousCornerRadius:0.0];
  [(SKUIImageView *)self _setCornerRadius:0.0];
  [(SKUIImageView *)self setClipsToBounds:0];
  v13 = [(SKUIImageView *)self layer];
  [v13 setBorderWidth:0.0];
  [v13 setBorderColor:0];
  [v13 setAllowsEdgeAntialiasing:0];
LABEL_16:
}

- (void)setPlaceholder:(id)a3
{
  v5 = a3;
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

  if (self->_placeholder != v5)
  {
    objc_storeStrong(&self->_placeholder, a3);
    v14 = [(SKUIImageView *)self layer];
    if (v5)
    {
      v15 = [(SKUIImagePlaceholder *)v5 borderColor];
      [v14 setStrokeColor:{objc_msgSend(v15, "CGColor")}];

      [(SKUIImagePlaceholder *)v5 borderWidth];
      [v14 setLineWidth:{SKUIGraphicsMatchViewBorderToStroke(self, v16)}];
      v17 = [(SKUIImagePlaceholder *)v5 cornerPathBlock];
      if (v17)
      {
        [(SKUIImageView *)self setCornerPathBlock:v17];
        self->_lastLayoutSize = *MEMORY[0x277CBF3A8];
        [(SKUIImageView *)self setNeedsLayout];
      }

      else
      {
        [(SKUIImageView *)self setCornerPathBlock:0];
        [v14 setPath:0];
      }

      v18 = [(SKUIImagePlaceholder *)v5 backgroundColor];
      [v14 setFillColor:{objc_msgSend(v18, "CGColor")}];
    }

    else
    {
      [(SKUIImageView *)self setCornerPathBlock:0];
      [v14 setStrokeColor:0];
      [v14 setLineWidth:0.0];
      [v14 setPath:0];
      [v14 setFillColor:0];
    }
  }
}

- (void)setContents:(id)a3
{
  v4 = a3;
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
    [(SKUIImageView *)self setImage:v4];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    [(SKUIImageView *)self setImage:0];
    if (isKindOfClass)
    {
      v14 = v4;
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
      v21 = [(SKUIImageView *)self layer];
      [v21 lineWidth];
      UIRoundToViewScale();
      v23 = v22;

      v27.origin.x = v15;
      v27.origin.y = v16;
      v27.size.width = v17;
      v27.size.height = v18;
      v28 = CGRectInset(v27, v23, v23);
      v24 = (*(self->_cornerPathBlock + 2))(v28.origin, *&v28.origin.y, v28.size, *&v28.size.height);
      v25 = [(SKUIImageView *)self layer];
      [v25 setPath:{objc_msgSend(v24, "CGPath")}];

      p_lastLayoutSize->width = v17;
      p_lastLayoutSize->height = v18;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
    v19 = [(SKUIImageView *)self image];
    [v19 size];
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