@interface PGMoodSourceSceneDistribution
- (double)weight;
@end

@implementation PGMoodSourceSceneDistribution

- (double)weight
{
  v4.receiver = self;
  v4.super_class = PGMoodSourceSceneDistribution;
  [(PGMoodSourceScene *)&v4 weight];
  return (v2 + v2) / 3.0;
}

@end