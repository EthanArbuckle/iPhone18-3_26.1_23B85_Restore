@interface REGetIsInternalBuild
@end

@implementation REGetIsInternalBuild

uint64_t ___REGetIsInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  _REGetIsInternalBuild_internal = result;
  return result;
}

@end