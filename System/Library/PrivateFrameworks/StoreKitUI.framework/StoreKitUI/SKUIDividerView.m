@interface SKUIDividerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)dividerColor;
- (void)dividerColor;
- (void)setBackgroundColor:(id)a3;
- (void)setDividerColor:(id)a3;
@end

@implementation SKUIDividerView

- (UIColor)dividerColor
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDividerView dividerColor];
  }

  v3 = [(SKUIDividerView *)self backgroundColor];

  return v3;
}

- (void)setDividerColor:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIDividerView setDividerColor:];
  }

  v5.receiver = self;
  v5.super_class = SKUIDividerView;
  [(SKUIDividerView *)&v5 setBackgroundColor:v4];
}

- (void)setBackgroundColor:(id)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIDividerView setBackgroundColor:];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDividerView sizeThatFits:];
  }

  dividerOrientation = self->_dividerOrientation;
  dividerSize = self->_dividerSize;
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v10 = 1.0 / v9;

  if (dividerSize >= 0.00000011920929)
  {
    v11 = dividerSize;
  }

  else
  {
    v11 = width;
  }

  if (dividerSize >= 0.00000011920929)
  {
    v12 = dividerSize;
  }

  else
  {
    v12 = height;
  }

  if (dividerOrientation)
  {
    v11 = v10;
  }

  else
  {
    v12 = v10;
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (void)dividerColor
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDividerView dividerColor]";
}

- (void)setDividerColor:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDividerView setDividerColor:]";
}

- (void)setBackgroundColor:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDividerView setBackgroundColor:]";
}

- (void)sizeThatFits:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDividerView sizeThatFits:]";
}

@end