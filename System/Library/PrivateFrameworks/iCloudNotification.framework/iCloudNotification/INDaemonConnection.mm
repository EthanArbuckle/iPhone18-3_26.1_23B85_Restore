@interface INDaemonConnection
- (BOOL)clearAllRegistrationDigestsWithError:(id *)a3;
- (BOOL)registerAccount:(id)a3 foriCloudNotificationsWithReason:(unint64_t)a4 error:(id *)a5;
- (BOOL)unregisterAccount:(id)a3 fromiCloudNotificationsWithError:(id *)a4;
- (INDaemonConnection)init;
- (id)daemonWithErrorHandler:(id)a3;
- (id)diagnosticReport;
- (id)synchronousDaemonWithErrorHandler:(id)a3;
- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)commonHeadersForRequest:(id)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)diagnosticReport;
- (void)displayDelayedOfferWithContext:(id)a3 completion:(id)a4;
- (void)getCacheDataForLink:(id)a3 completion:(id)a4;
- (void)iCloudServerOfferForAccount:(id)a3 options:(id)a4 completion:(id)a5;
- (void)init;
- (void)notifyDeviceStorageLevel:(int64_t)a3 completion:(id)a4;
- (void)observeFPItem:(id)a3 notifyURL:(id)a4 completion:(id)a5;
- (void)presentHiddenFreshmintWithContext:(id)a3 completion:(id)a4;
- (void)registerAccount:(id)a3 foriCloudNotificationsWithReason:(unint64_t)a4 completion:(id)a5;
- (void)registerDeviceForLoggedOutiCloudNotificationsWithReason:(unint64_t)a3 completion:(id)a4;
- (void)renewCredentialsWithCompletion:(id)a3;
- (void)teardownOffersForAccount:(id)a3 withCompletion:(id)a4;
- (void)unregisterAccount:(id)a3 fromiCloudNotificationsWithCompletion:(id)a4;
- (void)unregisterDeviceFromLoggedOutiCloudNotificationsWithCompletion:(id)a3;
- (void)updateOfferForAccount:(id)a3 offerId:(id)a4 buttonId:(id)a5 info:(id)a6 completion:(id)a7;
@end

@implementation INDaemonConnection

- (INDaemonConnection)init
{
  v8.receiver = self;
  v8.super_class = INDaemonConnection;
  v2 = [(INDaemonConnection *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ind.xpc" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = +[INDaemonInterface XPCInterface];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global];
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_8];
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [INDaemonConnection init];
    }

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __26__INDaemonConnection_init__block_invoke_6()
{
  v0 = _INLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __26__INDaemonConnection_init__block_invoke_6_cold_1();
  }
}

void __26__INDaemonConnection_init__block_invoke()
{
  v0 = _INLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __26__INDaemonConnection_init__block_invoke_cold_1();
  }
}

- (BOOL)registerAccount:(id)a3 foriCloudNotificationsWithReason:(unint64_t)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __77__INDaemonConnection_registerAccount_foriCloudNotificationsWithReason_error___block_invoke;
  v23[3] = &unk_27A650578;
  v23[4] = &v30;
  v23[5] = &v24;
  v9 = MEMORY[0x277C7C3C0](v23);
  connection = self->_connection;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__INDaemonConnection_registerAccount_foriCloudNotificationsWithReason_error___block_invoke_2;
  v21[3] = &unk_27A6505A0;
  v11 = v9;
  v22 = v11;
  v12 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v21];
  v13 = _INLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection registerAccount:foriCloudNotificationsWithReason:error:];
  }

  v14 = [v8 identifier];
  [v12 registerAccountWithID:v14 foriCloudNotificationsWithReason:a4 completion:v11];

  if (a5)
  {
    *a5 = v25[5];
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v31 + 24))
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = v25[5];
    *buf = 138412546;
    v35 = v16;
    v36 = 2112;
    v37 = v17;
    _os_log_impl(&dword_275568000, v15, OS_LOG_TYPE_DEFAULT, "Registration result (%@) with error: %@", buf, 0x16u);
  }

  v18 = *(v31 + 24);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

