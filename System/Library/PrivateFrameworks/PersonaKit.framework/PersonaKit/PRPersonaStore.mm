@interface PRPersonaStore
- (BOOL)hasVendedData;
- (PRPersonaStore)initWithServiceListenerEndpoint:(id)a3;
- (id)likenessDataForPropagationToRecipient:(id)a3 lastContactDate:(id)a4;
- (void)_setHasVendedData:(BOOL)a3;
- (void)_startListeningForCacheChangeNotifications;
- (void)_stopListeningForCacheChangeNotifications;
- (void)allLikenessesForPrimaryiCloudAccountWithCompletion:(id)a3;
- (void)changeCurrentSelfLikenessToLikenessWithUniqueID:(id)a3 completion:(id)a4;
- (void)currentLikenessForPrimaryiCloudAccountWithDesiredFreshness:(unint64_t)a3 completion:(id)a4;
- (void)dealloc;
- (void)donateLikeness:(id)a3 forEmailAddress:(id)a4 completion:(id)a5;
- (void)donateLikeness:(id)a3 forPhoneNumber:(id)a4 completion:(id)a5;
- (void)handleAppleIDEvent:(unint64_t)a3 account:(id)a4 completion:(id)a5;
- (void)likenessForEmailAddress:(id)a3 desiredFreshness:(unint64_t)a4 completion:(id)a5;
- (void)likenessForPhoneNumber:(id)a3 desiredFreshness:(unint64_t)a4 completion:(id)a5;
- (void)likenessesWithExternalIdentifier:(id)a3 completion:(id)a4;
- (void)removeAllLikenessForPrimaryiCloudAccountWithCompletion:(id)a3;
- (void)removeLikeness:(id)a3 forPrimayiCloudAccountWithCompletion:(id)a4;
- (void)saveLikeness:(id)a3 forPrimayiCloudAccountWithCompletion:(id)a4;
- (void)screenNameForAppleIDWithAltDSID:(id)a3 completion:(id)a4;
- (void)screenNameForEmailAddress:(id)a3 completion:(id)a4;
- (void)screenNameForPhoneNumber:(id)a3 completion:(id)a4;
- (void)screenNameForPrimaryiCloudAccountWithCompletion:(id)a3;
- (void)setScreenName:(id)a3 forAppleIDWithAltDSID:(id)a4 completion:(id)a5;
- (void)setScreenName:(id)a3 forPrimaryiCloudAccountWithCompletion:(id)a4;
@end

@implementation PRPersonaStore

- (PRPersonaStore)initWithServiceListenerEndpoint:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PRPersonaStore;
  v6 = [(PRPersonaStore *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.personakit.xpc.reply", MEMORY[0x277D85CD8]);
    replyHandlingQueue = v6->_replyHandlingQueue;
    v6->_replyHandlingQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connectionLock = v6->_connectionLock;
    v6->_connectionLock = v9;

    [(NSLock *)v6->_connectionLock setName:@"PRPersonaStoreXPCLock"];
    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    dataVendingFlagLock = v6->_dataVendingFlagLock;
    v6->_dataVendingFlagLock = v11;

    [(NSLock *)v6->_dataVendingFlagLock setName:@"PRPersonaStoreDataVendFlagLock"];
    objc_storeStrong(&v6->_serviceListenerEndpoint, a3);
    [(PRPersonaStore *)v6 _startListeningForCacheChangeNotifications];
  }

  return v6;
}

- (void)dealloc
{
  [(NSLock *)self->_connectionLock lock];
  personaServiceConnection = self->_personaServiceConnection;
  if (personaServiceConnection)
  {
    [(NSXPCConnection *)personaServiceConnection invalidate];
    v4 = self->_personaServiceConnection;
    self->_personaServiceConnection = 0;
  }

  [(NSLock *)self->_connectionLock unlock];
  [(PRPersonaStore *)self _stopListeningForCacheChangeNotifications];
  v5.receiver = self;
  v5.super_class = PRPersonaStore;
  [(PRPersonaStore *)&v5 dealloc];
}

- (BOOL)hasVendedData
{
  [(NSLock *)self->_dataVendingFlagLock lock];
  hasVendedData = self->_hasVendedData;
  [(NSLock *)self->_dataVendingFlagLock unlock];
  return hasVendedData;
}

