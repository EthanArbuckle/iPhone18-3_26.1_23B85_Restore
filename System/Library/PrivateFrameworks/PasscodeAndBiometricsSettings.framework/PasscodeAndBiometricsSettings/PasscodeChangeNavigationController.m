@interface PasscodeChangeNavigationController
- (PasscodeChangeNavigationControllerDelegate)customDelegate;
@end

@implementation PasscodeChangeNavigationController

- (PasscodeChangeNavigationControllerDelegate)customDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customDelegate);

  return WeakRetained;
}

@end