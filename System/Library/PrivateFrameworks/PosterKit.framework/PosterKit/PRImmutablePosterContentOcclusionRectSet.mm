@interface PRImmutablePosterContentOcclusionRectSet
- (PRImmutablePosterContentOcclusionRectSet)init;
- (PRImmutablePosterContentOcclusionRectSet)initWithNameToRectMap:(id)map;
@end

@implementation PRImmutablePosterContentOcclusionRectSet

- (PRImmutablePosterContentOcclusionRectSet)init
{
  v6.receiver = self;
  v6.super_class = PRImmutablePosterContentOcclusionRectSet;
  v2 = [(PRPosterContentOcclusionRectSet *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    nameToRectMap = v2->_nameToRectMap;
    v2->_nameToRectMap = dictionary;
  }

  return v2;
}

- (PRImmutablePosterContentOcclusionRectSet)initWithNameToRectMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = PRImmutablePosterContentOcclusionRectSet;
  v6 = [(PRPosterContentOcclusionRectSet *)&v9 initWithNameToRectMap:mapCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nameToRectMap, map);
  }

  return v7;
}

@end