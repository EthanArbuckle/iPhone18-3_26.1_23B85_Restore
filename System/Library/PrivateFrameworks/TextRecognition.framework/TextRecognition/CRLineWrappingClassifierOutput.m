@interface CRLineWrappingClassifierOutput
- (CRLineWrappingClassifierOutput)initWithWrappingProbability:(double)a3;
@end

@implementation CRLineWrappingClassifierOutput

- (CRLineWrappingClassifierOutput)initWithWrappingProbability:(double)a3
{
  if (self)
  {
    self->_wrappingProbability = a3;
  }

  return self;
}

@end