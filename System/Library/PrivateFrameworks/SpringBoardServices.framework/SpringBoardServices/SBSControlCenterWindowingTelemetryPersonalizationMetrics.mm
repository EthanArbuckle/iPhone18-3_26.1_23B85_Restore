@interface SBSControlCenterWindowingTelemetryPersonalizationMetrics
- (SBSControlCenterWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)a3 currentMultitaskingMode:(int64_t)a4;
@end

@implementation SBSControlCenterWindowingTelemetryPersonalizationMetrics

- (SBSControlCenterWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)a3 currentMultitaskingMode:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = SBSControlCenterWindowingTelemetryPersonalizationMetrics;
  return [(SBSAbstractWindowingTelemetryPersonalizationMetrics *)&v5 _initWithPreviousMultitaskingMode:a3 currentMultitaskingMode:a4 source:3 multitaskingBuddyPanePresentation:0];
}

@end