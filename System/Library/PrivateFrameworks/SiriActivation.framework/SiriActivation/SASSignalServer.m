@interface SASSignalServer
+ (id)interface;
+ (id)serverForConnection:(id)a3;
+ (void)_unregisterConnection:(id)a3;
- (SASSignalServerDelegate)weak_delegate;
- (void)_activationRequestFromDirectActionEventWithContext:(id)a3 completion:(id)a4;
- (void)_registerSourceForIdentifier:(id)a3;
- (void)_setConnection:(id)a3;
- (void)_unregisterSourceForIdentifier:(id)a3;
- (void)activationRequestFromBluetoothKeyboardActivation:(id)a3;
- (void)activationRequestFromBreadcrumb;
- (void)activationRequestFromButtonIdentifier:(id)a3 context:(id)a4;
- (void)activationRequestFromContinuityWithContext:(id)a3;
- (void)activationRequestFromRemotePresentationBringUpWithContext:(id)a3;
- (void)activationRequestFromSimpleActivation:(id)a3;
- (void)activationRequestFromSpotlightWithContext:(id)a3;
- (void)activationRequestFromTestingWithContext:(id)a3;
- (void)activationRequestFromTostadaWithContext:(id)a3;
- (void)activationRequestFromVocalShortcutWithContext:(id)a3;
- (void)buttonDownFromButtonIdentifier:(id)a3 timestamp:(id)a4 context:(id)a5;
- (void)buttonLongPressFromButtonIdentifier:(id)a3 context:(id)a4;
- (void)buttonTapFromButtonIdentifier:(id)a3 timestamp:(id)a4 context:(id)a5;
- (void)buttonUpFromButtonIdentifier:(id)a3 deviceIdentifier:(id)a4 timestamp:(id)a5 context:(id)a6;
- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGesture;
- (void)cancelPrewarmFromButtonIdentifier:(id)a3;
- (void)deactivationRequestFromButtonIdentifier:(id)a3 context:(id)a4 options:(id)a5;
- (void)prewarmForFirstTapOfQuickTypeToSiriGesture;
- (void)prewarmFromButtonIdentifier:(id)a3;
- (void)prewarmFromButtonIdentifier:(id)a3 longPressInterval:(id)a4;
- (void)prewarmWithRequest:(id)a3;
- (void)registerAssertionWithIdentifier:(id)a3 reason:(id)a4;
- (void)registerButtonEventListenerWithIdentifier:(id)a3;
- (void)registerButtonIdentifier:(id)a3 withUUID:(id)a4;
- (void)registerNonButtonSourceWithType:(id)a3 withUUID:(id)a4;
- (void)setHintGlowAssertionFromButtonIdentifier:(id)a3 context:(id)a4;
- (void)specifySenderForInstrumentation:(id)a3;
- (void)unregisterAssertionWithIdentifier:(id)a3;
- (void)unregisterButtonEventListenerWithIdentifier:(id)a3;
- (void)unregisterButtonIdentifier:(id)a3 withUUID:(id)a4;
- (void)unregisterNonButtonSourceWithType:(id)a3 withUUID:(id)a4;
@end

@implementation SASSignalServer

+ (id)interface
{
  v2 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F47E3AC8];
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F47E3B28];
  v4 = [MEMORY[0x1E698F4E8] interfaceWithServer:v2 client:v3];

  return v4;
}

+ (id)serverForConnection:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [serversByConnection_0 objectForKey:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(SASSignalServer);
    v5 = MEMORY[0x1E698D0A0];
    v6 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x1E696AF00];
      v8 = v6;
      v9 = [v7 currentThread];
      v17 = 136315394;
      v18 = "+[SASSignalServer serverForConnection:]";
      v19 = 2048;
      v20 = [v9 qualityOfService];
      _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock about to lock with qos: %zd", &v17, 0x16u);
    }

    os_unfair_lock_lock(&lock_0);
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "+[SASSignalServer serverForConnection:]";
      _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock successfully locked", &v17, 0xCu);
    }

    v11 = serversByConnection_0;
    if (!serversByConnection_0)
    {
      v12 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:4];
      v13 = serversByConnection_0;
      serversByConnection_0 = v12;

      v11 = serversByConnection_0;
    }

    [v11 setObject:v4 forKey:v3];
    os_unfair_lock_unlock(&lock_0);
    v14 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "+[SASSignalServer serverForConnection:]";
      _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock unlocked", &v17, 0xCu);
    }

    [(SASSignalServer *)v4 _setConnection:v3];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_setConnection:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 remoteProcess];
  v6 = [v5 hasEntitlement:@"com.apple.siri.activation.service"];
  if (!v5 || (v6 & 1) != 0)
  {
    v8 = [(SASSignalServer *)self connection];
    if (v8)
    {
    }

    else if (![(SASSignalServer *)self invalidated])
    {
      [(SASSignalServer *)self setConnection:v4];
      connection = self->_connection;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __34__SASSignalServer__setConnection___block_invoke;
      v12[3] = &unk_1E82F4B00;
      v12[4] = self;
      [(BSServiceConnectionHost *)connection configureConnection:v12];
      [(BSServiceConnectionHost *)self->_connection activate];
      goto LABEL_11;
    }

    v9 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[SASSignalServer _setConnection:]";
      v15 = 2114;
      v16 = self;
      _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s Unexpectedly attempted to assign a new connection to the activation server with an existing connection: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SASSignalServer *)self _setConnection:v7, v5];
    }
  }

  [v4 invalidate];
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
}

