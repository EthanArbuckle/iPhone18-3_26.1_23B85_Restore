@interface SKUIStackViewItemView
- (void)drawRect:(CGRect)rect;
- (void)setBorderColor:(id)color;
- (void)setImage:(id)image;
- (void)setShouldFlipImageHorizontal:(BOOL)horizontal;
- (void)setShouldFlipImageVertical:(BOOL)vertical;
@end

@implementation SKUIStackViewItemView

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStackViewItemView *)v5 setBorderColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_borderColor != colorCopy)
  {
    v13 = [(UIColor *)colorCopy copy];
    borderColor = self->_borderColor;
    self->_borderColor = v13;

    [(SKUIStackViewItemView *)self setNeedsDisplay];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIStackViewItemView *)v6 setImage:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_image != imageCopy)
  {
    objc_storeStrong(&self->_image, image);
    [(SKUIStackViewItemView *)self setNeedsDisplay];
  }
}

- (void)setShouldFlipImageHorizontal:(BOOL)horizontal
{
  horizontalCopy = horizontal;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStackViewItemView *)v5 setShouldFlipImageHorizontal:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_shouldFlipImageHorizontal != horizontalCopy)
  {
    self->_shouldFlipImageHorizontal = horizontalCopy;
    [(SKUIStackViewItemView *)self setNeedsDisplay];
  }
}

- (void)setShouldFlipImageVertical:(BOOL)vertical
{
  verticalCopy = vertical;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStackViewItemView *)v5 setShouldFlipImageVertical:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_shouldFlipImageVertical != verticalCopy)
  {
    self->_shouldFlipImageVertical = verticalCopy;
    [(SKUIStackViewItemView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIStackViewItemView *)v4 drawRect:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  [(SKUIStackViewItemView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  if (self->_shouldFlipImageHorizontal || self->_shouldFlipImageVertical)
  {
    v21 = 1.0;
    if (self->_shouldFlipImageHorizontal)
    {
      v22 = -1.0;
    }

    else
    {
      v22 = 1.0;
    }

    if (self->_shouldFlipImageVertical || !self->_shouldFlipImageHorizontal)
    {
      v21 = -1.0;
    }

    CGContextScaleCTM(CurrentContext, v22, v21);
    v23 = -v17;
    v24 = 0.0;
    if (!self->_shouldFlipImageHorizontal)
    {
      v23 = 0.0;
    }

    if (self->_shouldFlipImageVertical)
    {
      v24 = -v19;
    }

    CGContextTranslateCTM(CurrentContext, v23, v24);
  }

  [(UIImage *)self->_image drawInRect:v13, v15, v17, v19];
  CGContextRestoreGState(CurrentContext);
  borderColor = self->_borderColor;
  if (borderColor)
  {
    v26 = *&drawRect__borderWidth;
    if (*&drawRect__borderWidth == 0.0)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      *&drawRect__borderWidth = 1.0 / v28;

      borderColor = self->_borderColor;
    }

    [(UIColor *)borderColor set];
    *&v29.size.height = drawRect__borderWidth;
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = v17;
    UIRectFillUsingBlendMode(v29, kCGBlendModeNormal);
    *&v30.origin.y = drawRect__borderWidth;
    v30.origin.x = v17 - *&drawRect__borderWidth;
    v30.size.height = v19 - *&drawRect__borderWidth * 2.0;
    *&v30.size.width = drawRect__borderWidth;
    UIRectFillUsingBlendMode(v30, kCGBlendModeNormal);
    *&v31.size.height = drawRect__borderWidth;
    v31.origin.y = v19 - *&drawRect__borderWidth;
    v31.origin.x = 0.0;
    v31.size.width = v17;
    UIRectFillUsingBlendMode(v31, kCGBlendModeNormal);
    *&v32.origin.y = drawRect__borderWidth;
    v32.size.height = v19 - *&drawRect__borderWidth * 2.0;
    v32.origin.x = 0.0;
    *&v32.size.width = drawRect__borderWidth;
    UIRectFillUsingBlendMode(v32, kCGBlendModeNormal);
  }
}

@end