@interface ACMAlertView
- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index;
- (void)dealloc;
- (void)dismissAlert;
- (void)setAlpha:(double)alpha;
- (void)showWithCompletionBlock:(id)block;
@end

@implementation ACMAlertView

- (void)dealloc
{
  [(ACMAlertView *)self setDelegate:0];
  [(ACMAlertView *)self setCompletionBlock:0];
  v3.receiver = self;
  v3.super_class = ACMAlertView;
  [(ACMAlertView *)&v3 dealloc];
}

- (void)setAlpha:(double)alpha
{
  [(ACMAlertView *)self alpha];
  if (v5 != alpha)
  {
    acmAlertViewDelegate = [(ACMAlertView *)self acmAlertViewDelegate];
    if (alpha == 0.0)
    {
      [(acmAlertViewDelegateProtocol *)acmAlertViewDelegate acmAlertViewWillBecomeInvisible];
    }

    else
    {
      [(acmAlertViewDelegateProtocol *)acmAlertViewDelegate acmAlertViewWillBecomeVisible];
    }
  }

  v7.receiver = self;
  v7.super_class = ACMAlertView;
  [(ACMAlertView *)&v7 setAlpha:alpha];
}

- (void)showWithCompletionBlock:(id)block
{
  if (block)
  {
    [(ACMAlertView *)self setDelegate:self];
    [(ACMAlertView *)self setCompletionBlock:block];

    [(ACMAlertView *)self show];
  }
}

- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index
{
  if ([(ACMAlertView *)self completionBlock])
  {
    completionBlock = [(ACMAlertView *)self completionBlock];
    completionBlock[2](completionBlock, index);

    [(ACMAlertView *)self setCompletionBlock:0];
  }
}

- (void)dismissAlert
{
  if ([(ACMAlertView *)self completionBlock])
  {
    selfCopy = self;
    completionBlock = [(ACMAlertView *)self completionBlock];
    completionBlock[2](completionBlock, [(ACMAlertView *)self cancelButtonIndex]);
    [(ACMAlertView *)self setCompletionBlock:0];
  }

  cancelButtonIndex = [(ACMAlertView *)self cancelButtonIndex];

  [(ACMAlertView *)self dismissWithClickedButtonIndex:cancelButtonIndex animated:0];
}

@end