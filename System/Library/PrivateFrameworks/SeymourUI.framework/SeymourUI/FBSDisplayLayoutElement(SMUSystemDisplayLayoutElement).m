@interface FBSDisplayLayoutElement(SMUSystemDisplayLayoutElement)
- (BOOL)smu_isBrightnessControlHUD;
- (BOOL)smu_isVolumeHUD;
- (id)extendedDescription;
@end

@implementation FBSDisplayLayoutElement(SMUSystemDisplayLayoutElement)

- (BOOL)smu_isVolumeHUD
{
  v1 = [a1 identifier];
  v2 = v1 == *MEMORY[0x277D67040];

  return v2;
}

- (BOOL)smu_isBrightnessControlHUD
{
  v1 = [a1 identifier];
  v2 = v1 == *MEMORY[0x277D67038];

  return v2;
}

- (id)extendedDescription
{
  v2 = MEMORY[0x277CCAB68];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a1 identifier];
  v6 = [a1 bundleIdentifier];
  v7 = [a1 level];
  [a1 frame];
  v8 = NSStringFromCGRect(v13);
  v9 = [v2 stringWithFormat:@"<%@: %p> identifier=%@, bundle=%@, level=%lu, frame=%@", v4, a1, v5, v6, v7, v8];

  [a1 layoutRole];
  v10 = SBSDisplayLayoutRoleDescription();
  [v9 appendFormat:@", role=%@", v10];

  if ([a1 smu_isPictureInPicture])
  {
    [v9 appendFormat:@", %s", "isPictureInPicture"];
  }

  if ([a1 smu_isPictureInPictureStashed])
  {
    [v9 appendFormat:@", %s", "isPictureInPictureStashed"];
  }

  if ([a1 smu_isSystemOverlay])
  {
    [v9 appendFormat:@", %s", "isSystemOverlay"];
  }

  if ([a1 smu_isSystemIndicator])
  {
    [v9 appendFormat:@", %s", "isSystemIndicator"];
  }

  if ([a1 smu_isControlCenter])
  {
    [v9 appendFormat:@", %s", "isControlCenter"];
  }

  if ([a1 smu_isVolumeHUD])
  {
    [v9 appendFormat:@", %s", "isVolumeHUD"];
  }

  if ([a1 smu_isSystemNotification])
  {
    [v9 appendFormat:@", %s", "isSystemNotification"];
  }

  if ([a1 smu_isBrightnessControlHUD])
  {
    [v9 appendFormat:@", %s", "isBrightnessControlHUD"];
  }

  return v9;
}

@end