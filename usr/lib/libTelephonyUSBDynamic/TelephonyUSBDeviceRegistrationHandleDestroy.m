@interface TelephonyUSBDeviceRegistrationHandleDestroy
@end

@implementation TelephonyUSBDeviceRegistrationHandleDestroy

void ___TelephonyUSBDeviceRegistrationHandleDestroy_block_invoke(void *a1)
{
  if (a1[4])
  {
    v2 = a1[4];
  }

  v4 = a1[5];
  _TelephonyUtilDebugPrint();
  v3 = a1[6];

  free(v3);
}

@end