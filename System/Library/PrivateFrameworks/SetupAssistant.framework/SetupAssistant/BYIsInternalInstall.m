@interface BYIsInternalInstall
@end

@implementation BYIsInternalInstall

uint64_t ___BYIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  _BYIsInternalInstall_internal = result;
  return result;
}

@end