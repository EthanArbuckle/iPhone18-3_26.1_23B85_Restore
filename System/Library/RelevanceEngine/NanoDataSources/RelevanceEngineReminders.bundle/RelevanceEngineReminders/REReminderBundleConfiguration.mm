@interface REReminderBundleConfiguration
- (Class)dataSourceClassForKey:(id)key;
@end

@implementation REReminderBundleConfiguration

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