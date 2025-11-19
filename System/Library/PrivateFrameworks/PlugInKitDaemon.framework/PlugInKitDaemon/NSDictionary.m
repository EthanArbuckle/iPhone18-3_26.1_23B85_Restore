@interface NSDictionary
- (id)objectForKey:(id)a3 ofClass:(Class)a4;
@end

@implementation NSDictionary

- (id)objectForKey:(id)a3 ofClass:(Class)a4
{
  v4 = [(NSDictionary *)self objectForKeyedSubscript:a3];
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