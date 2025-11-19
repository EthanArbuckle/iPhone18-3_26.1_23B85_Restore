@interface TelephonyUSBDeviceRegistrationUnregisterForDevicesInternal
@end

@implementation TelephonyUSBDeviceRegistrationUnregisterForDevicesInternal

void ___TelephonyUSBDeviceRegistrationUnregisterForDevicesInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (v3)
  {
    if (*v2)
    {
      v6 = v2[1];
      v5 = v2[7];
      _TelephonyUtilDebugPrint();
      CFRunLoopRemoveSource(**(a1 + 32), *(*(a1 + 32) + 8), *MEMORY[0x29EDB8FC0]);
      v3 = *(*(a1 + 32) + 8);
    }

    CFRelease(v3);
    *(*(a1 + 32) + 8) = 0;
    v2 = *(a1 + 32);
  }

  v4 = v2[2];
  if (v4)
  {
    IONotificationPortDestroy(v4);
    *(*(a1 + 32) + 16) = 0;
  }
}

@end