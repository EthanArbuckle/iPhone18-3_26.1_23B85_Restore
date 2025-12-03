@interface SBSUIScreenSharingOverlaySceneClientSettingsExtension
+ (id)valueForUndefinedSetting:(id)setting;
@end

@implementation SBSUIScreenSharingOverlaySceneClientSettingsExtension

+ (id)valueForUndefinedSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy matchesProperty:sel_preferredSystemRootTransform])
  {
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v10[0] = *MEMORY[0x1E695EFD0];
    v10[1] = v5;
    v10[2] = *(MEMORY[0x1E695EFD0] + 32);
    v6 = [MEMORY[0x1E696B098] valueWithCGAffineTransform:v10];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___SBSUIScreenSharingOverlaySceneClientSettingsExtension;
    v6 = objc_msgSendSuper2(&v9, sel_valueForUndefinedSetting_, settingCopy);
  }

  v7 = v6;

  return v7;
}

@end