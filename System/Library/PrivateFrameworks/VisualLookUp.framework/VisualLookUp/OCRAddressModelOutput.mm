@interface OCRAddressModelOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation OCRAddressModelOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  featureNames = [v2 featureNames];
  sub_1D9C7E03C();

  v4 = sub_1D9C7E02C();

  return v4;
}

- (id)featureValueForName:(id)name
{
  featureValueForName_ = [*self->provider featureValueForName_];

  return featureValueForName_;
}

@end