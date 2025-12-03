@interface PRImmutableEditingLookProperties
- (PRImmutableEditingLookProperties)initWithTimeFontConfiguration:(id)configuration titlePosterColor:(id)color;
@end

@implementation PRImmutableEditingLookProperties

- (PRImmutableEditingLookProperties)initWithTimeFontConfiguration:(id)configuration titlePosterColor:(id)color
{
  configurationCopy = configuration;
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = PRImmutableEditingLookProperties;
  v8 = [(PREditingLookProperties *)&v14 initWithTimeFontConfiguration:configurationCopy titlePosterColor:colorCopy];
  if (v8)
  {
    v9 = [configurationCopy copy];
    timeFontConfiguration = v8->_timeFontConfiguration;
    v8->_timeFontConfiguration = v9;

    v11 = [colorCopy copy];
    titlePosterColor = v8->_titlePosterColor;
    v8->_titlePosterColor = v11;
  }

  return v8;
}

@end