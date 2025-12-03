@interface ElementMindNetSquareOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation ElementMindNetSquareOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  featureNames = [v2 featureNames];
  sub_2702B425C();

  v4 = sub_2702B424C();

  return v4;
}

- (id)featureValueForName:(id)name
{
  featureValueForName_ = [*self->provider featureValueForName_];

  return featureValueForName_;
}

@end