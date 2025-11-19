@interface STUsageGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)a3;
- (void)invalidate;
@end

@implementation STUsageGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setCoordinator:v3];

  return v4;
}

- (void)invalidate
{
  [(STUsageGroupSpecifierProvider *)self setCoordinator:0];
  v3.receiver = self;
  v3.super_class = STUsageGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v3 invalidate];
}

@end