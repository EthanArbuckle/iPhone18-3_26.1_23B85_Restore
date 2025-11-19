@interface _SBContinuityTouchEventSniffer
- (SBWindowScene)windowScene;
- (_SBContinuityTouchEventSnifferDelegate)delegate;
- (void)handleEvent:(id)a3;
@end

@implementation _SBContinuityTouchEventSniffer

- (void)handleEvent:(id)a3
{
  if (![a3 type])
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