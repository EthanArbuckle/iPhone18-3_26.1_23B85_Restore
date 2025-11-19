@interface SBHFloatingDockStyleConfiguration
+ (SBHFloatingDockStyleConfiguration)defaultConfiguration;
- (SBHFloatingDockStyleConfiguration)configurationWithWantsPlatterShadow:(BOOL)a3;
- (SBHFloatingDockStyleConfiguration)initWithBackgroundEffect:(unint64_t)a3 platterEffect:(unint64_t)a4 wantsPlatterShadow:(BOOL)a5;
- (id)description;
- (unint64_t)backgroundEffect;
- (unint64_t)platterEffect;
@end

@implementation SBHFloatingDockStyleConfiguration

+ (SBHFloatingDockStyleConfiguration)defaultConfiguration
{
  if (defaultConfiguration_onceToken != -1)
  {
    +[SBHFloatingDockStyleConfiguration defaultConfiguration];
  }

  v3 = defaultConfiguration_defaultConfiguration;

  return v3;
}

uint64_t __57__SBHFloatingDockStyleConfiguration_defaultConfiguration__block_invoke()
{
  v0 = [[SBHFloatingDockStyleConfiguration alloc] initWithBackgroundEffect:1 platterEffect:1 wantsPlatterShadow:0];
  v1 = defaultConfiguration_defaultConfiguration;
  defaultConfiguration_defaultConfiguration = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SBHFloatingDockStyleConfiguration)initWithBackgroundEffect:(unint64_t)a3 platterEffect:(unint64_t)a4 wantsPlatterShadow:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = SBHFloatingDockStyleConfiguration;
  result = [(SBHFloatingDockStyleConfiguration *)&v9 init];
  if (result)
  {
    result->_backgroundEffect = a3;
    result->_platterEffect = a4;
    result->_wantsPlatterShadow = a5;
  }

  return result;
}

- (unint64_t)backgroundEffect
{
  backgroundEffect = self->_backgroundEffect;
  if (UIAccessibilityIsReduceTransparencyEnabled() && backgroundEffect - 1 < 2)
  {
    return 0;
  }

  else
  {
    return backgroundEffect;
  }
}

- (unint64_t)platterEffect
{
  platterEffect = self->_platterEffect;
  if (UIAccessibilityIsReduceTransparencyEnabled() && platterEffect == 1)
  {
    return 0;
  }

  else
  {
    return platterEffect;
  }
}

- (SBHFloatingDockStyleConfiguration)configurationWithWantsPlatterShadow:(BOOL)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithBackgroundEffect:self->_backgroundEffect platterEffect:self->_platterEffect wantsPlatterShadow:a3];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(SBHFloatingDockStyleConfiguration *)self platterEffect];
  if (v4 > 2)
  {
    v5 = @"SBFolderBackgroundViewEffectNone";
  }

  else
  {
    v5 = off_1E808D300[v4];
  }

  [v3 appendString:v5 withName:@"platterEffect"];
  v6 = [(SBHFloatingDockStyleConfiguration *)self backgroundEffect];
  if (v6 > 5)
  {
    v7 = @"SBFolderControllerBackgroundViewEffectBlur";
  }

  else
  {
    v7 = off_1E808D318[v6];
  }

  [v3 appendString:v7 withName:@"backgroundEffect"];
  v8 = [v3 appendBool:UIAccessibilityIsReduceTransparencyEnabled() withName:@"UIAccessibilityIsReduceTransparencyEnabled()"];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v9 = [(SBHFloatingDockStyleConfiguration *)self platterEffect];
    platterEffect = self->_platterEffect;
    if (v9 != platterEffect)
    {
      if (platterEffect > 2)
      {
        v11 = @"SBFolderBackgroundViewEffectNone";
      }

      else
      {
        v11 = off_1E808D300[platterEffect];
      }

      [v3 appendString:v11 withName:@"orig platterEffect"];
    }

    v12 = [(SBHFloatingDockStyleConfiguration *)self backgroundEffect];
    backgroundEffect = self->_backgroundEffect;
    if (v12 != backgroundEffect)
    {
      if (backgroundEffect > 5)
      {
        v14 = @"SBFolderControllerBackgroundViewEffectBlur";
      }

      else
      {
        v14 = off_1E808D318[backgroundEffect];
      }

      [v3 appendString:v14 withName:@"orig backgroundEffect"];
    }
  }

  v15 = [v3 appendBool:-[SBHFloatingDockStyleConfiguration wantsPlatterShadow](self withName:{"wantsPlatterShadow"), @"wantsPlatterShadow"}];
  v16 = [v3 build];

  return v16;
}

@end