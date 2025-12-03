@interface SBSControlCenterWindowingTelemetryPersonalizationMetrics
- (SBSControlCenterWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)mode currentMultitaskingMode:(int64_t)multitaskingMode;
@end

@implementation SBSControlCenterWindowingTelemetryPersonalizationMetrics

- (SBSControlCenterWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)mode currentMultitaskingMode:(int64_t)multitaskingMode
{
  v5.receiver = self;
  v5.super_class = SBSControlCenterWindowingTelemetryPersonalizationMetrics;
  return [(SBSAbstractWindowingTelemetryPersonalizationMetrics *)&v5 _initWithPreviousMultitaskingMode:mode currentMultitaskingMode:multitaskingMode source:3 multitaskingBuddyPanePresentation:0];
}

@end