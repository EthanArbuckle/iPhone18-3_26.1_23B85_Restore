@interface SASSignalServer
+ (id)interface;
+ (id)serverForConnection:(id)connection;
+ (void)_unregisterConnection:(id)connection;
- (SASSignalServerDelegate)weak_delegate;
- (void)_activationRequestFromDirectActionEventWithContext:(id)context completion:(id)completion;
- (void)_registerSourceForIdentifier:(id)identifier;
- (void)_setConnection:(id)connection;
- (void)_unregisterSourceForIdentifier:(id)identifier;
- (void)activationRequestFromBluetoothKeyboardActivation:(id)activation;
- (void)activationRequestFromBreadcrumb;
- (void)activationRequestFromButtonIdentifier:(id)identifier context:(id)context;
- (void)activationRequestFromContinuityWithContext:(id)context;
- (void)activationRequestFromRemotePresentationBringUpWithContext:(id)context;
- (void)activationRequestFromSimpleActivation:(id)activation;
- (void)activationRequestFromSpotlightWithContext:(id)context;
- (void)activationRequestFromTestingWithContext:(id)context;
- (void)activationRequestFromTostadaWithContext:(id)context;
- (void)activationRequestFromVocalShortcutWithContext:(id)context;
- (void)buttonDownFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context;
- (void)buttonLongPressFromButtonIdentifier:(id)identifier context:(id)context;
- (void)buttonTapFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context;
- (void)buttonUpFromButtonIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier timestamp:(id)timestamp context:(id)context;
- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGesture;
- (void)cancelPrewarmFromButtonIdentifier:(id)identifier;
- (void)deactivationRequestFromButtonIdentifier:(id)identifier context:(id)context options:(id)options;
- (void)prewarmForFirstTapOfQuickTypeToSiriGesture;
- (void)prewarmFromButtonIdentifier:(id)identifier;
- (void)prewarmFromButtonIdentifier:(id)identifier longPressInterval:(id)interval;
- (void)prewarmWithRequest:(id)request;
- (void)registerAssertionWithIdentifier:(id)identifier reason:(id)reason;
- (void)registerButtonEventListenerWithIdentifier:(id)identifier;
- (void)registerButtonIdentifier:(id)identifier withUUID:(id)d;
- (void)registerNonButtonSourceWithType:(id)type withUUID:(id)d;
- (void)setHintGlowAssertionFromButtonIdentifier:(id)identifier context:(id)context;
- (void)specifySenderForInstrumentation:(id)instrumentation;
- (void)unregisterAssertionWithIdentifier:(id)identifier;
- (void)unregisterButtonEventListenerWithIdentifier:(id)identifier;
- (void)unregisterButtonIdentifier:(id)identifier withUUID:(id)d;
- (void)unregisterNonButtonSourceWithType:(id)type withUUID:(id)d;
@end

@implementation SASSignalServer

+ (id)interface
{
  v2 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F47E3AC8];
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F47E3B28];
  v4 = [MEMORY[0x1E698F4E8] interfaceWithServer:v2 client:v3];

  return v4;
}

+ (id)serverForConnection:(id)connection
{
  v21 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v4 = [serversByConnection_0 objectForKey:connectionCopy];
  if (!v4)
  {
    v4 = objc_alloc_init(SASSignalServer);
    v5 = MEMORY[0x1E698D0A0];
    v6 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x1E696AF00];
      v8 = v6;
      currentThread = [v7 currentThread];
      v17 = 136315394;
      v18 = "+[SASSignalServer serverForConnection:]";
      v19 = 2048;
      qualityOfService = [currentThread qualityOfService];
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

    [v11 setObject:v4 forKey:connectionCopy];
    os_unfair_lock_unlock(&lock_0);
    v14 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "+[SASSignalServer serverForConnection:]";
      _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock unlocked", &v17, 0xCu);
    }

    [(SASSignalServer *)v4 _setConnection:connectionCopy];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_setConnection:(id)connection
{
  v17 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v6 = [remoteProcess hasEntitlement:@"com.apple.siri.activation.service"];
  if (!remoteProcess || (v6 & 1) != 0)
  {
    connection = [(SASSignalServer *)self connection];
    if (connection)
    {
    }

    else if (![(SASSignalServer *)self invalidated])
    {
      [(SASSignalServer *)self setConnection:connectionCopy];
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
      selfCopy = self;
      _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s Unexpectedly attempted to assign a new connection to the activation server with an existing connection: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SASSignalServer *)self _setConnection:v7, remoteProcess];
    }
  }

  [connectionCopy invalidate];
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

