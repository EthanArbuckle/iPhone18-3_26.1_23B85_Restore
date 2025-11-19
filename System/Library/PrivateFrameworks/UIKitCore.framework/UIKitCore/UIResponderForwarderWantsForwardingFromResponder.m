@interface UIResponderForwarderWantsForwardingFromResponder
@end

@implementation UIResponderForwarderWantsForwardingFromResponder

void ___UIResponderForwarderWantsForwardingFromResponder_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 responder];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end