void __34__SASSignalServer__setConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SASSignalServer serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[SASSignalServer interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __34__SASSignalServer__setConnection___block_invoke_2;
  v9 = &unk_1E82F39B8;
  objc_copyWeak(&v10, &location);
  [v3 setInvalidationHandler:&v6];
  [v3 setInterruptionHandler:{&__block_literal_global_26, v6, v7, v8, v9}];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __34__SASSignalServer__setConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[7];
    v7 = *MEMORY[0x1E698D0A0];
    v8 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = v5[7];
        *v14 = 136315650;
        *&v14[4] = "[SASSignalServer _setConnection:]_block_invoke_2";
        *&v14[12] = 2112;
        *&v14[14] = v3;
        *&v14[22] = 2112;
        v15 = v9;
        v10 = "%s #activation Invalidating connection - %@ as client %@ terminated";
        v11 = v7;
        v12 = 32;
LABEL_7:
        _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, v10, v14, v12);
      }
    }

    else if (v8)
    {
      *v14 = 136315394;
      *&v14[4] = "[SASSignalServer _setConnection:]_block_invoke";
      *&v14[12] = 2112;
      *&v14[14] = v3;
      v10 = "%s #activation Invalidating connection - %@";
      v11 = v7;
      v12 = 22;
      goto LABEL_7;
    }

    [SASSignalServer _unregisterConnection:v3, *v14, *&v14[16], v15];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __34__SASSignalServer__setConnection___block_invoke_23(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = serversByConnection_0;
    v5 = v3;
    v6 = [v4 objectForKey:a2];
    v8 = 136315394;
    v9 = "[SASSignalServer _setConnection:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation interrupted signalserver: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_unregisterConnection:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E698D0A0];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AF00];
    v7 = v5;
    v8 = [v6 currentThread];
    v15 = 136315394;
    v16 = "+[SASSignalServer _unregisterConnection:]";
    v17 = 2048;
    v18 = [v8 qualityOfService];
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock about to lock with qos: %zd", &v15, 0x16u);
  }

  os_unfair_lock_lock(&lock_0);
  v9 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "+[SASSignalServer _unregisterConnection:]";
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock successfully locked", &v15, 0xCu);
  }

  v10 = [serversByConnection_0 objectForKey:v3];
  v11 = +[SiriActivationService service];
  v12 = [v10 assertionClientIdentifier];
  [v11 unregisterActivationAssertionWithIdentifier:v12];

  [serversByConnection_0 removeObjectForKey:v3];
  os_unfair_lock_unlock(&lock_0);
  v13 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "+[SASSignalServer _unregisterConnection:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock unlocked", &v15, 0xCu);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_registerSourceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[SiriActivationService service];
  [v5 registerActivationSource:self withIdentifier:v4];
}

- (void)_unregisterSourceForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[SiriActivationService service];
  [v4 unregisterActivationSourceIdentifier:v3];
}

