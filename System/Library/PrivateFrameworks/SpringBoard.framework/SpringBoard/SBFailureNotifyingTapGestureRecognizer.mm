@interface SBFailureNotifyingTapGestureRecognizer
- (SBFailureNotifyingTapGestureRecognizerDelegate)delegate;
- (void)setDelegate:(id)delegate;
- (void)setState:(int64_t)state;
@end

@implementation SBFailureNotifyingTapGestureRecognizer

- (SBFailureNotifyingTapGestureRecognizerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = SBFailureNotifyingTapGestureRecognizer;
  delegate = [(SBFailureNotifyingTapGestureRecognizer *)&v4 delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = SBFailureNotifyingTapGestureRecognizer;
  [(SBFailureNotifyingTapGestureRecognizer *)&v3 setDelegate:delegate];
}

- (void)setState:(int64_t)state
{
  state = [(SBFailureNotifyingTapGestureRecognizer *)self state];
  if (state == 5 && state != 5)
  {
    delegate = [(SBFailureNotifyingTapGestureRecognizer *)self delegate];
    [delegate gestureRecognizerTransitionedToFailed:self];
  }

  v7.receiver = self;
  v7.super_class = SBFailureNotifyingTapGestureRecognizer;
  [(SBFailureNotifyingTapGestureRecognizer *)&v7 setState:state];
}

@end