- (void)_setHasVendedData:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = _PRGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PRPersonaStore _setHasVendedData:]";
    v9 = 1024;
    v10 = 104;
    _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v7, 0x12u);
  }

  [(NSLock *)self->_dataVendingFlagLock lock];
  self->_hasVendedData = a3;
  [(NSLock *)self->_dataVendingFlagLock unlock];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)currentLikenessForPrimaryiCloudAccountWithDesiredFreshness:(unint64_t)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _PRGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[PRPersonaStore currentLikenessForPrimaryiCloudAccountWithDesiredFreshness:completion:]";
    v14 = 1024;
    v15 = 119;
    _os_log_impl(&dword_25E428000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up current likeness for primary iCloud account...", buf, 0x12u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__PRPersonaStore_currentLikenessForPrimaryiCloudAccountWithDesiredFreshness_completion___block_invoke;
  v10[3] = &unk_279A1B748;
  v10[4] = self;
  v11 = v5;
  v7 = v5;
  v8 = MEMORY[0x25F8B2920](v10);
  v8[2](v8, 0, 0);

  v9 = *MEMORY[0x277D85DE8];
}

void __88__PRPersonaStore_currentLikenessForPrimaryiCloudAccountWithDesiredFreshness_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v18 = "[PRPersonaStore currentLikenessForPrimaryiCloudAccountWithDesiredFreshness:completion:]_block_invoke";
    v19 = 1024;
    v20 = 123;
    v21 = 2112;
    v22 = v6;
    v9 = "%s (%d) Likeness lookup for primary iCloud account came back with an error: %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v18 = "[PRPersonaStore currentLikenessForPrimaryiCloudAccountWithDesiredFreshness:completion:]_block_invoke";
    v19 = 1024;
    v20 = 125;
    v21 = 2112;
    v22 = v5;
    v9 = "%s (%d) Likeness lookup for primary iCloud account succeeded: %@";
  }

  _os_log_impl(&dword_25E428000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0x1Cu);
LABEL_7:

  [*(a1 + 32) _setHasVendedData:1];
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__PRPersonaStore_currentLikenessForPrimaryiCloudAccountWithDesiredFreshness_completion___block_invoke_13;
    block[3] = &unk_279A1B720;
    v16 = v10;
    v14 = v5;
    v15 = v6;
    dispatch_async(v11, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)allLikenessesForPrimaryiCloudAccountWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _PRGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[PRPersonaStore allLikenessesForPrimaryiCloudAccountWithCompletion:]";
    v13 = 1024;
    v14 = 151;
    _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up all likenesses for primary iCloud account...", buf, 0x12u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__PRPersonaStore_allLikenessesForPrimaryiCloudAccountWithCompletion___block_invoke;
  v9[3] = &unk_279A1B770;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = MEMORY[0x25F8B2920](v9);
  v7[2](v7, 0, 0);

  v8 = *MEMORY[0x277D85DE8];
}

void __69__PRPersonaStore_allLikenessesForPrimaryiCloudAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v18 = "[PRPersonaStore allLikenessesForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v19 = 1024;
    v20 = 155;
    v21 = 2112;
    v22 = v6;
    v9 = "%s (%d) Likenesses lookup for primary iCloud account came back with an error: %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v18 = "[PRPersonaStore allLikenessesForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v19 = 1024;
    v20 = 157;
    v21 = 2112;
    v22 = v5;
    v9 = "%s (%d) Likenesses lookup for primary iCloud account succeeded: %@";
  }

  _os_log_impl(&dword_25E428000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0x1Cu);
LABEL_7:

  [*(a1 + 32) _setHasVendedData:1];
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__PRPersonaStore_allLikenessesForPrimaryiCloudAccountWithCompletion___block_invoke_16;
    block[3] = &unk_279A1B720;
    v16 = v10;
    v14 = v5;
    v15 = v6;
    dispatch_async(v11, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)likenessForPhoneNumber:(id)a3 desiredFreshness:(unint64_t)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = _PRGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[PRPersonaStore likenessForPhoneNumber:desiredFreshness:completion:]";
    v20 = 1024;
    v21 = 189;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up likeness for phone number %@...", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__PRPersonaStore_likenessForPhoneNumber_desiredFreshness_completion___block_invoke;
  v14[3] = &unk_279A1B798;
  v15 = v7;
  v16 = self;
  v17 = v8;
  v10 = v8;
  v11 = v7;
  v12 = MEMORY[0x25F8B2920](v14);
  v12[2](v12, 0, 0);

  v13 = *MEMORY[0x277D85DE8];
}

