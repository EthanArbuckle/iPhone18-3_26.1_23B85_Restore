@interface FBSDisplayLayoutElement(SMUSystemDisplayLayoutElement)
- (BOOL)smu_isBrightnessControlHUD;
- (BOOL)smu_isVolumeHUD;
- (id)extendedDescription;
@end

@implementation FBSDisplayLayoutElement(SMUSystemDisplayLayoutElement)

- (BOOL)smu_isVolumeHUD
{
  identifier = [self identifier];
  v2 = identifier == *MEMORY[0x277D67040];

  return v2;
}

- (BOOL)smu_isBrightnessControlHUD
{
  identifier = [self identifier];
  v2 = identifier == *MEMORY[0x277D67038];

  return v2;
}

- (id)extendedDescription
{
  v2 = MEMORY[0x277CCAB68];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [self identifier];
  bundleIdentifier = [self bundleIdentifier];
  level = [self level];
  [self frame];
  v8 = NSStringFromCGRect(v13);
  v9 = [v2 stringWithFormat:@"<%@: %p> identifier=%@, bundle=%@, level=%lu, frame=%@", v4, self, identifier, bundleIdentifier, level, v8];

  [self layoutRole];
  v10 = SBSDisplayLayoutRoleDescription();
  [v9 appendFormat:@", role=%@", v10];

  if ([self smu_isPictureInPicture])
  {
    [v9 appendFormat:@", %s", "isPictureInPicture"];
  }

  if ([self smu_isPictureInPictureStashed])
  {
    [v9 appendFormat:@", %s", "isPictureInPictureStashed"];
  }

  if ([self smu_isSystemOverlay])
  {
    [v9 appendFormat:@", %s", "isSystemOverlay"];
  }

  if ([self smu_isSystemIndicator])
  {
    [v9 appendFormat:@", %s", "isSystemIndicator"];
  }

  if ([self smu_isControlCenter])
  {
    [v9 appendFormat:@", %s", "isControlCenter"];
  }

  if ([self smu_isVolumeHUD])
  {
    [v9 appendFormat:@", %s", "isVolumeHUD"];
  }

  if ([self smu_isSystemNotification])
  {
    [v9 appendFormat:@", %s", "isSystemNotification"];
  }

  if ([self smu_isBrightnessControlHUD])
  {
    [v9 appendFormat:@", %s", "isBrightnessControlHUD"];
  }

  return v9;
}

@end