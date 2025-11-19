@interface SKUITemplateDefinitionViewElement
- (NSString)definitionMode;
- (NSString)definitionType;
- (SKUIPredicateListViewElement)predicateListViewElement;
- (SKUIViewElement)contentViewElement;
@end

@implementation SKUITemplateDefinitionViewElement

- (SKUIViewElement)contentViewElement
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITemplateDefinitionViewElement *)v3 contentViewElement:v4];
      }
    }
  }

  v11 = [(SKUIViewElement *)self firstChildForElementType:26];

  return v11;
}

- (NSString)definitionMode
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITemplateDefinitionViewElement *)v3 definitionMode:v4];
      }
    }
  }

  v11 = [(SKUITemplateDefinitionViewElement *)self attributes];
  v12 = [v11 objectForKey:@"mode"];

  return v12;
}

- (NSString)definitionType
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITemplateDefinitionViewElement *)v3 definitionType:v4];
      }
    }
  }

  v11 = [(SKUITemplateDefinitionViewElement *)self attributes];
  v12 = [v11 objectForKey:@"type"];

  return v12;
}

- (SKUIPredicateListViewElement)predicateListViewElement
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITemplateDefinitionViewElement *)v3 predicateListViewElement:v4];
      }
    }
  }

  v11 = [(SKUIViewElement *)self firstChildForElementType:89];

  return v11;
}

@end