@interface TelephonyUSBInterfaceRegistrationHandlePoll
@end

@implementation TelephonyUSBInterfaceRegistrationHandlePoll

uint64_t ___TelephonyUSBInterfaceRegistrationHandlePoll_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v12 = *(v2 + 8);
  v10 = *(v2 + 56);
  _TelephonyUtilDebugPrint();
  (*(*(v2 + 32) + 16))(*(v2 + 32), v3, v4, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 28);
  v13 = *(v6 + 8);
  v11 = *(v6 + 56);
  _TelephonyUtilDebugPrint();
  v8 = *(*(v6 + 40) + 16);

  return v8();
}

@end