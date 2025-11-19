@interface UIPointerAppIconEffect
- (id)overrideSlipPoints;
- (id)settings;
@end

@implementation UIPointerAppIconEffect

- (id)settings
{
  v2 = +[_UIPointerSettingsDomain rootSettings];
  v3 = [v2 SBAppIconEffectSettings];

  return v3;
}

- (id)overrideSlipPoints
{
  v3 = MEMORY[0x1E696B098];
  v4 = [(UIPointerAppIconEffect *)self settings];
  [v4 overrideSlipPoints];
  v6 = v5;
  v7 = [(UIPointerAppIconEffect *)self settings];
  [v7 overrideSlipPoints];
  v9 = [v3 valueWithCGPoint:{v6, v8}];

  return v9;
}

@end