@interface PRMutableEditingLookProperties
- (PRMutableEditingLookProperties)initWithTimeFontConfiguration:(id)a3 titlePosterColor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PRMutableEditingLookProperties

- (PRMutableEditingLookProperties)initWithTimeFontConfiguration:(id)a3 titlePosterColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PRMutableEditingLookProperties;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PREditingLookProperties alloc];

  return [(PREditingLookProperties *)v4 initWithProperties:self];
}

@end