@interface TUIStaticIdentityManager
- (NSString)sasCodeString;
- (TUIStaticIdentityManager)initWithConversationMembers:(id)members options:(id)options;
- (TUIStaticIdentityManagerProtocol)delegate;
- (id)localizedPeerAccountNameMessage:(id)message;
- (id)peerCNContact:(id)contact;
- (int64_t)_sessionStateWithStateString:(id)string;
- (void)_setupKTSession;
- (void)_updateUI;
- (void)dealloc;
- (void)deleteKTSession;
- (void)handleNotification:(id)notification;
- (void)hideAccountKeys:(BOOL)keys;
- (void)postNotificationName:(id)name object:(id)object userInfo:(id)info deliverImmediately:(BOOL)immediately;
- (void)requestConversationVerificationState:(BOOL)state completionHandler:(id)handler;
- (void)requestNewSasCode;
- (void)requestNewSasCodeWithDelay;
- (void)requestSelfAccountKey;
- (void)sessionExpired:(id)expired;
- (void)showAccountKeys:(BOOL)keys;
- (void)verifyConversation;
- (void)verifyConversationWithContact:(id)contact completionHandler:(id)handler;
@end

@implementation TUIStaticIdentityManager

- (TUIStaticIdentityManager)initWithConversationMembers:(id)members options:(id)options
{
  membersCopy = members;
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = TUIStaticIdentityManager;
  v9 = [(TUIStaticIdentityManager *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conversationMembers, members);
    objc_storeStrong(&v10->_options, options);
    v11 = [optionsCopy objectForKeyedSubscript:@"contactIdentifier"];
    contactIdentifier = v10->_contactIdentifier;
    v10->_contactIdentifier = v11;

    v13 = [optionsCopy objectForKeyedSubscript:@"lastUsedIdentifier"];
    lastUsedAddress = v10->_lastUsedAddress;
    v10->_lastUsedAddress = v13;

    if (!v10->_contactIdentifier)
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
      {
        [TUIStaticIdentityManager initWithConversationMembers:options:];
      }

      v15 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_26F50B000, v15, OS_LOG_TYPE_ERROR, "Didn't get contact identifier, so result can't be saved", v17, 2u);
      }
    }
  }

  return v10;
}

uint64_t __64__TUIStaticIdentityManager_initWithConversationMembers_options___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D73608] object:0];

  [(TUIStaticIdentityManager *)self deleteKTSession];
  v4.receiver = self;
  v4.super_class = TUIStaticIdentityManager;
  [(TUIStaticIdentityManager *)&v4 dealloc];
}

