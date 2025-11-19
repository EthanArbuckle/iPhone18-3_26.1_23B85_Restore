@interface SXPresentationDelegateContainer
- (SXPresentationDelegate)presentationDelegate;
@end

@implementation SXPresentationDelegateContainer

- (SXPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end