- (void)registerAccount:(id)a3 foriCloudNotificationsWithReason:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__INDaemonConnection_registerAccount_foriCloudNotificationsWithReason_completion___block_invoke;
  v19[3] = &unk_27A6505C8;
  v9 = v8;
  v19[4] = self;
  v20 = v9;
  v10 = a3;
  v11 = MEMORY[0x277C7C3C0](v19);
  connection = self->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__INDaemonConnection_registerAccount_foriCloudNotificationsWithReason_completion___block_invoke_19;
  v17[3] = &unk_27A6505A0;
  v18 = v11;
  v13 = v11;
  v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v17];
  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection registerAccount:foriCloudNotificationsWithReason:completion:];
  }

  v16 = [v10 identifier];

  [v14 registerAccountWithID:v16 foriCloudNotificationsWithReason:a4 completion:v13];
}

void __82__INDaemonConnection_registerAccount_foriCloudNotificationsWithReason_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_275568000, v6, OS_LOG_TYPE_DEFAULT, "Registration result (%@) with error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)unregisterAccount:(id)a3 fromiCloudNotificationsWithError:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__INDaemonConnection_unregisterAccount_fromiCloudNotificationsWithError___block_invoke;
  v21[3] = &unk_27A650578;
  v21[4] = &v28;
  v21[5] = &v22;
  v7 = MEMORY[0x277C7C3C0](v21);
  connection = self->_connection;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__INDaemonConnection_unregisterAccount_fromiCloudNotificationsWithError___block_invoke_2;
  v19[3] = &unk_27A6505A0;
  v9 = v7;
  v20 = v9;
  v10 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v19];
  v11 = _INLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection unregisterAccount:fromiCloudNotificationsWithError:];
  }

  v12 = [v6 identifier];
  [v10 unregisterAccountWithID:v12 fromiCloudNotificationsWithCompletion:v9];

  if (a4)
  {
    *a4 = v23[5];
  }

  v13 = _INLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v29 + 24))
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v23[5];
    *buf = 138412546;
    v33 = v14;
    v34 = 2112;
    v35 = v15;
    _os_log_impl(&dword_275568000, v13, OS_LOG_TYPE_DEFAULT, "Unregistration success: %@. Error: %@", buf, 0x16u);
  }

  v16 = *(v29 + 24);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  v17 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (void)unregisterAccount:(id)a3 fromiCloudNotificationsWithCompletion:(id)a4
{
  v6 = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__INDaemonConnection_unregisterAccount_fromiCloudNotificationsWithCompletion___block_invoke;
  v17[3] = &unk_27A6505C8;
  v7 = v6;
  v17[4] = self;
  v18 = v7;
  v8 = a3;
  v9 = MEMORY[0x277C7C3C0](v17);
  connection = self->_connection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__INDaemonConnection_unregisterAccount_fromiCloudNotificationsWithCompletion___block_invoke_20;
  v15[3] = &unk_27A6505A0;
  v16 = v9;
  v11 = v9;
  v12 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v15];
  v13 = _INLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection unregisterAccount:fromiCloudNotificationsWithCompletion:];
  }

  v14 = [v8 identifier];

  [v12 unregisterAccountWithID:v14 fromiCloudNotificationsWithCompletion:v11];
}

void __78__INDaemonConnection_unregisterAccount_fromiCloudNotificationsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_275568000, v6, OS_LOG_TYPE_DEFAULT, "Unregistration success: %@. Error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)teardownOffersForAccount:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__INDaemonConnection_teardownOffersForAccount_withCompletion___block_invoke;
  v12[3] = &unk_27A6505A0;
  v13 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  v11 = _INLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection teardownOffersForAccount:withCompletion:];
  }

  [v10 teardownOffersForAccount:v9 withCompletion:v8];
}