- (void)deleteKTSession
{
  v15 = *MEMORY[0x277D85DE8];
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
  {
    [TUIStaticIdentityManager deleteKTSession];
  }

  v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    ktSession = [(TUIStaticIdentityManager *)self ktSession];
    v13 = 138412290;
    v14 = ktSession;
    _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_DEBUG, "Deleting ktsession: %@", &v13, 0xCu);
  }

  staticKey = [(TUIStaticIdentityManager *)self staticKey];
  if (staticKey)
  {
    v7 = staticKey;
    ktSession2 = [(TUIStaticIdentityManager *)self ktSession];

    if (ktSession2)
    {
      staticKey2 = [(TUIStaticIdentityManager *)self staticKey];
      ktSession3 = [(TUIStaticIdentityManager *)self ktSession];
      sessionID = [ktSession3 sessionID];
      [staticKey2 deleteKTSession:sessionID complete:&__block_literal_global_14_0];

      [(TUIStaticIdentityManager *)self setKtSession:0];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __43__TUIStaticIdentityManager_deleteKTSession__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)requestSelfAccountKey
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_17(uint64_t a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_17_cold_1();
    }

    v2 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_DEBUG))
    {
      __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_17_cold_2(WeakRetained, v2);
    }

    v3 = [MEMORY[0x277D73538] accountPublicID:*MEMORY[0x277D735B0]];
    objc_initWeak(location, WeakRetained);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_24;
    block[3] = &unk_279DDABF0;
    objc_copyWeak(&v10, location);
    v8 = v3;
    v9 = 0;
    v4 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_17_cold_3();
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TUIStaticIdentityManager requestSelfAccountKey]_block_invoke";
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", location, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_20()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_24(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = [WeakRetained displayStringWithAccountPublicID:?];
      v5 = v3[4];
      v3[4] = v4;

      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
      {
        __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_24_cold_1();
      }

      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_DEBUG))
      {
        __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_24_cold_2(v3, v3 + 4);
      }
    }

    else
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
      {
        __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_24_cold_3();
      }

      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
      {
        __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_24_cold_4(v3, a1);
      }

      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"VERIFICATION_CODE_NOT_AVAILABLE" value:&stru_287F92480 table:@"Localizable"];
      v9 = v3[4];
      v3[4] = v8;
    }

    [v3 _updateUI];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_24_cold_5();
    }

    v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[TUIStaticIdentityManager requestSelfAccountKey]_block_invoke";
      _os_log_impl(&dword_26F50B000, v6, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_2_25()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_28()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_31()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)requestNewSasCodeWithDelay
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __54__TUIStaticIdentityManager_requestNewSasCodeWithDelay__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __54__TUIStaticIdentityManager_requestNewSasCodeWithDelay__block_invoke_46(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained requestNewSasCode];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      __54__TUIStaticIdentityManager_requestNewSasCodeWithDelay__block_invoke_46_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[TUIStaticIdentityManager requestNewSasCodeWithDelay]_block_invoke";
      _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __54__TUIStaticIdentityManager_requestNewSasCodeWithDelay__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)requestNewSasCode
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __45__TUIStaticIdentityManager_requestNewSasCode__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)requestConversationVerificationState:(BOOL)state completionHandler:(id)handler
{
  stateCopy = state;
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  self->_conversationVerified = 0;
  [(TUIStaticIdentityManager *)self _updateUI];
  if ([(NSArray *)self->_conversationMembers count])
  {
    v7 = [(NSArray *)self->_conversationMembers objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"publicAccountIdentity"];
  v9 = v8;
  if (v7 && (v8 || (_os_feature_enabled_impl() & 1) != 0))
  {
    v10 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__TUIStaticIdentityManager_requestConversationVerificationState_completionHandler___block_invoke_60;
    block[3] = &unk_279DDB430;
    block[4] = self;
    v18 = stateCopy;
    v17 = handlerCopy;
    v15 = v7;
    v16 = v9;
    dispatch_async(v10, block);
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      [TUIStaticIdentityManager requestConversationVerificationState:completionHandler:];
    }

    v11 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
    {
      options = self->_options;
      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = options;
      _os_log_impl(&dword_26F50B000, v11, OS_LOG_TYPE_ERROR, "failed get peer verification status (invalid parameters uri = %@, options = %@)", buf, 0x16u);
    }

    self->_conversationVerified = 0;
    if (stateCopy)
    {
      [(TUIStaticIdentityManager *)self requestNewSasCode];
    }

    else
    {
      [(TUIStaticIdentityManager *)self _updateUI];
    }

    handlerCopy[2](handlerCopy);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __83__TUIStaticIdentityManager_requestConversationVerificationState_completionHandler___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __83__TUIStaticIdentityManager_requestConversationVerificationState_completionHandler___block_invoke_60(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D73570]);
  v3 = [v2 initWithApplication:*MEMORY[0x277D735B0]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__TUIStaticIdentityManager_requestConversationVerificationState_completionHandler___block_invoke_2;
  v9[3] = &unk_279DDB3E0;
  v9[4] = *(a1 + 32);
  v11 = *(a1 + 64);
  v10 = *(a1 + 56);
  v4 = MEMORY[0x274393BA0](v9);
  if (_os_feature_enabled_impl())
  {
    v12[0] = *(a1 + 40);
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __83__TUIStaticIdentityManager_requestConversationVerificationState_completionHandler___block_invoke_66;
    v7[3] = &unk_279DDB408;
    v8 = v4;
    [v3 getCachedValidatePeerResults:v5 completionBlock:v7];
  }

  else
  {
    [v3 getValidatePeerResult:*(a1 + 40) uuid:*(a1 + 48) completionBlock:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __83__TUIStaticIdentityManager_requestConversationVerificationState_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
  {
    __83__TUIStaticIdentityManager_requestConversationVerificationState_completionHandler___block_invoke_2_cold_1();
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138478083;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEFAULT, "getValidatePeerResult result = %{private}@, error = %{public}@", &v19, 0x16u);
  }

  v8 = v5 && [v5 staticAccountKeyEnforced] && objc_msgSend(v5, "staticAccountKeyStatus") == 0;
  *(*(a1 + 32) + 17) = v8;
  v9 = [v5 publicID];

  if (v9)
  {
    v10 = [v5 publicID];
    v11 = [v10 publicAccountIdentity];
    [*(a1 + 32) setPeerPublicAccountIdentity:v11];

    v12 = *(a1 + 32);
    v13 = [v5 publicID];
    v14 = [v12 displayStringWithAccountPublicID:v13];
    v15 = *(a1 + 32);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = *(a1 + 32);
  if ((v17[17] & 1) != 0 || *(a1 + 48) != 1)
  {
    [v17 _updateUI];
  }

  else
  {
    [v17 requestNewSasCode];
  }

  (*(*(a1 + 40) + 16))();

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __83__TUIStaticIdentityManager_requestConversationVerificationState_completionHandler___block_invoke_3()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __83__TUIStaticIdentityManager_requestConversationVerificationState_completionHandler___block_invoke_66(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 count])
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277D735A0] errorWithDomain:*MEMORY[0x277D735F0] code:-351 description:@"no verifier results for static key"];
  }

  v4 = *(a1 + 32);
  v5 = [v6 firstObject];
  (*(v4 + 16))(v4, v5, v3);
}

