@interface LTDeviseHasGMSCapability
@end

@implementation LTDeviseHasGMSCapability

uint64_t ___LTDeviseHasGMSCapability_block_invoke()
{
  result = MGGetBoolAnswer();
  _LTDeviseHasGMSCapability_deviceSupportsGenerativeModelSystems = result;
  return result;
}

@end