@interface SASPresentationServer
+ (id)interface;
+ (id)serverForConnection:(id)a3;
+ (void)_unregisterConnection:(id)a3;
- (SASPresentationServer)init;
- (SASPresentationServerDelegate)weak_delegate;
- (id)allBulletins;
- (id)bulletinForIdentifier:(id)a3;
- (id)bulletinsOnLockScreen;
- (id)description;
- (void)_setConnection:(id)a3;
- (void)dealloc;
- (void)didDismiss;
- (void)didPresentSiri;
- (void)didUpdatePresentationConfiguration:(id)a3;
- (void)didUpdatePresentationState:(id)a3;
- (void)failedToPresentSiriWithError:(id)a3;
- (void)init;
- (void)pong;
- (void)registerPresentationIdentifier:(id)a3;
- (void)resetSiriToActive;
- (void)unregisterPresentationIdentifier:(id)a3;
- (void)willDismiss;
@end

@implementation SASPresentationServer

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SASPresentationServer *)self connection];
  v5 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:{-[SASPresentationServer presentationIdentifier](self, "presentationIdentifier")}];
  v6 = [v3 stringWithFormat:@"<SASPresentationServer connection:%@, presentationIdentifier:%@>", v4, v5];

  return v6;
}

- (void)pong
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __29__SASPresentationServer_pong__block_invoke;
  v2[3] = &unk_1E82F36D0;
  objc_copyWeak(&v3, &location);
  SiriInvokeOnMainQueue(v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __29__SASPresentationServer_pong__block_invoke(uint64_t a1)
{
  v3 = +[SiriActivationService service];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 pongWithPresentationIdentifier:{objc_msgSend(WeakRetained, "presentationIdentifier")}];
}

- (void)didPresentSiri
{
  v11 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[SASPresentationServer didPresentSiri]";
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %p #activation Shell indicates Siri is presented", buf, 0x16u);
  }

  v4 = [(SASPresentationServer *)self presentationIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SASPresentationServer_didPresentSiri__block_invoke;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = v4;
  SiriInvokeOnMainQueue(v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __39__SASPresentationServer_didPresentSiri__block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 siriPresentationDisplayedWithIdentifier:*(a1 + 32)];
}

+ (id)serverForConnection:(id)a3
{
  v4 = a3;
  v5 = [serversByConnection objectForKey:v4];
  if (!v5)
  {
    v6 = objc_alloc_init(SASPresentationServer);
    os_unfair_lock_lock(&lock);
    v7 = serversByConnection;
    if (!serversByConnection)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:4];
      v9 = serversByConnection;
      serversByConnection = v8;

      v7 = serversByConnection;
    }

    [v7 setObject:v6 forKey:v4];
    os_unfair_lock_unlock(&lock);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __45__SASPresentationServer_serverForConnection___block_invoke;
    v14 = &unk_1E82F3990;
    v5 = v6;
    v15 = v5;
    v16 = a1;
    [v4 configureConnection:&v11];
    [(SASPresentationServer *)v5 _setConnection:v4, v11, v12, v13, v14];
  }

  return v5;
}

void __45__SASPresentationServer_serverForConnection___block_invoke(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SASPresentationServer_serverForConnection___block_invoke_2;
  v9[3] = &unk_1E82F3940;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v4;
  v11 = v5;
  v6 = a2;
  [v6 setInvalidationHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SASPresentationServer_serverForConnection___block_invoke_21;
  v7[3] = &unk_1E82F3968;
  v8 = *(a1 + 32);
  [v6 setInterruptionHandler:v7];
}

void __45__SASPresentationServer_serverForConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315394;
    v8 = "+[SASPresentationServer serverForConnection:]_block_invoke_2";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation invalidated presentationServer: %@", &v7, 0x16u);
  }

  [*(a1 + 40) _unregisterConnection:v3];

  v6 = *MEMORY[0x1E69E9840];
}

void __45__SASPresentationServer_serverForConnection___block_invoke_21(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "+[SASPresentationServer serverForConnection:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation interrupted presentationServer: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)_unregisterConnection:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&lock);
  v5 = [serversByConnection objectForKey:v3];
  v4 = +[SiriActivationService service];
  [v4 unregisterSiriPresentationIdentifier:{objc_msgSend(v5, "presentationIdentifier")}];

  [serversByConnection removeObjectForKey:v3];
  os_unfair_lock_unlock(&lock);
}

