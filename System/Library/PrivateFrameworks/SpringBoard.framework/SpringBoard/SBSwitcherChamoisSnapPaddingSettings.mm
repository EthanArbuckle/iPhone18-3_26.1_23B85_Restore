@interface SBSwitcherChamoisSnapPaddingSettings
- (SBSwitcherChamoisSnapPaddingSettings)initWithDefaultValues;
@end

@implementation SBSwitcherChamoisSnapPaddingSettings

- (SBSwitcherChamoisSnapPaddingSettings)initWithDefaultValues
{
  v8.receiver = self;
  v8.super_class = SBSwitcherChamoisSnapPaddingSettings;
  initWithDefaultValues = [(SBSwitcherWindowingSnapPaddingSettings *)&v8 initWithDefaultValues];
  v3 = initWithDefaultValues;
  if (initWithDefaultValues)
  {
    [(SBSwitcherWindowingSnapPaddingSettings *)initWithDefaultValues setEdgePadding:45.0];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 edgePadding];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setSingleAppCenterPadding:v4 + v4];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 edgePadding];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setMultiAppCenterPadding:v5 * 0.5];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 edgePadding];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setFullScreenSnapPadding:v6 * 0.5];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 edgePadding];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setInterItemPadding:?];
  }

  return v3;
}

@end