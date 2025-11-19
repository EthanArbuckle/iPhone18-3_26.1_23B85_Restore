@interface SXCloseActionHandler
- (void)handleCloseActionOnPresenter:(id)a3;
@end

@implementation SXCloseActionHandler

- (void)handleCloseActionOnPresenter:(id)a3
{
  v3 = [a3 controller];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

@end