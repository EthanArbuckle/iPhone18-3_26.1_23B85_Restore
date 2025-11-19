@interface PRMutablePosterHomeScreenConfiguration
- (PRMutablePosterHomeScreenConfiguration)initWithSelectedAppearanceType:(unint64_t)a3 lockPosterAppearance:(id)a4 solidColorAppearance:(id)a5 gradientAppearance:(id)a6 homePosterAppearance:(id)a7 customizationConfiguration:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PRMutablePosterHomeScreenConfiguration

- (PRMutablePosterHomeScreenConfiguration)initWithSelectedAppearanceType:(unint64_t)a3 lockPosterAppearance:(id)a4 solidColorAppearance:(id)a5 gradientAppearance:(id)a6 homePosterAppearance:(id)a7 customizationConfiguration:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v32.receiver = self;
  v32.super_class = PRMutablePosterHomeScreenConfiguration;
  v19 = [(PRPosterHomeScreenConfiguration *)&v32 initWithSelectedAppearanceType:a3 lockPosterAppearance:v14 solidColorAppearance:v15 gradientAppearance:v16 homePosterAppearance:v17 customizationConfiguration:v18];
  v20 = v19;
  if (v19)
  {
    v19->_selectedAppearanceType = a3;
    v21 = [v14 copy];
    lockPosterAppearance = v20->_lockPosterAppearance;
    v20->_lockPosterAppearance = v21;

    v23 = [v15 copy];
    solidColorAppearance = v20->_solidColorAppearance;
    v20->_solidColorAppearance = v23;

    v25 = [v16 copy];
    gradientAppearance = v20->_gradientAppearance;
    v20->_gradientAppearance = v25;

    v27 = [v17 copy];
    homePosterAppearance = v20->_homePosterAppearance;
    v20->_homePosterAppearance = v27;

    v29 = [v18 copy];
    customizationConfiguration = v20->_customizationConfiguration;
    v20->_customizationConfiguration = v29;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRImmutableHomeScreenConfiguration alloc];

  return [(PRPosterHomeScreenConfiguration *)v4 initWithHomeScreenConfiguration:self];
}

@end