@interface TelephonyUSBInterfaceRegistrationFreeCallbacks
@end

@implementation TelephonyUSBInterfaceRegistrationFreeCallbacks

void ___TelephonyUSBInterfaceRegistrationFreeCallbacks_block_invoke(uint64_t a1)
{
  v5 = *(*(a1 + 32) + 56);
  _TelephonyUtilDebugPrint();
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    _Block_release(v3);
    v2 = *(a1 + 32);
    *(v2 + 32) = 0;
  }

  v4 = *(v2 + 40);
  if (v4)
  {
    _Block_release(v4);
    *(*(a1 + 32) + 40) = 0;
  }
}

@end