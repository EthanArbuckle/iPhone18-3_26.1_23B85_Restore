@interface SKUIScrollForwardingView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SKUIScrollForwardingView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIScrollForwardingView hitTest:withEvent:];
  }

  v11.receiver = self;
  v11.super_class = SKUIScrollForwardingView;
  v8 = [(SKUIScrollForwardingView *)&v11 hitTest:v7 withEvent:x, y];
  if (v8 == self)
  {
    v9 = [(SKUIScrollForwardingView *)self scrollView];

    v8 = v9;
  }

  return v8;
}

- (void)hitTest:withEvent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScrollForwardingView hitTest:withEvent:]";
}

@end