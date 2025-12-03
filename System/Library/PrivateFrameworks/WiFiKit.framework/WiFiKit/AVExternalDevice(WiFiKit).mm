@interface AVExternalDevice(WiFiKit)
+ (BOOL)isCarPlaySessionActive;
@end

@implementation AVExternalDevice(WiFiKit)

+ (BOOL)isCarPlaySessionActive
{
  currentCarPlayExternalDevice = [MEMORY[0x277CE64E8] currentCarPlayExternalDevice];
  v1 = currentCarPlayExternalDevice;
  v2 = currentCarPlayExternalDevice && [currentCarPlayExternalDevice transportType] == 3;

  return v2;
}

@end