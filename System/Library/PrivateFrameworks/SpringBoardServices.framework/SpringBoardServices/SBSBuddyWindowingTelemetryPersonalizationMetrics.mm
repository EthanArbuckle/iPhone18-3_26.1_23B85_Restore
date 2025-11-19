@interface SBSBuddyWindowingTelemetryPersonalizationMetrics
- (SBSBuddyWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)a3 currentMultitaskingMode:(int64_t)a4 hasShownMultitaskingBuddyPane:(BOOL)a5;
@end

@implementation SBSBuddyWindowingTelemetryPersonalizationMetrics

- (SBSBuddyWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)a3 currentMultitaskingMode:(int64_t)a4 hasShownMultitaskingBuddyPane:(BOOL)a5
{
  if (a5)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v7.receiver = self;
  v7.super_class = SBSBuddyWindowingTelemetryPersonalizationMetrics;
  return [(SBSAbstractWindowingTelemetryPersonalizationMetrics *)&v7 _initWithPreviousMultitaskingMode:a3 currentMultitaskingMode:a4 source:1 multitaskingBuddyPanePresentation:v5];
}

@end