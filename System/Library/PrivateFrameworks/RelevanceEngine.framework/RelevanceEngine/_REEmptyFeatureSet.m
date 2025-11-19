@interface _REEmptyFeatureSet
- (_REEmptyFeatureSet)init;
@end

@implementation _REEmptyFeatureSet

- (_REEmptyFeatureSet)init
{
  v3.receiver = self;
  v3.super_class = _REEmptyFeatureSet;
  return [(REFeatureSet *)&v3 init];
}

@end