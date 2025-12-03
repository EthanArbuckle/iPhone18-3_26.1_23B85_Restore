@interface FBScene(ExternalSettingsModifierInternal)
- (id)ui_settingsModifierComponent;
@end

@implementation FBScene(ExternalSettingsModifierInternal)

- (id)ui_settingsModifierComponent
{
  v2 = objc_opt_class();
  v3 = [self componentForExtension:v2 ofClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    [self addExtension:objc_opt_class()];
    v6 = objc_opt_class();
    v5 = [self componentForExtension:v6 ofClass:objc_opt_class()];
  }

  v7 = v5;

  return v7;
}

@end