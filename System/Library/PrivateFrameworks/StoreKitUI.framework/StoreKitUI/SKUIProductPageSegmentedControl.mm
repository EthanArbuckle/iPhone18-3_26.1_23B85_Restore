@interface SKUIProductPageSegmentedControl
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SKUIProductPageSegmentedControl

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageSegmentedControl hitTest:withEvent:];
  }

  if ([(SKUIProductPageSegmentedControl *)self isEnabled]&& ![(SKUIProductPageSegmentedControl *)self isHidden])
  {
    [(SKUIProductPageSegmentedControl *)self bounds];
    v19.origin.x = v9 + -10.0;
    v19.origin.y = v10 + -10.0;
    v19.size.width = v11 + 20.0;
    v19.size.height = v12 + 20.0;
    v18.x = x;
    v18.y = y;
    if (CGRectContainsPoint(v19, v18))
    {
      v13 = self;
    }

    else
    {
      v13 = 0;
    }

    v8 = v13;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SKUIProductPageSegmentedControl;
    v8 = [(SKUIProductPageSegmentedControl *)&v16 hitTest:v7 withEvent:x, y];
  }

  v14 = v8;

  return v14;
}

- (void)hitTest:withEvent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageSegmentedControl hitTest:withEvent:]";
}

@end