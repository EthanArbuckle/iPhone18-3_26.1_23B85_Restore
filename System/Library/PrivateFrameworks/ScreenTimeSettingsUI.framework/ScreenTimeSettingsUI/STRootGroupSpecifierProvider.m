@interface STRootGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)a3;
- (void)invalidate;
@end

@implementation STRootGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setCoordinator:v3];

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