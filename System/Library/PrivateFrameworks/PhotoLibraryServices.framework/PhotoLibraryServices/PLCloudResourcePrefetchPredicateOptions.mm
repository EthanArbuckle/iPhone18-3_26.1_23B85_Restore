@interface PLCloudResourcePrefetchPredicateOptions
- (PLCloudResourcePrefetchPredicateOptions)initWithPrefetchMode:(int64_t)mode prefetchOptimizeMode:(int64_t)optimizeMode excludeDynamicResources:(BOOL)resources prefetchConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PLCloudResourcePrefetchPredicateOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  prefetchMode = [(PLCloudResourcePrefetchPredicateOptions *)self prefetchMode];
  prefetchOptimizeMode = [(PLCloudResourcePrefetchPredicateOptions *)self prefetchOptimizeMode];
  excludeDynamicResources = [(PLCloudResourcePrefetchPredicateOptions *)self excludeDynamicResources];
  prefetchConfiguration = [(PLCloudResourcePrefetchPredicateOptions *)self prefetchConfiguration];
  v9 = [v4 initWithPrefetchMode:prefetchMode prefetchOptimizeMode:prefetchOptimizeMode excludeDynamicResources:excludeDynamicResources prefetchConfiguration:prefetchConfiguration];

  return v9;
}

- (PLCloudResourcePrefetchPredicateOptions)initWithPrefetchMode:(int64_t)mode prefetchOptimizeMode:(int64_t)optimizeMode excludeDynamicResources:(BOOL)resources prefetchConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = PLCloudResourcePrefetchPredicateOptions;
  v12 = [(PLCloudResourcePrefetchPredicateOptions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_prefetchMode = mode;
    v12->_prefetchOptimizeMode = optimizeMode;
    v12->_excludeDynamicResources = resources;
    objc_storeStrong(&v12->_prefetchConfiguration, configuration);
  }

  return v13;
}

@end