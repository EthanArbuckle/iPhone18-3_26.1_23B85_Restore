@interface FBSDisplayIdentity(ExtendedDisplayControllerProvider)
- (uint64_t)_sb_supportsExtendedDisplayMode;
@end

@implementation FBSDisplayIdentity(ExtendedDisplayControllerProvider)

- (uint64_t)_sb_supportsExtendedDisplayMode
{
  if ([a1 connectionType] == 1)
  {
    v2 = 0;
  }

  else
  {
    v3 = +[SBDefaults localDefaults];
    v4 = [v3 externalDisplayDefaults];
    v5 = [v4 allowWirelessDisplaysForExtendedDisplayMode];

    v2 = v5 ^ 1;
  }

  if (![a1 isExternal] || !objc_msgSend(a1, "isAirPlayDisplay") || (objc_msgSend(a1, "isCarDisplay") & 1) != 0 || ((objc_msgSend(a1, "isCarInstrumentsDisplay") | v2) & 1) != 0)
  {
    return 0;
  }

  return [a1 isRootIdentity];
}

@end