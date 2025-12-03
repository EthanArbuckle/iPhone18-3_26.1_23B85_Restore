@interface _REFeatureMapFeatureSet
- (_REFeatureMapFeatureSet)initWithFeatureMap:(id)map;
- (id)member:(id)member;
@end

@implementation _REFeatureMapFeatureSet

- (_REFeatureMapFeatureSet)initWithFeatureMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = _REFeatureMapFeatureSet;
  v6 = [(_REFeatureMapFeatureSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_map, map);
  }

  return v7;
}

- (id)member:(id)member
{
  memberCopy = member;
  v5 = [(NSDictionary *)self->_map objectForKeyedSubscript:memberCopy];

  if (v5)
  {
    v5 = memberCopy;
  }

  return v5;
}

@end