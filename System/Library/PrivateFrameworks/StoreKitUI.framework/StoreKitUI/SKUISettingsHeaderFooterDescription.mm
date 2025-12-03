@interface SKUISettingsHeaderFooterDescription
+ (Class)viewClassForSettingsHeaderFooterDescription:(id)description;
+ (id)_settingsHeaderFooterDescriptionWithFooterElement:(id)element;
+ (id)_settingsHeaderFooterDescriptionWithHeaderElement:(id)element;
+ (id)settingsHeaderFooterDescriptionWithViewElement:(id)element;
- (SKUISettingsHeaderFooterDescription)initWithViewElement:(id)element;
@end

@implementation SKUISettingsHeaderFooterDescription

- (SKUISettingsHeaderFooterDescription)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUISettingsHeaderFooterDescription *)v6 initWithViewElement:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v14 = [(SKUISettingsHeaderFooterDescription *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_viewElement, element);
  }

  return v15;
}

+ (id)settingsHeaderFooterDescriptionWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISettingsHeaderFooterDescription *)v5 settingsHeaderFooterDescriptionWithViewElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  elementType = [elementCopy elementType];
  if (elementType == 41)
  {
    v14 = [self _settingsHeaderFooterDescriptionWithFooterElement:elementCopy];
    goto LABEL_9;
  }

  if (elementType == 48)
  {
    v14 = [self _settingsHeaderFooterDescriptionWithHeaderElement:elementCopy];
LABEL_9:
    v15 = v14;
    goto LABEL_11;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

+ (Class)viewClassForSettingsHeaderFooterDescription:(id)description
{
  descriptionCopy = description;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUISettingsHeaderFooterDescription *)v4 viewClassForSettingsHeaderFooterDescription:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [descriptionCopy _viewClassForSettingsHeaderFooterDescription:descriptionCopy];

  return v12;
}

+ (id)_settingsHeaderFooterDescriptionWithFooterElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUISettingsHeaderFooterDescription *)v4 _settingsHeaderFooterDescriptionWithFooterElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  children = [elementCopy children];
  firstObject = [children firstObject];

  if (!firstObject)
  {
    goto LABEL_9;
  }

  elementType = [firstObject elementType];
  if (elementType == 138)
  {
    v15 = off_2781F6820;
    goto LABEL_11;
  }

  if (elementType != 12)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_12;
  }

  v15 = off_2781F6220;
LABEL_11:
  v16 = [objc_alloc(*v15) initWithViewElement:elementCopy];
LABEL_12:

  return v16;
}

+ (id)_settingsHeaderFooterDescriptionWithHeaderElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUISettingsHeaderFooterDescription *)v4 _settingsHeaderFooterDescriptionWithHeaderElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  children = [elementCopy children];
  firstObject = [children firstObject];

  if (firstObject && [firstObject elementType] == 138)
  {
    v14 = [(SKUISettingsHeaderFooterDescription *)[SKUITextHeaderSettingsHeaderFooterDescription alloc] initWithViewElement:elementCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end