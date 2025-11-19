@interface FocusElementOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation FocusElementOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  v3 = [v2 featureNames];
  sub_2702B425C();

  v4 = sub_2702B424C();

  return v4;
}

- (id)featureValueForName:(id)a3
{
  v3 = [*self->provider featureValueForName_];

  return v3;
}

@end