void __69__PRPersonaStore_likenessForPhoneNumber_desiredFreshness_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    *buf = 136315906;
    v20 = "[PRPersonaStore likenessForPhoneNumber:desiredFreshness:completion:]_block_invoke";
    v21 = 1024;
    v22 = 193;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v6;
    v10 = "%s (%d) Likeness lookup for phone number %@ came back with an error: %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 32);
    *buf = 136315906;
    v20 = "[PRPersonaStore likenessForPhoneNumber:desiredFreshness:completion:]_block_invoke";
    v21 = 1024;
    v22 = 195;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v5;
    v10 = "%s (%d) Likeness lookup for phone number %@ succeeded: %@";
  }

  _os_log_impl(&dword_25E428000, v7, OS_LOG_TYPE_DEFAULT, v10, buf, 0x26u);
LABEL_7:

  [*(a1 + 40) _setHasVendedData:1];
  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(*(a1 + 40) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__PRPersonaStore_likenessForPhoneNumber_desiredFreshness_completion___block_invoke_18;
    block[3] = &unk_279A1B720;
    v18 = v12;
    v16 = v5;
    v17 = v6;
    dispatch_async(v13, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)likenessForEmailAddress:(id)a3 desiredFreshness:(unint64_t)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = _PRGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[PRPersonaStore likenessForEmailAddress:desiredFreshness:completion:]";
    v20 = 1024;
    v21 = 227;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up likeness for email %@...", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__PRPersonaStore_likenessForEmailAddress_desiredFreshness_completion___block_invoke;
  v14[3] = &unk_279A1B798;
  v15 = v7;
  v16 = self;
  v17 = v8;
  v10 = v8;
  v11 = v7;
  v12 = MEMORY[0x25F8B2920](v14);
  v12[2](v12, 0, 0);

  v13 = *MEMORY[0x277D85DE8];
}

void __70__PRPersonaStore_likenessForEmailAddress_desiredFreshness_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    *buf = 136315906;
    v20 = "[PRPersonaStore likenessForEmailAddress:desiredFreshness:completion:]_block_invoke";
    v21 = 1024;
    v22 = 231;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v6;
    v10 = "%s (%d) Likeness lookup for emailAddress %@ came back with an error: %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 32);
    *buf = 136315906;
    v20 = "[PRPersonaStore likenessForEmailAddress:desiredFreshness:completion:]_block_invoke";
    v21 = 1024;
    v22 = 233;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v5;
    v10 = "%s (%d) Likeness lookup for emailAddress %@ succeeded: %@";
  }

  _os_log_impl(&dword_25E428000, v7, OS_LOG_TYPE_DEFAULT, v10, buf, 0x26u);
LABEL_7:

  [*(a1 + 40) _setHasVendedData:1];
  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(*(a1 + 40) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__PRPersonaStore_likenessForEmailAddress_desiredFreshness_completion___block_invoke_19;
    block[3] = &unk_279A1B720;
    v18 = v12;
    v16 = v5;
    v17 = v6;
    dispatch_async(v13, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)saveLikeness:(id)a3 forPrimayiCloudAccountWithCompletion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _PRGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[PRPersonaStore saveLikeness:forPrimayiCloudAccountWithCompletion:]";
    v14 = 1024;
    v15 = 265;
    _os_log_impl(&dword_25E428000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) Saving likeness for primary iCloud account...", buf, 0x12u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__PRPersonaStore_saveLikeness_forPrimayiCloudAccountWithCompletion___block_invoke;
  v10[3] = &unk_279A1B7E8;
  v10[4] = self;
  v11 = v5;
  v7 = v5;
  v8 = MEMORY[0x25F8B2920](v10);
  v8[2](v8, 1, 0);

  v9 = *MEMORY[0x277D85DE8];
}

