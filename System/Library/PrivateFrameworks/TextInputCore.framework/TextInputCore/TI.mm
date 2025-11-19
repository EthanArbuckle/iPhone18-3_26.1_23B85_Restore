@interface TI
@end

@implementation TI

uint64_t __TI_IS_INTERNAL_INSTALL_block_invoke()
{
  result = MGGetBoolAnswer();
  TI_IS_INTERNAL_INSTALL::is_internal_install = result;
  return result;
}

@end