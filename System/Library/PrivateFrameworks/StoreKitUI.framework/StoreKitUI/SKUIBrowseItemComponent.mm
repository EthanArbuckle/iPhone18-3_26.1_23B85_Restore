@interface SKUIBrowseItemComponent
- (SKUIBrowseItemComponent)initWithViewElement:(id)element;
@end

@implementation SKUIBrowseItemComponent

- (SKUIBrowseItemComponent)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrowseItemComponent initWithViewElement:];
  }

  v18.receiver = self;
  v18.super_class = SKUIBrowseItemComponent;
  v5 = [(SKUIPageComponent *)&v18 initWithViewElement:elementCopy];
  if (v5)
  {
    metadata = [elementCopy metadata];
    if ([metadata count])
    {
      v7 = [metadata objectAtIndex:0];
      text = [v7 text];
      string = [text string];
      title = v5->_title;
      v5->_title = string;
    }

    if ([metadata count] >= 2)
    {
      v11 = [metadata objectAtIndex:1];
      text2 = [v11 text];
      string2 = [text2 string];
      subtitle = v5->_subtitle;
      v5->_subtitle = string2;
    }

    decorationImage = [elementCopy decorationImage];
    decorationImage = v5->_decorationImage;
    v5->_decorationImage = decorationImage;
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