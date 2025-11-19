@interface PKAppProtectionShieldViewController
+ (id)createShieldViewControllerWithConfiguration:(id)a3;
@end

@implementation PKAppProtectionShieldViewController

+ (id)createShieldViewControllerWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[_PKAppProtectionShieldViewController alloc] initWithConfiguration:v3];

  return v4;
}

@end