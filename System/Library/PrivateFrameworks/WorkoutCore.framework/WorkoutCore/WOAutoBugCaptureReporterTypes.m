@interface WOAutoBugCaptureReporterTypes
+ (NSString)activityRings;
+ (NSString)endedUnexpectedSessionError;
+ (NSString)trackRunning;
@end

@implementation WOAutoBugCaptureReporterTypes

+ (NSString)activityRings
{
  v2 = MEMORY[0x20F2E6C00](0x7974697669746341, 0xEE0073676E695220);

  return v2;
}

+ (NSString)endedUnexpectedSessionError
{
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B467C80);

  return v2;
}

+ (NSString)trackRunning
{
  v2 = MEMORY[0x20F2E6C00](0x7552206B63617254, 0xED0000676E696E6ELL);

  return v2;
}

@end