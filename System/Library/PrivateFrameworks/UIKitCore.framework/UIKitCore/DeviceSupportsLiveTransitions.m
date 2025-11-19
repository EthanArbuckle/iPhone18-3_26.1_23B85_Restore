@interface DeviceSupportsLiveTransitions
@end

@implementation DeviceSupportsLiveTransitions

uint64_t ___DeviceSupportsLiveTransitions_block_invoke()
{
  result = MGGetProductType();
  v2 = result != 1110205732 && result != 33245053;
  _DeviceSupportsLiveTransitions_isGoodEnough = v2;
  return result;
}

@end