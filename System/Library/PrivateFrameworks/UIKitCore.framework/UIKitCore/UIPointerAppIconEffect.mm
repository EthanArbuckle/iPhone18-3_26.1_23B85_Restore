@interface UIPointerAppIconEffect
- (id)overrideSlipPoints;
- (id)settings;
@end

@implementation UIPointerAppIconEffect

- (id)settings
{
  v2 = +[_UIPointerSettingsDomain rootSettings];
  sBAppIconEffectSettings = [v2 SBAppIconEffectSettings];

  return sBAppIconEffectSettings;
}

- (id)overrideSlipPoints
{
  v3 = MEMORY[0x1E696B098];
  settings = [(UIPointerAppIconEffect *)self settings];
  [settings overrideSlipPoints];
  v6 = v5;
  settings2 = [(UIPointerAppIconEffect *)self settings];
  [settings2 overrideSlipPoints];
  v9 = [v3 valueWithCGPoint:{v6, v8}];

  return v9;
}

@end