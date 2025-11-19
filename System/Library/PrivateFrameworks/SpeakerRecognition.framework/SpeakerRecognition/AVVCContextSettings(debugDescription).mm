@interface AVVCContextSettings(debugDescription)
- (id)debugDescription;
@end

@implementation AVVCContextSettings(debugDescription)

- (id)debugDescription
{
  v2 = [MEMORY[0x277CCAB68] string];
  [v2 appendFormat:@"[Context = %ld]", objc_msgSend(a1, "activationMode")];
  v3 = [a1 activationDeviceUID];
  [v2 appendFormat:@"[DeviceId = %@]", v3];

  [v2 appendFormat:@"[Announced = %d]", objc_msgSend(a1, "announceCallsEnabled")];

  return v2;
}

@end