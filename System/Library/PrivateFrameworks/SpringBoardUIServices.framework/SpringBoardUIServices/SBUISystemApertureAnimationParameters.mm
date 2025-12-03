@interface SBUISystemApertureAnimationParameters
+ (BOOL)areParams:(id)params equivalentTo:(id)to;
- (BOOL)_hasSpringParameters;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRetargeted;
- (BOOL)tracking;
- (SBFFluidBehaviorSettings)fluidBehaviorSettings;
- (SBUISystemApertureAnimationParameters)initWithBSSettingsRepresentation:(id)representation;
- (SBUISystemApertureAnimationParameters)initWithFluidBehaviorSettings:(id)settings tracking:(BOOL)tracking retargeted:(BOOL)retargeted;
- (int64_t)_animationBehavior;
@end

@implementation SBUISystemApertureAnimationParameters

- (BOOL)_hasSpringParameters
{
  fluidBehaviorSettings = [(SBUISystemApertureAnimationParameters *)self fluidBehaviorSettings];
  v3 = fluidBehaviorSettings != 0;

  return v3;
}

- (SBFFluidBehaviorSettings)fluidBehaviorSettings
{
  fluidBehaviorSettings = self->_fluidBehaviorSettings;
  if (!fluidBehaviorSettings)
  {
    v4 = [self->_BSSettingsRepresentation objectForSetting:19875];
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = [MEMORY[0x1E69D3FC8] settingsFromArchiveDictionary:v8];
      v10 = self->_fluidBehaviorSettings;
      self->_fluidBehaviorSettings = v9;
    }

    fluidBehaviorSettings = self->_fluidBehaviorSettings;
  }

  return fluidBehaviorSettings;
}

- (int64_t)_animationBehavior
{
  if ([(SBUISystemApertureAnimationParameters *)self _hasSpringParameters])
  {
    return 2;
  }

  else
  {
    return [(SBUISystemApertureAnimationParameters *)self isRetargeted];
  }
}

- (BOOL)tracking
{
  tracking = self->_tracking;
  if (!tracking)
  {
    v4 = [self->_BSSettingsRepresentation objectForSetting:19873];
    v5 = self->_tracking;
    self->_tracking = v4;

    tracking = self->_tracking;
  }

  return [(NSNumber *)tracking BOOLValue];
}

- (BOOL)isRetargeted
{
  retargeted = self->_retargeted;
  if (!retargeted)
  {
    v4 = [self->_BSSettingsRepresentation objectForSetting:19874];
    v5 = self->_retargeted;
    self->_retargeted = v4;

    retargeted = self->_retargeted;
  }

  return [(NSNumber *)retargeted BOOLValue];
}

- (SBUISystemApertureAnimationParameters)initWithFluidBehaviorSettings:(id)settings tracking:(BOOL)tracking retargeted:(BOOL)retargeted
{
  retargetedCopy = retargeted;
  trackingCopy = tracking;
  settingsCopy = settings;
  v20.receiver = self;
  v20.super_class = SBUISystemApertureAnimationParameters;
  v10 = [(SBUISystemApertureAnimationParameters *)&v20 init];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:trackingCopy];
    tracking = v10->_tracking;
    v10->_tracking = v11;

    v13 = [MEMORY[0x1E696AD98] numberWithBool:retargetedCopy];
    retargeted = v10->_retargeted;
    v10->_retargeted = v13;

    objc_storeStrong(&v10->_fluidBehaviorSettings, settings);
    v15 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v15 setObject:v10->_tracking forSetting:19873];
    [v15 setObject:v10->_retargeted forSetting:19874];
    archiveDictionary = [settingsCopy archiveDictionary];
    [v15 setObject:archiveDictionary forSetting:19875];

    v17 = [v15 copy];
    BSSettingsRepresentation = v10->_BSSettingsRepresentation;
    v10->_BSSettingsRepresentation = v17;
  }

  return v10;
}

- (SBUISystemApertureAnimationParameters)initWithBSSettingsRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = SBUISystemApertureAnimationParameters;
  v5 = [(SBUISystemApertureAnimationParameters *)&v9 init];
  if (v5)
  {
    v6 = [representationCopy copy];
    BSSettingsRepresentation = v5->_BSSettingsRepresentation;
    v5->_BSSettingsRepresentation = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = v8[3];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 isEqual:self->_BSSettingsRepresentation];

  return v10;
}

+ (BOOL)areParams:(id)params equivalentTo:(id)to
{
  paramsCopy = params;
  toCopy = to;
  if (([paramsCopy isAnimated] & 1) != 0 || objc_msgSend(toCopy, "isAnimated"))
  {
    v7 = [paramsCopy isEqual:toCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end