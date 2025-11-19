@interface SidecarProviderProxy
+ (SidecarProviderProxy)defaultProxy;
- (SidecarProviderProxy)init;
- (SidecarServiceProviderDelegate)delegate;
- (void)sidecarServiceTerminate;
- (void)sidecarSession:(id)a3 receivedMessage:(id)a4;
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

- (void)sidecarSession:(id)a3 receivedMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [(SidecarRequest *)[SidecarResponse alloc] initWithSession:v7 message:v6];

  [(SidecarRequest *)v8 setDelegate:WeakRetained];
  [v7 setDelegate:v8];
  [(SidecarRequest *)v8 sidecarSessionStarted:v7];

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