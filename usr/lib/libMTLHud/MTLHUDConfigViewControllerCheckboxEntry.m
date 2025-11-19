@interface MTLHUDConfigViewControllerCheckboxEntry
- (void)checkChecked;
@end

@implementation MTLHUDConfigViewControllerCheckboxEntry

- (void)checkChecked
{
  checkedCallback = self->_checkedCallback;
  if (checkedCallback)
  {
    LOBYTE(checkedCallback) = checkedCallback[2](checkedCallback, a2);
  }

  self->_checked = checkedCallback;
}

@end