- (void)verifyConversation
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(TUIStaticIdentityManager *)self peerCNContact:self->_contactIdentifier];
  if (v3)
  {
    [(NSTimer *)self->_sessionExpiredTimer invalidate];
    sessionExpiredTimer = self->_sessionExpiredTimer;
    self->_sessionExpiredTimer = 0;

    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      [TUIStaticIdentityManager verifyConversation];
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_DEBUG))
    {
      contactIdentifier = self->_contactIdentifier;
      peerPublicAccountIdentity = self->_peerPublicAccountIdentity;
      v13 = 138412546;
      v14 = contactIdentifier;
      v15 = 2112;
      v16 = peerPublicAccountIdentity;
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEBUG, "Updating contact %@ with public key: %@", &v13, 0x16u);
    }

    delegate = [(TUIStaticIdentityManager *)self delegate];
    peerPublicAccountIdentity = [(TUIStaticIdentityManager *)self peerPublicAccountIdentity];
    [delegate verifyContact:v3 peerPublicAccountIdentity:peerPublicAccountIdentity];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      [TUIStaticIdentityManager verifyConversation];
    }

    v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
    {
      v11 = self->_contactIdentifier;
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_26F50B000, v10, OS_LOG_TYPE_ERROR, "failed to verify conversation (no peer) %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __46__TUIStaticIdentityManager_verifyConversation__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __46__TUIStaticIdentityManager_verifyConversation__block_invoke_74()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)verifyConversationWithContact:(id)contact completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (contact)
  {
    [(TUIStaticIdentityManager *)self requestConversationVerificationState:1 completionHandler:handlerCopy];
  }

  else
  {
    [(TUIStaticIdentityManager *)self requestNewSasCode];
    v7[2]();
  }
}

- (void)showAccountKeys:(BOOL)keys
{
  if (!self->_accountKeysDisplayed)
  {
    self->_accountKeysDisplayed = 1;
    if (keys)
    {
      [(TUIStaticIdentityManager *)self _updateUI];
    }
  }
}

- (void)hideAccountKeys:(BOOL)keys
{
  if (self->_accountKeysDisplayed)
  {
    self->_accountKeysDisplayed = 0;
    if (keys)
    {
      [(TUIStaticIdentityManager *)self _updateUI];
    }
  }
}

