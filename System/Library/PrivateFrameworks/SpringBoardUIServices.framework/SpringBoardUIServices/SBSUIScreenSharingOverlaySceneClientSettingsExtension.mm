@interface SBSUIScreenSharingOverlaySceneClientSettingsExtension
+ (id)valueForUndefinedSetting:(id)a3;
@end

@implementation SBSUIScreenSharingOverlaySceneClientSettingsExtension

+ (id)valueForUndefinedSetting:(id)a3
{
  v4 = a3;
  if ([v4 matchesProperty:sel_preferredSystemRootTransform])
  {
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v10[0] = *MEMORY[0x1E695EFD0];
    v10[1] = v5;
    v10[2] = *(MEMORY[0x1E695EFD0] + 32);
    v6 = [MEMORY[0x1E696B098] valueWithCGAffineTransform:v10];
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___SBSUIScreenSharingOverlaySceneClientSettingsExtension;
    v6 = objc_msgSendSuper2(&v9, sel_valueForUndefinedSetting_, v4);
  }

  v7 = v6;

  return v7;
}

@end