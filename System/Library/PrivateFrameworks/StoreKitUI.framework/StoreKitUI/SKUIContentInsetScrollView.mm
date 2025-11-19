@interface SKUIContentInsetScrollView
- (void)setScrollIndicatorInsets:(UIEdgeInsets)a3;
@end

@implementation SKUIContentInsetScrollView

- (void)setScrollIndicatorInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIContentInsetScrollView setScrollIndicatorInsets:];
  }

  v9.receiver = self;
  v9.super_class = SKUIContentInsetScrollView;
  [(SKUIContentInsetScrollView *)&v9 setScrollIndicatorInsets:top, left, bottom, right];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"SKUIScrollViewContentInsetDidChangeNotification" object:self];
}

- (void)setScrollIndicatorInsets:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIContentInsetScrollView setScrollIndicatorInsets:]";
}

@end