- (NSString)sasCodeString
{
  sasCode = self->_sasCode;
  if (sasCode)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(NSString *)sasCode substringToIndex:4];
    v6 = [(NSString *)self->_sasCode substringFromIndex:4];
    v7 = [v4 stringWithFormat:@"%@ %@", v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedPeerAccountNameMessage:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  personNameComponents = self->_personNameComponents;
  if (personNameComponents)
  {
    goto LABEL_13;
  }

  if (self->_contactIdentifier)
  {
    v6 = [(TUIStaticIdentityManager *)self peerCNContact:?];
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      [TUIStaticIdentityManager localizedPeerAccountNameMessage:];
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "peer account: %@", buf, 0xCu);
    }

    v8 = objc_alloc_init(MEMORY[0x277CCAC00]);
    v9 = self->_personNameComponents;
    self->_personNameComponents = v8;

    namePrefix = [v6 namePrefix];
    [(NSPersonNameComponents *)self->_personNameComponents setNamePrefix:namePrefix];

    nameSuffix = [v6 nameSuffix];
    [(NSPersonNameComponents *)self->_personNameComponents setNameSuffix:nameSuffix];

    middleName = [v6 middleName];
    [(NSPersonNameComponents *)self->_personNameComponents setMiddleName:middleName];

    givenName = [v6 givenName];
    [(NSPersonNameComponents *)self->_personNameComponents setGivenName:givenName];

    familyName = [v6 familyName];
    [(NSPersonNameComponents *)self->_personNameComponents setFamilyName:familyName];

    nickname = [v6 nickname];
    [(NSPersonNameComponents *)self->_personNameComponents setNickname:nickname];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      [TUIStaticIdentityManager localizedPeerAccountNameMessage:];
    }

    v16 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_26F50B000, v16, OS_LOG_TYPE_ERROR, "no contact identifier", buf, 2u);
    }
  }

  personNameComponents = self->_personNameComponents;
  if (personNameComponents)
  {
LABEL_13:
    v17 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:personNameComponents style:1 options:0];
  }

  else
  {
    v17 = 0;
  }

  if ([v17 length])
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:messageCopy value:&stru_287F92480 table:@"Localizable"];
    [v18 localizedStringWithFormat:v20, v17];
  }

  else
  {
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [messageCopy stringByAppendingString:@"_UNKNOWN"];
    [v19 localizedStringForKey:v20 value:&stru_287F92480 table:@"Localizable"];
  }
  v21 = ;

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __60__TUIStaticIdentityManager_localizedPeerAccountNameMessage___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __60__TUIStaticIdentityManager_localizedPeerAccountNameMessage___block_invoke_83()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)peerCNContact:(id)contact
{
  v31[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  if (contactCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CBDA70]);
    descriptorForRequiredKeys = [MEMORY[0x277CBDC08] descriptorForRequiredKeys];
    v31[0] = descriptorForRequiredKeys;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v7 = [v4 initWithKeysToFetch:v6];

    v8 = MEMORY[0x277CBDA58];
    v30 = contactCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v10 = [v8 predicateForContactsWithIdentifiers:v9];
    [v7 setPredicate:v10];

    v11 = objc_opt_new();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__TUIStaticIdentityManager_peerCNContact___block_invoke;
    v18[3] = &unk_279DDB458;
    v18[4] = &v20;
    v19 = 0;
    [v11 enumerateContactsWithFetchRequest:v7 error:&v19 usingBlock:v18];
    v12 = v19;

    v13 = v21[5];
    if (v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
  {
    [TUIStaticIdentityManager peerCNContact:];
  }

  v14 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v27 = contactCopy;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_26F50B000, v14, OS_LOG_TYPE_ERROR, "failed to fetch a contact for contactIdentifier = %@, error = %@", buf, 0x16u);
  }

  v13 = v21[5];
LABEL_10:
  v15 = v13;
  _Block_object_dispose(&v20, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __42__TUIStaticIdentityManager_peerCNContact___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (int64_t)_sessionStateWithStateString:(id)string
{
  v10 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x277D73638]])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x277D73630]])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x277D73620]])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x277D73628]])
  {
    v4 = 4;
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      [TUIStaticIdentityManager _sessionStateWithStateString:];
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = stringCopy;
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "invalid session state %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __57__TUIStaticIdentityManager__sessionStateWithStateString___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_updateUI
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained updateUI];
}

