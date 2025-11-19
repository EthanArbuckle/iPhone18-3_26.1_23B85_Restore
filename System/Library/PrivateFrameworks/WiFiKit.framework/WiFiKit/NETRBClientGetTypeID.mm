@interface NETRBClientGetTypeID
@end

@implementation NETRBClientGetTypeID

uint64_t ____NETRBClientGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __netrbClientTypeID = result;
  return result;
}

@end