@interface SBSSettingsWindowingTelemetryPersonalizationMetrics
- (SBSSettingsWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)mode currentMultitaskingMode:(int64_t)multitaskingMode;
@end

@implementation SBSSettingsWindowingTelemetryPersonalizationMetrics

- (SBSSettingsWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)mode currentMultitaskingMode:(int64_t)multitaskingMode
{
  v5.receiver = self;
  v5.super_class = SBSSettingsWindowingTelemetryPersonalizationMetrics;
  return [(SBSAbstractWindowingTelemetryPersonalizationMetrics *)&v5 _initWithPreviousMultitaskingMode:mode currentMultitaskingMode:multitaskingMode source:2 multitaskingBuddyPanePresentation:0];
}

@end