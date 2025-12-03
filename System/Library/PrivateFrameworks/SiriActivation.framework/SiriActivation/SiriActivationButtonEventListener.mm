@interface SiriActivationButtonEventListener
+ (id)listener;
- (id)_init;
- (void)_registerListenerWithIdentifier:(id)identifier;
- (void)buttonDownWithButtonIdentifier:(id)identifier forListenerIdentifier:(id)listenerIdentifier atTimestamp:(id)timestamp;
- (void)buttonLongPressWithButtonIdentifier:(id)identifier forListenerIdentifier:(id)listenerIdentifier atTimestamp:(id)timestamp;
- (void)buttonUpWithButtonIdentifier:(id)identifier forListenerIdentifier:(id)listenerIdentifier atTimestamp:(id)timestamp;
- (void)configureConnectionForIdentifier:(id)identifier;
- (void)invalidate;
- (void)invalidatedAtTimestamp:(double)timestamp;
- (void)registerWithListener:(id)listener identifier:(id)identifier;
- (void)unregisterListenerWithIdentifier:(id)identifier;
@end

@implementation SiriActivationButtonEventListener

+ (id)listener
{
  if (listener_onceToken != -1)
  {
    +[SiriActivationButtonEventListener listener];
  }

  v3 = listener_sharedListener;

  return v3;
}