void __68__PRPersonaStore_saveLikeness_forPrimayiCloudAccountWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v19 = "[PRPersonaStore saveLikeness:forPrimayiCloudAccountWithCompletion:]_block_invoke";
    v20 = 1024;
    v21 = 269;
    v22 = 2112;
    v23 = v5;
    v8 = "%s (%d) Likeness write came back with an error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v19 = "[PRPersonaStore saveLikeness:forPrimayiCloudAccountWithCompletion:]_block_invoke";
    v20 = 1024;
    v21 = 271;
    v8 = "%s (%d) Likeness write succeeded.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__PRPersonaStore_saveLikeness_forPrimayiCloudAccountWithCompletion___block_invoke_20;
    block[3] = &unk_279A1B7C0;
    v16 = v11;
    v17 = a2;
    v15 = v5;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)changeCurrentSelfLikenessToLikenessWithUniqueID:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _PRGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[PRPersonaStore changeCurrentSelfLikenessToLikenessWithUniqueID:completion:]";
    v16 = 1024;
    v17 = 295;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Changing current self likeness to the one with ID: %@...", buf, 0x1Cu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__PRPersonaStore_changeCurrentSelfLikenessToLikenessWithUniqueID_completion___block_invoke;
  v12[3] = &unk_279A1B7E8;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = MEMORY[0x25F8B2920](v12);
  v10[2](v10, 1, 0);

  v11 = *MEMORY[0x277D85DE8];
}

void __77__PRPersonaStore_changeCurrentSelfLikenessToLikenessWithUniqueID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v19 = "[PRPersonaStore changeCurrentSelfLikenessToLikenessWithUniqueID:completion:]_block_invoke";
    v20 = 1024;
    v21 = 299;
    v22 = 2112;
    v23 = v5;
    v8 = "%s (%d) Error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v19 = "[PRPersonaStore changeCurrentSelfLikenessToLikenessWithUniqueID:completion:]_block_invoke";
    v20 = 1024;
    v21 = 301;
    v8 = "%s (%d) Success.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PRPersonaStore_changeCurrentSelfLikenessToLikenessWithUniqueID_completion___block_invoke_22;
    block[3] = &unk_279A1B7C0;
    v16 = v11;
    v17 = a2;
    v15 = v5;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeLikeness:(id)a3 forPrimayiCloudAccountWithCompletion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _PRGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[PRPersonaStore removeLikeness:forPrimayiCloudAccountWithCompletion:]";
    v16 = 1024;
    v17 = 325;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Removing likeness self likeness %@...", buf, 0x1Cu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__PRPersonaStore_removeLikeness_forPrimayiCloudAccountWithCompletion___block_invoke;
  v12[3] = &unk_279A1B7E8;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = MEMORY[0x25F8B2920](v12);
  v10[2](v10, 1, 0);

  v11 = *MEMORY[0x277D85DE8];
}

void __70__PRPersonaStore_removeLikeness_forPrimayiCloudAccountWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v19 = "[PRPersonaStore removeLikeness:forPrimayiCloudAccountWithCompletion:]_block_invoke";
    v20 = 1024;
    v21 = 329;
    v22 = 2112;
    v23 = v5;
    v8 = "%s (%d) Likeness removal came back with an error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v19 = "[PRPersonaStore removeLikeness:forPrimayiCloudAccountWithCompletion:]_block_invoke";
    v20 = 1024;
    v21 = 331;
    v8 = "%s (%d) Likeness removal succeeded.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__PRPersonaStore_removeLikeness_forPrimayiCloudAccountWithCompletion___block_invoke_23;
    block[3] = &unk_279A1B7C0;
    v16 = v11;
    v17 = a2;
    v15 = v5;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeAllLikenessForPrimaryiCloudAccountWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _PRGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[PRPersonaStore removeAllLikenessForPrimaryiCloudAccountWithCompletion:]";
    v13 = 1024;
    v14 = 355;
    _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) Removing all likenesses for primary iCloud account...", buf, 0x12u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__PRPersonaStore_removeAllLikenessForPrimaryiCloudAccountWithCompletion___block_invoke;
  v9[3] = &unk_279A1B7E8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = MEMORY[0x25F8B2920](v9);
  v7[2](v7, 1, 0);

  v8 = *MEMORY[0x277D85DE8];
}

void __73__PRPersonaStore_removeAllLikenessForPrimaryiCloudAccountWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v19 = "[PRPersonaStore removeAllLikenessForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v20 = 1024;
    v21 = 359;
    v22 = 2112;
    v23 = v5;
    v8 = "%s (%d) Removing likenesses came back with an error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v19 = "[PRPersonaStore removeAllLikenessForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v20 = 1024;
    v21 = 361;
    v8 = "%s (%d) Removing likenesses succeeded.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PRPersonaStore_removeAllLikenessForPrimaryiCloudAccountWithCompletion___block_invoke_24;
    block[3] = &unk_279A1B7C0;
    v16 = v11;
    v17 = a2;
    v15 = v5;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)likenessDataForPropagationToRecipient:(id)a3 lastContactDate:(id)a4
{
  [(PRPersonaStore *)self _setHasVendedData:1, a4];

  return [0 dataForPropagation];
}