- (void)_setupKTSession
{
  self->_sessionState = 1;
  [(TUIStaticIdentityManager *)self _updateUI];
  v3 = objc_alloc_init(MEMORY[0x277D735A8]);
  [(TUIStaticIdentityManager *)self setStaticKey:v3];

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleNotification_ name:*MEMORY[0x277D73608] object:0 suspensionBehavior:4];

  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__TUIStaticIdentityManager__setupKTSession__block_invoke;
  v6[3] = &unk_279DDAB28;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __43__TUIStaticIdentityManager__setupKTSession__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained conversationMembers];
    v4 = [v3 mutableCopy];

    v5 = objc_alloc(MEMORY[0x277D73560]);
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v5 initWithPeer:v6];

    [v4 removeObjectAtIndex:0];
    v8 = [MEMORY[0x277CBEB98] setWithArray:v4];
    [v7 setOtherNamesForPeer:v8];

    v9 = [v2 lastUsedAddress];

    if (v9)
    {
      v10 = [v2 lastUsedAddress];
      [v7 setLastUsedAddressOfMe:v10];
    }

    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      __43__TUIStaticIdentityManager__setupKTSession__block_invoke_cold_1();
    }

    v11 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_26F50B000, v11, OS_LOG_TYPE_DEFAULT, "setupKTSession (%{public}@)", buf, 0xCu);
    }

    v12 = [v2 staticKey];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__TUIStaticIdentityManager__setupKTSession__block_invoke_110;
    v15[3] = &unk_279DDB480;
    v15[4] = v2;
    [v12 setupKTSession:v7 complete:v15];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      __43__TUIStaticIdentityManager__setupKTSession__block_invoke_cold_2();
    }

    v13 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[TUIStaticIdentityManager _setupKTSession]_block_invoke";
      _os_log_impl(&dword_26F50B000, v13, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __43__TUIStaticIdentityManager__setupKTSession__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __43__TUIStaticIdentityManager__setupKTSession__block_invoke_107()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __43__TUIStaticIdentityManager__setupKTSession__block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      __43__TUIStaticIdentityManager__setupKTSession__block_invoke_110_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEFAULT, "setupKTSession succeeded, session = %{public}@", &v10, 0xCu);
    }

    [*(a1 + 32) setKtSession:v5];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
    {
      __43__TUIStaticIdentityManager__setupKTSession__block_invoke_110_cold_2();
    }

    v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_26F50B000, v8, OS_LOG_TYPE_ERROR, "setupKTSession failed: %{public}@", &v10, 0xCu);
    }

    [*(a1 + 32) requestNewSasCodeWithDelay];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __43__TUIStaticIdentityManager__setupKTSession__block_invoke_2_111()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __43__TUIStaticIdentityManager__setupKTSession__block_invoke_114()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)handleNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  [(TUIStaticIdentityManager *)self postNotificationName:name object:object userInfo:userInfo deliverImmediately:0];
}

