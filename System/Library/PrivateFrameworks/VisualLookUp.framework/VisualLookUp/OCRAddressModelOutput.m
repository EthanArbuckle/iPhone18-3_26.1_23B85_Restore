@interface OCRAddressModelOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation OCRAddressModelOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  v3 = [v2 featureNames];
  sub_1D9C7E03C();

  v4 = sub_1D9C7E02C();

  return v4;
}

- (id)featureValueForName:(id)a3
{
  v3 = [*self->provider featureValueForName_];

  return v3;
}

@end