- (void)handleAppleIDEvent:(unint64_t)a3 account:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = _PRGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    *buf = 136315906;
    v18 = "[PRPersonaStore handleAppleIDEvent:account:completion:]";
    v19 = 1024;
    v20 = 523;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, "%s (%d) Handling event %@ for account: %@", buf, 0x26u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__PRPersonaStore_handleAppleIDEvent_account_completion___block_invoke;
  v15[3] = &unk_279A1B7E8;
  v15[4] = self;
  v16 = v9;
  v12 = v9;
  v13 = MEMORY[0x25F8B2920](v15);
  v13[2](v13, 1, 0);

  v14 = *MEMORY[0x277D85DE8];
}

void __56__PRPersonaStore_handleAppleIDEvent_account_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v19 = "[PRPersonaStore handleAppleIDEvent:account:completion:]_block_invoke";
    v20 = 1024;
    v21 = 527;
    v22 = 2112;
    v23 = v5;
    v8 = "%s (%d) Error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v19 = "[PRPersonaStore handleAppleIDEvent:account:completion:]_block_invoke";
    v20 = 1024;
    v21 = 529;
    v8 = "%s (%d) Success.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PRPersonaStore_handleAppleIDEvent_account_completion___block_invoke_26;
    block[3] = &unk_279A1B7C0;
    v16 = v11;
    v17 = a2;
    v15 = v5;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)donateLikeness:(id)a3 forEmailAddress:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = _PRGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[PRPersonaStore donateLikeness:forEmailAddress:completion:]";
    v20 = 1024;
    v21 = 553;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Donation for email %@...", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__PRPersonaStore_donateLikeness_forEmailAddress_completion___block_invoke;
  v14[3] = &unk_279A1B810;
  v16 = self;
  v17 = v8;
  v15 = v7;
  v10 = v8;
  v11 = v7;
  v12 = MEMORY[0x25F8B2920](v14);
  v12[2](v12, 1, 0);

  v13 = *MEMORY[0x277D85DE8];
}

void __60__PRPersonaStore_donateLikeness_forEmailAddress_completion___block_invoke(void *a1, char a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = a1[4];
    *buf = 136315906;
    v21 = "[PRPersonaStore donateLikeness:forEmailAddress:completion:]_block_invoke";
    v22 = 1024;
    v23 = 557;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v5;
    v9 = "%s (%d) Donation failed for email %@. Error: %@";
    v10 = v6;
    v11 = 38;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v12 = a1[4];
    *buf = 136315650;
    v21 = "[PRPersonaStore donateLikeness:forEmailAddress:completion:]_block_invoke";
    v22 = 1024;
    v23 = 559;
    v24 = 2112;
    v25 = v12;
    v9 = "%s (%d) Donation succeeded for email %@.";
    v10 = v6;
    v11 = 28;
  }

  _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:

  v13 = a1[6];
  if (v13)
  {
    v14 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PRPersonaStore_donateLikeness_forEmailAddress_completion___block_invoke_27;
    block[3] = &unk_279A1B7C0;
    v18 = v13;
    v19 = a2;
    v17 = v5;
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)donateLikeness:(id)a3 forPhoneNumber:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = _PRGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[PRPersonaStore donateLikeness:forPhoneNumber:completion:]";
    v20 = 1024;
    v21 = 583;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Donation for phone number %@...", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__PRPersonaStore_donateLikeness_forPhoneNumber_completion___block_invoke;
  v14[3] = &unk_279A1B810;
  v16 = self;
  v17 = v8;
  v15 = v7;
  v10 = v8;
  v11 = v7;
  v12 = MEMORY[0x25F8B2920](v14);
  v12[2](v12, 1, 0);

  v13 = *MEMORY[0x277D85DE8];
}

