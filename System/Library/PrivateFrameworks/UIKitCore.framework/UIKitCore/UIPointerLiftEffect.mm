@interface UIPointerLiftEffect
- (id)settings;
- (unint64_t)options;
@end

@implementation UIPointerLiftEffect

- (unint64_t)options
{
  if (_UIPlasmaEnabled())
  {
    return 2353;
  }

  else
  {
    return 882;
  }
}

- (id)settings
{
  v2 = +[_UIPointerSettingsDomain rootSettings];
  liftEffectSettings = [v2 liftEffectSettings];

  return liftEffectSettings;
}

@end