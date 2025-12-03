@interface CRLineWrappingClassifierOutput
- (CRLineWrappingClassifierOutput)initWithWrappingProbability:(double)probability;
@end

@implementation CRLineWrappingClassifierOutput

- (CRLineWrappingClassifierOutput)initWithWrappingProbability:(double)probability
{
  if (self)
  {
    self->_wrappingProbability = probability;
  }

  return self;
}

@end