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
  _usagePages = [(TYUsagePairs *)self _usagePages];
  v3 = [_usagePages copy];

  return v3;
}

- (id)usages
{
  _usages = [(TYUsagePairs *)self _usages];
  v3 = [_usages copy];

  return v3;
}

@end