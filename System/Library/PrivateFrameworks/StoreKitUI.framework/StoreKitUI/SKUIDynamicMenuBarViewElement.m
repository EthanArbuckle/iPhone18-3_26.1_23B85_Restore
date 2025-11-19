@interface SKUIDynamicMenuBarViewElement
+ (Class)_shelfMenuBarViewElementClass;
+ (Class)_titlesMenuBarViewElementClass;
- (BOOL)isDynamicContainer;
@end

@implementation SKUIDynamicMenuBarViewElement

- (BOOL)isDynamicContainer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIDynamicMenuBarViewElement *)v2 isDynamicContainer:v3];
      }
    }
  }

  return 1;
}

+ (Class)_titlesMenuBarViewElementClass
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIDynamicMenuBarViewElement *)v2 _titlesMenuBarViewElementClass:v3];
      }
    }
  }

  v10 = objc_opt_class();

  return v10;
}

+ (Class)_shelfMenuBarViewElementClass
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIDynamicMenuBarViewElement *)v2 _shelfMenuBarViewElementClass:v3];
      }
    }
  }

  v10 = objc_opt_class();

  return v10;
}

@end