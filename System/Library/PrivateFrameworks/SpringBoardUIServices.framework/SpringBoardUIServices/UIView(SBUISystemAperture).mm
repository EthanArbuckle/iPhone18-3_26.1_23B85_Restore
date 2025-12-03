@interface UIView(SBUISystemAperture)
- (double)SBUISA_maximumAccessoryViewWidth;
- (uint64_t)SBUISA_layoutMode;
@end

@implementation UIView(SBUISystemAperture)

- (uint64_t)SBUISA_layoutMode
{
  systemApertureHostedElementContext = [self systemApertureHostedElementContext];
  layoutMode = [systemApertureHostedElementContext layoutMode];

  return layoutMode;
}

- (double)SBUISA_maximumAccessoryViewWidth
{
  v0 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
  [v0 maximumLeadingTrailingViewSize];
  v2 = v1;

  return v2;
}

@end