void __59__PRPersonaStore_donateLikeness_forPhoneNumber_completion___block_invoke(void *a1, char a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = a1[4];
    *buf = 136315906;
    v21 = "[PRPersonaStore donateLikeness:forPhoneNumber:completion:]_block_invoke";
    v22 = 1024;
    v23 = 587;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v5;
    v9 = "%s (%d) Donation failed for phone number %@. Error: %@";
    v10 = v6;
    v11 = 38;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v12 = a1[4];
    *buf = 136315650;
    v21 = "[PRPersonaStore donateLikeness:forPhoneNumber:completion:]_block_invoke";
    v22 = 1024;
    v23 = 589;
    v24 = 2112;
    v25 = v12;
    v9 = "%s (%d) Donation succeeded for phone number %@.";
    v10 = v6;
    v11 = 28;
  }

  _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:

  v13 = a1[6];
  if (v13)
  {
    v14 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PRPersonaStore_donateLikeness_forPhoneNumber_completion___block_invoke_28;
    block[3] = &unk_279A1B7C0;
    v18 = v13;
    v19 = a2;
    v17 = v5;
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)likenessesWithExternalIdentifier:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _PRGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[PRPersonaStore likenessesWithExternalIdentifier:completion:]";
    v19 = 1024;
    v20 = 613;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up for external ID: %@", buf, 0x1Cu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__PRPersonaStore_likenessesWithExternalIdentifier_completion___block_invoke;
  v13[3] = &unk_279A1B838;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = MEMORY[0x25F8B2920](v13);
  v11[2](v11, 0, 0);

  v12 = *MEMORY[0x277D85DE8];
}

void __62__PRPersonaStore_likenessesWithExternalIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    *buf = 136315906;
    v22 = "[PRPersonaStore likenessesWithExternalIdentifier:completion:]_block_invoke";
    v23 = 1024;
    v24 = 617;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v6;
    v10 = "%s (%d) Lookup for external ID %@ failed. Error: %@";
    v11 = v7;
    v12 = 38;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    *buf = 136315650;
    v22 = "[PRPersonaStore likenessesWithExternalIdentifier:completion:]_block_invoke";
    v23 = 1024;
    v24 = 619;
    v25 = 2112;
    v26 = v13;
    v10 = "%s (%d) Lookup for external ID %@ succeeded.";
    v11 = v7;
    v12 = 28;
  }

  _os_log_impl(&dword_25E428000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  [*(a1 + 40) _setHasVendedData:1];
  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = *(*(a1 + 40) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__PRPersonaStore_likenessesWithExternalIdentifier_completion___block_invoke_29;
    block[3] = &unk_279A1B720;
    v20 = v14;
    v18 = v5;
    v19 = v6;
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)screenNameForEmailAddress:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _PRGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[PRPersonaStore screenNameForEmailAddress:completion:]";
    v20 = 1024;
    v21 = 667;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up with email: %@", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__PRPersonaStore_screenNameForEmailAddress_completion___block_invoke;
  v14[3] = &unk_279A1B860;
  v16 = self;
  v17 = v7;
  v15 = v6;
  v9 = v7;
  v10 = v6;
  v11 = MEMORY[0x25F8B2920](v14);
  v12 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9019];
  (v11)[2](v11, 0, v12);

  v13 = *MEMORY[0x277D85DE8];
}

void __55__PRPersonaStore_screenNameForEmailAddress_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = a1[4];
    *buf = 136315906;
    v22 = "[PRPersonaStore screenNameForEmailAddress:completion:]_block_invoke";
    v23 = 1024;
    v24 = 671;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v6;
    v10 = "%s (%d) Lookup for %@ failed. Error: %@";
    v11 = v7;
    v12 = 38;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = a1[4];
    *buf = 136315650;
    v22 = "[PRPersonaStore screenNameForEmailAddress:completion:]_block_invoke";
    v23 = 1024;
    v24 = 673;
    v25 = 2112;
    v26 = v13;
    v10 = "%s (%d) Lookup for %@ succeeded.";
    v11 = v7;
    v12 = 28;
  }

  _os_log_impl(&dword_25E428000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  v14 = a1[6];
  if (v14)
  {
    v15 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PRPersonaStore_screenNameForEmailAddress_completion___block_invoke_30;
    block[3] = &unk_279A1B720;
    v20 = v14;
    v18 = v5;
    v19 = v6;
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)screenNameForPhoneNumber:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _PRGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[PRPersonaStore screenNameForPhoneNumber:completion:]";
    v20 = 1024;
    v21 = 698;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up with phone number: %@", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__PRPersonaStore_screenNameForPhoneNumber_completion___block_invoke;
  v14[3] = &unk_279A1B860;
  v16 = self;
  v17 = v7;
  v15 = v6;
  v9 = v7;
  v10 = v6;
  v11 = MEMORY[0x25F8B2920](v14);
  v12 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9019];
  (v11)[2](v11, 0, v12);

  v13 = *MEMORY[0x277D85DE8];
}

