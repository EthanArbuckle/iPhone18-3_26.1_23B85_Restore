@interface CMISmartStyleProcessorTuningV1
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CMISmartStyleProcessorTuningV1

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CMISmartStyleProcessorTuningV1 allocWithZone:?]];
  v6 = v4;
  if (v4)
  {
    *&v5 = self->_personMaskDilatedMaskVal;
    [(CMISmartStyleProcessorTuningV1 *)v4 setPersonMaskDilatedMaskVal:v5];
  }

  return v6;
}

@end