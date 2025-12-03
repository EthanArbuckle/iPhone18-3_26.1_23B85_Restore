@interface UIKBAlertController
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation UIKBAlertController

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = UIKBAlertController;
  [(UIAlertController *)&v6 viewDidDisappear:disappear];
  kbDelegate = [(UIKBAlertController *)self kbDelegate];

  if (kbDelegate)
  {
    kbDelegate2 = [(UIKBAlertController *)self kbDelegate];
    [kbDelegate2 alertDidDismiss];
  }
}

@end