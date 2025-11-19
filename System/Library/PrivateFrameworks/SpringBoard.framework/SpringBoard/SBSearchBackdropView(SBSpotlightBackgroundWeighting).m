@interface SBSearchBackdropView(SBSpotlightBackgroundWeighting)
- (uint64_t)setSpotlightBackgroundWeighting:()SBSpotlightBackgroundWeighting;
@end

@implementation SBSearchBackdropView(SBSpotlightBackgroundWeighting)

- (uint64_t)setSpotlightBackgroundWeighting:()SBSpotlightBackgroundWeighting
{
  v4 = [a1 isTransitioningToBlurred];
  v5 = 1.0 - a2;
  if (v4)
  {
    v5 = a2;
  }

  return [a1 setTransitionProgress:v5];
}

@end