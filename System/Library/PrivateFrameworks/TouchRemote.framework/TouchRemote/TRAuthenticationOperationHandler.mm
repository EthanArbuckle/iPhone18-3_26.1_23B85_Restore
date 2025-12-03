@interface TRAuthenticationOperationHandler
- (TRAuthenticationOperationHandler)initWithCompanionAuthHandler:(id)handler proxyAuthHandler:(id)authHandler;
- (TRAuthenticationOperationHandler)initWithCompanionAuthHandlerWithError:(id)error proxyAuthHandler:(id)handler;
- (void)registerMessageHandlersForSession:(id)session;
@end

@implementation TRAuthenticationOperationHandler

- (TRAuthenticationOperationHandler)initWithCompanionAuthHandler:(id)handler proxyAuthHandler:(id)authHandler
{
  handlerCopy = handler;
  authHandlerCopy = authHandler;
  v20.receiver = self;
  v20.super_class = TRAuthenticationOperationHandler;
  v8 = [(TRAuthenticationOperationHandler *)&v20 init];
  if (v8)
  {
    v9 = [TRCompanionAuthOperationHandler alloc];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__TRAuthenticationOperationHandler_initWithCompanionAuthHandler_proxyAuthHandler___block_invoke;
    v18[3] = &unk_279DCF410;
    v19 = handlerCopy;
    v10 = [(TRCompanionAuthOperationHandler *)v9 initWithCompanionAuthHandler:v18];
    companionAuthHandler = v8->_companionAuthHandler;
    v8->_companionAuthHandler = v10;

    v12 = [TRProxyAuthOperationHandler alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__TRAuthenticationOperationHandler_initWithCompanionAuthHandler_proxyAuthHandler___block_invoke_2;
    v16[3] = &unk_279DCF410;
    v17 = authHandlerCopy;
    v13 = [(TRProxyAuthOperationHandler *)v12 initWithProxyAuthHandler:v16];
    proxyAuthHandler = v8->_proxyAuthHandler;
    v8->_proxyAuthHandler = v13;
  }

  return v8;
}

- (TRAuthenticationOperationHandler)initWithCompanionAuthHandlerWithError:(id)error proxyAuthHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = TRAuthenticationOperationHandler;
  v8 = [(TRAuthenticationOperationHandler *)&v20 init];
  if (v8)
  {
    v9 = [TRCompanionAuthOperationHandler alloc];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __91__TRAuthenticationOperationHandler_initWithCompanionAuthHandlerWithError_proxyAuthHandler___block_invoke;
    v18[3] = &unk_279DCF438;
    v19 = errorCopy;
    v10 = [(TRCompanionAuthOperationHandler *)v9 initWithCompanionAuthHandlerWithError:v18];
    companionAuthHandler = v8->_companionAuthHandler;
    v8->_companionAuthHandler = v10;

    v12 = [TRProxyAuthOperationHandler alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __91__TRAuthenticationOperationHandler_initWithCompanionAuthHandlerWithError_proxyAuthHandler___block_invoke_2;
    v16[3] = &unk_279DCF438;
    v17 = handlerCopy;
    v13 = [(TRProxyAuthOperationHandler *)v12 initWithProxyAuthHandlerWithError:v16];
    proxyAuthHandler = v8->_proxyAuthHandler;
    v8->_proxyAuthHandler = v13;
  }

  return v8;
}

- (void)registerMessageHandlersForSession:(id)session
{
  companionAuthHandler = self->_companionAuthHandler;
  sessionCopy = session;
  [(TRCompanionAuthOperationHandler *)companionAuthHandler registerMessageHandlersForSession:sessionCopy];
  [(TRProxyAuthOperationHandler *)self->_proxyAuthHandler registerMessageHandlersForSession:sessionCopy];
}

@end