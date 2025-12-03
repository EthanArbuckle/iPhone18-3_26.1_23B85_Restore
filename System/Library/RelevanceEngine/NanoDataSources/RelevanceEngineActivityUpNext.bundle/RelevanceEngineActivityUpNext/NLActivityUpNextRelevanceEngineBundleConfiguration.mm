@interface NLActivityUpNextRelevanceEngineBundleConfiguration
- (Class)dataSourceClassForKey:(id)key;
@end

@implementation NLActivityUpNextRelevanceEngineBundleConfiguration

- (Class)dataSourceClassForKey:(id)key
{
  if ([key isEqualToString:RESampleDataSourceKey])
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end