uint64_t __45__SiriActivationButtonEventListener_listener__block_invoke()
{
  listener_sharedListener = [[SiriActivationButtonEventListener alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SiriActivationButtonEventListener;
  v2 = [(SiriActivationSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    listeners = v2->_listeners;
    v2->_listeners = v3;
  }

  return v2;
}

- (void)registerWithListener:(id)listener identifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  identifierCopy = identifier;
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    currentThread = [v10 currentThread];
    v18 = 136315394;
    v19 = "[SiriActivationButtonEventListener registerWithListener:identifier:]";
    v20 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock about to lock with qos: %zd", &v18, 0x16u);
  }

  os_unfair_lock_lock(&self->super._lock);
  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[SiriActivationButtonEventListener registerWithListener:identifier:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock successfully locked", &v18, 0xCu);
  }

  listeners = [(SiriActivationButtonEventListener *)self listeners];
  [listeners setObject:listenerCopy forKey:identifierCopy];

  remoteTarget = [(BSServiceConnection *)self->super._connection remoteTarget];
  os_unfair_lock_unlock(&self->super._lock);
  v16 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[SiriActivationButtonEventListener registerWithListener:identifier:]";
    _os_log_impl(&dword_1C8137000, v16, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock unlocked", &v18, 0xCu);
  }

  if (remoteTarget)
  {
    [(SiriActivationButtonEventListener *)self _registerListenerWithIdentifier:identifierCopy];
  }

  else
  {
    [(SiriActivationButtonEventListener *)self configureConnectionForIdentifier:identifierCopy];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)configureConnectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = MEMORY[0x1E698F498];
  v6 = +[SASBoardServicesConfiguration configuration];
  machServiceIdentifier = [v6 machServiceIdentifier];
  v8 = +[SASBoardServicesConfiguration configuration];
  v9 = [v8 identifierForService:1];
  v10 = [v5 endpointForMachName:machServiceIdentifier service:v9 instance:0];

  v11 = [MEMORY[0x1E698F490] connectionWithEndpoint:v10];
  connection = self->super._connection;
  self->super._connection = v11;

  objc_initWeak(&location, self);
  v13 = self->super._connection;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__SiriActivationButtonEventListener_configureConnectionForIdentifier___block_invoke;
  v15[3] = &unk_1E82F40E8;
  objc_copyWeak(&v17, &location);
  v14 = identifierCopy;
  v16 = v14;
  [(BSServiceConnection *)v13 configureConnection:v15];
  [(BSServiceConnection *)self->super._connection activate];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __70__SiriActivationButtonEventListener_configureConnectionForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[SASSignalServer serviceQuality];
    [v3 setServiceQuality:v5];

    v6 = +[SASSignalServer interface];
    [v3 setInterface:v6];

    [v3 setInterfaceTarget:WeakRetained];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__SiriActivationButtonEventListener_configureConnectionForIdentifier___block_invoke_2;
    v12[3] = &unk_1E82F39B8;
    objc_copyWeak(&v13, (a1 + 40));
    [v3 setInvalidationHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__SiriActivationButtonEventListener_configureConnectionForIdentifier___block_invoke_3;
    v10[3] = &unk_1E82F39B8;
    objc_copyWeak(&v11, (a1 + 40));
    [v3 setInterruptionHandler:v10];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__SiriActivationButtonEventListener_configureConnectionForIdentifier___block_invoke_4;
    v7[3] = &unk_1E82F40C0;
    objc_copyWeak(&v9, (a1 + 40));
    v7[4] = WeakRetained;
    v8 = *(a1 + 32);
    [v3 setActivationHandler:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
  }
}

void __70__SiriActivationButtonEventListener_configureConnectionForIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __70__SiriActivationButtonEventListener_configureConnectionForIdentifier___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __70__SiriActivationButtonEventListener_configureConnectionForIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v17 = 136315650;
    v18 = "[SiriActivationButtonEventListener configureConnectionForIdentifier:]_block_invoke_4";
    v19 = 2048;
    v20 = v7;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Activated for button event listener strongSelf=%p connection=%@", &v17, 0x20u);
  }

  if (WeakRetained)
  {
    v8 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x1E696AF00];
      v10 = v8;
      v11 = [v9 currentThread];
      v12 = [v11 qualityOfService];
      v17 = 136315394;
      v18 = "[SiriActivationButtonEventListener configureConnectionForIdentifier:]_block_invoke";
      v19 = 2048;
      v20 = v12;
      _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_lock about to lock with qos: %zd", &v17, 0x16u);
    }

    os_unfair_lock_lock(WeakRetained + 4);
    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[SiriActivationButtonEventListener configureConnectionForIdentifier:]_block_invoke";
      _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_lock successfully locked", &v17, 0xCu);
    }

    v14 = [v3 remoteTarget];
    [v14 registerButtonEventListenerWithIdentifier:*(a1 + 40)];

    os_unfair_lock_unlock(WeakRetained + 4);
    v15 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[SiriActivationButtonEventListener configureConnectionForIdentifier:]_block_invoke";
      _os_log_impl(&dword_1C8137000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_lock unlocked", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)unregisterListenerWithIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    currentThread = [v7 currentThread];
    v21 = 136315394;
    v22 = "[SiriActivationButtonEventListener unregisterListenerWithIdentifier:]";
    v23 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock about to lock with qos: %zd", &v21, 0x16u);
  }

  os_unfair_lock_lock(&self->super._lock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315138;
    v22 = "[SiriActivationButtonEventListener unregisterListenerWithIdentifier:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock successfully locked", &v21, 0xCu);
  }

  allKeys = [(NSMutableDictionary *)self->_listeners allKeys];
  v12 = [allKeys containsObject:identifierCopy];

  v13 = *v5;
  v14 = *v5;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      connection = self->super._connection;
      v21 = 136315650;
      v22 = "[SiriActivationButtonEventListener unregisterListenerWithIdentifier:]";
      v23 = 2112;
      qualityOfService = identifierCopy;
      v25 = 2112;
      v26 = connection;
      _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Unregistering SiriActivationButtonEventListenerDelegate delegate=%@ connection=%@", &v21, 0x20u);
    }

    [(NSMutableDictionary *)self->_listeners removeObjectForKey:identifierCopy];
    remoteTarget = [(BSServiceConnection *)self->super._connection remoteTarget];
    [remoteTarget unregisterButtonEventListenerWithIdentifier:identifierCopy];

    v17 = [(NSMutableDictionary *)self->_listeners count];
    os_unfair_lock_unlock(&self->super._lock);
    v18 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[SiriActivationButtonEventListener unregisterListenerWithIdentifier:]";
      _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock unlocked", &v21, 0xCu);
    }

    if (!v17)
    {
      [(SiriActivationButtonEventListener *)self invalidate];
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SiriActivationButtonEventListener *)identifierCopy unregisterListenerWithIdentifier:v13];
    }

    os_unfair_lock_unlock(&self->super._lock);
    v19 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[SiriActivationButtonEventListener unregisterListenerWithIdentifier:]";
      _os_log_impl(&dword_1C8137000, v19, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock unlocked", &v21, 0xCu);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_registerListenerWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    currentThread = [v7 currentThread];
    v14 = 136315394;
    v15 = "[SiriActivationButtonEventListener _registerListenerWithIdentifier:]";
    v16 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock about to lock with qos: %zd", &v14, 0x16u);
  }

  os_unfair_lock_lock(&self->super._lock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[SiriActivationButtonEventListener _registerListenerWithIdentifier:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock successfully locked", &v14, 0xCu);
  }

  remoteTarget = [(BSServiceConnection *)self->super._connection remoteTarget];
  [remoteTarget registerButtonEventListenerWithIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->super._lock);
  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[SiriActivationButtonEventListener _registerListenerWithIdentifier:]";
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock unlocked", &v14, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  Current = CFAbsoluteTimeGetCurrent();

  [(SiriActivationButtonEventListener *)self invalidatedAtTimestamp:Current];
}

