@interface _REFeatureMapWrapper
- (_REFeatureMapWrapper)initWithFeatureMap:(id)map;
@end

@implementation _REFeatureMapWrapper

- (_REFeatureMapWrapper)initWithFeatureMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = _REFeatureMapWrapper;
  v6 = [(_REFeatureMapWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureMap, map);
  }

  return v7;
}

@end