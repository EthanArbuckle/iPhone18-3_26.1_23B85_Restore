@interface SKUIGiftDashView
- (CGSize)dashSize;
- (void)drawRect:(CGRect)rect;
@end

@implementation SKUIGiftDashView

- (void)drawRect:(CGRect)rect
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftDashView drawRect:];
  }

  [(SKUIGiftDashView *)self bounds];
  v5 = v4;
  v7 = v6;
  p_dashSize = &self->_dashSize;
  height = self->_dashSize.height;
  [(UIColor *)self->_dashColor set];
  if (v5 > 0.0)
  {
    v10 = (v7 - height) * 0.5;
    v11 = floorf(v10);
    v12 = 0.0;
    do
    {
      if (p_dashSize->width >= v5 - v12)
      {
        width = v5 - v12;
      }

      else
      {
        width = p_dashSize->width;
      }

      v15 = v12;
      v16 = v11;
      v13 = self->_dashSize.height;
      UIRectFill(*(&width - 2));
      v12 = v12 + self->_dashSpacing;
    }

    while (v12 < v5);
  }
}

- (CGSize)dashSize
{
  width = self->_dashSize.width;
  height = self->_dashSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)drawRect:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftDashView drawRect:]";
}

@end