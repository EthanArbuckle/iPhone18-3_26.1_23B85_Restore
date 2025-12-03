@interface STRootGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)coordinator;
- (void)invalidate;
@end

@implementation STRootGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v4 = objc_opt_new();
  [v4 setCoordinator:coordinatorCopy];

  return v4;
}

- (void)invalidate
{
  [(STRootGroupSpecifierProvider *)self setCoordinator:0];
  v3.receiver = self;
  v3.super_class = STRootGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v3 invalidate];
}

@end