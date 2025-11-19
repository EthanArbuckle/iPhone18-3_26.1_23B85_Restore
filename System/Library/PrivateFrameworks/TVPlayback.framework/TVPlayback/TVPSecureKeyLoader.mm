@interface TVPSecureKeyLoader
- (TVPSecureKeyLoaderDelegate)delegate;
@end

@implementation TVPSecureKeyLoader

- (TVPSecureKeyLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end