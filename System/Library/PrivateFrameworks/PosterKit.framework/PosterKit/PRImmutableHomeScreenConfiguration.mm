@interface PRImmutableHomeScreenConfiguration
- (PRImmutableHomeScreenConfiguration)initWithSelectedAppearanceType:(unint64_t)type lockPosterAppearance:(id)appearance solidColorAppearance:(id)colorAppearance gradientAppearance:(id)gradientAppearance homePosterAppearance:(id)posterAppearance customizationConfiguration:(id)configuration;
@end

@implementation PRImmutableHomeScreenConfiguration

- (PRImmutableHomeScreenConfiguration)initWithSelectedAppearanceType:(unint64_t)type lockPosterAppearance:(id)appearance solidColorAppearance:(id)colorAppearance gradientAppearance:(id)gradientAppearance homePosterAppearance:(id)posterAppearance customizationConfiguration:(id)configuration
{
  appearanceCopy = appearance;
  colorAppearanceCopy = colorAppearance;
  gradientAppearanceCopy = gradientAppearance;
  posterAppearanceCopy = posterAppearance;
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    configurationCopy = objc_opt_new();
  }

  v32.receiver = self;
  v32.super_class = PRImmutableHomeScreenConfiguration;
  v19 = [(PRPosterHomeScreenConfiguration *)&v32 initWithSelectedAppearanceType:type lockPosterAppearance:appearanceCopy solidColorAppearance:colorAppearanceCopy gradientAppearance:gradientAppearanceCopy homePosterAppearance:posterAppearanceCopy customizationConfiguration:configurationCopy];
  v20 = v19;
  if (v19)
  {
    v19->_selectedAppearanceType = type;
    v21 = [appearanceCopy copy];
    lockPosterAppearance = v20->_lockPosterAppearance;
    v20->_lockPosterAppearance = v21;

    v23 = [colorAppearanceCopy copy];
    solidColorAppearance = v20->_solidColorAppearance;
    v20->_solidColorAppearance = v23;

    v25 = [gradientAppearanceCopy copy];
    gradientAppearance = v20->_gradientAppearance;
    v20->_gradientAppearance = v25;

    v27 = [posterAppearanceCopy copy];
    homePosterAppearance = v20->_homePosterAppearance;
    v20->_homePosterAppearance = v27;

    v29 = [configurationCopy copy];
    customizationConfiguration = v20->_customizationConfiguration;
    v20->_customizationConfiguration = v29;
  }

  return v20;
}

@end