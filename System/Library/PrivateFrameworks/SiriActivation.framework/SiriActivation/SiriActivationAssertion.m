@interface SiriActivationAssertion
- (SiriActivationAssertion)initWithIdentifier:(id)a3 reason:(unint64_t)a4;
- (void)configureConnection;
- (void)dealloc;
- (void)invalidate;
- (void)invalidatedAtTimestamp:(double)a3;
@end

@implementation SiriActivationAssertion

- (SiriActivationAssertion)initWithIdentifier:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SiriActivationAssertion;
  v7 = [(SiriActivationSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SiriActivationSource *)v7 setIdentifier:v6];
    [(SiriActivationAssertion *)v8 setReason:a4];
    [(SiriActivationAssertion *)v8 configureConnection];
  }

  return v8;
}

- (void)configureConnection
{
  v3 = MEMORY[0x1E698F498];
  v4 = +[SASBoardServicesConfiguration configuration];
  v5 = [v4 machServiceIdentifier];
  v6 = +[SASBoardServicesConfiguration configuration];
  v7 = [v6 identifierForService:1];
  v8 = [v3 endpointForMachName:v5 service:v7 instance:0];

  v9 = [MEMORY[0x1E698F490] connectionWithEndpoint:v8];
  connection = self->super._connection;
  self->super._connection = v9;

  objc_initWeak(&location, self);
  v11 = self->super._connection;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __46__SiriActivationAssertion_configureConnection__block_invoke;
  v15 = &unk_1E82F3658;
  objc_copyWeak(&v16, &location);
  [(BSServiceConnection *)v11 configureConnection:&v12];
  [(BSServiceConnection *)self->super._connection activate:v12];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __46__SiriActivationAssertion_configureConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy_;
    v14[4] = __Block_byref_object_dispose_;
    v15 = [WeakRetained identifier];
    v6 = +[SASSignalServer serviceQuality];
    [v3 setServiceQuality:v6];

    v7 = +[SASSignalServer interface];
    [v3 setInterface:v7];

    [v3 setInterfaceTarget:v5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__SiriActivationAssertion_configureConnection__block_invoke_22;
    v12[3] = &unk_1E82F4138;
    v12[4] = v5;
    objc_copyWeak(&v13, (a1 + 32));
    [v3 setInvalidationHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__SiriActivationAssertion_configureConnection__block_invoke_24;
    v10[3] = &unk_1E82F4138;
    v10[4] = v5;
    objc_copyWeak(&v11, (a1 + 32));
    [v3 setInterruptionHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__SiriActivationAssertion_configureConnection__block_invoke_25;
    v8[3] = &unk_1E82F4160;
    objc_copyWeak(&v9, (a1 + 32));
    v8[4] = v5;
    v8[5] = v14;
    [v3 setActivationHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    _Block_object_dispose(v14, 8);
  }
}

void __46__SiriActivationAssertion_configureConnection__block_invoke_22(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SiriActivationAssertion configureConnection]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation Received Invalidation for Assertion - %@, Invalidating…", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  v5 = *MEMORY[0x1E69E9840];
}

void __46__SiriActivationAssertion_configureConnection__block_invoke_24(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SiriActivationAssertion configureConnection]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation Received Interruption for Assertion - %@, Invalidating…", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  v5 = *MEMORY[0x1E69E9840];
}

void __46__SiriActivationAssertion_configureConnection__block_invoke_25(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v19 = 136315650;
    v20 = "[SiriActivationAssertion configureConnection]_block_invoke";
    v21 = 2048;
    v22 = v7;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Activated for assertion strongSelf=%p connection=%@", &v19, 0x20u);
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
      v19 = 136315394;
      v20 = "[SiriActivationAssertion configureConnection]_block_invoke";
      v21 = 2048;
      v22 = v12;
      _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_lock about to lock with qos: %zd", &v19, 0x16u);
    }

    os_unfair_lock_lock(WeakRetained + 4);
    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[SiriActivationAssertion configureConnection]_block_invoke";
      _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_lock successfully locked", &v19, 0xCu);
    }

    v14 = [v3 remoteTarget];
    v15 = *(*(*(a1 + 40) + 8) + 40);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*&WeakRetained[8]._os_unfair_lock_opaque];
    [v14 registerAssertionWithIdentifier:v15 reason:v16];

    os_unfair_lock_unlock(WeakRetained + 4);
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[SiriActivationAssertion configureConnection]_block_invoke";
      _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_lock unlocked", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  Current = CFAbsoluteTimeGetCurrent();

  [(SiriActivationAssertion *)self invalidatedAtTimestamp:Current];
}

- (void)invalidatedAtTimestamp:(double)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E698D0A0];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    connection = self->super._connection;
    v18 = 136315650;
    v19 = "[SiriActivationAssertion invalidatedAtTimestamp:]";
    v20 = 2112;
    v21 = self;
    v22 = 2112;
    v23 = connection;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Unregistering & invalidating assertion self=%@ connection=%@", &v18, 0x20u);
  }

  v7 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E696AF00];
    v9 = v7;
    v10 = [v8 currentThread];
    v11 = [v10 qualityOfService];
    v18 = 136315394;
    v19 = "[SiriActivationAssertion invalidatedAtTimestamp:]";
    v20 = 2048;
    v21 = v11;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock about to lock with qos: %zd", &v18, 0x16u);
  }

  os_unfair_lock_lock(&self->super._lock);
  v12 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[SiriActivationAssertion invalidatedAtTimestamp:]";
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock successfully locked", &v18, 0xCu);
  }

  v13 = [(BSServiceConnection *)self->super._connection remoteTarget];
  v14 = [(SiriActivationSource *)self identifier];
  [v13 unregisterAssertionWithIdentifier:v14];

  [(BSServiceConnection *)self->super._connection invalidate];
  v15 = self->super._connection;
  self->super._connection = 0;

  os_unfair_lock_unlock(&self->super._lock);
  v16 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[SiriActivationAssertion invalidatedAtTimestamp:]";
    _os_log_impl(&dword_1C8137000, v16, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock unlocked", &v18, 0xCu);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SiriActivationAssertion dealloc]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation SiriActivationAssertion got deallocated", buf, 0xCu);
  }

  [(SiriActivationAssertion *)self invalidate];
  v5.receiver = self;
  v5.super_class = SiriActivationAssertion;
  [(SiriActivationSource *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

@end