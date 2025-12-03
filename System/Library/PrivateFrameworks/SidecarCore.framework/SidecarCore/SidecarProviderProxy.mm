@interface SidecarProviderProxy
+ (SidecarProviderProxy)defaultProxy;
- (SidecarProviderProxy)init;
- (SidecarServiceProviderDelegate)delegate;
- (void)sidecarServiceTerminate;
- (void)sidecarSession:(id)session receivedMessage:(id)message;
@end

@implementation SidecarProviderProxy

- (SidecarServiceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sidecarServiceTerminate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sidecarServiceProviderTerminate];
}

- (void)sidecarSession:(id)session receivedMessage:(id)message
{
  messageCopy = message;
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [(SidecarRequest *)[SidecarResponse alloc] initWithSession:sessionCopy message:messageCopy];

  [(SidecarRequest *)v8 setDelegate:WeakRetained];
  [sessionCopy setDelegate:v8];
  [(SidecarRequest *)v8 sidecarSessionStarted:sessionCopy];

  [WeakRetained sidecarServiceProviderHandleRequest:v8];
}

- (SidecarProviderProxy)init
{
  v3.receiver = self;
  v3.super_class = SidecarProviderProxy;
  return [(SidecarProviderProxy *)&v3 init];
}

+ (SidecarProviderProxy)defaultProxy
{
  if (defaultProxy_once != -1)
  {
    dispatch_once(&defaultProxy_once, &__block_literal_global_299);
  }

  v3 = defaultProxy_proxy;

  return v3;
}

uint64_t __36__SidecarProviderProxy_defaultProxy__block_invoke()
{
  defaultProxy_proxy = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end