@interface _SBScrollEventSniffer
- (SBWindowScene)windowScene;
- (_SBScrollEventSnifferDelegate)delegate;
- (void)handleEvent:(id)event;
@end

@implementation _SBScrollEventSniffer

- (void)handleEvent:(id)event
{
  if ([event type] == 10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained eventSnifferHandledQualifyingScroll:self];
  }
}

- (_SBScrollEventSnifferDelegate)delegate
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