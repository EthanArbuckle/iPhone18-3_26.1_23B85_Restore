@interface SKStatusSubscription
+ (id)logger;
- (SKHandle)ownerHandle;
- (SKStatusSubscription)initWithSubscriptionMetadata:(id)a3 daemonConnection:(id)a4;
- (id)_ownerHandlesDescription;
- (id)description;
- (void)deleteSubscriptionWithCompletion:(id)a3;
- (void)releasePersistentSubscriptionAssertionForApplicationIdentifier:(id)a3 completion:(id)a4;
- (void)releaseTransientSubscriptionAssertionWithCompletion:(id)a3;
- (void)retainPersistentSubscriptionAssertionForApplicationIdentifier:(id)a3 completion:(id)a4;
- (void)retainTransientSubscriptionAssertionWithCompletion:(id)a3;
@end

@implementation SKStatusSubscription

- (SKStatusSubscription)initWithSubscriptionMetadata:(id)a3 daemonConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SKStatusSubscription;
  v9 = [(SKStatusSubscription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subscriptionMetadata, a3);
    objc_storeStrong(&v10->_daemonConnection, a4);
  }

  return v10;
}

- (void)retainTransientSubscriptionAssertionWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKStatusSubscriptionMetadata *)self->_subscriptionMetadata subscriptionIdentifier];
  v6 = [(SKStatusSubscriptionMetadata *)self->_subscriptionMetadata statusTypeIdentifier];
  v7 = +[SKStatusSubscription logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Retaining transient subscription assertion for subscriptionIdentifier %@", buf, 0xCu);
  }

  v8 = [(SKStatusSubscription *)self daemonConnection];
  v9 = [v8 asynchronousRemoteDaemonWithErrorHandler:&__block_literal_global_10];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__SKStatusSubscription_retainTransientSubscriptionAssertionWithCompletion___block_invoke_1;
  v13[3] = &unk_279D12DC8;
  v14 = v5;
  v15 = v4;
  v10 = v4;
  v11 = v5;
  [v9 retainTransientSubscriptionAssertionForSubscriptionIdentifier:v11 statusTypeIdentifier:v6 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __75__SKStatusSubscription_retainTransientSubscriptionAssertionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKStatusSubscription logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __65__SKPresence_retainTransientSubscriptionAssertionWithCompletion___block_invoke_cold_1();
  }
}

void __75__SKStatusSubscription_retainTransientSubscriptionAssertionWithCompletion___block_invoke_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKStatusSubscription logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__SKPresence_retainTransientSubscriptionAssertionWithCompletion___block_invoke_41_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retained transient subscription assertion for subscription identifier %@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)releaseTransientSubscriptionAssertionWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKStatusSubscriptionMetadata *)self->_subscriptionMetadata subscriptionIdentifier];
  v6 = [(SKStatusSubscriptionMetadata *)self->_subscriptionMetadata statusTypeIdentifier];
  v7 = +[SKStatusSubscription logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Releasing transient subscription assertion for subscriptionIdentifier %@", buf, 0xCu);
  }

  v8 = [(SKStatusSubscription *)self daemonConnection];
  v9 = [v8 asynchronousRemoteDaemonWithErrorHandler:&__block_literal_global_3];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__SKStatusSubscription_releaseTransientSubscriptionAssertionWithCompletion___block_invoke_4;
  v13[3] = &unk_279D12DC8;
  v14 = v5;
  v15 = v4;
  v10 = v4;
  v11 = v5;
  [v9 releaseTransientSubscriptionAssertionForSubscriptionIdentifier:v11 statusTypeIdentifier:v6 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __76__SKStatusSubscription_releaseTransientSubscriptionAssertionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKStatusSubscription logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __66__SKPresence_releaseTransientSubscriptionAssertionWithCompletion___block_invoke_cold_1();
  }
}

void __76__SKStatusSubscription_releaseTransientSubscriptionAssertionWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKStatusSubscription logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__SKPresence_releaseTransientSubscriptionAssertionWithCompletion___block_invoke_42_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released transient subscription assertion for subscription identifier %@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)retainPersistentSubscriptionAssertionForApplicationIdentifier:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SKStatusSubscriptionMetadata *)self->_subscriptionMetadata subscriptionIdentifier];
  v9 = [(SKStatusSubscriptionMetadata *)self->_subscriptionMetadata statusTypeIdentifier];
  v10 = +[SKStatusSubscription logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_26BA07000, v10, OS_LOG_TYPE_DEFAULT, "Retaining persistent subscription assertion for subscriptionIdentifier %@ applicationIdentifier %@", buf, 0x16u);
  }

  v11 = [(SKStatusSubscription *)self daemonConnection];
  v12 = [v11 asynchronousRemoteDaemonWithErrorHandler:&__block_literal_global_6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__SKStatusSubscription_retainPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_7;
  v17[3] = &unk_279D12AB0;
  v18 = v8;
  v19 = v6;
  v20 = v7;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  [v12 retainPersistentSubscriptionAssertionForSubscriptionIdentifier:v15 statusTypeIdentifier:v9 applicationIdentifier:v14 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __97__SKStatusSubscription_retainPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKStatusSubscription logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __97__SKStatusSubscription_retainPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_cold_1();
  }
}

