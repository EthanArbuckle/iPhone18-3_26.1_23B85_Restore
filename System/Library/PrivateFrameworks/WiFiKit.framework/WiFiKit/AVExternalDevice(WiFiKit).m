@interface AVExternalDevice(WiFiKit)
+ (BOOL)isCarPlaySessionActive;
@end

@implementation AVExternalDevice(WiFiKit)

+ (BOOL)isCarPlaySessionActive
{
  v0 = [MEMORY[0x277CE64E8] currentCarPlayExternalDevice];
  v1 = v0;
  v2 = v0 && [v0 transportType] == 3;

  return v2;
}

@end