@interface SKUIContextActionsBlurEffect
+ (id)effectWithStyle:(int64_t)style;
- (id)effectSettings;
- (void)effectSettings;
@end

@implementation SKUIContextActionsBlurEffect

+ (id)effectWithStyle:(int64_t)style
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIContextActionsBlurEffect effectWithStyle:];
  }

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___SKUIContextActionsBlurEffect;
  v5 = objc_msgSendSuper2(&v7, sel_effectWithStyle_, style);

  return v5;
}

- (id)effectSettings
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIContextActionsBlurEffect effectSettings];
  }

  v8.receiver = self;
  v8.super_class = SKUIContextActionsBlurEffect;
  effectSettings = [(UIBlurEffect *)&v8 effectSettings];
  [effectSettings setScale:0.5];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v4 = 0.0;
    [effectSettings setBlurRadius:0.0];
    v5 = 0.4;
  }

  else
  {
    [effectSettings setBlurRadius:8.0];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [effectSettings setColorTint:blackColor];

    [effectSettings setColorTintAlpha:0.2];
    v4 = 0.025;
    v5 = 0.1;
  }

  [effectSettings setGrayscaleTintLevel:0.0];
  [effectSettings setGrayscaleTintAlpha:v5];
  [effectSettings setZoom:v4];

  return effectSettings;
}

+ (void)effectWithStyle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIContextActionsBlurEffect effectWithStyle:]";
}

- (void)effectSettings
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIContextActionsBlurEffect effectSettings]";
}

@end