- (SASPresentationServer)init
{
  v4.receiver = self;
  v4.super_class = SASPresentationServer;
  v2 = [(SASPresentationServer *)&v4 init];
  if (v2 && os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
  {
    [SASPresentationServer init];
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  _os_log_debug_impl(&dword_1C8137000, v1, OS_LOG_TYPE_DEBUG, "%s %p", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_setConnection:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 remoteProcess];
  v6 = v5;
  if (v5 && ([v5 hasEntitlement:@"com.apple.siri.activation.service"] & 1) == 0)
  {
    v8 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SASPresentationServer *)self _setConnection:v8, v6];
    }

    [v4 invalidate];
  }

  else
  {
    v7 = [(SASPresentationServer *)self connection];
    if (v7)
    {

LABEL_9:
      v9 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "[SASPresentationServer _setConnection:]";
        v27 = 2114;
        v28 = self;
        _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s Unexpectedly attempted to assign a new connection to the activation server with an existing connection: %{public}@", buf, 0x16u);
      }

      [v4 invalidate];
      goto LABEL_12;
    }

    if ([(SASPresentationServer *)self invalidated])
    {
      goto LABEL_9;
    }

    [(SASPresentationServer *)self setConnection:v4];
    objc_initWeak(buf, self);
    connection = self->_connection;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __40__SASPresentationServer__setConnection___block_invoke;
    v22[3] = &unk_1E82F39E0;
    v22[4] = self;
    objc_copyWeak(&v23, buf);
    [(BSServiceConnectionHost *)connection configureConnection:v22];
    [(BSServiceConnectionHost *)self->_connection activate];
    v12 = [(SASPresentationServer *)self waitForConnectBlocks];
    [(SASPresentationServer *)self setWaitForConnectBlocks:0];
    if ([v12 count])
    {
      v13 = [(BSServiceConnectionHost *)self->_connection remoteTarget];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v15)
      {
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v14);
            }

            (*(*(*(&v18 + 1) + 8 * v17) + 16))(*(*(&v18 + 1) + 8 * v17));
            ++v17;
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v18 objects:v24 count:16];
        }

        while (v15);
      }
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

LABEL_12:

  v10 = *MEMORY[0x1E69E9840];
}

void __40__SASPresentationServer__setConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SASPresentationServer serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[SASPresentationServer interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SASPresentationServer__setConnection___block_invoke_2;
  v6[3] = &unk_1E82F39B8;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
}

void __40__SASPresentationServer__setConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 5);
    [v5 serverDidInvalidateConnection:v4];

    [SASPresentationServer _unregisterConnection:v6];
  }
}

+ (id)interface
{
  v2 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F47E3A08];
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F47E3A68];
  v4 = [MEMORY[0x1E698F4E8] interfaceWithServer:v2 client:v3];

  return v4;
}

- (void)registerPresentationIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  kdebug_trace();
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = [v6 stringWithSiriPresentationIdentifier:{objc_msgSend(v4, "siriPresentationIdentifier")}];
    *buf = 136315650;
    v15 = "[SASPresentationServer registerPresentationIdentifier:]";
    v16 = 2048;
    v17 = self;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s %p #activation registerPresentationIdentifier:%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__SASPresentationServer_registerPresentationIdentifier___block_invoke;
  v11[3] = &unk_1E82F37D0;
  objc_copyWeak(&v13, buf);
  v9 = v4;
  v12 = v9;
  SiriInvokeOnMainQueue(v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x1E69E9840];
}

void __56__SASPresentationServer_registerPresentationIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) siriPresentationIdentifier];
    [v5 setPresentationIdentifier:v3];
    v4 = +[SiriActivationService service];
    [v4 registerSiriPresentation:v5 withIdentifier:v3];

    WeakRetained = v5;
  }
}

- (void)unregisterPresentationIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  kdebug_trace();
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[SASPresentationServer unregisterPresentationIdentifier:]";
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s %p #activation unregisterPresentationIdentifier:%@", buf, 0x20u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__SASPresentationServer_unregisterPresentationIdentifier___block_invoke;
  v8[3] = &unk_1E82F3A08;
  v9 = v4;
  v6 = v4;
  SiriInvokeOnMainQueue(v8);

  v7 = *MEMORY[0x1E69E9840];
}

void __58__SASPresentationServer_unregisterPresentationIdentifier___block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 unregisterSiriPresentationIdentifier:{objc_msgSend(*(a1 + 32), "siriPresentationIdentifier")}];
}

- (void)willDismiss
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[SASPresentationServer willDismiss]";
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %p #activation willDismiss", buf, 0x16u);
  }

  v4 = [(SASPresentationServer *)self presentationIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__SASPresentationServer_willDismiss__block_invoke;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = v4;
  SiriInvokeOnMainQueue(v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __36__SASPresentationServer_willDismiss__block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 siriPresentationWillDismissWithIdentifier:*(a1 + 32)];
}