void __54__PRPersonaStore_screenNameForPhoneNumber_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = a1[4];
    *buf = 136315906;
    v22 = "[PRPersonaStore screenNameForPhoneNumber:completion:]_block_invoke";
    v23 = 1024;
    v24 = 702;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v6;
    v10 = "%s (%d) Lookup for %@ failed. Error: %@";
    v11 = v7;
    v12 = 38;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = a1[4];
    *buf = 136315650;
    v22 = "[PRPersonaStore screenNameForPhoneNumber:completion:]_block_invoke";
    v23 = 1024;
    v24 = 704;
    v25 = 2112;
    v26 = v13;
    v10 = "%s (%d) Lookup for %@ succeeded.";
    v11 = v7;
    v12 = 28;
  }

  _os_log_impl(&dword_25E428000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  v14 = a1[6];
  if (v14)
  {
    v15 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__PRPersonaStore_screenNameForPhoneNumber_completion___block_invoke_33;
    block[3] = &unk_279A1B720;
    v20 = v14;
    v18 = v5;
    v19 = v6;
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)screenNameForPrimaryiCloudAccountWithCompletion:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _PRGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[PRPersonaStore screenNameForPrimaryiCloudAccountWithCompletion:]";
    v18 = 1024;
    v19 = 729;
    _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __66__PRPersonaStore_screenNameForPrimaryiCloudAccountWithCompletion___block_invoke;
  v13 = &unk_279A1B888;
  v14 = self;
  v15 = v4;
  v6 = v4;
  v7 = MEMORY[0x25F8B2920](&v10);
  v8 = [MEMORY[0x277CCA9B8] pr_errorWithCode:{-9019, v10, v11, v12, v13, v14}];
  (v7)[2](v7, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void __66__PRPersonaStore_screenNameForPrimaryiCloudAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v20 = "[PRPersonaStore screenNameForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v21 = 1024;
    v22 = 733;
    v23 = 2112;
    v24 = v6;
    v9 = "%s (%d) Lookup failed. Error: %@";
    v10 = v7;
    v11 = 28;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v20 = "[PRPersonaStore screenNameForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v21 = 1024;
    v22 = 735;
    v9 = "%s (%d) Lookup succeeded.";
    v10 = v7;
    v11 = 18;
  }

  _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__PRPersonaStore_screenNameForPrimaryiCloudAccountWithCompletion___block_invoke_34;
    block[3] = &unk_279A1B720;
    v18 = v12;
    v16 = v5;
    v17 = v6;
    dispatch_async(v13, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)screenNameForAppleIDWithAltDSID:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _PRGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[PRPersonaStore screenNameForAppleIDWithAltDSID:completion:]";
    v20 = 1024;
    v21 = 760;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up with altDSID: %@", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__PRPersonaStore_screenNameForAppleIDWithAltDSID_completion___block_invoke;
  v14[3] = &unk_279A1B860;
  v16 = self;
  v17 = v7;
  v15 = v6;
  v9 = v7;
  v10 = v6;
  v11 = MEMORY[0x25F8B2920](v14);
  v12 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9019];
  (v11)[2](v11, 0, v12);

  v13 = *MEMORY[0x277D85DE8];
}

