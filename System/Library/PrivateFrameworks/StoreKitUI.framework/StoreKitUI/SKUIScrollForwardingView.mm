@interface SKUIScrollForwardingView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SKUIScrollForwardingView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIScrollForwardingView hitTest:withEvent:];
  }

  v11.receiver = self;
  v11.super_class = SKUIScrollForwardingView;
  v8 = [(SKUIScrollForwardingView *)&v11 hitTest:eventCopy withEvent:x, y];
  if (v8 == self)
  {
    scrollView = [(SKUIScrollForwardingView *)self scrollView];

    v8 = scrollView;
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