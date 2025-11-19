@interface PGMoodSourceSceneHighConfidence
- (double)weight;
@end

@implementation PGMoodSourceSceneHighConfidence

- (double)weight
{
  v4.receiver = self;
  v4.super_class = PGMoodSourceSceneHighConfidence;
  [(PGMoodSourceScene *)&v4 weight];
  return v2 / 3.0;
}

@end