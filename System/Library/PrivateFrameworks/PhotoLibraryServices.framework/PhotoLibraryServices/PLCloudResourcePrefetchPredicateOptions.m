@interface PLCloudResourcePrefetchPredicateOptions
- (PLCloudResourcePrefetchPredicateOptions)initWithPrefetchMode:(int64_t)a3 prefetchOptimizeMode:(int64_t)a4 excludeDynamicResources:(BOOL)a5 prefetchConfiguration:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PLCloudResourcePrefetchPredicateOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PLCloudResourcePrefetchPredicateOptions *)self prefetchMode];
  v6 = [(PLCloudResourcePrefetchPredicateOptions *)self prefetchOptimizeMode];
  v7 = [(PLCloudResourcePrefetchPredicateOptions *)self excludeDynamicResources];
  v8 = [(PLCloudResourcePrefetchPredicateOptions *)self prefetchConfiguration];
  v9 = [v4 initWithPrefetchMode:v5 prefetchOptimizeMode:v6 excludeDynamicResources:v7 prefetchConfiguration:v8];

  return v9;
}

- (PLCloudResourcePrefetchPredicateOptions)initWithPrefetchMode:(int64_t)a3 prefetchOptimizeMode:(int64_t)a4 excludeDynamicResources:(BOOL)a5 prefetchConfiguration:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = PLCloudResourcePrefetchPredicateOptions;
  v12 = [(PLCloudResourcePrefetchPredicateOptions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_prefetchMode = a3;
    v12->_prefetchOptimizeMode = a4;
    v12->_excludeDynamicResources = a5;
    objc_storeStrong(&v12->_prefetchConfiguration, a6);
  }

  return v13;
}

@end