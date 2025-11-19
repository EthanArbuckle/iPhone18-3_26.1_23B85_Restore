@interface PearlCoreAnalyticsPasscodeChallengeEvent
- (PearlCoreAnalyticsPasscodeChallengeEvent)init;
- (void)reset;
@end

@implementation PearlCoreAnalyticsPasscodeChallengeEvent

- (PearlCoreAnalyticsPasscodeChallengeEvent)init
{
  v9.receiver = self;
  v9.super_class = PearlCoreAnalyticsPasscodeChallengeEvent;
  v2 = [(PearlCoreAnalyticsEvent *)&v9 initWithName:@"com.apple.biometrickit.pearl.passcodeChallengeAttempt"];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x29EDBFD98];
    v5 = *(&v2->super.super.super.isa + v4);
    *(&v2->super.super.super.isa + v4) = &unk_2A1E03AF0;

    v6 = objc_alloc_init(AWDBiometricKitPassCodeChallengeAttempt);
    awdMetric = v3->super._awdMetric;
    v3->super._awdMetric = &v6->super;
  }

  return v3;
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = PearlCoreAnalyticsPasscodeChallengeEvent;
  [(PearlCoreAnalyticsEvent *)&v5 reset];
  v3 = objc_alloc_init(AWDBiometricKitPassCodeChallengeAttempt);
  awdMetric = self->super._awdMetric;
  self->super._awdMetric = &v3->super;
}

@end