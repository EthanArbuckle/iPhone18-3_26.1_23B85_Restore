@interface TYUsagePairs
- (TYUsagePairs)init;
- (id)usagePages;
- (id)usages;
@end

@implementation TYUsagePairs

- (TYUsagePairs)init
{
  v6.receiver = self;
  v6.super_class = TYUsagePairs;
  v2 = [(TYUsagePairs *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(TYUsagePairs *)v2 set_usages:v3];

    v4 = objc_opt_new();
    [(TYUsagePairs *)v2 set_usagePages:v4];
  }

  return v2;
}

- (id)usagePages
{
  v2 = [(TYUsagePairs *)self _usagePages];
  v3 = [v2 copy];

  return v3;
}

- (id)usages
{
  v2 = [(TYUsagePairs *)self _usages];
  v3 = [v2 copy];

  return v3;
}

@end