- (BOOL)clearAllRegistrationDigestsWithError:(id *)a3
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy_;
  v18[4] = __Block_byref_object_dispose_;
  v4 = self;
  v19 = v4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__INDaemonConnection_clearAllRegistrationDigestsWithError___block_invoke;
  v17[3] = &unk_27A6505F0;
  v17[4] = &v26;
  v17[5] = &v20;
  v17[6] = v18;
  v5 = MEMORY[0x277C7C3C0](v17);
  connection = v4->_connection;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __59__INDaemonConnection_clearAllRegistrationDigestsWithError___block_invoke_21;
  v15 = &unk_27A6505A0;
  v7 = v5;
  v16 = v7;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&v12];
  v9 = _INLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection clearAllRegistrationDigestsWithError:];
  }

  [v8 clearAllRegistrationDigestsWithCompletion:{v7, v12, v13, v14, v15}];
  if (a3)
  {
    *a3 = v21[5];
  }

  v10 = *(v27 + 24);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v10;
}

void __59__INDaemonConnection_clearAllRegistrationDigestsWithError___block_invoke(void *a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__INDaemonConnection_clearAllRegistrationDigestsWithError___block_invoke_cold_1();
    }
  }

  *(*(a1[4] + 8) + 24) = a2;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

- (id)diagnosticReport
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy_;
  v13[4] = __Block_byref_object_dispose_;
  v2 = self;
  v14 = v2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__INDaemonConnection_diagnosticReport__block_invoke;
  v12[3] = &unk_27A650618;
  v12[4] = &v15;
  v12[5] = v13;
  v3 = MEMORY[0x277C7C3C0](v12);
  connection = v2->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__INDaemonConnection_diagnosticReport__block_invoke_23;
  v10[3] = &unk_27A6505A0;
  v5 = v3;
  v11 = v5;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection diagnosticReport];
  }

  [v6 diagnosticReportWithCompletion:v5];
  v8 = v16[5];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);

  return v8;
}

void __38__INDaemonConnection_diagnosticReport__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __38__INDaemonConnection_diagnosticReport__block_invoke_cold_1();
    }
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

- (void)updateOfferForAccount:(id)a3 offerId:(id)a4 buttonId:(id)a5 info:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy_;
  v31[4] = __Block_byref_object_dispose_;
  v17 = self;
  v32 = v17;
  v18 = _INLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection updateOfferForAccount:offerId:buttonId:info:completion:];
  }

  connection = v17->_connection;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __77__INDaemonConnection_updateOfferForAccount_offerId_buttonId_info_completion___block_invoke;
  v28[3] = &unk_27A650640;
  v20 = v16;
  v29 = v20;
  v30 = v31;
  v21 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v28];
  v22 = _INLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection diagnosticReport];
  }

  v23 = [v12 identifier];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __77__INDaemonConnection_updateOfferForAccount_offerId_buttonId_info_completion___block_invoke_24;
  v25[3] = &unk_27A650668;
  v24 = v20;
  v26 = v24;
  v27 = v31;
  [v21 updateOfferForAccountWithID:v23 offerId:v13 buttonId:v14 info:v15 completion:v25];

  _Block_object_dispose(v31, 8);
}

void __77__INDaemonConnection_updateOfferForAccount_offerId_buttonId_info_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __77__INDaemonConnection_updateOfferForAccount_offerId_buttonId_info_completion___block_invoke_24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __77__INDaemonConnection_updateOfferForAccount_offerId_buttonId_info_completion___block_invoke_24_cold_1();
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (void)iCloudServerOfferForAccount:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy_;
  v23[4] = __Block_byref_object_dispose_;
  v24 = self;
  connection = v24->_connection;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__INDaemonConnection_iCloudServerOfferForAccount_options_completion___block_invoke;
  v20[3] = &unk_27A650640;
  v12 = v10;
  v21 = v12;
  v22 = v23;
  v13 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v20];
  v14 = _INLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection diagnosticReport];
  }

  v15 = [v8 identifier];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__INDaemonConnection_iCloudServerOfferForAccount_options_completion___block_invoke_25;
  v17[3] = &unk_27A650690;
  v16 = v12;
  v18 = v16;
  v19 = v23;
  [v13 iCloudServerOfferForAccountWithID:v15 options:v9 completion:v17];

  _Block_object_dispose(v23, 8);
}

