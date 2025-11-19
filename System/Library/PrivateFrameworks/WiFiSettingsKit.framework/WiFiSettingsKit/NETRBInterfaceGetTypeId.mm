@interface NETRBInterfaceGetTypeId
@end

@implementation NETRBInterfaceGetTypeId

uint64_t ___NETRBInterfaceGetTypeId_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  _NETRBInterfaceTypeId = result;
  return result;
}

@end