@interface NETRBNetworkGetTypeId
@end

@implementation NETRBNetworkGetTypeId

uint64_t ___NETRBNetworkGetTypeId_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  _NETRBNetworkTypeId = result;
  return result;
}

@end