@interface PearlCoreAnalyticsGlassesBannerEvent
- (PearlCoreAnalyticsGlassesBannerEvent)initWithEnrollment;
- (PearlCoreAnalyticsGlassesBannerEvent)initWithNotification;
@end

@implementation PearlCoreAnalyticsGlassesBannerEvent

- (PearlCoreAnalyticsGlassesBannerEvent)initWithNotification
{
  v5.receiver = self;
  v5.super_class = PearlCoreAnalyticsGlassesBannerEvent;
  v2 = [(PearlCoreAnalyticsEvent *)&v5 initWithName:@"com.apple.biometrickit.pearl.glassesBannerEvent"];
  v3 = v2;
  if (v2)
  {
    [(PearlCoreAnalyticsGlassesBannerEvent *)v2 setDisplayNotificationCount:&unk_2A1E03990];
  }

  return v3;
}

- (PearlCoreAnalyticsGlassesBannerEvent)initWithEnrollment
{
  v5.receiver = self;
  v5.super_class = PearlCoreAnalyticsGlassesBannerEvent;
  v2 = [(PearlCoreAnalyticsEvent *)&v5 initWithName:@"com.apple.biometrickit.pearl.glassesBannerEvent"];
  v3 = v2;
  if (v2)
  {
    [(PearlCoreAnalyticsGlassesBannerEvent *)v2 setEnrollmentAfterBannerCount:&unk_2A1E03990];
  }

  return v3;
}

@end