+ (void)_unregisterConnection:(id)connection
{
  v19 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v4 = MEMORY[0x1E698D0A0];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AF00];
    v7 = v5;
    currentThread = [v6 currentThread];
    v15 = 136315394;
    v16 = "+[SASSignalServer _unregisterConnection:]";
    v17 = 2048;
    qualityOfService = [currentThread qualityOfService];
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

  v10 = [serversByConnection_0 objectForKey:connectionCopy];
  v11 = +[SiriActivationService service];
  assertionClientIdentifier = [v10 assertionClientIdentifier];
  [v11 unregisterActivationAssertionWithIdentifier:assertionClientIdentifier];

  [serversByConnection_0 removeObjectForKey:connectionCopy];
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

- (void)_registerSourceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SiriActivationService service];
  [v5 registerActivationSource:self withIdentifier:identifierCopy];
}

- (void)_unregisterSourceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SiriActivationService service];
  [v4 unregisterActivationSourceIdentifier:identifierCopy];
}

- (void)registerButtonIdentifier:(id)identifier withUUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  kdebug_trace();
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    connection = [(SASSignalServer *)self connection];
    remoteProcess = [connection remoteProcess];
    bundleIdentifier = [remoteProcess bundleIdentifier];
    v14 = 136315906;
    v15 = "[SASSignalServer registerButtonIdentifier:withUUID:]";
    v16 = 2112;
    v17 = identifierCopy;
    v18 = 2112;
    v19 = dCopy;
    v20 = 2112;
    v21 = bundleIdentifier;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Button identifier %@ with uuid '%@' registered by %@", &v14, 0x2Au);
  }

  -[SASSignalServer setButtonSourceIdentifier:](self, "setButtonSourceIdentifier:", [identifierCopy siriButtonIdentifier]);
  [(SASSignalServer *)self _registerSourceForIdentifier:dCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unregisterButtonIdentifier:(id)identifier withUUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  kdebug_trace();
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    connection = [(SASSignalServer *)self connection];
    remoteProcess = [connection remoteProcess];
    bundleIdentifier = [remoteProcess bundleIdentifier];
    v14 = 136315906;
    v15 = "[SASSignalServer unregisterButtonIdentifier:withUUID:]";
    v16 = 2112;
    v17 = identifierCopy;
    v18 = 2112;
    v19 = dCopy;
    v20 = 2112;
    v21 = bundleIdentifier;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Button identifier %@ with uuid '%@' unregistered by %@", &v14, 0x2Au);
  }

  [(SASSignalServer *)self setButtonSourceIdentifier:0];
  [(SASSignalServer *)self _unregisterSourceForIdentifier:dCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)registerNonButtonSourceWithType:(id)type withUUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dCopy = d;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    connection = [(SASSignalServer *)self connection];
    remoteProcess = [connection remoteProcess];
    bundleIdentifier = [remoteProcess bundleIdentifier];
    v14 = 136315906;
    v15 = "[SASSignalServer registerNonButtonSourceWithType:withUUID:]";
    v16 = 2112;
    v17 = typeCopy;
    v18 = 2112;
    v19 = dCopy;
    v20 = 2112;
    v21 = bundleIdentifier;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Non-button source of type %@ with uuid '%@' registered by %@", &v14, 0x2Au);
  }

  [(SASSignalServer *)self _registerSourceForIdentifier:dCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unregisterNonButtonSourceWithType:(id)type withUUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dCopy = d;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    connection = [(SASSignalServer *)self connection];
    remoteProcess = [connection remoteProcess];
    bundleIdentifier = [remoteProcess bundleIdentifier];
    v14 = 136315906;
    v15 = "[SASSignalServer unregisterNonButtonSourceWithType:withUUID:]";
    v16 = 2112;
    v17 = typeCopy;
    v18 = 2112;
    v19 = dCopy;
    v20 = 2112;
    v21 = bundleIdentifier;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Non-button source of type %@ with uuid '%@' unregistered by %@", &v14, 0x2Au);
  }

  [(SASSignalServer *)self _unregisterSourceForIdentifier:dCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromButtonIdentifier:(id)identifier context:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  kdebug_trace();
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SASSignalServer activationRequestFromButtonIdentifier:context:]";
    v12 = 2112;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = contextCopy;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromButtonIdentifier:%@ context:%@", &v10, 0x20u);
  }

  v8 = +[SiriActivationService service];
  [v8 activationRequestFromButtonIdentifier:objc_msgSend(identifierCopy context:{"siriButtonIdentifier"), contextCopy}];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)deactivationRequestFromButtonIdentifier:(id)identifier context:(id)context options:(id)options
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  optionsCopy = options;
  v10 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[SASSignalServer deactivationRequestFromButtonIdentifier:context:options:]";
    v15 = 2112;
    v16 = identifierCopy;
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation deactivationRequestFromButtonIdentifier:%@ context:%@", &v13, 0x20u);
  }

  v11 = +[SiriActivationService service];
  [v11 deactivationRequestFromButtonIdentifier:objc_msgSend(identifierCopy context:"siriButtonIdentifier") options:{contextCopy, optionsCopy}];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_activationRequestFromDirectActionEventWithContext:(id)context completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  kdebug_trace();
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[SASSignalServer _activationRequestFromDirectActionEventWithContext:completion:]";
    v26 = 2112;
    v27 = contextCopy;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation _activationRequestFromDirectActionEventWithContext:%@", &v24, 0x16u);
  }

  payload = [(SiriDirectActionContext *)contextCopy payload];
  if (payload)
  {
    v11 = payload;
    payload2 = [(SiriDirectActionContext *)contextCopy payload];
    allKeys = [payload2 allKeys];
    v14 = [allKeys containsObject:@"SBSAssistantActivationContextBundleID"];

    if ((v14 & 1) == 0)
    {
      connection = [(SASSignalServer *)self connection];
      remoteProcess = [connection remoteProcess];
      bundleIdentifier = [remoteProcess bundleIdentifier];

      v18 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315394;
        v25 = "[SASSignalServer _activationRequestFromDirectActionEventWithContext:completion:]";
        v26 = 2112;
        v27 = bundleIdentifier;
        _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation _activationRequestFromDirectActionEventWithContext payload missing bundleId, using connection bundle id:%@", &v24, 0x16u);
      }

      payload3 = [(SiriDirectActionContext *)contextCopy payload];
      v20 = [payload3 mutableCopy];

      [v20 setValue:bundleIdentifier forKey:@"SBSAssistantActivationContextBundleID"];
      v21 = [[SiriDirectActionContext alloc] initWithPayload:v20];

      contextCopy = v21;
    }
  }

  v22 = +[SiriActivationService service];
  [v22 activationRequestFromDirectActionEventWithContext:contextCopy completion:completionCopy];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromContinuityWithContext:(id)context
{
  v11 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromContinuityWithContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromContinuityWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromContinuityWithContext:contextCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromRemotePresentationBringUpWithContext:(id)context
{
  v11 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromRemotePresentationBringUpWithContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromRemotePresentationBringUpWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromRemotePresentationBringUpWithContext:contextCopy];

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

- (void)activationRequestFromBluetoothKeyboardActivation:(id)activation
{
  v9 = *MEMORY[0x1E69E9840];
  activationCopy = activation;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SASSignalServer activationRequestFromBluetoothKeyboardActivation:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromBluetoothKeyboardActivation", &v7, 0xCu);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromBluetoothKeyboardActivation:{objc_msgSend(activationCopy, "integerValue")}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromSimpleActivation:(id)activation
{
  v9 = *MEMORY[0x1E69E9840];
  activationCopy = activation;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SASSignalServer activationRequestFromSimpleActivation:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSimpleActivation", &v7, 0xCu);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromSimpleActivation:{objc_msgSend(activationCopy, "integerValue")}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromSpotlightWithContext:(id)context
{
  v11 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromSpotlightWithContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSpotlightWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromSpotlightWithContext:contextCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromTestingWithContext:(id)context
{
  v11 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromTestingWithContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromTestingWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromTestingWithContext:contextCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromVocalShortcutWithContext:(id)context
{
  v11 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromVocalShortcutWithContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromVocalShortcutWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromVocalShortcutWithContext:contextCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromTostadaWithContext:(id)context
{
  v11 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer activationRequestFromTostadaWithContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromTostadaWithContext:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromTostadaWithContext:contextCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setHintGlowAssertionFromButtonIdentifier:(id)identifier context:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SASSignalServer setHintGlowAssertionFromButtonIdentifier:context:]";
    v12 = 2112;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = contextCopy;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation setHintGlowAssertionFromButtonIdentifier: %@, context: %@", &v10, 0x20u);
  }

  v8 = +[SiriActivationService service];
  [v8 setHintGlowAssertionFromButtonIdentifier:objc_msgSend(identifierCopy context:{"siriButtonIdentifier"), contextCopy}];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)prewarmFromButtonIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer prewarmFromButtonIdentifier:]";
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s prewarmFromButtonIdentifier:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 prewarmFromButtonIdentifier:objc_msgSend(identifierCopy longPressInterval:{"siriButtonIdentifier"), 0.0}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)prewarmFromButtonIdentifier:(id)identifier longPressInterval:(id)interval
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  intervalCopy = interval;
  kdebug_trace();
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SASSignalServer prewarmFromButtonIdentifier:longPressInterval:]";
    v15 = 2112;
    v16 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s prewarmFromButtonIdentifier:%@", &v13, 0x16u);
  }

  v8 = +[SiriActivationService service];
  siriButtonIdentifier = [identifierCopy siriButtonIdentifier];
  [intervalCopy timeInterval];
  v11 = v10;

  [v8 prewarmFromButtonIdentifier:siriButtonIdentifier longPressInterval:v11];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)cancelPrewarmFromButtonIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer cancelPrewarmFromButtonIdentifier:]";
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s cancelPrewarmFromButtonIdentifier:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 cancelPrewarmFromButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier")}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)buttonDownFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  timestampCopy = timestamp;
  contextCopy = context;
  kdebug_trace();
  v11 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "[SASSignalServer buttonDownFromButtonIdentifier:timestamp:context:]";
    v30 = 2112;
    v31 = identifierCopy;
    v32 = 2112;
    v33 = timestampCopy;
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s buttonDownFromButtonIdentifier:%@ timestamp:%@", buf, 0x20u);
  }

  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x1E698D1C0] assistantIsEnabled];

  if (assistantIsEnabled)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier", @"eventSource"}];
    v27 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    mEMORY[0x1E698D0C8] = [MEMORY[0x1E698D0C8] sharedAnalytics];
    v17 = AFAnalyticsEventCreateCurrent();
    [mEMORY[0x1E698D0C8] logEvent:v17];

    activationInstrumentation = self->_activationInstrumentation;
    v19 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier")}];
    v20 = [(SASActivationInstrumentation *)activationInstrumentation buttonDownWithIdentifier:v19];

    [contextCopy setActivationEventInstrumentationIdentifier:v20];
    v21 = [identifierCopy siriButtonIdentifier] - 1;
    if (v21 <= 8 && ((0x173u >> v21) & 1) != 0)
    {
      v22 = dword_1C818FB60[v21];
      kdebug_trace();
    }
  }

  v23 = +[SiriActivationService service];
  siriButtonIdentifier = [identifierCopy siriButtonIdentifier];
  [timestampCopy timeInterval];
  [v23 buttonDownFromButtonIdentifier:siriButtonIdentifier timestamp:contextCopy context:?];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)buttonUpFromButtonIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier timestamp:(id)timestamp context:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  timestampCopy = timestamp;
  contextCopy = context;
  deviceIdentifierCopy = deviceIdentifier;
  kdebug_trace();
  v14 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[SASSignalServer buttonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
    v33 = 2112;
    v34 = identifierCopy;
    v35 = 2112;
    v36 = timestampCopy;
    _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s buttonUpFromButtonIdentifier:%@ timestamp:%@", buf, 0x20u);
  }

  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x1E698D1C0] assistantIsEnabled];

  if (assistantIsEnabled)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier", @"eventSource"}];
    v30 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    mEMORY[0x1E698D0C8] = [MEMORY[0x1E698D0C8] sharedAnalytics];
    v20 = AFAnalyticsEventCreateCurrent();
    [mEMORY[0x1E698D0C8] logEvent:v20];

    activationInstrumentation = self->_activationInstrumentation;
    v22 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier")}];
    v23 = [(SASActivationInstrumentation *)activationInstrumentation buttonUpWithIdentifier:v22];

    [contextCopy setActivationEventInstrumentationIdentifier:v23];
    v24 = [identifierCopy siriButtonIdentifier] - 1;
    if (v24 <= 8 && ((0x173u >> v24) & 1) != 0)
    {
      v25 = dword_1C818FB84[v24];
      kdebug_trace();
    }
  }

  v26 = +[SiriActivationService service];
  siriButtonIdentifier = [identifierCopy siriButtonIdentifier];
  [timestampCopy timeInterval];
  [v26 buttonUpFromButtonIdentifier:siriButtonIdentifier deviceIdentifier:deviceIdentifierCopy timestamp:contextCopy context:?];

  v28 = *MEMORY[0x1E69E9840];
}

