@interface NSUserDefaults
- (id)dateForKey:(id)key;
- (id)fuzzyDaysSinceKey:(id)key;
- (int)tristateForBoolKey:(id)key;
@end

@implementation NSUserDefaults

- (id)dateForKey:(id)key
{
  v3 = [(NSUserDefaults *)self objectForKey:key];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)fuzzyDaysSinceKey:(id)key
{
  v3 = [(NSUserDefaults *)self dateForKey:key];
  v4 = [NSNumber numberWithInteger:[SFAnalytics fuzzyDaysSinceDate:v3]];

  return v4;
}

- (int)tristateForBoolKey:(id)key
{
  v3 = [(NSUserDefaults *)self objectForKey:key];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = -1;
  }

  return bOOLValue;
}

@end