- (void)didDismiss
{
  v11 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[SASPresentationServer didDismiss]";
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %p #activation didDismiss", buf, 0x16u);
  }

  v4 = [(SASPresentationServer *)self presentationIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__SASPresentationServer_didDismiss__block_invoke;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = v4;
  SiriInvokeOnMainQueue(v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __35__SASPresentationServer_didDismiss__block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 siriPresentationDismissedWithIdentifier:*(a1 + 32)];
}

- (void)resetSiriToActive
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SASPresentationServer resetSiriToActive]";
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %p #activation resetSiriToActive", &v5, 0x16u);
  }

  [(SASPresentationServer *)self didPresentSiri];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)failedToPresentSiriWithError:(id)a3
{
  v4 = a3;
  kdebug_trace();
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [SASPresentationServer failedToPresentSiriWithError:];
  }

  v5 = [(SASPresentationServer *)self presentationIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SASPresentationServer_failedToPresentSiriWithError___block_invoke;
  v7[3] = &unk_1E82F3A30;
  v8 = v4;
  v9 = v5;
  v6 = v4;
  SiriInvokeOnMainQueue(v7);
}

void __54__SASPresentationServer_failedToPresentSiriWithError___block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 siriPresentationFailureWithIdentifier:*(a1 + 40) error:*(a1 + 32)];
}

- (void)didUpdatePresentationState:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[SASPresentationServer didUpdatePresentationState:]";
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s %p #activation Presentation state did update: %@", buf, 0x20u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__SASPresentationServer_didUpdatePresentationState___block_invoke;
  v8[3] = &unk_1E82F3A08;
  v9 = v4;
  v6 = v4;
  SiriInvokeOnMainQueue(v8);

  v7 = *MEMORY[0x1E69E9840];
}

void __52__SASPresentationServer_didUpdatePresentationState___block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 siriPresentationDidUpdateState:*(a1 + 32)];
}

- (void)didUpdatePresentationConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[SiriActivationService service];
  [v4 siriPresentationDidUpdatePresentationConfiguration:v3];
}

void __56__SASPresentationServer_speechRequestStartedFromSiriOrb__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[SASPresentationServer speechRequestStartedFromSiriOrb]_block_invoke";
    _os_log_impl(&dword_1C8137000, v0, OS_LOG_TYPE_DEFAULT, "%s #activation Shell indicates that speech request was started via Siri orb", &v3, 0xCu);
  }

  v1 = +[SiriActivationService service];
  [v1 speechRequestStateDidChange:1];

  v2 = *MEMORY[0x1E69E9840];
}

void __58__SASPresentationServer_speechRequestCancelledFromSiriOrb__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[SASPresentationServer speechRequestCancelledFromSiriOrb]_block_invoke";
    _os_log_impl(&dword_1C8137000, v0, OS_LOG_TYPE_DEFAULT, "%s #activation Shell indicates that speech request was cancelled via Siri orb", &v3, 0xCu);
  }

  v1 = +[SiriActivationService service];
  [v1 speechRequestStateDidChange:2];

  v2 = *MEMORY[0x1E69E9840];
}

- (id)allBulletins
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SASPresentationServer allBulletins]";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation allBulletins", &v7, 0xCu);
  }

  v3 = +[SiriActivationService service];
  v4 = [v3 allBulletins];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)bulletinsOnLockScreen
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SASPresentationServer bulletinsOnLockScreen]";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation bulletinsOnLockScreen", &v7, 0xCu);
  }

  v3 = +[SiriActivationService service];
  v4 = [v3 bulletinsOnLockScreen];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)bulletinForIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SASPresentationServer bulletinForIdentifier:]";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation bulletinForIdentifier: %@", &v9, 0x16u);
  }

  v5 = +[SiriActivationService service];
  v6 = [v5 bulletinForIdentifier:v3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (SASPresentationServerDelegate)weak_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_delegate);

  return WeakRetained;
}

- (void)init
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  _os_log_debug_impl(&dword_1C8137000, v1, OS_LOG_TYPE_DEBUG, "%s %p", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_setConnection:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 bundleIdentifier];
  v9[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_1C8137000, v5, OS_LOG_TYPE_ERROR, "%s %p #activation Unable to establish connection to un-entitled remote process: %@", v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)failedToPresentSiriWithError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v5 = v0;
  v6 = 2112;
  v7 = v1;
  _os_log_error_impl(&dword_1C8137000, v2, OS_LOG_TYPE_ERROR, "%s %p #activation Shell indicates Siri presentation failed : %@", v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

@end