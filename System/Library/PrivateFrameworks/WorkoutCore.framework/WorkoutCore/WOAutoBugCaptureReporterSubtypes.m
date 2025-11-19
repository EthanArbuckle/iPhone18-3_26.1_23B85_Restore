@interface WOAutoBugCaptureReporterSubtypes
+ (NSString)activityRingsQueryError;
+ (NSString)activityRingsQueryUnusable;
+ (NSString)coreLocationNegativeLapDuration;
@end

@implementation WOAutoBugCaptureReporterSubtypes

+ (NSString)activityRingsQueryError
{
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B45FD90);

  return v2;
}

+ (NSString)activityRingsQueryUnusable
{
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B45FD70);

  return v2;
}

+ (NSString)coreLocationNegativeLapDuration
{
  v2 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B457690);

  return v2;
}

@end