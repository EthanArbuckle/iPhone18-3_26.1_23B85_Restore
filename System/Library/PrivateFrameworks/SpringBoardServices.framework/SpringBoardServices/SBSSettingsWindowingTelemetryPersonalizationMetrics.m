@interface SBSSettingsWindowingTelemetryPersonalizationMetrics
- (SBSSettingsWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)a3 currentMultitaskingMode:(int64_t)a4;
@end

@implementation SBSSettingsWindowingTelemetryPersonalizationMetrics

- (SBSSettingsWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)a3 currentMultitaskingMode:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = SBSSettingsWindowingTelemetryPersonalizationMetrics;
  return [(SBSAbstractWindowingTelemetryPersonalizationMetrics *)&v5 _initWithPreviousMultitaskingMode:a3 currentMultitaskingMode:a4 source:2 multitaskingBuddyPanePresentation:0];
}

@end