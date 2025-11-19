@interface ToneMappingBuffers
- (ToneMappingBuffers)init;
@end

@implementation ToneMappingBuffers

- (ToneMappingBuffers)init
{
  v3.receiver = self;
  v3.super_class = ToneMappingBuffers;
  result = [(ToneMappingBuffers *)&v3 init];
  if (result)
  {
    result->inputLumaPedestal = 0.0;
  }

  return result;
}

@end