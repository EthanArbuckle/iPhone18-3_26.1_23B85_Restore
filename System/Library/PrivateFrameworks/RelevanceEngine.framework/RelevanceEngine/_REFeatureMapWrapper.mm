@interface _REFeatureMapWrapper
- (_REFeatureMapWrapper)initWithFeatureMap:(id)a3;
@end

@implementation _REFeatureMapWrapper

- (_REFeatureMapWrapper)initWithFeatureMap:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _REFeatureMapWrapper;
  v6 = [(_REFeatureMapWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureMap, a3);
  }

  return v7;
}

@end