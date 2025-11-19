@interface TRUserNotificationManager
+ (id)sharedInstance;
- (void)_showUserNotificationWithDictionary:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)presentAuthenticationFailureWithMessage:(id)a3 completion:(id)a4;
- (void)presentErrorWithTitle:(id)a3 message:(id)a4 completion:(id)a5;
- (void)presentLegacyAuthenticationFailedDialogWithMessage:(id)a3 completion:(id)a4;
- (void)presentWiFiNetworkConnectionError:(BOOL)a3 completion:(id)a4;
- (void)requestAppleIDAuthenticationWithAccountID:(id)a3 completion:(id)a4;
- (void)requestAuthenticationWithAccountID:(id)a3 message:(id)a4 completion:(id)a5;
- (void)requestLegacyAuthenticationWithAccountID:(id)a3 completion:(id)a4;
- (void)requestPermissionForDiagnosticSubmissionWithCompletion:(id)a3;
- (void)requestPermissionToInitiateSetupWithCompletion:(id)a3;
@end

@implementation TRUserNotificationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[TRUserNotificationManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

uint64_t __43__TRUserNotificationManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_0 = objc_alloc_init(TRUserNotificationManager);

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(TRUserNotificationManager *)self cancel];
  v3.receiver = self;
  v3.super_class = TRUserNotificationManager;
  [(TRUserNotificationManager *)&v3 dealloc];
}

- (void)_showUserNotificationWithDictionary:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (_TRLogEnabled == 1)
  {
    v10 = TRLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "[TRUserNotificationManager] Showing user notification: %@", &v14, 0xCu);
    }
  }

  v14 = 0;
  v11 = [[_TRUserNotification alloc] initWithDictionary:v8 options:a4 error:&v14];
  if (v11)
  {
    [(TRUserNotificationManager *)self setActiveUserNotification:v11];
    v12 = [(TRUserNotificationManager *)self activeUserNotification];
    [v12 show];

    if (v9)
    {
      v9[2](v9, v11, 0);
    }

    [(TRUserNotificationManager *)self setActiveUserNotification:0];
  }

  else if (v9)
  {
    v9[2](v9, 0, v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)requestPermissionToInitiateSetupWithCompletion:(id)a3
{
  v14 = a3;
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v13 localizedStringForKey:@"INITIATE_SETUP_TITLE" value:&stru_287F58968 table:@"TouchRemote"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"INITIATE_SETUP_MESSAGE" value:&stru_287F58968 table:@"TouchRemote"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"INITIATE_SETUP_CONTINUE" value:&stru_287F58968 table:@"TouchRemote"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_287F58968 table:@"TouchRemote"];
  v11 = [_TRUserNotification userNotificationDictionaryWithTitle:v4 message:v6 defaultButtonTitle:v8 alternateButtonTitle:v10];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__TRUserNotificationManager_requestPermissionToInitiateSetupWithCompletion___block_invoke;
  v15[3] = &unk_279DCF728;
  v16 = v14;
  v12 = v14;
  [(TRUserNotificationManager *)self _showUserNotificationWithDictionary:v11 options:0 completion:v15];
}

uint64_t __76__TRUserNotificationManager_requestPermissionToInitiateSetupWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 didAccept];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)requestAuthenticationWithAccountID:(id)a3 message:(id)a4 completion:(id)a5
{
  v37[2] = *MEMORY[0x277D85DE8];
  v30 = a3;
  v8 = a4;
  v29 = a5;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SIGN_IN_TITLE" value:&stru_287F58968 table:@"TouchRemote"];
  v11 = v8;
  v31 = v8;
  if (!v8)
  {
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v28 localizedStringForKey:@"SIGN_IN_MESSAGE" value:&stru_287F58968 table:@"TouchRemote"];
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_287F58968 table:@"TouchRemote"];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SKIP" value:&stru_287F58968 table:@"TouchRemote"];
  v16 = [_TRUserNotification userNotificationDictionaryWithTitle:v10 message:v11 defaultButtonTitle:v13 alternateButtonTitle:v15];

  if (!v31)
  {
  }

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"APPLE_ID" value:&stru_287F58968 table:@"TouchRemote"];
  v37[0] = v18;
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"PASSWORD" value:&stru_287F58968 table:@"TouchRemote"];
  v37[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  [v16 setObject:v21 forKeyedSubscript:*MEMORY[0x277CBF230]];

  if (v30)
  {
    v22 = v30;
  }

  else
  {
    v22 = &stru_287F58968;
  }

  v36[0] = v22;
  v36[1] = &stru_287F58968;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  [v16 setObject:v23 forKeyedSubscript:*MEMORY[0x277CBF238]];

  [v16 setObject:&unk_287F62A68 forKeyedSubscript:*MEMORY[0x277CBF1F8]];
  [v16 setObject:&unk_287F62A80 forKeyedSubscript:*MEMORY[0x277D67438]];
  [v16 setObject:&unk_287F62A98 forKeyedSubscript:*MEMORY[0x277D67440]];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __83__TRUserNotificationManager_requestAuthenticationWithAccountID_message_completion___block_invoke;
  v32[3] = &unk_279DCF778;
  v32[4] = self;
  v33 = v30;
  v34 = v31;
  v35 = v29;
  v24 = v31;
  v25 = v30;
  v26 = v29;
  [(TRUserNotificationManager *)self _showUserNotificationWithDictionary:v16 options:0x20000 completion:v32];

  v27 = *MEMORY[0x277D85DE8];
}

