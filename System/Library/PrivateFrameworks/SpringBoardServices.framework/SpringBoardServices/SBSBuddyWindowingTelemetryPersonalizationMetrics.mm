@interface SBSBuddyWindowingTelemetryPersonalizationMetrics
- (SBSBuddyWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)mode currentMultitaskingMode:(int64_t)multitaskingMode hasShownMultitaskingBuddyPane:(BOOL)pane;
@end

@implementation SBSBuddyWindowingTelemetryPersonalizationMetrics

- (SBSBuddyWindowingTelemetryPersonalizationMetrics)initWithPreviousMultitaskingMode:(int64_t)mode currentMultitaskingMode:(int64_t)multitaskingMode hasShownMultitaskingBuddyPane:(BOOL)pane
{
  if (pane)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v7.receiver = self;
  v7.super_class = SBSBuddyWindowingTelemetryPersonalizationMetrics;
  return [(SBSAbstractWindowingTelemetryPersonalizationMetrics *)&v7 _initWithPreviousMultitaskingMode:mode currentMultitaskingMode:multitaskingMode source:1 multitaskingBuddyPanePresentation:v5];
}

@end