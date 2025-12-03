@interface SBHBorrowedIconView
- (void)invalidate;
@end

@implementation SBHBorrowedIconView

- (void)invalidate
{
  [(SBIconView *)self setIcon:0];
  [(SBIconView *)self setOverrideCustomIconImageViewController:0];
  borrowingAssertion = [(SBIconView *)self borrowingAssertion];
  [borrowingAssertion invalidate];

  [(SBIconView *)self setBorrowingAssertion:0];
}

@end