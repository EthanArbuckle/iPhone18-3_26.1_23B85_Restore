@interface NSDictionary
- (id)objectForKey:(id)key ofClass:(Class)class;
@end

@implementation NSDictionary

- (id)objectForKey:(id)key ofClass:(Class)class
{
  v4 = [(NSDictionary *)self objectForKeyedSubscript:key];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end