@interface SXCloseActionHandler
- (void)handleCloseActionOnPresenter:(id)presenter;
@end

@implementation SXCloseActionHandler

- (void)handleCloseActionOnPresenter:(id)presenter
{
  controller = [presenter controller];
  [controller dismissViewControllerAnimated:1 completion:0];
}

@end