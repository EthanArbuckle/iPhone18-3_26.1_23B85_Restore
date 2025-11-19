@interface PRImmutableEditingLookProperties
- (PRImmutableEditingLookProperties)initWithTimeFontConfiguration:(id)a3 titlePosterColor:(id)a4;
@end

@implementation PRImmutableEditingLookProperties

- (PRImmutableEditingLookProperties)initWithTimeFontConfiguration:(id)a3 titlePosterColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PRImmutableEditingLookProperties;
  v8 = [(PREditingLookProperties *)&v14 initWithTimeFontConfiguration:v6 titlePosterColor:v7];
  if (v8)
  {
    v9 = [v6 copy];
    timeFontConfiguration = v8->_timeFontConfiguration;
    v8->_timeFontConfiguration = v9;

    v11 = [v7 copy];
    titlePosterColor = v8->_titlePosterColor;
    v8->_titlePosterColor = v11;
  }

  return v8;
}

@end