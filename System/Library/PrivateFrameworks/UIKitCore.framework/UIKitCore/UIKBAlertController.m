@interface UIKBAlertController
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation UIKBAlertController

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = UIKBAlertController;
  [(UIAlertController *)&v6 viewDidDisappear:a3];
  v4 = [(UIKBAlertController *)self kbDelegate];

  if (v4)
  {
    v5 = [(UIKBAlertController *)self kbDelegate];
    [v5 alertDidDismiss];
  }
}

@end