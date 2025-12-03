@interface VUINowPlayingWindowDelegateProvider
+ (id)sharedInstance;
- (BOOL)shouldNowPlayingWindowDismiss;
- (VUINowPlayingWindowDelegate)delegate;
@end

@implementation VUINowPlayingWindowDelegateProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_32 != -1)
  {
    +[VUINowPlayingWindowDelegateProvider sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_4;

  return v3;
}

void __53__VUINowPlayingWindowDelegateProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUINowPlayingWindowDelegateProvider);
  v1 = sharedInstance___sharedInstance_4;
  sharedInstance___sharedInstance_4 = v0;
}

- (BOOL)shouldNowPlayingWindowDismiss
{
  delegate = [(VUINowPlayingWindowDelegateProvider *)self delegate];
  v3 = delegate;
  if (delegate)
  {
    shouldNowPlayingWindowDismiss = [delegate shouldNowPlayingWindowDismiss];
  }

  else
  {
    shouldNowPlayingWindowDismiss = 1;
  }

  return shouldNowPlayingWindowDismiss;
}

- (VUINowPlayingWindowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end