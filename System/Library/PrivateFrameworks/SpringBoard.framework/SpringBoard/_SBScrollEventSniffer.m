@interface _SBScrollEventSniffer
- (SBWindowScene)windowScene;
- (_SBScrollEventSnifferDelegate)delegate;
- (void)handleEvent:(id)a3;
@end

@implementation _SBScrollEventSniffer

- (void)handleEvent:(id)a3
{
  if ([a3 type] == 10)
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