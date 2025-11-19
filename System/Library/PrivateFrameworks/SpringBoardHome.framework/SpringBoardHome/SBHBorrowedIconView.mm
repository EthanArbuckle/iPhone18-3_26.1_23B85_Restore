@interface SBHBorrowedIconView
- (void)invalidate;
@end

@implementation SBHBorrowedIconView

- (void)invalidate
{
  [(SBIconView *)self setIcon:0];
  [(SBIconView *)self setOverrideCustomIconImageViewController:0];
  v3 = [(SBIconView *)self borrowingAssertion];
  [v3 invalidate];

  [(SBIconView *)self setBorrowingAssertion:0];
}

@end