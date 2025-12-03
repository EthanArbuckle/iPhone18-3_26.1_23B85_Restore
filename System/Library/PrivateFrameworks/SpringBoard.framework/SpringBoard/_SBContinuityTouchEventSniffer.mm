@interface _SBContinuityTouchEventSniffer
- (SBWindowScene)windowScene;
- (_SBContinuityTouchEventSnifferDelegate)delegate;
- (void)handleEvent:(id)event;
@end

@implementation _SBContinuityTouchEventSniffer

- (void)handleEvent:(id)event
{
  if (![event type])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained eventSnifferHandledQualifyingContinuityTouch:self];
  }
}

- (_SBContinuityTouchEventSnifferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end