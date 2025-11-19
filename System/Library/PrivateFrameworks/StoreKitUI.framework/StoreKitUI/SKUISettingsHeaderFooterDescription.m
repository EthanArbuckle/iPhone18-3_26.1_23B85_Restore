@interface SKUISettingsHeaderFooterDescription
+ (Class)viewClassForSettingsHeaderFooterDescription:(id)a3;
+ (id)_settingsHeaderFooterDescriptionWithFooterElement:(id)a3;
+ (id)_settingsHeaderFooterDescriptionWithHeaderElement:(id)a3;
+ (id)settingsHeaderFooterDescriptionWithViewElement:(id)a3;
- (SKUISettingsHeaderFooterDescription)initWithViewElement:(id)a3;
@end

@implementation SKUISettingsHeaderFooterDescription

- (SKUISettingsHeaderFooterDescription)initWithViewElement:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v14->_viewElement, a3);
  }

  return v15;
}

+ (id)settingsHeaderFooterDescriptionWithViewElement:(id)a3
{
  v4 = a3;
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

  v13 = [v4 elementType];
  if (v13 == 41)
  {
    v14 = [a1 _settingsHeaderFooterDescriptionWithFooterElement:v4];
    goto LABEL_9;
  }

  if (v13 == 48)
  {
    v14 = [a1 _settingsHeaderFooterDescriptionWithHeaderElement:v4];
LABEL_9:
    v15 = v14;
    goto LABEL_11;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

+ (Class)viewClassForSettingsHeaderFooterDescription:(id)a3
{
  v3 = a3;
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

  v12 = [v3 _viewClassForSettingsHeaderFooterDescription:v3];

  return v12;
}

+ (id)_settingsHeaderFooterDescriptionWithFooterElement:(id)a3
{
  v3 = a3;
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

  v12 = [v3 children];
  v13 = [v12 firstObject];

  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = [v13 elementType];
  if (v14 == 138)
  {
    v15 = off_2781F6820;
    goto LABEL_11;
  }

  if (v14 != 12)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_12;
  }

  v15 = off_2781F6220;
LABEL_11:
  v16 = [objc_alloc(*v15) initWithViewElement:v3];
LABEL_12:

  return v16;
}

+ (id)_settingsHeaderFooterDescriptionWithHeaderElement:(id)a3
{
  v3 = a3;
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

  v12 = [v3 children];
  v13 = [v12 firstObject];

  if (v13 && [v13 elementType] == 138)
  {
    v14 = [(SKUISettingsHeaderFooterDescription *)[SKUITextHeaderSettingsHeaderFooterDescription alloc] initWithViewElement:v3];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end