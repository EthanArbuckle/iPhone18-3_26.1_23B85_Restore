@interface PearlCoreAnalyticsMatchEvent
- (PearlCoreAnalyticsMatchEvent)init;
- (void)reset;
@end

@implementation PearlCoreAnalyticsMatchEvent

- (PearlCoreAnalyticsMatchEvent)init
{
  v19[1] = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = PearlCoreAnalyticsMatchEvent;
  v2 = [(PearlCoreAnalyticsEvent *)&v16 initWithName:@"com.apple.biometrickit.pearl.matchAttempt"];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x29EDBFD98];
    v5 = *(&v2->super.super.super.isa + v4);
    v19[0] = @"secureFaceDetectDict";
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v19 count:1];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
    v8 = *(&v3->super.super.super.isa + v4);
    *(&v3->super.super.super.isa + v4) = v7;

    v9 = objc_alloc_init(AWDBiometricKitMatchAttempt);
    awdMetric = v3->super._awdMetric;
    v3->super._awdMetric = &v9->super;

    v17[0] = @"overallTimeBounded";
    v17[1] = @"overallTimeFaceDetectedBounded";
    v18[0] = 0x2A1E03978;
    v18[1] = 0x2A1E03978;
    v17[2] = @"faceDetectEndTimeBounded";
    v18[2] = 0x2A1E03978;
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v12 = *MEMORY[0x29EDBFD88];
    v13 = *(&v3->super.super.super.isa + v12);
    *(&v3->super.super.super.isa + v12) = v11;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = PearlCoreAnalyticsMatchEvent;
  [(PearlCoreAnalyticsEvent *)&v5 reset];
  v3 = objc_alloc_init(AWDBiometricKitMatchAttempt);
  awdMetric = self->super._awdMetric;
  self->super._awdMetric = &v3->super;
}

- (void)prepareEventDictionary:.cold.1()
{
  v12 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136316162;
    v3 = "_eventDictionary";
    v4 = 2048;
    v5 = 0;
    v6 = 2080;
    v7 = &unk_296D32C0B;
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/Pearl/PearlCoreAnalytics/CoreAnalyticsEvents/PearlCoreAnalyticsMatchEvent.m";
    v10 = 1024;
    v11 = 46;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v2, 0x30u);
  }

  v1 = *MEMORY[0x29EDCA608];
}

@end