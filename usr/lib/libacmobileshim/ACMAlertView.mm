@interface ACMAlertView
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)dealloc;
- (void)dismissAlert;
- (void)setAlpha:(double)a3;
- (void)showWithCompletionBlock:(id)a3;
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

- (void)setAlpha:(double)a3
{
  [(ACMAlertView *)self alpha];
  if (v5 != a3)
  {
    v6 = [(ACMAlertView *)self acmAlertViewDelegate];
    if (a3 == 0.0)
    {
      [(acmAlertViewDelegateProtocol *)v6 acmAlertViewWillBecomeInvisible];
    }

    else
    {
      [(acmAlertViewDelegateProtocol *)v6 acmAlertViewWillBecomeVisible];
    }
  }

  v7.receiver = self;
  v7.super_class = ACMAlertView;
  [(ACMAlertView *)&v7 setAlpha:a3];
}

- (void)showWithCompletionBlock:(id)a3
{
  if (a3)
  {
    [(ACMAlertView *)self setDelegate:self];
    [(ACMAlertView *)self setCompletionBlock:a3];

    [(ACMAlertView *)self show];
  }
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  if ([(ACMAlertView *)self completionBlock])
  {
    v6 = [(ACMAlertView *)self completionBlock];
    v6[2](v6, a4);

    [(ACMAlertView *)self setCompletionBlock:0];
  }
}

- (void)dismissAlert
{
  if ([(ACMAlertView *)self completionBlock])
  {
    v3 = self;
    v4 = [(ACMAlertView *)self completionBlock];
    v4[2](v4, [(ACMAlertView *)self cancelButtonIndex]);
    [(ACMAlertView *)self setCompletionBlock:0];
  }

  v5 = [(ACMAlertView *)self cancelButtonIndex];

  [(ACMAlertView *)self dismissWithClickedButtonIndex:v5 animated:0];
}

@end