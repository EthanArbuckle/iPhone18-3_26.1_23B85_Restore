@interface TUIPredictionViewStackContentView
- (void)willRemoveSubview:(id)a3;
@end

@implementation TUIPredictionViewStackContentView

- (void)willRemoveSubview:(id)a3
{
  v3 = [(TUIPredictionViewStackContentView *)self superview];
  [v3 setNeedsLayout];
}

@end