- (void)buttonTapFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  timestampCopy = timestamp;
  kdebug_trace();
  v11 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[SASSignalServer buttonTapFromButtonIdentifier:timestamp:context:]";
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s buttonTapFromButtonIdentifier:%@", &v20, 0x16u);
  }

  activationInstrumentation = self->_activationInstrumentation;
  v13 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier")}];
  v14 = [(SASActivationInstrumentation *)activationInstrumentation buttonTapWithIdentifier:v13 associateWithButtonDown:1];

  [contextCopy setActivationEventInstrumentationIdentifier:v14];
  v15 = +[SiriActivationService service];
  siriButtonIdentifier = [identifierCopy siriButtonIdentifier];
  [timestampCopy timeInterval];
  v18 = v17;

  [v15 buttonTapFromButtonIdentifier:siriButtonIdentifier timestamp:contextCopy context:v18];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)buttonLongPressFromButtonIdentifier:(id)identifier context:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  kdebug_trace();
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[SASSignalServer buttonLongPressFromButtonIdentifier:context:]";
    v14 = 2112;
    v15 = identifierCopy;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s buttonLongPressFromButtonIdentifier:%@ context:%@", &v12, 0x20u);
  }

  mostRecentAtivationEvenIdentifier = [(SASActivationInstrumentation *)self->_activationInstrumentation mostRecentAtivationEvenIdentifier];
  [contextCopy setActivationEventInstrumentationIdentifier:mostRecentAtivationEvenIdentifier];

  v10 = +[SiriActivationService service];
  [v10 buttonLongPressFromButtonIdentifier:objc_msgSend(identifierCopy context:{"siriButtonIdentifier"), contextCopy}];

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