void __69__INDaemonConnection_iCloudServerOfferForAccount_options_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __69__INDaemonConnection_iCloudServerOfferForAccount_options_completion___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_275568000, v7, OS_LOG_TYPE_DEFAULT, "iCloud offer: %@ error: %@", &v11, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)presentHiddenFreshmintWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy_;
  v20[4] = __Block_byref_object_dispose_;
  v8 = self;
  v21 = v8;
  v9 = _INLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection presentHiddenFreshmintWithContext:completion:];
  }

  connection = v8->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__INDaemonConnection_presentHiddenFreshmintWithContext_completion___block_invoke;
  v17[3] = &unk_27A650640;
  v11 = v7;
  v18 = v11;
  v19 = v20;
  v12 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__INDaemonConnection_presentHiddenFreshmintWithContext_completion___block_invoke_27;
  v14[3] = &unk_27A650668;
  v13 = v11;
  v15 = v13;
  v16 = v20;
  [v12 presentHiddenFreshmintWithContext:v6 completion:v14];

  _Block_object_dispose(v20, 8);
}

void __67__INDaemonConnection_presentHiddenFreshmintWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__INDaemonConnection_presentHiddenFreshmintWithContext_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __67__INDaemonConnection_presentHiddenFreshmintWithContext_completion___block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __67__INDaemonConnection_presentHiddenFreshmintWithContext_completion___block_invoke_27_cold_1();
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (void)commonHeadersForRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy_;
  v20[4] = __Block_byref_object_dispose_;
  v21 = self;
  connection = v21->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__INDaemonConnection_commonHeadersForRequest_withCompletion___block_invoke;
  v16[3] = &unk_27A6506B8;
  v9 = v7;
  v18 = v9;
  v10 = v6;
  v17 = v10;
  v19 = v20;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__INDaemonConnection_commonHeadersForRequest_withCompletion___block_invoke_28;
  v13[3] = &unk_27A6506E0;
  v12 = v9;
  v14 = v12;
  v15 = v20;
  [v11 commonHeadersForRequest:v10 withCompletion:v13];

  _Block_object_dispose(v20, 8);
}

void __61__INDaemonConnection_commonHeadersForRequest_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__INDaemonConnection_presentHiddenFreshmintWithContext_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) allHTTPHeaderFields];
  (*(v5 + 16))(v5, v6);

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void __61__INDaemonConnection_commonHeadersForRequest_withCompletion___block_invoke_28(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)renewCredentialsWithCompletion:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy_;
  v10[4] = __Block_byref_object_dispose_;
  v11 = self;
  v5 = [(NSXPCConnection *)v11->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_31];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__INDaemonConnection_renewCredentialsWithCompletion___block_invoke_32;
  v7[3] = &unk_27A650728;
  v6 = v4;
  v8 = v6;
  v9 = v10;
  [v5 renewCredentialsWithCompletion:v7];

  _Block_object_dispose(v10, 8);
}

void __53__INDaemonConnection_renewCredentialsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__INDaemonConnection_presentHiddenFreshmintWithContext_completion___block_invoke_cold_1();
  }
}