void __83__TRUserNotificationManager_requestAuthenticationWithAccountID_message_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 textFieldValueAtIndex:0];
  v5 = [v3 textFieldValueAtIndex:1];
  v16 = 0;
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, [v3 didAccept], v4, v5, &v16);
    if (v16)
    {
      v7 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__TRUserNotificationManager_requestAuthenticationWithAccountID_message_completion___block_invoke_2;
      block[3] = &unk_279DCF750;
      v12 = *(a1 + 32);
      v8 = *(&v12 + 1);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *&v11 = v9;
      *(&v11 + 1) = v10;
      v14 = v12;
      v15 = v11;
      dispatch_after(v7, MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)requestAppleIDAuthenticationWithAccountID:(id)a3 completion:(id)a4
{
  v31[2] = *MEMORY[0x277D85DE8];
  v25 = a3;
  v26 = a4;
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v24 localizedStringForKey:@"AUTH_APPLE_ID_TITLE" value:&stru_287F58968 table:@"TouchRemote"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"AUTH_APPLE_ID_MESSAGE" value:&stru_287F58968 table:@"TouchRemote"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_287F58968 table:@"TouchRemote"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"SKIP" value:&stru_287F58968 table:@"TouchRemote"];
  v12 = [_TRUserNotification userNotificationDictionaryWithTitle:v23 message:v7 defaultButtonTitle:v9 alternateButtonTitle:v11];

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"APPLE_ID" value:&stru_287F58968 table:@"TouchRemote"];
  v31[0] = v14;
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"PASSWORD" value:&stru_287F58968 table:@"TouchRemote"];
  v31[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  [v12 setObject:v17 forKeyedSubscript:*MEMORY[0x277CBF230]];

  if (v25)
  {
    v18 = v25;
  }

  else
  {
    v18 = &stru_287F58968;
  }

  v30[0] = v18;
  v30[1] = &stru_287F58968;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  [v12 setObject:v19 forKeyedSubscript:*MEMORY[0x277CBF238]];

  [v12 setObject:&unk_287F62AB0 forKeyedSubscript:*MEMORY[0x277CBF1F8]];
  [v12 setObject:&unk_287F62AC8 forKeyedSubscript:*MEMORY[0x277D67438]];
  [v12 setObject:&unk_287F62AE0 forKeyedSubscript:*MEMORY[0x277D67440]];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __82__TRUserNotificationManager_requestAppleIDAuthenticationWithAccountID_completion___block_invoke;
  v27[3] = &unk_279DCF7C8;
  v28 = v25;
  v29 = v26;
  v27[4] = self;
  v20 = v25;
  v21 = v26;
  [(TRUserNotificationManager *)self _showUserNotificationWithDictionary:v12 options:0x20000 completion:v27];

  v22 = *MEMORY[0x277D85DE8];
}

void __82__TRUserNotificationManager_requestAppleIDAuthenticationWithAccountID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 textFieldValueAtIndex:0];
  v5 = [v3 textFieldValueAtIndex:1];
  v12 = 0;
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, [v3 didAccept], v4, v5, &v12);
    if (v12)
    {
      v7 = dispatch_time(0, 500000000);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __82__TRUserNotificationManager_requestAppleIDAuthenticationWithAccountID_completion___block_invoke_2;
      v9[3] = &unk_279DCF7A0;
      v8 = *(a1 + 40);
      v9[4] = *(a1 + 32);
      v10 = v8;
      v11 = *(a1 + 48);
      dispatch_after(v7, MEMORY[0x277D85CD0], v9);
    }
  }
}

