@interface SKUIDividerPageComponent
- (SKUIDividerPageComponent)initWithCustomPageContext:(id)context;
- (SKUIDividerPageComponent)initWithDividerTitle:(id)title;
- (SKUIDividerPageComponent)initWithViewElement:(id)element;
@end

@implementation SKUIDividerPageComponent

- (SKUIDividerPageComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDividerPageComponent initWithCustomPageContext:];
  }

  v11.receiver = self;
  v11.super_class = SKUIDividerPageComponent;
  v5 = [(SKUIPageComponent *)&v11 initWithCustomPageContext:contextCopy];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      title = v5->_title;
      v5->_title = v8;
    }
  }

  return v5;
}

- (SKUIDividerPageComponent)initWithDividerTitle:(id)title
{
  titleCopy = title;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDividerPageComponent initWithDividerTitle:];
  }

  v9.receiver = self;
  v9.super_class = SKUIDividerPageComponent;
  v5 = [(SKUIDividerPageComponent *)&v9 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;
  }

  return v5;
}

- (SKUIDividerPageComponent)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIDividerPageComponent initWithViewElement:];
  }

  v7.receiver = self;
  v7.super_class = SKUIDividerPageComponent;
  v5 = [(SKUIPageComponent *)&v7 initWithViewElement:elementCopy];

  return v5;
}

- (void)initWithCustomPageContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDividerPageComponent initWithCustomPageContext:]";
}

- (void)initWithDividerTitle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDividerPageComponent initWithDividerTitle:]";
}

- (void)initWithViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDividerPageComponent initWithViewElement:]";
}

@end