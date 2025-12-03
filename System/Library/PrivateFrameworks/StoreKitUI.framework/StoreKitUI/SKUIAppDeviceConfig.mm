@interface SKUIAppDeviceConfig
- (BOOL)isTimeZoneSet;
- (CGSize)screenSize;
- (id)currentSizeClasses;
- (id)storeFrontCountryCode;
- (id)systemLanguage;
- (id)timeZone;
- (unint64_t)preferredVideoFormat;
- (unint64_t)preferredVideoPreviewFormat;
- (void)screenSize;
@end

@implementation SKUIAppDeviceConfig

- (BOOL)isTimeZoneSet
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIAppDeviceConfig *)v2 isTimeZoneSet:v3];
      }
    }
  }

  return 1;
}

- (unint64_t)preferredVideoFormat
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIAppDeviceConfig *)v2 preferredVideoFormat:v3];
      }
    }
  }

  return 0;
}

- (unint64_t)preferredVideoPreviewFormat
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIAppDeviceConfig *)v2 preferredVideoPreviewFormat:v3];
      }
    }
  }

  return 0;
}

- (CGSize)screenSize
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIAppDeviceConfig screenSize];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)currentSizeClasses
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIAppDeviceConfig *)v2 currentSizeClasses:v3];
      }
    }
  }

  return 0;
}

- (id)storeFrontCountryCode
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIAppDeviceConfig *)v2 storeFrontCountryCode:v3];
      }
    }
  }

  return 0;
}

- (id)systemLanguage
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIAppDeviceConfig *)v2 systemLanguage:v3];
      }
    }
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [standardUserDefaults arrayForKey:@"AppleLanguages"];

  firstObject = [v11 firstObject];

  return firstObject;
}

- (id)timeZone
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIAppDeviceConfig *)v2 timeZone:v3];
      }
    }
  }

  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];

  return systemTimeZone;
}

- (void)screenSize
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAppDeviceConfig screenSize]";
}

@end