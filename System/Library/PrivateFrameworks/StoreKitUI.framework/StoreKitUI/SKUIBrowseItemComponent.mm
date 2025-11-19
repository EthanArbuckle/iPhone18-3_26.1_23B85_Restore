@interface SKUIBrowseItemComponent
- (SKUIBrowseItemComponent)initWithViewElement:(id)a3;
@end

@implementation SKUIBrowseItemComponent

- (SKUIBrowseItemComponent)initWithViewElement:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrowseItemComponent initWithViewElement:];
  }

  v18.receiver = self;
  v18.super_class = SKUIBrowseItemComponent;
  v5 = [(SKUIPageComponent *)&v18 initWithViewElement:v4];
  if (v5)
  {
    v6 = [v4 metadata];
    if ([v6 count])
    {
      v7 = [v6 objectAtIndex:0];
      v8 = [v7 text];
      v9 = [v8 string];
      title = v5->_title;
      v5->_title = v9;
    }

    if ([v6 count] >= 2)
    {
      v11 = [v6 objectAtIndex:1];
      v12 = [v11 text];
      v13 = [v12 string];
      subtitle = v5->_subtitle;
      v5->_subtitle = v13;
    }

    v15 = [v4 decorationImage];
    decorationImage = v5->_decorationImage;
    v5->_decorationImage = v15;
  }

  return v5;
}

- (void)initWithViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrowseItemComponent initWithViewElement:]";
}

@end