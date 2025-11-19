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
  v3 = [v2 liftEffectSettings];

  return v3;
}

@end