- (void)presentAuthenticationFailureWithMessage:(id)a3 completion:(id)a4
{
  v18 = a4;
  v6 = MEMORY[0x277CCA8D8];
  v7 = a3;
  v17 = [v6 bundleForClass:objc_opt_class()];
  v8 = [v17 localizedStringForKey:@"AUTH_FAILED_TITLE" value:&stru_287F58968 table:@"TouchRemote"];
  v9 = v7;
  if (!v7)
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v16 localizedStringForKey:@"AUTH_FAILED_DEFAULT_MESSAGE" value:&stru_287F58968 table:@"TouchRemote"];
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"AUTH_FAILED_RETRY_BUTTON" value:&stru_287F58968 table:@"TouchRemote"];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_287F58968 table:@"TouchRemote"];
  v14 = [_TRUserNotification userNotificationDictionaryWithTitle:v8 message:v9 defaultButtonTitle:v11 alternateButtonTitle:v13];

  if (!v7)
  {
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__TRUserNotificationManager_presentAuthenticationFailureWithMessage_completion___block_invoke;
  v19[3] = &unk_279DCF728;
  v20 = v18;
  v15 = v18;
  [(TRUserNotificationManager *)self _showUserNotificationWithDictionary:v14 options:0 completion:v19];
}

uint64_t __80__TRUserNotificationManager_presentAuthenticationFailureWithMessage_completion___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = [a2 didAccept];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (void)requestPermissionForDiagnosticSubmissionWithCompletion:(id)a3
{
  v14 = a3;
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v13 localizedStringForKey:@"DIAGNOSTIC_TITLE" value:&stru_287F58968 table:@"TouchRemote"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DIAGNOSTIC_MESSAGE" value:&stru_287F58968 table:@"TouchRemote"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_287F58968 table:@"TouchRemote"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"NO_THANKS_BUTTON" value:&stru_287F58968 table:@"TouchRemote"];
  v11 = [_TRUserNotification userNotificationDictionaryWithTitle:v4 message:v6 defaultButtonTitle:v8 alternateButtonTitle:v10];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__TRUserNotificationManager_requestPermissionForDiagnosticSubmissionWithCompletion___block_invoke;
  v15[3] = &unk_279DCF728;
  v16 = v14;
  v12 = v14;
  [(TRUserNotificationManager *)self _showUserNotificationWithDictionary:v11 options:0 completion:v15];
}

uint64_t __84__TRUserNotificationManager_requestPermissionForDiagnosticSubmissionWithCompletion___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = [a2 didAccept];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (void)presentErrorWithTitle:(id)a3 message:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277CCA8D8];
  v10 = a4;
  v11 = a3;
  v12 = [v9 bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_287F58968 table:@"TouchRemote"];
  v14 = [_TRUserNotification userNotificationDictionaryWithTitle:v11 message:v10 defaultButtonTitle:v13 alternateButtonTitle:0];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__TRUserNotificationManager_presentErrorWithTitle_message_completion___block_invoke;
  v16[3] = &unk_279DCF728;
  v17 = v8;
  v15 = v8;
  [(TRUserNotificationManager *)self _showUserNotificationWithDictionary:v14 options:0 completion:v16];
}

uint64_t __70__TRUserNotificationManager_presentErrorWithTitle_message_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)presentWiFiNetworkConnectionError:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v14 = a4;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v4)
  {
    v8 = [v6 localizedStringForKey:@"CONNECT_TO_WIFI_MESSAGE_DHCP" value:&stru_287F58968 table:@"TouchRemote"];

    if ((MGGetBoolAnswer() & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = @"CONNECT_TO_WLAN_MESSAGE_DHCP";
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"CONNECT_TO_WIFI_MESSAGE" value:&stru_287F58968 table:@"TouchRemote"];

    if (!MGGetBoolAnswer())
    {
      goto LABEL_7;
    }

    v9 = @"CONNECT_TO_WLAN_MESSAGE";
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:v9 value:&stru_287F58968 table:@"TouchRemote"];

  v8 = v11;
LABEL_7:
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CONNECT_TO_WIFI_TITLE" value:&stru_287F58968 table:@"TouchRemote"];
  [(TRUserNotificationManager *)self presentErrorWithTitle:v13 message:v8 completion:v14];
}

- (void)cancel
{
  v2 = [(TRUserNotificationManager *)self activeUserNotification];
  [v2 cancel];
}