- (void)registerButtonIdentifier:(id)a3 withUUID:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(SASSignalServer *)self connection];
    v11 = [v10 remoteProcess];
    v12 = [v11 bundleIdentifier];
    v14 = 136315906;
    v15 = "[SASSignalServer registerButtonIdentifier:withUUID:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Button identifier %@ with uuid '%@' registered by %@", &v14, 0x2Au);
  }

  -[SASSignalServer setButtonSourceIdentifier:](self, "setButtonSourceIdentifier:", [v6 siriButtonIdentifier]);
  [(SASSignalServer *)self _registerSourceForIdentifier:v7];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unregisterButtonIdentifier:(id)a3 withUUID:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(SASSignalServer *)self connection];
    v11 = [v10 remoteProcess];
    v12 = [v11 bundleIdentifier];
    v14 = 136315906;
    v15 = "[SASSignalServer unregisterButtonIdentifier:withUUID:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Button identifier %@ with uuid '%@' unregistered by %@", &v14, 0x2Au);
  }

  [(SASSignalServer *)self setButtonSourceIdentifier:0];
  [(SASSignalServer *)self _unregisterSourceForIdentifier:v7];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)registerNonButtonSourceWithType:(id)a3 withUUID:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(SASSignalServer *)self connection];
    v11 = [v10 remoteProcess];
    v12 = [v11 bundleIdentifier];
    v14 = 136315906;
    v15 = "[SASSignalServer registerNonButtonSourceWithType:withUUID:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Non-button source of type %@ with uuid '%@' registered by %@", &v14, 0x2Au);
  }

  [(SASSignalServer *)self _registerSourceForIdentifier:v7];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unregisterNonButtonSourceWithType:(id)a3 withUUID:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(SASSignalServer *)self connection];
    v11 = [v10 remoteProcess];
    v12 = [v11 bundleIdentifier];
    v14 = 136315906;
    v15 = "[SASSignalServer unregisterNonButtonSourceWithType:withUUID:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Non-button source of type %@ with uuid '%@' unregistered by %@", &v14, 0x2Au);
  }

  [(SASSignalServer *)self _unregisterSourceForIdentifier:v7];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromButtonIdentifier:(id)a3 context:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  kdebug_trace();
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SASSignalServer activationRequestFromButtonIdentifier:context:]";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromButtonIdentifier:%@ context:%@", &v10, 0x20u);
  }

  v8 = +[SiriActivationService service];
  [v8 activationRequestFromButtonIdentifier:objc_msgSend(v5 context:{"siriButtonIdentifier"), v6}];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)deactivationRequestFromButtonIdentifier:(id)a3 context:(id)a4 options:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[SASSignalServer deactivationRequestFromButtonIdentifier:context:options:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation deactivationRequestFromButtonIdentifier:%@ context:%@", &v13, 0x20u);
  }

  v11 = +[SiriActivationService service];
  [v11 deactivationRequestFromButtonIdentifier:objc_msgSend(v7 context:"siriButtonIdentifier") options:{v8, v9}];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_activationRequestFromDirectActionEventWithContext:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[SASSignalServer _activationRequestFromDirectActionEventWithContext:completion:]";
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation _activationRequestFromDirectActionEventWithContext:%@", &v24, 0x16u);
  }

  v10 = [(SiriDirectActionContext *)v6 payload];
  if (v10)
  {
    v11 = v10;
    v12 = [(SiriDirectActionContext *)v6 payload];
    v13 = [v12 allKeys];
    v14 = [v13 containsObject:@"SBSAssistantActivationContextBundleID"];

    if ((v14 & 1) == 0)
    {
      v15 = [(SASSignalServer *)self connection];
      v16 = [v15 remoteProcess];
      v17 = [v16 bundleIdentifier];

      v18 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315394;
        v25 = "[SASSignalServer _activationRequestFromDirectActionEventWithContext:completion:]";
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation _activationRequestFromDirectActionEventWithContext payload missing bundleId, using connection bundle id:%@", &v24, 0x16u);
      }

      v19 = [(SiriDirectActionContext *)v6 payload];
      v20 = [v19 mutableCopy];

      [v20 setValue:v17 forKey:@"SBSAssistantActivationContextBundleID"];
      v21 = [[SiriDirectActionContext alloc] initWithPayload:v20];

      v6 = v21;
    }
  }

  v22 = +[SiriActivationService service];
  [v22 activationRequestFromDirectActionEventWithContext:v6 completion:v7];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromContinuityWithContext:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromContinuityWithContext:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromContinuityWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromContinuityWithContext:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromRemotePresentationBringUpWithContext:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromRemotePresentationBringUpWithContext:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromRemotePresentationBringUpWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromRemotePresentationBringUpWithContext:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromBreadcrumb
{
  v7 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SASSignalServer activationRequestFromBreadcrumb]";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromBreadcrumb", &v5, 0xCu);
  }

  v3 = +[SiriActivationService service];
  [v3 activationRequestFromBreadcrumb];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromBluetoothKeyboardActivation:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SASSignalServer activationRequestFromBluetoothKeyboardActivation:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromBluetoothKeyboardActivation", &v7, 0xCu);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromBluetoothKeyboardActivation:{objc_msgSend(v3, "integerValue")}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromSimpleActivation:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SASSignalServer activationRequestFromSimpleActivation:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSimpleActivation", &v7, 0xCu);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromSimpleActivation:{objc_msgSend(v3, "integerValue")}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromSpotlightWithContext:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromSpotlightWithContext:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSpotlightWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromSpotlightWithContext:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromTestingWithContext:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromTestingWithContext:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromTestingWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromTestingWithContext:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromVocalShortcutWithContext:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromVocalShortcutWithContext:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromVocalShortcutWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromVocalShortcutWithContext:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromTostadaWithContext:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromTostadaWithContext:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromTostadaWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromTostadaWithContext:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setHintGlowAssertionFromButtonIdentifier:(id)a3 context:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SASSignalServer setHintGlowAssertionFromButtonIdentifier:context:]";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation setHintGlowAssertionFromButtonIdentifier: %@, context: %@", &v10, 0x20u);
  }

  v8 = +[SiriActivationService service];
  [v8 setHintGlowAssertionFromButtonIdentifier:objc_msgSend(v5 context:{"siriButtonIdentifier"), v6}];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)prewarmFromButtonIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer prewarmFromButtonIdentifier:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s prewarmFromButtonIdentifier:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 prewarmFromButtonIdentifier:objc_msgSend(v3 longPressInterval:{"siriButtonIdentifier"), 0.0}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)prewarmFromButtonIdentifier:(id)a3 longPressInterval:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  kdebug_trace();
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SASSignalServer prewarmFromButtonIdentifier:longPressInterval:]";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s prewarmFromButtonIdentifier:%@", &v13, 0x16u);
  }

  v8 = +[SiriActivationService service];
  v9 = [v5 siriButtonIdentifier];
  [v6 timeInterval];
  v11 = v10;

  [v8 prewarmFromButtonIdentifier:v9 longPressInterval:v11];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)cancelPrewarmFromButtonIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer cancelPrewarmFromButtonIdentifier:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s cancelPrewarmFromButtonIdentifier:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 cancelPrewarmFromButtonIdentifier:{objc_msgSend(v3, "siriButtonIdentifier")}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)buttonDownFromButtonIdentifier:(id)a3 timestamp:(id)a4 context:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "[SASSignalServer buttonDownFromButtonIdentifier:timestamp:context:]";
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s buttonDownFromButtonIdentifier:%@ timestamp:%@", buf, 0x20u);
  }

  v12 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v13 = [v12 assistantIsEnabled];

  if (v13)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(v8, "siriButtonIdentifier", @"eventSource"}];
    v27 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v16 = [MEMORY[0x1E698D0C8] sharedAnalytics];
    v17 = AFAnalyticsEventCreateCurrent();
    [v16 logEvent:v17];

    activationInstrumentation = self->_activationInstrumentation;
    v19 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(v8, "siriButtonIdentifier")}];
    v20 = [(SASActivationInstrumentation *)activationInstrumentation buttonDownWithIdentifier:v19];

    [v10 setActivationEventInstrumentationIdentifier:v20];
    v21 = [v8 siriButtonIdentifier] - 1;
    if (v21 <= 8 && ((0x173u >> v21) & 1) != 0)
    {
      v22 = dword_1C818FB60[v21];
      kdebug_trace();
    }
  }

  v23 = +[SiriActivationService service];
  v24 = [v8 siriButtonIdentifier];
  [v9 timeInterval];
  [v23 buttonDownFromButtonIdentifier:v24 timestamp:v10 context:?];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)buttonUpFromButtonIdentifier:(id)a3 deviceIdentifier:(id)a4 timestamp:(id)a5 context:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  kdebug_trace();
  v14 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[SASSignalServer buttonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s buttonUpFromButtonIdentifier:%@ timestamp:%@", buf, 0x20u);
  }

  v15 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v16 = [v15 assistantIsEnabled];

  if (v16)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(v10, "siriButtonIdentifier", @"eventSource"}];
    v30 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    v19 = [MEMORY[0x1E698D0C8] sharedAnalytics];
    v20 = AFAnalyticsEventCreateCurrent();
    [v19 logEvent:v20];

    activationInstrumentation = self->_activationInstrumentation;
    v22 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(v10, "siriButtonIdentifier")}];
    v23 = [(SASActivationInstrumentation *)activationInstrumentation buttonUpWithIdentifier:v22];

    [v12 setActivationEventInstrumentationIdentifier:v23];
    v24 = [v10 siriButtonIdentifier] - 1;
    if (v24 <= 8 && ((0x173u >> v24) & 1) != 0)
    {
      v25 = dword_1C818FB84[v24];
      kdebug_trace();
    }
  }

  v26 = +[SiriActivationService service];
  v27 = [v10 siriButtonIdentifier];
  [v11 timeInterval];
  [v26 buttonUpFromButtonIdentifier:v27 deviceIdentifier:v13 timestamp:v12 context:?];

  v28 = *MEMORY[0x1E69E9840];
}