void __53__INDaemonConnection_renewCredentialsWithCompletion___block_invoke_32(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)notifyDeviceStorageLevel:(int64_t)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  v7 = self;
  v22 = v7;
  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = a3;
    _os_log_impl(&dword_275568000, v8, OS_LOG_TYPE_DEFAULT, "Received notification of device storage level %ld", buf, 0xCu);
  }

  connection = v7->_connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__INDaemonConnection_notifyDeviceStorageLevel_completion___block_invoke;
  v18[3] = &unk_27A650640;
  v10 = v6;
  v19 = v10;
  v20 = v21;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v18];
  v12 = _INLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection diagnosticReport];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__INDaemonConnection_notifyDeviceStorageLevel_completion___block_invoke_34;
  v15[3] = &unk_27A650668;
  v13 = v10;
  v16 = v13;
  v17 = v21;
  [v11 notifyDeviceStorageLevel:a3 completion:v15];

  _Block_object_dispose(v21, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __58__INDaemonConnection_notifyDeviceStorageLevel_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, a2);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void __58__INDaemonConnection_notifyDeviceStorageLevel_completion___block_invoke_34(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __58__INDaemonConnection_notifyDeviceStorageLevel_completion___block_invoke_34_cold_1();
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void __73__INDaemonConnection_remoteFreshmintFlowCompletedWithSuccess_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__INDaemonConnection_remoteFreshmintFlowCompletedWithSuccess_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy_;
  v17[4] = __Block_byref_object_dispose_;
  v18 = self;
  connection = v18->_connection;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __76__INDaemonConnection_appLaunchLinkDidPresentForBundleIdentifier_completion___block_invoke;
  v14 = &unk_27A650640;
  v9 = v7;
  v15 = v9;
  v16 = v17;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&v11];
  [v10 appLaunchLinkDidPresentForBundleIdentifier:{v6, v11, v12, v13, v14}];
  (*(v9 + 2))(v9, 0);

  _Block_object_dispose(v17, 8);
}

void __76__INDaemonConnection_appLaunchLinkDidPresentForBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__INDaemonConnection_remoteFreshmintFlowCompletedWithSuccess_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)getCacheDataForLink:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy_;
  v17[4] = __Block_byref_object_dispose_;
  v18 = self;
  connection = v18->_connection;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __53__INDaemonConnection_getCacheDataForLink_completion___block_invoke;
  v14 = &unk_27A650640;
  v9 = v7;
  v15 = v9;
  v16 = v17;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&v11];
  [v10 getCacheDataForLink:v6 completion:{v9, v11, v12, v13, v14}];

  _Block_object_dispose(v17, 8);
}

void __53__INDaemonConnection_getCacheDataForLink_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__INDaemonConnection_remoteFreshmintFlowCompletedWithSuccess_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (id)daemonWithErrorHandler:(id)a3
{
  v4 = a3;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__INDaemonConnection_daemonWithErrorHandler___block_invoke;
  v9[3] = &unk_27A650750;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __45__INDaemonConnection_daemonWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(*(a1 + 32) + 8) invalidate];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (id)synchronousDaemonWithErrorHandler:(id)a3
{
  v4 = a3;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__INDaemonConnection_synchronousDaemonWithErrorHandler___block_invoke;
  v9[3] = &unk_27A650750;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __56__INDaemonConnection_synchronousDaemonWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(*(a1 + 32) + 8) invalidate];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)displayDelayedOfferWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy_;
  v18[4] = __Block_byref_object_dispose_;
  v19 = self;
  connection = v19->_connection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__INDaemonConnection_displayDelayedOfferWithContext_completion___block_invoke;
  v15[3] = &unk_27A650640;
  v9 = v7;
  v16 = v9;
  v17 = v18;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__INDaemonConnection_displayDelayedOfferWithContext_completion___block_invoke_35;
  v12[3] = &unk_27A650640;
  v11 = v9;
  v13 = v11;
  v14 = v18;
  [v10 displayDelayedOfferWithContext:v6 completion:v12];

  _Block_object_dispose(v18, 8);
}

