@interface TRAuthenticationOperationHandler
- (TRAuthenticationOperationHandler)initWithCompanionAuthHandler:(id)a3 proxyAuthHandler:(id)a4;
- (TRAuthenticationOperationHandler)initWithCompanionAuthHandlerWithError:(id)a3 proxyAuthHandler:(id)a4;
- (void)registerMessageHandlersForSession:(id)a3;
@end

@implementation TRAuthenticationOperationHandler

- (TRAuthenticationOperationHandler)initWithCompanionAuthHandler:(id)a3 proxyAuthHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v19 = v6;
    v10 = [(TRCompanionAuthOperationHandler *)v9 initWithCompanionAuthHandler:v18];
    companionAuthHandler = v8->_companionAuthHandler;
    v8->_companionAuthHandler = v10;

    v12 = [TRProxyAuthOperationHandler alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__TRAuthenticationOperationHandler_initWithCompanionAuthHandler_proxyAuthHandler___block_invoke_2;
    v16[3] = &unk_279DCF410;
    v17 = v7;
    v13 = [(TRProxyAuthOperationHandler *)v12 initWithProxyAuthHandler:v16];
    proxyAuthHandler = v8->_proxyAuthHandler;
    v8->_proxyAuthHandler = v13;
  }

  return v8;
}

- (TRAuthenticationOperationHandler)initWithCompanionAuthHandlerWithError:(id)a3 proxyAuthHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v19 = v6;
    v10 = [(TRCompanionAuthOperationHandler *)v9 initWithCompanionAuthHandlerWithError:v18];
    companionAuthHandler = v8->_companionAuthHandler;
    v8->_companionAuthHandler = v10;

    v12 = [TRProxyAuthOperationHandler alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __91__TRAuthenticationOperationHandler_initWithCompanionAuthHandlerWithError_proxyAuthHandler___block_invoke_2;
    v16[3] = &unk_279DCF438;
    v17 = v7;
    v13 = [(TRProxyAuthOperationHandler *)v12 initWithProxyAuthHandlerWithError:v16];
    proxyAuthHandler = v8->_proxyAuthHandler;
    v8->_proxyAuthHandler = v13;
  }

  return v8;
}

- (void)registerMessageHandlersForSession:(id)a3
{
  companionAuthHandler = self->_companionAuthHandler;
  v5 = a3;
  [(TRCompanionAuthOperationHandler *)companionAuthHandler registerMessageHandlersForSession:v5];
  [(TRProxyAuthOperationHandler *)self->_proxyAuthHandler registerMessageHandlersForSession:v5];
}

@end