- (void)buttonTapFromButtonIdentifier:(id)a3 timestamp:(id)a4 context:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  kdebug_trace();
  v11 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[SASSignalServer buttonTapFromButtonIdentifier:timestamp:context:]";
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s buttonTapFromButtonIdentifier:%@", &v20, 0x16u);
  }

  activationInstrumentation = self->_activationInstrumentation;
  v13 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(v8, "siriButtonIdentifier")}];
  v14 = [(SASActivationInstrumentation *)activationInstrumentation buttonTapWithIdentifier:v13 associateWithButtonDown:1];

  [v9 setActivationEventInstrumentationIdentifier:v14];
  v15 = +[SiriActivationService service];
  v16 = [v8 siriButtonIdentifier];
  [v10 timeInterval];
  v18 = v17;

  [v15 buttonTapFromButtonIdentifier:v16 timestamp:v9 context:v18];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)buttonLongPressFromButtonIdentifier:(id)a3 context:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[SASSignalServer buttonLongPressFromButtonIdentifier:context:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s buttonLongPressFromButtonIdentifier:%@ context:%@", &v12, 0x20u);
  }

  v9 = [(SASActivationInstrumentation *)self->_activationInstrumentation mostRecentAtivationEvenIdentifier];
  [v7 setActivationEventInstrumentationIdentifier:v9];

  v10 = +[SiriActivationService service];
  [v10 buttonLongPressFromButtonIdentifier:objc_msgSend(v6 context:{"siriButtonIdentifier"), v7}];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)prewarmForFirstTapOfQuickTypeToSiriGesture
{
  v7 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SASSignalServer prewarmForFirstTapOfQuickTypeToSiriGesture]";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation #quickTypeGate prewarm", &v5, 0xCu);
  }

  v3 = +[SiriActivationService service];
  [v3 prewarmForFirstTapOfQuickTypeToSiriGesture];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)prewarmWithRequest:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SASSignalServer prewarmWithRequest:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation prewarm", &v7, 0xCu);
  }

  v5 = +[SiriActivationService service];
  [v5 prewarmWithRequest:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGesture
{
  v7 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SASSignalServer cancelPrewarmForFirstTapOfQuickTypeToSiriGesture]";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation #quickTypeGate cancel prewarm", &v5, 0xCu);
  }

  v3 = +[SiriActivationService service];
  [v3 cancelPrewarmForFirstTapOfQuickTypeToSiriGesture];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)specifySenderForInstrumentation:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[SASActivationInstrumentation alloc] initWithSender:v4];

  activationInstrumentation = self->_activationInstrumentation;
  self->_activationInstrumentation = v5;

  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_activationInstrumentation;
    v10 = 136315394;
    v11 = "[SASSignalServer specifySenderForInstrumentation:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)registerAssertionWithIdentifier:(id)a3 reason:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[SASSignalServer registerAssertionWithIdentifier:reason:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation registerAssertionWithIdentifier:%@ reason:%@", &v11, 0x20u);
  }

  v9 = +[SiriActivationService service];
  [v9 registerActivationAssertion:self withIdentifier:v6];

  [(SASSignalServer *)self setAssertionClientIdentifier:v6];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)unregisterAssertionWithIdentifier:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SASSignalServer unregisterAssertionWithIdentifier:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation unregisterAssertionWithIdentifier:%@", &v8, 0x16u);
  }

  v6 = +[SiriActivationService service];
  [v6 unregisterActivationAssertionWithIdentifier:v4];

  [(SASSignalServer *)self setAssertionClientIdentifier:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)registerButtonEventListenerWithIdentifier:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SASSignalServer registerButtonEventListenerWithIdentifier:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s registerButtonEventListenerWithIdentifier:%@", &v8, 0x16u);
  }

  v6 = +[SiriActivationService service];
  [v6 registerButtonEventListenerServer:self identifier:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)unregisterButtonEventListenerWithIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer unregisterButtonEventListenerWithIdentifier:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s unregisterButtonEventListenerWithIdentifier:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 unregisterButtonEventListenerWithIdentifier:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (SASSignalServerDelegate)weak_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_delegate);

  return WeakRetained;
}

- (void)_setConnection:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 bundleIdentifier];
  v8 = 136315650;
  v9 = "[SASSignalServer _setConnection:]";
  v10 = 2048;
  v11 = a1;
  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_1C8137000, v5, OS_LOG_TYPE_ERROR, "%s %p #activation Unable to establish connection to un-entitled remote process: %@", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end