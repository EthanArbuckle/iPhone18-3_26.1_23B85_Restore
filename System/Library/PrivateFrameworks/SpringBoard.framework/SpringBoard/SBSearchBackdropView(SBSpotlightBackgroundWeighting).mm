@interface SBSearchBackdropView(SBSpotlightBackgroundWeighting)
- (uint64_t)setSpotlightBackgroundWeighting:()SBSpotlightBackgroundWeighting;
@end

@implementation SBSearchBackdropView(SBSpotlightBackgroundWeighting)

- (uint64_t)setSpotlightBackgroundWeighting:()SBSpotlightBackgroundWeighting
{
  isTransitioningToBlurred = [self isTransitioningToBlurred];
  v5 = 1.0 - a2;
  if (isTransitioningToBlurred)
  {
    v5 = a2;
  }

  return [self setTransitionProgress:v5];
}

@end