@interface SKUISpacePageComponent
- (SKUISpacePageComponent)initWithCustomPageContext:(id)a3;
@end

@implementation SKUISpacePageComponent

- (SKUISpacePageComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISpacePageComponent initWithCustomPageContext:];
  }

  v12.receiver = self;
  v12.super_class = SKUISpacePageComponent;
  v5 = [(SKUIPageComponent *)&v12 initWithCustomPageContext:v4];
  if (v5)
  {
    v6 = [v4 componentDictionary];
    v7 = [v6 objectForKey:@"size"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = SKUISpacePageComponentHeightForString(v7);
    }

    else
    {
      v9 = objc_opt_respondsToSelector();
      v8 = 7.0;
      if (v9)
      {
        [v7 floatValue];
        v8 = v10;
      }
    }

    v5->_height = v8;
  }

  return v5;
}

- (void)initWithCustomPageContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISpacePageComponent initWithCustomPageContext:]";
}

@end