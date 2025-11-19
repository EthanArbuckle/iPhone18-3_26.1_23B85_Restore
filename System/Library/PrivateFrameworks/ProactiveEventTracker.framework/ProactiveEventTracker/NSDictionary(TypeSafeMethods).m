@interface NSDictionary(TypeSafeMethods)
- (id)pet_arrayForKey:()TypeSafeMethods;
- (id)pet_dictForKey:()TypeSafeMethods;
- (id)pet_numForKey:()TypeSafeMethods;
- (id)pet_strForKey:()TypeSafeMethods;
- (void)pet_objectForKey:()TypeSafeMethods class:;
@end

@implementation NSDictionary(TypeSafeMethods)

- (id)pet_arrayForKey:()TypeSafeMethods
{
  v4 = a3;
  v5 = [a1 pet_objectForKey:v4 class:objc_opt_class()];

  return v5;
}

- (id)pet_dictForKey:()TypeSafeMethods
{
  v4 = a3;
  v5 = [a1 pet_objectForKey:v4 class:objc_opt_class()];

  return v5;
}

- (id)pet_numForKey:()TypeSafeMethods
{
  v4 = a3;
  v5 = [a1 pet_objectForKey:v4 class:objc_opt_class()];

  return v5;
}

- (id)pet_strForKey:()TypeSafeMethods
{
  v4 = a3;
  v5 = [a1 pet_objectForKey:v4 class:objc_opt_class()];

  return v5;
}

- (void)pet_objectForKey:()TypeSafeMethods class:
{
  v1 = [a1 objectForKey:?];
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end