@interface MobileWiFiUtilities
+ (BOOL)getPowerModificationState;
+ (id)hardwareMACAddress;
@end

@implementation MobileWiFiUtilities

+ (id)hardwareMACAddress
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = WiFiManagerClientCreate();
  v4 = *MEMORY[0x277D29800];
  v5 = WiFiManagerClientCopyProperty();
  if (v3)
  {
    CFRelease(v3);
  }

  if (!v5 || (BytePtr = CFDataGetBytePtr(v5), v7 = CFStringCreateWithFormat(v2, 0, @"%x:%x:%x:%x:%x:%x", *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3], BytePtr[4], BytePtr[5]), CFRelease(v5), !v7))
  {
    v8 = _initWSKLOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[(MobileWiFiUtilities *)v8];
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)getPowerModificationState
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = WiFiManagerClientCreate();
  IsPowerModificationDisabled = WiFiManagerClientIsPowerModificationDisabled();
  if (v3)
  {
    CFRelease(v3);
  }

  return IsPowerModificationDisabled == 0;
}

@end