- (void)invalidatedAtTimestamp:(double)timestamp
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E698D0A0];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    connection = self->super._connection;
    v16 = 136315394;
    v17 = "[SiriActivationButtonEventListener invalidatedAtTimestamp:]";
    v18 = 2112;
    v19 = connection;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection invalidating listener connection=%@", &v16, 0x16u);
  }

  v7 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E696AF00];
    v9 = v7;
    currentThread = [v8 currentThread];
    qualityOfService = [currentThread qualityOfService];
    v16 = 136315394;
    v17 = "[SiriActivationButtonEventListener invalidatedAtTimestamp:]";
    v18 = 2048;
    v19 = qualityOfService;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock about to lock with qos: %zd", &v16, 0x16u);
  }

  os_unfair_lock_lock(&self->super._lock);
  v12 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[SiriActivationButtonEventListener invalidatedAtTimestamp:]";
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock successfully locked", &v16, 0xCu);
  }

  [(BSServiceConnection *)self->super._connection invalidate];
  v13 = self->super._connection;
  self->super._connection = 0;

  os_unfair_lock_unlock(&self->super._lock);
  v14 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[SiriActivationButtonEventListener invalidatedAtTimestamp:]";
    _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock unlocked", &v16, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)buttonDownWithButtonIdentifier:(id)identifier forListenerIdentifier:(id)listenerIdentifier atTimestamp:(id)timestamp
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  listenerIdentifierCopy = listenerIdentifier;
  timestampCopy = timestamp;
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    currentThread = [v10 currentThread];
    *buf = 136315394;
    v34 = "[SiriActivationButtonEventListener buttonDownWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
    v35 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->super._lock);
  v13 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[SiriActivationButtonEventListener buttonDownWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock successfully locked", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [(NSMutableDictionary *)self->_listeners allKeys];
  v15 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = [(NSMutableDictionary *)self->_listeners objectForKey:v19];
        v21 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v34 = "[SiriActivationButtonEventListener buttonDownWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
          v35 = 2112;
          qualityOfService = v19;
          _os_log_impl(&dword_1C8137000, v21, OS_LOG_TYPE_DEFAULT, "%s #activation #noisy Forwarding Button down event to Listener with identifier %@", buf, 0x16u);
        }

        [timestampCopy timeInterval];
        [v20 buttonEventListenerDidReceiveButtonDownWithButtonIdentifier:objc_msgSend(identifierCopy atTimestamp:{"integerValue"), v22}];
      }

      v16 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  os_unfair_lock_unlock((self + v25));
  v23 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[SiriActivationButtonEventListener buttonDownWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v23, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock unlocked", buf, 0xCu);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)buttonUpWithButtonIdentifier:(id)identifier forListenerIdentifier:(id)listenerIdentifier atTimestamp:(id)timestamp
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  listenerIdentifierCopy = listenerIdentifier;
  timestampCopy = timestamp;
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    currentThread = [v10 currentThread];
    *buf = 136315394;
    v34 = "[SiriActivationButtonEventListener buttonUpWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
    v35 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->super._lock);
  v13 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[SiriActivationButtonEventListener buttonUpWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock successfully locked", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [(NSMutableDictionary *)self->_listeners allKeys];
  v15 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = [(NSMutableDictionary *)self->_listeners objectForKey:v19];
        v21 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v34 = "[SiriActivationButtonEventListener buttonUpWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
          v35 = 2112;
          qualityOfService = v19;
          _os_log_impl(&dword_1C8137000, v21, OS_LOG_TYPE_DEFAULT, "%s #activation #noisy Forwarding Button down event to Listener with identifier %@", buf, 0x16u);
        }

        [timestampCopy timeInterval];
        [v20 buttonEventListenerDidReceiveButtonUpWithButtonIdentifier:objc_msgSend(identifierCopy atTimestamp:{"integerValue"), v22}];
      }

      v16 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  os_unfair_lock_unlock((self + v25));
  v23 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[SiriActivationButtonEventListener buttonUpWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v23, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock unlocked", buf, 0xCu);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)buttonLongPressWithButtonIdentifier:(id)identifier forListenerIdentifier:(id)listenerIdentifier atTimestamp:(id)timestamp
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  listenerIdentifierCopy = listenerIdentifier;
  timestampCopy = timestamp;
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    currentThread = [v10 currentThread];
    *buf = 136315394;
    v34 = "[SiriActivationButtonEventListener buttonLongPressWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
    v35 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->super._lock);
  v13 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[SiriActivationButtonEventListener buttonLongPressWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock successfully locked", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [(NSMutableDictionary *)self->_listeners allKeys];
  v15 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = [(NSMutableDictionary *)self->_listeners objectForKey:v19];
        v21 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v34 = "[SiriActivationButtonEventListener buttonLongPressWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
          v35 = 2112;
          qualityOfService = v19;
          _os_log_impl(&dword_1C8137000, v21, OS_LOG_TYPE_DEFAULT, "%s #activation #noisy Forwarding Button down event to Listener with identifier %@", buf, 0x16u);
        }

        [timestampCopy timeInterval];
        [v20 buttonEventListenerDidReceiveButtonLongPressWithButtonIdentifier:objc_msgSend(identifierCopy atTimestamp:{"integerValue"), v22}];
      }

      v16 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  os_unfair_lock_unlock((self + v25));
  v23 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[SiriActivationButtonEventListener buttonLongPressWithButtonIdentifier:forListenerIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v23, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock unlocked", buf, 0xCu);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)unregisterListenerWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[SiriActivationButtonEventListener unregisterListenerWithIdentifier:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1C8137000, a2, OS_LOG_TYPE_ERROR, "%s #activation Unregister listener '%@' when it is not connected.", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end