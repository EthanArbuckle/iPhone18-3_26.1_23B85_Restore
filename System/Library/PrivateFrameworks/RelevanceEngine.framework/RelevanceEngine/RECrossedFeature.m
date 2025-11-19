@interface RECrossedFeature
@end

@implementation RECrossedFeature

uint64_t __41___RECrossedFeature__updateFeaturesArray__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

@end