void __97__SKStatusSubscription_retainPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_7(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKStatusSubscription logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__SKStatusSubscription_retainPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_7_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retained persistent subscription assertion for subscription identifier %@ applicationIdentifier %@", &v10, 0x16u);
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)releasePersistentSubscriptionAssertionForApplicationIdentifier:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SKStatusSubscriptionMetadata *)self->_subscriptionMetadata subscriptionIdentifier];
  v9 = [(SKStatusSubscriptionMetadata *)self->_subscriptionMetadata statusTypeIdentifier];
  v10 = +[SKStatusSubscription logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_26BA07000, v10, OS_LOG_TYPE_DEFAULT, "Releasing persistent subscription assertion for subscriptionIdentifier %@ applicationIdentifier %@", buf, 0x16u);
  }

  v11 = [(SKStatusSubscription *)self daemonConnection];
  v12 = [v11 asynchronousRemoteDaemonWithErrorHandler:&__block_literal_global_9];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__SKStatusSubscription_releasePersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_10;
  v17[3] = &unk_279D12AB0;
  v18 = v8;
  v19 = v6;
  v20 = v7;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  [v12 releasePersistentSubscriptionAssertionForSubscriptionIdentifier:v15 statusTypeIdentifier:v9 applicationIdentifier:v14 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __98__SKStatusSubscription_releasePersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKStatusSubscription logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __98__SKStatusSubscription_releasePersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_cold_1();
  }
}

void __98__SKStatusSubscription_releasePersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_10(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKStatusSubscription logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __98__SKStatusSubscription_releasePersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_10_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released persistent subscription assertion for subscription identifier %@ applicationIdentifier %@", &v10, 0x16u);
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deleteSubscriptionWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKStatusSubscriptionMetadata *)self->_subscriptionMetadata subscriptionIdentifier];
  v6 = [(SKStatusSubscriptionMetadata *)self->_subscriptionMetadata statusTypeIdentifier];
  v7 = +[SKStatusSubscription logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Deleting subscription with subscriptionIdentifier %@", buf, 0xCu);
  }

  v8 = [(SKStatusSubscription *)self daemonConnection];
  v9 = [v8 asynchronousRemoteDaemonWithErrorHandler:&__block_literal_global_12];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__SKStatusSubscription_deleteSubscriptionWithCompletion___block_invoke_13;
  v13[3] = &unk_279D12DC8;
  v14 = v5;
  v15 = v4;
  v10 = v4;
  v11 = v5;
  [v9 deleteSubscriptionWithIdentifier:v11 statusTypeIdentifier:v6 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __57__SKStatusSubscription_deleteSubscriptionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKStatusSubscription logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __98__SKStatusSubscription_releasePersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_cold_1();
  }
}

void __57__SKStatusSubscription_deleteSubscriptionWithCompletion___block_invoke_13(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKStatusSubscription logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__SKStatusSubscription_deleteSubscriptionWithCompletion___block_invoke_13_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Successfully deleting subscription with identifier %@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_ownerHandlesDescription
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(SKStatusSubscription *)self ownerHandles];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) handleString];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = @"<nil>";
        }

        v12 = v11;

        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)description
{
  v3 = [(SKStatusSubscription *)self isPersonalStatusSubscription];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(SKStatusSubscription *)self subscriptionIdentifier];
  if (v3)
  {
    v7 = [(SKStatusSubscription *)self currentStatus];
    v8 = [v4 stringWithFormat:@"<%@: %p subscriptionID = %@; personal = YES; status = %@>", v5, self, v6, v7];;
  }

  else
  {
    v7 = [(SKStatusSubscription *)self _ownerHandlesDescription];
    v9 = [(SKStatusSubscription *)self currentStatus];
    v8 = [v4 stringWithFormat:@"<%@: %p subscriptionID = %@; owners = %@; status = %@>", v5, self, v6, v7, v9];;
  }

  return v8;
}

+ (id)logger
{
  if (logger_onceToken_9 != -1)
  {
    +[SKStatusSubscription logger];
  }

  v3 = logger__logger_9;

  return v3;
}

uint64_t __30__SKStatusSubscription_logger__block_invoke()
{
  logger__logger_9 = os_log_create("com.apple.StatusKit", "SKStatusSubscription");

  return MEMORY[0x2821F96F8]();
}

- (SKHandle)ownerHandle
{
  v2 = [(SKStatusSubscriptionMetadata *)self->_subscriptionMetadata ownerHandles];
  v3 = [v2 firstObject];

  return v3;
}

void __97__SKStatusSubscription_retainPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error retaining persistent subscription assertion. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __97__SKStatusSubscription_retainPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_7_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error retaining persistent subscription assertion. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __98__SKStatusSubscription_releasePersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error releasing persistent subscription assertion. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __98__SKStatusSubscription_releasePersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_10_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error releasing persistent subscription assertion. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__SKStatusSubscription_deleteSubscriptionWithCompletion___block_invoke_13_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_26BA07000, log, OS_LOG_TYPE_ERROR, "Error deleting subscription with identifier %@. Error: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end