@interface PKPortraitNavigationController
- (BOOL)_canShowWhileLocked;
@end

@implementation PKPortraitNavigationController

- (BOOL)_canShowWhileLocked
{
  v3 = objc_opt_class();

  return [(PKPortraitNavigationController *)self isMemberOfClass:v3];
}

@end