- (void)postNotificationName:(id)name object:(id)object userInfo:(id)info deliverImmediately:(BOOL)immediately
{
  v23 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v8 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D73618]];
  v9 = [(TUIStaticIdentityManager *)self _sessionStateWithStateString:v8];

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
  {
    [TUIStaticIdentityManager postNotificationName:object:userInfo:deliverImmediately:];
  }

  v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = infoCopy;
    v21 = 1024;
    v22 = v9;
    _os_log_impl(&dword_26F50B000, v10, OS_LOG_TYPE_DEFAULT, "postNotificationName: %@/%d", buf, 0x12u);
  }

  if (v9 == 1)
  {
    self->_sessionState = 1;
    [(TUIStaticIdentityManager *)self _updateUI];
  }

  else if (v9 == 2)
  {
    v11 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D73610]];
    staticKey = self->_staticKey;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__TUIStaticIdentityManager_postNotificationName_object_userInfo_deliverImmediately___block_invoke_120;
    v15[3] = &unk_279DDB4A8;
    v16 = v11;
    selfCopy = self;
    v18 = 2;
    v13 = v11;
    [(TransparencyStaticKey *)staticKey getKTSessionByID:v13 complete:v15];
  }

  else
  {
    self->_sessionState = v9;
    self->_sasCodeRefreshRequired = 1;
    [(TUIStaticIdentityManager *)self requestNewSasCode];
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __84__TUIStaticIdentityManager_postNotificationName_object_userInfo_deliverImmediately___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __84__TUIStaticIdentityManager_postNotificationName_object_userInfo_deliverImmediately___block_invoke_120(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
  {
    __84__TUIStaticIdentityManager_postNotificationName_object_userInfo_deliverImmediately___block_invoke_120_cold_1();
  }

  v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 sasCode];
    if (v7)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = [v3 sessionExpire];
    v10 = [v3 peerAccountIdentity];
    v11 = [v10 publicAccountIdentity];
    v29 = 138413058;
    v30 = v5;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_26F50B000, v6, OS_LOG_TYPE_DEFAULT, "post notification, sessionId = %@ code = %@, expiration = %@, peer identity = %@", &v29, 0x2Au);
  }

  v12 = [v3 sasCode];
  [*(a1 + 40) setSasCode:v12];

  v13 = [v3 sessionExpire];
  v14 = v13;
  if (v13)
  {
    [v13 timeIntervalSinceNow];
    if (v15 < 1.0)
    {
      [*(a1 + 40) requestNewSasCode];
      goto LABEL_15;
    }

    *(*(a1 + 40) + 56) = vcvtpd_u64_f64(v15 / 60.0);
    v16 = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:v14 interval:*(a1 + 40) target:sel_sessionExpired_ selector:0 userInfo:0 repeats:0.0];
    [*(a1 + 40) setSessionExpiredTimer:v16];

    v17 = [MEMORY[0x277CBEB88] mainRunLoop];
    v18 = [*(a1 + 40) sessionExpiredTimer];
    [v17 addTimer:v18 forMode:*MEMORY[0x277CBE640]];
  }

  v19 = [v3 peerAccountIdentity];

  if (v19)
  {
    v20 = [v3 peerAccountIdentity];
    v21 = [v20 publicAccountIdentity];
    [*(a1 + 40) setPeerPublicAccountIdentity:v21];

    v22 = *(a1 + 40);
    v23 = [v3 peerAccountIdentity];
    v24 = [v22 displayStringWithAccountPublicID:v23];
    v25 = *(a1 + 40);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  v27 = *(a1 + 48);
  *(*(a1 + 40) + 18) = 0;
  *(*(a1 + 40) + 48) = v27;
  [*(a1 + 40) _updateUI];
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __84__TUIStaticIdentityManager_postNotificationName_object_userInfo_deliverImmediately___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)sessionExpired:(id)expired
{
  v15 = *MEMORY[0x277D85DE8];
  expiredCopy = expired;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_22 != -1)
  {
    [TUIStaticIdentityManager sessionExpired:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22, OS_LOG_TYPE_DEBUG))
  {
    ktSession = self->_ktSession;
    v7 = v5;
    sessionID = [(KTIDSSession *)ktSession sessionID];
    conversationVerified = self->_conversationVerified;
    v11 = 138412546;
    v12 = sessionID;
    v13 = 1024;
    v14 = conversationVerified;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "session expired, sessionID = %@, conversationVerified = %d", &v11, 0x12u);
  }

  if (self->_sessionExpiredTimer && !self->_conversationVerified)
  {
    self->_sasCodeRefreshRequired = 1;
    [(TUIStaticIdentityManager *)self requestNewSasCode];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __43__TUIStaticIdentityManager_sessionExpired___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_22 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (TUIStaticIdentityManagerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_17_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_26F50B000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ requesting self public account key...", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_24_cold_2(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_26F50B000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ got self public account key: %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __49__TUIStaticIdentityManager_requestSelfAccountKey__block_invoke_24_cold_4(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(&dword_26F50B000, v3, OS_LOG_TYPE_ERROR, "%{public}@ failed to get self public account key: %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end