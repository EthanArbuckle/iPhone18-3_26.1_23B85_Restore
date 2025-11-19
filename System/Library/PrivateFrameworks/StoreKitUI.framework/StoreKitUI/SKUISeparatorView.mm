@interface SKUISeparatorView
- (void)drawRect:(CGRect)a3;
- (void)setColor1:(id)a3;
- (void)setColor2:(id)a3;
- (void)setSeparatorStyle:(int64_t)a3;
@end

@implementation SKUISeparatorView

- (void)setColor1:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISeparatorView *)v5 setColor1:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_color1 != v4)
  {
    v13 = [(UIColor *)v4 copy];
    color1 = self->_color1;
    self->_color1 = v13;

    [(SKUISeparatorView *)self setNeedsDisplay];
  }
}

- (void)setColor2:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISeparatorView *)v5 setColor2:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_color2 != v4)
  {
    v13 = [(UIColor *)v4 copy];
    color2 = self->_color2;
    self->_color2 = v13;

    [(SKUISeparatorView *)self setNeedsDisplay];
  }
}

- (void)setSeparatorStyle:(int64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISeparatorView *)v5 setSeparatorStyle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_separatorStyle != a3)
  {
    self->_separatorStyle = a3;
    [(SKUISeparatorView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v4)
    {
      [(SKUISeparatorView *)v4 drawRect:v5, v6, v7, v8, v9, v10, v11];
    }
  }

  [(SKUISeparatorView *)self bounds];
  v14 = v12;
  v15 = v13;
  separatorStyle = self->_separatorStyle;
  if (separatorStyle == 1)
  {
    v20 = v12 * 0.5;
    v19 = floorf(v20);
    [(UIColor *)self->_color1 set];
    v18 = 0.0;
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = v19;
    v22.size.height = v15;
    UIRectFill(v22);
    [(UIColor *)self->_color2 set];
    v14 = v19;
  }

  else
  {
    if (separatorStyle)
    {
      return;
    }

    v17 = v13 * 0.5;
    v18 = floorf(v17);
    [(UIColor *)self->_color1 set];
    v19 = 0.0;
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = v14;
    v21.size.height = v18;
    UIRectFill(v21);
    [(UIColor *)self->_color2 set];
    v15 = v18;
  }

  v23.origin.x = v19;
  v23.origin.y = v18;
  v23.size.width = v14;
  v23.size.height = v15;
  UIRectFill(v23);
}

@end