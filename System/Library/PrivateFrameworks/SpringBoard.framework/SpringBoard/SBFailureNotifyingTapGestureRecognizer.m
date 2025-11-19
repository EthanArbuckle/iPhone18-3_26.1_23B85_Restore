@interface SBFailureNotifyingTapGestureRecognizer
- (SBFailureNotifyingTapGestureRecognizerDelegate)delegate;
- (void)setDelegate:(id)a3;
- (void)setState:(int64_t)a3;
@end

@implementation SBFailureNotifyingTapGestureRecognizer

- (SBFailureNotifyingTapGestureRecognizerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = SBFailureNotifyingTapGestureRecognizer;
  v2 = [(SBFailureNotifyingTapGestureRecognizer *)&v4 delegate];

  return v2;
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBFailureNotifyingTapGestureRecognizer;
  [(SBFailureNotifyingTapGestureRecognizer *)&v3 setDelegate:a3];
}

- (void)setState:(int64_t)a3
{
  v5 = [(SBFailureNotifyingTapGestureRecognizer *)self state];
  if (a3 == 5 && v5 != 5)
  {
    v6 = [(SBFailureNotifyingTapGestureRecognizer *)self delegate];
    [v6 gestureRecognizerTransitionedToFailed:self];
  }

  v7.receiver = self;
  v7.super_class = SBFailureNotifyingTapGestureRecognizer;
  [(SBFailureNotifyingTapGestureRecognizer *)&v7 setState:a3];
}

@end