void __64__INDaemonConnection_displayDelayedOfferWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__INDaemonConnection_displayDelayedOfferWithContext_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __64__INDaemonConnection_displayDelayedOfferWithContext_completion___block_invoke_35(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)registerDeviceForLoggedOutiCloudNotificationsWithReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__INDaemonConnection_registerDeviceForLoggedOutiCloudNotificationsWithReason_completion___block_invoke;
  v15[3] = &unk_27A6505C8;
  v7 = v6;
  v15[4] = self;
  v16 = v7;
  v8 = MEMORY[0x277C7C3C0](v15);
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__INDaemonConnection_registerDeviceForLoggedOutiCloudNotificationsWithReason_completion___block_invoke_36;
  v13[3] = &unk_27A6505A0;
  v14 = v8;
  v10 = v8;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v13];
  v12 = _INLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection registerDeviceForLoggedOutiCloudNotificationsWithReason:completion:];
  }

  [v11 registerDeviceForLoggedOutiCloudNotificationsWithReason:a3 completion:v10];
}

void __89__INDaemonConnection_registerDeviceForLoggedOutiCloudNotificationsWithReason_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_275568000, v6, OS_LOG_TYPE_DEFAULT, "Registration result (%@) with error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unregisterDeviceFromLoggedOutiCloudNotificationsWithCompletion:(id)a3
{
  v4 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__INDaemonConnection_unregisterDeviceFromLoggedOutiCloudNotificationsWithCompletion___block_invoke;
  v13[3] = &unk_27A6505C8;
  v5 = v4;
  v13[4] = self;
  v14 = v5;
  v6 = MEMORY[0x277C7C3C0](v13);
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__INDaemonConnection_unregisterDeviceFromLoggedOutiCloudNotificationsWithCompletion___block_invoke_37;
  v11[3] = &unk_27A6505A0;
  v12 = v6;
  v8 = v6;
  v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  v10 = _INLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [INDaemonConnection unregisterDeviceFromLoggedOutiCloudNotificationsWithCompletion:];
  }

  [v9 unregisterDeviceFromLoggedOutiCloudNotificationsWithReason:9 completion:v8];
}

void __85__INDaemonConnection_unregisterDeviceFromLoggedOutiCloudNotificationsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_275568000, v6, OS_LOG_TYPE_DEFAULT, "Unregistration success: %@. Error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)observeFPItem:(id)a3 notifyURL:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__INDaemonConnection_observeFPItem_notifyURL_completion___block_invoke;
  v13[3] = &unk_27A6505A0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(INDaemonConnection *)self synchronousDaemonWithErrorHandler:v13];
  [v12 observeFPItem:v11 notifyURL:v10 completion:v9];
}

- (void)init
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)registerAccount:foriCloudNotificationsWithReason:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)registerAccount:foriCloudNotificationsWithReason:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAccount:fromiCloudNotificationsWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAccount:fromiCloudNotificationsWithCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)teardownOffersForAccount:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearAllRegistrationDigestsWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__INDaemonConnection_clearAllRegistrationDigestsWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_275568000, v0, v1, "Failed to clear registration cache with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)diagnosticReport
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__INDaemonConnection_diagnosticReport__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_275568000, v0, v1, "Failed to fetch diagnostic report with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateOfferForAccount:offerId:buttonId:info:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__INDaemonConnection_updateOfferForAccount_offerId_buttonId_info_completion___block_invoke_24_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)presentHiddenFreshmintWithContext:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__INDaemonConnection_presentHiddenFreshmintWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_275568000, v0, v1, "Creating daemon failed with proxy error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__INDaemonConnection_presentHiddenFreshmintWithContext_completion___block_invoke_27_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__INDaemonConnection_notifyDeviceStorageLevel_completion___block_invoke_34_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__INDaemonConnection_remoteFreshmintFlowCompletedWithSuccess_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_275568000, v0, v1, "Failed to connect to ind with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__INDaemonConnection_displayDelayedOfferWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_275568000, v0, v1, "Failed to create daemon with proxy error [%@].", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerDeviceForLoggedOutiCloudNotificationsWithReason:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unregisterDeviceFromLoggedOutiCloudNotificationsWithCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end