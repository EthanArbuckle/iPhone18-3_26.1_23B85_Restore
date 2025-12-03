@interface TUIPredictionViewStackContentView
- (void)willRemoveSubview:(id)subview;
@end

@implementation TUIPredictionViewStackContentView

- (void)willRemoveSubview:(id)subview
{
  superview = [(TUIPredictionViewStackContentView *)self superview];
  [superview setNeedsLayout];
}

@end