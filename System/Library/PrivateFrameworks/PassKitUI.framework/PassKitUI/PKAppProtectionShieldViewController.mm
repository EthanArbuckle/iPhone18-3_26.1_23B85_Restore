@interface PKAppProtectionShieldViewController
+ (id)createShieldViewControllerWithConfiguration:(id)configuration;
@end

@implementation PKAppProtectionShieldViewController

+ (id)createShieldViewControllerWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[_PKAppProtectionShieldViewController alloc] initWithConfiguration:configurationCopy];

  return v4;
}

@end