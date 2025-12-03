@interface SKUISegmentedControl
- (CGRect)frameForSegmentAtIndex:(int64_t)index;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation SKUISegmentedControl

- (CGRect)frameForSegmentAtIndex:(int64_t)index
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISegmentedControl frameForSegmentAtIndex:];
  }

  [(SKUISegmentedControl *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v7 / [(SKUISegmentedControl *)self numberOfSegments]* index;
  v12 = v8 / [(SKUISegmentedControl *)self numberOfSegments];
  v13 = v11;
  v14 = v6;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v12;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISegmentedControl touchesEnded:withEvent:];
  }

  v8.receiver = self;
  v8.super_class = SKUISegmentedControl;
  [(SKUISegmentedControl *)&v8 touchesEnded:endedCopy withEvent:eventCopy];
  [(SKUISegmentedControl *)self sendActionsForControlEvents:4096];
}

- (void)frameForSegmentAtIndex:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISegmentedControl frameForSegmentAtIndex:]";
}

- (void)touchesEnded:withEvent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISegmentedControl touchesEnded:withEvent:]";
}

@end