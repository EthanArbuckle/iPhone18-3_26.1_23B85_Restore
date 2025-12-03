@interface UVPreviewSceneSettings(InterruptionPolicy)
- (uint64_t)copyResettingInterruptionPolicy;
@end

@implementation UVPreviewSceneSettings(InterruptionPolicy)

- (uint64_t)copyResettingInterruptionPolicy
{
  v1 = [self mutableCopy];
  [v1 setInterruptionPolicy:1];
  v2 = [v1 copy];

  return v2;
}

@end