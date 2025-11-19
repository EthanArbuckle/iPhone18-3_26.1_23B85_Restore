@interface _REFeatureMapFeatureSet
- (_REFeatureMapFeatureSet)initWithFeatureMap:(id)a3;
- (id)member:(id)a3;
@end

@implementation _REFeatureMapFeatureSet

- (_REFeatureMapFeatureSet)initWithFeatureMap:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _REFeatureMapFeatureSet;
  v6 = [(_REFeatureMapFeatureSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_map, a3);
  }

  return v7;
}

- (id)member:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_map objectForKeyedSubscript:v4];

  if (v5)
  {
    v5 = v4;
  }

  return v5;
}

@end