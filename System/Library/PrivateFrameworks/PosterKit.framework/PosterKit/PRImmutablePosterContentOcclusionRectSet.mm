@interface PRImmutablePosterContentOcclusionRectSet
- (PRImmutablePosterContentOcclusionRectSet)init;
- (PRImmutablePosterContentOcclusionRectSet)initWithNameToRectMap:(id)a3;
@end

@implementation PRImmutablePosterContentOcclusionRectSet

- (PRImmutablePosterContentOcclusionRectSet)init
{
  v6.receiver = self;
  v6.super_class = PRImmutablePosterContentOcclusionRectSet;
  v2 = [(PRPosterContentOcclusionRectSet *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    nameToRectMap = v2->_nameToRectMap;
    v2->_nameToRectMap = v3;
  }

  return v2;
}

- (PRImmutablePosterContentOcclusionRectSet)initWithNameToRectMap:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRImmutablePosterContentOcclusionRectSet;
  v6 = [(PRPosterContentOcclusionRectSet *)&v9 initWithNameToRectMap:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nameToRectMap, a3);
  }

  return v7;
}

@end