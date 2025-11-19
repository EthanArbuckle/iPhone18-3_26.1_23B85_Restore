@interface CRLineWrappingClassifierInput
- (CRLineWrappingClassifierInput)initWithFeatures:(id)a3;
@end

@implementation CRLineWrappingClassifierInput

- (CRLineWrappingClassifierInput)initWithFeatures:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_storeStrong(&self->_features, a3);
  }

  return self;
}

@end