- (void)prewarmWithRequest:(id)request
{
  v9 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SASSignalServer prewarmWithRequest:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation prewarm", &v7, 0xCu);
  }

  v5 = +[SiriActivationService service];
  [v5 prewarmWithRequest:requestCopy];

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

- (void)specifySenderForInstrumentation:(id)instrumentation
{
  v14 = *MEMORY[0x1E69E9840];
  instrumentationCopy = instrumentation;
  v5 = [[SASActivationInstrumentation alloc] initWithSender:instrumentationCopy];

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

- (void)registerAssertionWithIdentifier:(id)identifier reason:(id)reason
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  reasonCopy = reason;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[SASSignalServer registerAssertionWithIdentifier:reason:]";
    v13 = 2112;
    v14 = identifierCopy;
    v15 = 2112;
    v16 = reasonCopy;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation registerAssertionWithIdentifier:%@ reason:%@", &v11, 0x20u);
  }

  v9 = +[SiriActivationService service];
  [v9 registerActivationAssertion:self withIdentifier:identifierCopy];

  [(SASSignalServer *)self setAssertionClientIdentifier:identifierCopy];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)unregisterAssertionWithIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SASSignalServer unregisterAssertionWithIdentifier:]";
    v10 = 2112;
    v11 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation unregisterAssertionWithIdentifier:%@", &v8, 0x16u);
  }

  v6 = +[SiriActivationService service];
  [v6 unregisterActivationAssertionWithIdentifier:identifierCopy];

  [(SASSignalServer *)self setAssertionClientIdentifier:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)registerButtonEventListenerWithIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SASSignalServer registerButtonEventListenerWithIdentifier:]";
    v10 = 2112;
    v11 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s registerButtonEventListenerWithIdentifier:%@", &v8, 0x16u);
  }

  v6 = +[SiriActivationService service];
  [v6 registerButtonEventListenerServer:self identifier:identifierCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)unregisterButtonEventListenerWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer unregisterButtonEventListenerWithIdentifier:]";
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s unregisterButtonEventListenerWithIdentifier:%@", &v7, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 unregisterButtonEventListenerWithIdentifier:identifierCopy];

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