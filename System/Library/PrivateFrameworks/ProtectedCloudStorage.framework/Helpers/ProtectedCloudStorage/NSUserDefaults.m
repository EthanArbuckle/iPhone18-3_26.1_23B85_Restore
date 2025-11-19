@interface NSUserDefaults
- (id)dateForKey:(id)a3;
- (id)fuzzyDaysSinceKey:(id)a3;
- (int)tristateForBoolKey:(id)a3;
@end

@implementation NSUserDefaults

- (id)dateForKey:(id)a3
{
  v3 = [(NSUserDefaults *)self objectForKey:a3];
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

- (id)fuzzyDaysSinceKey:(id)a3
{
  v3 = [(NSUserDefaults *)self dateForKey:a3];
  v4 = [NSNumber numberWithInteger:[SFAnalytics fuzzyDaysSinceDate:v3]];

  return v4;
}

- (int)tristateForBoolKey:(id)a3
{
  v3 = [(NSUserDefaults *)self objectForKey:a3];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

@end