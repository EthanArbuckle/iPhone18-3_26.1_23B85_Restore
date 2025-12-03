@interface SKUICellLayoutView
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation SKUICellLayoutView

- (void)layoutSubviews
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICellLayoutView layoutSubviews]";
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICellLayoutView setBackgroundColor:];
  }

  [(SKUICellLayout *)self->_layout setBackgroundColor:colorCopy];
  v5.receiver = self;
  v5.super_class = SKUICellLayoutView;
  [(SKUICellLayoutView *)&v5 setBackgroundColor:colorCopy];
}

- (void)setBackgroundColor:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICellLayoutView setBackgroundColor:]";
}

@end