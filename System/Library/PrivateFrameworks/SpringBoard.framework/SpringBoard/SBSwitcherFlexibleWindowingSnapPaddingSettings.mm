@interface SBSwitcherFlexibleWindowingSnapPaddingSettings
- (SBSwitcherFlexibleWindowingSnapPaddingSettings)initWithDefaultValues;
- (double)_statusBarHeight;
@end

@implementation SBSwitcherFlexibleWindowingSnapPaddingSettings

- (SBSwitcherFlexibleWindowingSnapPaddingSettings)initWithDefaultValues
{
  v9.receiver = self;
  v9.super_class = SBSwitcherFlexibleWindowingSnapPaddingSettings;
  initWithDefaultValues = [(SBSwitcherWindowingSnapPaddingSettings *)&v9 initWithDefaultValues];
  v3 = initWithDefaultValues;
  if (initWithDefaultValues)
  {
    [(SBSwitcherFlexibleWindowingSnapPaddingSettings *)initWithDefaultValues _statusBarHeight];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setEdgePadding:v4 * 0.5];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setInterItemPadding:10.0];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 interItemPadding];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setSingleAppCenterPadding:v5 + v5];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 interItemPadding];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setMultiAppCenterPadding:v6 * 0.5];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 interItemPadding];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setFullScreenSnapPadding:v7 * 0.5];
  }

  return v3;
}

- (double)_statusBarHeight
{
  if (_statusBarHeight_onceToken != -1)
  {
    [SBSwitcherFlexibleWindowingSnapPaddingSettings _statusBarHeight];
  }

  return *&_statusBarHeight___statusBarHeight;
}

uint64_t __66__SBSwitcherFlexibleWindowingSnapPaddingSettings__statusBarHeight__block_invoke()
{
  result = [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
  _statusBarHeight___statusBarHeight = v1;
  return result;
}

@end