@interface WGSupportsASTC
@end

@implementation WGSupportsASTC

uint64_t ___WGSupportsASTC_block_invoke()
{
  result = MGGetBoolAnswer();
  _WGSupportsASTC___supportsASTC = result;
  return result;
}

@end