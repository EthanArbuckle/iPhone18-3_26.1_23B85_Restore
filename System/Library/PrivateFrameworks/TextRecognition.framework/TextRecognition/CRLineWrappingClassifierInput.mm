@interface CRLineWrappingClassifierInput
- (CRLineWrappingClassifierInput)initWithFeatures:(id)features;
@end

@implementation CRLineWrappingClassifierInput

- (CRLineWrappingClassifierInput)initWithFeatures:(id)features
{
  featuresCopy = features;
  if (self)
  {
    objc_storeStrong(&self->_features, features);
  }

  return self;
}

@end