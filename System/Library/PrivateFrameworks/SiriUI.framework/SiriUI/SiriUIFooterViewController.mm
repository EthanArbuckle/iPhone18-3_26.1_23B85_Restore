@interface SiriUIFooterViewController
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SiriUIFooterViewController

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SiriUIFooterViewController;
  [(SiriUIFooterViewController *)&v7 viewDidAppear:a3];
  v4 = [(SiriUIFooterViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(SiriUIFooterViewController *)self view];
    [v6 beginProgressAnimation];
  }
}

@end