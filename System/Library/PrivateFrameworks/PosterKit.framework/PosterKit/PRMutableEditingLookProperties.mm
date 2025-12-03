@interface PRMutableEditingLookProperties
- (PRMutableEditingLookProperties)initWithTimeFontConfiguration:(id)configuration titlePosterColor:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PRMutableEditingLookProperties

- (PRMutableEditingLookProperties)initWithTimeFontConfiguration:(id)configuration titlePosterColor:(id)color
{
  configurationCopy = configuration;
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = PRMutableEditingLookProperties;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PREditingLookProperties alloc];

  return [(PREditingLookProperties *)v4 initWithProperties:self];
}

@end