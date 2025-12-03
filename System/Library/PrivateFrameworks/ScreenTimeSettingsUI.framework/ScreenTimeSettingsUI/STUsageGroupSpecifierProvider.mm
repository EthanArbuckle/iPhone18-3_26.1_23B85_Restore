@interface STUsageGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)coordinator;
- (void)invalidate;
@end

@implementation STUsageGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v4 = objc_opt_new();
  [v4 setCoordinator:coordinatorCopy];

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