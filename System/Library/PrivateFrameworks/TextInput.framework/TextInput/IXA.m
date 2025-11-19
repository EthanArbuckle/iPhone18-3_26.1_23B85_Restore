@interface IXA
@end

@implementation IXA

uint64_t __IXA_IS_INTERNAL_INSTALL_block_invoke()
{
  result = MGGetBoolAnswer();
  IXA_IS_INTERNAL_INSTALL_is_internal_install = result;
  return result;
}

@end