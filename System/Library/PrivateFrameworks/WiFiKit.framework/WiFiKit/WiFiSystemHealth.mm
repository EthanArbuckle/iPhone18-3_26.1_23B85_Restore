@interface WiFiSystemHealth
- (unint64_t)getComponentStatusWithError:(id *)a3;
@end

@implementation WiFiSystemHealth

- (unint64_t)getComponentStatusWithError:(id *)a3
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = WiFiManagerClientCreate();
  HardwareFailure = WiFiManagerClientGetHardwareFailure();
  if (v4)
  {
    CFRelease(v4);
  }

  if (HardwareFailure == 2)
  {
    return 2;
  }

  else
  {
    return HardwareFailure == 1;
  }
}

@end