void __61__PRPersonaStore_screenNameForAppleIDWithAltDSID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = a1[4];
    *buf = 136315906;
    v22 = "[PRPersonaStore screenNameForAppleIDWithAltDSID:completion:]_block_invoke";
    v23 = 1024;
    v24 = 764;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v6;
    v10 = "%s (%d) Lookup for %@ failed. Error: %@";
    v11 = v7;
    v12 = 38;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = a1[4];
    *buf = 136315650;
    v22 = "[PRPersonaStore screenNameForAppleIDWithAltDSID:completion:]_block_invoke";
    v23 = 1024;
    v24 = 766;
    v25 = 2112;
    v26 = v13;
    v10 = "%s (%d) Lookup for %@ succeeded.";
    v11 = v7;
    v12 = 28;
  }

  _os_log_impl(&dword_25E428000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  v14 = a1[6];
  if (v14)
  {
    v15 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PRPersonaStore_screenNameForAppleIDWithAltDSID_completion___block_invoke_35;
    block[3] = &unk_279A1B720;
    v20 = v14;
    v18 = v5;
    v19 = v6;
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setScreenName:(id)a3 forPrimaryiCloudAccountWithCompletion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _PRGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[PRPersonaStore setScreenName:forPrimaryiCloudAccountWithCompletion:]";
    v19 = 1024;
    v20 = 791;
    _os_log_impl(&dword_25E428000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __70__PRPersonaStore_setScreenName_forPrimaryiCloudAccountWithCompletion___block_invoke;
  v14 = &unk_279A1B7E8;
  v15 = self;
  v16 = v5;
  v7 = v5;
  v8 = MEMORY[0x25F8B2920](&v11);
  v9 = [MEMORY[0x277CCA9B8] pr_errorWithCode:{-9019, v11, v12, v13, v14, v15}];
  (v8)[2](v8, 0, v9);

  v10 = *MEMORY[0x277D85DE8];
}

void __70__PRPersonaStore_setScreenName_forPrimaryiCloudAccountWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v19 = "[PRPersonaStore setScreenName:forPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v20 = 1024;
    v21 = 795;
    v22 = 2112;
    v23 = v5;
    v8 = "%s (%d) Update failed. Error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v19 = "[PRPersonaStore setScreenName:forPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v20 = 1024;
    v21 = 797;
    v8 = "%s (%d) Update succeeded.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__PRPersonaStore_setScreenName_forPrimaryiCloudAccountWithCompletion___block_invoke_36;
    block[3] = &unk_279A1B7C0;
    v16 = v11;
    v17 = a2;
    v15 = v5;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setScreenName:(id)a3 forAppleIDWithAltDSID:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = _PRGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[PRPersonaStore setScreenName:forAppleIDWithAltDSID:completion:]";
    v21 = 1024;
    v22 = 823;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Setting for altDSID: %@", buf, 0x1Cu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__PRPersonaStore_setScreenName_forAppleIDWithAltDSID_completion___block_invoke;
  v15[3] = &unk_279A1B810;
  v17 = self;
  v18 = v8;
  v16 = v7;
  v10 = v8;
  v11 = v7;
  v12 = MEMORY[0x25F8B2920](v15);
  v13 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9019];
  (v12)[2](v12, 0, v13);

  v14 = *MEMORY[0x277D85DE8];
}

void __65__PRPersonaStore_setScreenName_forAppleIDWithAltDSID_completion___block_invoke(void *a1, char a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = a1[4];
    *buf = 136315906;
    v21 = "[PRPersonaStore setScreenName:forAppleIDWithAltDSID:completion:]_block_invoke";
    v22 = 1024;
    v23 = 827;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v5;
    v9 = "%s (%d) Setting for %@ failed. Error: %@";
    v10 = v6;
    v11 = 38;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v12 = a1[4];
    *buf = 136315650;
    v21 = "[PRPersonaStore setScreenName:forAppleIDWithAltDSID:completion:]_block_invoke";
    v22 = 1024;
    v23 = 829;
    v24 = 2112;
    v25 = v12;
    v9 = "%s (%d) Setting for %@ succeeded.";
    v10 = v6;
    v11 = 28;
  }

  _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:

  v13 = a1[6];
  if (v13)
  {
    v14 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__PRPersonaStore_setScreenName_forAppleIDWithAltDSID_completion___block_invoke_37;
    block[3] = &unk_279A1B7C0;
    v18 = v13;
    v19 = a2;
    v17 = v5;
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_startListeningForCacheChangeNotifications
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _PRGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PRPersonaStore _startListeningForCacheChangeNotifications]";
    v9 = 1024;
    v10 = 854;
    _os_log_impl(&dword_25E428000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v7, 0x12u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _PRHandleSelfCacheDidChange, @"PRCachedSelfValuesDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, self, _PRHandleOtherCacheDidChange, @"PRCachedOtherValuesDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_stopListeningForCacheChangeNotifications
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _PRGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PRPersonaStore _stopListeningForCacheChangeNotifications]";
    v9 = 1024;
    v10 = 862;
    _os_log_impl(&dword_25E428000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v7, 0x12u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"PRCachedSelfValuesDidChangeNotification", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, @"PRCachedOtherValuesDidChangeNotification", 0);
  v6 = *MEMORY[0x277D85DE8];
}

@end