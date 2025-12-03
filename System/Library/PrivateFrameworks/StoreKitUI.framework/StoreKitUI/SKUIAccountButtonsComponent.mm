@interface SKUIAccountButtonsComponent
- (SKUIAccountButtonsComponent)initWithCustomPageContext:(id)context;
- (SKUIAccountButtonsComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind;
- (SKUIAccountButtonsComponent)initWithViewElement:(id)element;
@end

@implementation SKUIAccountButtonsComponent

- (SKUIAccountButtonsComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIAccountButtonsComponent *)v5 initWithCustomPageContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUIAccountButtonsComponent;
  v13 = [(SKUIPageComponent *)&v17 initWithCustomPageContext:contextCopy];
  if (v13)
  {
    componentDictionary = [contextCopy componentDictionary];
    v15 = [componentDictionary objectForKey:@"hideTerms"];
    if (objc_opt_respondsToSelector())
    {
      v13->_hidesTermsAndConditions = [v15 BOOLValue];
    }
  }

  return v13;
}

- (SKUIAccountButtonsComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind
{
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIAccountButtonsComponent *)v7 initWithFeaturedContentContext:v8 kind:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v21.receiver = self;
  v21.super_class = SKUIAccountButtonsComponent;
  v15 = [(SKUIPageComponent *)&v21 initWithFeaturedContentContext:contextCopy kind:kind];
  if (v15)
  {
    componentDictionary = [contextCopy componentDictionary];
    v17 = [componentDictionary objectForKey:@"ecommerceLink"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[SKUILink alloc] initWithLinkDictionary:v17];
      ecommerceLink = v15->_ecommerceLink;
      v15->_ecommerceLink = v18;
    }
  }

  return v15;
}

- (SKUIAccountButtonsComponent)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIAccountButtonsComponent *)v5 initWithViewElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUIAccountButtonsComponent;
  v13 = [(SKUIPageComponent *)&v15 initWithViewElement:elementCopy];

  return v13;
}

@end