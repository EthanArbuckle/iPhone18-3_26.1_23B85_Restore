@interface SKUIAccountButtonsComponent
- (SKUIAccountButtonsComponent)initWithCustomPageContext:(id)a3;
- (SKUIAccountButtonsComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4;
- (SKUIAccountButtonsComponent)initWithViewElement:(id)a3;
@end

@implementation SKUIAccountButtonsComponent

- (SKUIAccountButtonsComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
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
  v13 = [(SKUIPageComponent *)&v17 initWithCustomPageContext:v4];
  if (v13)
  {
    v14 = [v4 componentDictionary];
    v15 = [v14 objectForKey:@"hideTerms"];
    if (objc_opt_respondsToSelector())
    {
      v13->_hidesTermsAndConditions = [v15 BOOLValue];
    }
  }

  return v13;
}

- (SKUIAccountButtonsComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
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
  v15 = [(SKUIPageComponent *)&v21 initWithFeaturedContentContext:v6 kind:a4];
  if (v15)
  {
    v16 = [v6 componentDictionary];
    v17 = [v16 objectForKey:@"ecommerceLink"];
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

- (SKUIAccountButtonsComponent)initWithViewElement:(id)a3
{
  v4 = a3;
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
  v13 = [(SKUIPageComponent *)&v15 initWithViewElement:v4];

  return v13;
}

@end