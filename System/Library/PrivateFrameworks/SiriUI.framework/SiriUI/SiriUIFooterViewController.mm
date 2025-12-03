@interface SiriUIFooterViewController
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SiriUIFooterViewController

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SiriUIFooterViewController;
  [(SiriUIFooterViewController *)&v7 viewDidAppear:appear];
  view = [(SiriUIFooterViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    view2 = [(SiriUIFooterViewController *)self view];
    [view2 beginProgressAnimation];
  }
}

@end