- (void)requestLegacyAuthenticationWithAccountID:(id)a3 completion:(id)a4
{
  v36[2] = *MEMORY[0x277D85DE8];
  v30 = a3;
  v29 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SIGN_IN_TITLE" value:&stru_287F58968 table:@"TouchRemote"];
  [v6 setObject:v8 forKey:*MEMORY[0x277CBF188]];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SIGN_IN_MESSAGE" value:&stru_287F58968 table:@"TouchRemote"];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SIGN_IN_MESSAGE" value:&stru_287F58968 table:@"TouchRemote"];
    [v6 setObject:v13 forKey:*MEMORY[0x277CBF198]];
  }

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"APPLE_ID" value:&stru_287F58968 table:@"TouchRemote"];
  v36[0] = v15;
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"PASSWORD" value:&stru_287F58968 table:@"TouchRemote"];
  v36[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  [v6 setObject:v18 forKey:*MEMORY[0x277CBF230]];

  if (v30)
  {
    v19 = v30;
  }

  else
  {
    v19 = &stru_287F58968;
  }

  v35[0] = v19;
  v35[1] = &stru_287F58968;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  [v6 setObject:v20 forKey:*MEMORY[0x277CBF238]];

  [v6 setObject:&unk_287F62AF8 forKey:*MEMORY[0x277CBF1F8]];
  [v6 setObject:&unk_287F62B10 forKey:*MEMORY[0x277D67438]];
  [v6 setObject:&unk_287F62B28 forKey:*MEMORY[0x277D67440]];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"CANCEL" value:&stru_287F58968 table:@"TouchRemote"];
  [v6 setObject:v22 forKey:*MEMORY[0x277CBF1C0]];

  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"OK" value:&stru_287F58968 table:@"TouchRemote"];
  [v6 setObject:v24 forKey:*MEMORY[0x277CBF1E8]];

  [v6 setObject:&unk_287F629D8 forKey:*MEMORY[0x277D67300]];
  v25 = *MEMORY[0x277CBED28];
  [v6 setObject:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CBF1B0]];
  [v6 setObject:v25 forKey:*MEMORY[0x277D67340]];
  if (_TRLogEnabled == 1)
  {
    v26 = TRLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&dword_26F2A2000, v26, OS_LOG_TYPE_DEFAULT, "Showing user notification: %@", buf, 0xCu);
    }
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __81__TRUserNotificationManager_requestLegacyAuthenticationWithAccountID_completion___block_invoke;
  v31[3] = &unk_279DCF728;
  v32 = v29;
  v27 = v29;
  [(TRUserNotificationManager *)self _showUserNotificationWithDictionary:v6 options:0x20000 completion:v31];

  v28 = *MEMORY[0x277D85DE8];
}

void __81__TRUserNotificationManager_requestLegacyAuthenticationWithAccountID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 textFieldValueAtIndex:0];
  v4 = [v3 textFieldValueAtIndex:1];
  v5 = *(a1 + 32);
  v6 = [v3 didAccept];

  (*(v5 + 16))(v5, v6, v7, v4);
}

- (void)presentLegacyAuthenticationFailedDialogWithMessage:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"AUTH_FAILED_TITLE" value:&stru_287F58968 table:@"TouchRemote"];
  [v8 setObject:v10 forKey:*MEMORY[0x277CBF188]];

  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v12 localizedStringForKey:@"AUTH_FAILED_DEFAULT_MESSAGE" value:&stru_287F58968 table:@"TouchRemote"];
  }

  [v8 setObject:v11 forKey:*MEMORY[0x277CBF198]];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_287F58968 table:@"TouchRemote"];
  [v8 setObject:v14 forKey:*MEMORY[0x277CBF1C0]];

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"AUTH_FAILED_RETRY_BUTTON" value:&stru_287F58968 table:@"TouchRemote"];
  [v8 setObject:v16 forKey:*MEMORY[0x277CBF1E8]];

  [v8 setObject:&unk_287F629D8 forKey:*MEMORY[0x277D67300]];
  v17 = *MEMORY[0x277CBED28];
  [v8 setObject:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CBF1B0]];
  [v8 setObject:v17 forKey:*MEMORY[0x277D67340]];
  if (_TRLogEnabled == 1)
  {
    v18 = TRLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_26F2A2000, v18, OS_LOG_TYPE_DEFAULT, "[TRUserNotificationManager] Showing user notification: %@", buf, 0xCu);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__TRUserNotificationManager_presentLegacyAuthenticationFailedDialogWithMessage_completion___block_invoke;
  v21[3] = &unk_279DCF728;
  v22 = v7;
  v19 = v7;
  [(TRUserNotificationManager *)self _showUserNotificationWithDictionary:v8 options:0 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __91__TRUserNotificationManager_presentLegacyAuthenticationFailedDialogWithMessage_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 didAccept];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

@end