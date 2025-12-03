@interface FBSDisplayIdentity(ExtendedDisplayControllerProvider)
- (uint64_t)_sb_supportsExtendedDisplayMode;
@end

@implementation FBSDisplayIdentity(ExtendedDisplayControllerProvider)

- (uint64_t)_sb_supportsExtendedDisplayMode
{
  if ([self connectionType] == 1)
  {
    v2 = 0;
  }

  else
  {
    v3 = +[SBDefaults localDefaults];
    externalDisplayDefaults = [v3 externalDisplayDefaults];
    allowWirelessDisplaysForExtendedDisplayMode = [externalDisplayDefaults allowWirelessDisplaysForExtendedDisplayMode];

    v2 = allowWirelessDisplaysForExtendedDisplayMode ^ 1;
  }

  if (![self isExternal] || !objc_msgSend(self, "isAirPlayDisplay") || (objc_msgSend(self, "isCarDisplay") & 1) != 0 || ((objc_msgSend(self, "isCarInstrumentsDisplay") | v2) & 1) != 0)
  {
    return 0;
  }

  return [self isRootIdentity];
}

@end