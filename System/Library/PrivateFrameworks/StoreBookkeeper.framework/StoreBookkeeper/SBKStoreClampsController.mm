@interface SBKStoreClampsController
+ (id)sharedClampsController;
- (BOOL)_canScheduleTransactionBasedOfNetworkingBlocked:(id)a3 error:(id *)a4;
- (BOOL)_canScheduleTransactionBasedOnAccountIdentifierCheck:(id)a3 error:(id *)a4;
- (BOOL)_canScheduleTransactionBasedOnBackOff:(id)a3 error:(id *)a4;
- (BOOL)_canScheduleTransactionBasedOnType:(id)a3 error:(id *)a4;
- (BOOL)_canScheduleTransactionBasedOnUserCancelledSignIn:(id)a3 error:(id *)a4;
- (BOOL)canScheduleTransaction:(id)a3 error:(id *)a4;
- (BOOL)hasAuthenticatedTooRecentlyForTransaction:(id)a3 error:(id *)a4;
- (BOOL)hasUserRecentlyAcceptedSync;
- (BOOL)isNetworkingBlocked;
- (SBKStoreClampsController)init;
- (SBKStoreClampsController)initWithCoder:(id)a3;
- (double)_rightNow;
- (id)description;
- (void)accessTransactionClampsWithBlock:(id)a3;
- (void)backOffForTimeInterval:(double)a3;
- (void)clearAccountIdentifierCheckTimestamp;
- (void)clearAuthenticationRequest;
- (void)clearBackOff;
- (void)clearTimestampForTransaction:(id)a3;
- (void)clearUserAcceptedSyncTimestamp;
- (void)clearUserCancelledSignIn;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
- (void)saveToUserDefaults;
- (void)setAccountIdentifierCheckTimestamp;
- (void)setAuthenticationRequest;
- (void)setNetworkingBlocked;
- (void)setTimestampForTransaction:(id)a3;
- (void)setUserAcceptedSyncTimestamp;
- (void)setUserCancelledSignIn;
@end

@implementation SBKStoreClampsController

- (BOOL)_canScheduleTransactionBasedOnUserCancelledSignIn:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(SBKStoreClampsController *)self userCancelledSignInBackOffUntil];
  if (fabs(v7) <= 0.00000011920929)
  {
    goto LABEL_4;
  }

  [(SBKStoreClampsController *)self _rightNow];
  v9 = v8;
  [(SBKStoreClampsController *)self userCancelledSignInBackOffUntil];
  if (v9 > v10)
  {
    [(SBKStoreClampsController *)self clearUserCancelledSignIn];
LABEL_4:
    v11 = 1;
    goto LABEL_5;
  }

  [(SBKStoreClampsController *)self userAcceptedSyncTimestamp];
  v15 = v14 - v9;
  v16 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = MEMORY[0x277CBEAA8];
    [(SBKStoreClampsController *)self userCancelledSignInBackOffUntil];
    v18 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
    v19 = 134218498;
    v20 = v6;
    v21 = 2112;
    v22 = v18;
    v23 = 2048;
    v24 = v15;
    _os_log_impl(&dword_26BC19000, v16, OS_LOG_TYPE_DEFAULT, "Drop transaction: <%p> -- userCancelledBackOff until: %@ [%fs]", &v19, 0x20u);
  }

  if (a4)
  {
    [SBKStoreError userClampErrorWithTransaction:v6 retrySeconds:0 underlyingError:v15];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_5:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_canScheduleTransactionBasedOnBackOff:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(SBKStoreClampsController *)self backOffUntil];
  if (fabs(v7) <= 0.00000011920929)
  {
    goto LABEL_4;
  }

  [(SBKStoreClampsController *)self _rightNow];
  v9 = v8;
  [(SBKStoreClampsController *)self backOffUntil];
  if (v9 > v10)
  {
    [(SBKStoreClampsController *)self clearBackOff];
LABEL_4:
    v11 = 1;
    goto LABEL_5;
  }

  [(SBKStoreClampsController *)self backOffUntil];
  v15 = v14 - v9;
  v16 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = MEMORY[0x277CBEAA8];
    [(SBKStoreClampsController *)self backOffUntil];
    v18 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
    v19 = 134218498;
    v20 = v6;
    v21 = 2112;
    v22 = v18;
    v23 = 2048;
    v24 = v15;
    _os_log_impl(&dword_26BC19000, v16, OS_LOG_TYPE_DEFAULT, "Drop transaction: <%p> -- BackOff until: %@ [%fs]", &v19, 0x20u);
  }

  if (a4)
  {
    [SBKStoreError serverClampErrorWithTransaction:v6 retrySeconds:0 underlyingError:v15];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_5:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_canScheduleTransactionBasedOnAccountIdentifierCheck:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(SBKStoreClampsController *)self accountIdentifierCheckTimestamp];
  v8 = v7;
  if (v7 != 0.0)
  {
    v9 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = v6;
      _os_log_impl(&dword_26BC19000, v9, OS_LOG_TYPE_DEFAULT, "Drop transaction: <%p> -- AccountIdentifierCheck != 0", &v12, 0xCu);
    }

    if (a4)
    {
      *a4 = [SBKStoreError userClampErrorWithTransaction:v6 retrySeconds:0 underlyingError:0.0];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 == 0.0;
}

- (BOOL)_canScheduleTransactionBasedOfNetworkingBlocked:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SBKStoreClampsController *)self isNetworkingBlocked];
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x277CBEAA8];
      [(SBKStoreClampsController *)self networkingBlockedUntil];
      v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
      v13 = 134218242;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_26BC19000, v8, OS_LOG_TYPE_DEFAULT, "Drop transaction: <%p> -- Networking BlockedUntil: %@", &v13, 0x16u);
    }

    *a4 = [SBKStoreError networkingBlockedErrorWithTransaction:v6 underlyingError:0];
  }

  v11 = *MEMORY[0x277D85DE8];
  return !v7;
}

- (BOOL)_canScheduleTransactionBasedOnType:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__SBKStoreClampsController__canScheduleTransactionBasedOnType_error___block_invoke;
  v15[3] = &unk_279D22858;
  v17 = &v18;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [(SBKStoreClampsController *)self accessTransactionClampsWithBlock:v15];
  v8 = v19[5];
  if (!v8)
  {
    goto LABEL_7;
  }

  [v8 timeIntervalSinceNow];
  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  if (v10 > 5.0)
  {
    [(SBKStoreClampsController *)self clearTimestampForTransaction:v7];
LABEL_7:
    v11 = 1;
    goto LABEL_13;
  }

  v12 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = v7;
    v26 = 2048;
    v27 = v10;
    v28 = 2048;
    v29 = 5.0 - v10;
    _os_log_impl(&dword_26BC19000, v12, OS_LOG_TYPE_DEFAULT, "Drop transaction: %@ -- Interval since last request: %f [%fs]", buf, 0x20u);
  }

  if (a4)
  {
    [SBKStoreError serverClampErrorWithTransaction:v7 retrySeconds:0 underlyingError:5.0 - v10];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_13:

  _Block_object_dispose(&v18, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

void __69__SBKStoreClampsController__canScheduleTransactionBasedOnType_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v9 = [v3 _keyForTransaction:v4];
  v6 = [v5 valueForKey:v9];

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (double)_rightNow
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (BOOL)isNetworkingBlocked
{
  [(SBKStoreClampsController *)self networkingBlockedUntil];
  if (v3 != 0.0)
  {
    [(SBKStoreClampsController *)self networkingBlockedUntil];
    v5 = v4;
    [(SBKStoreClampsController *)self _rightNow];
    if (v5 > v6)
    {
      return 1;
    }
  }

  [(SBKStoreClampsController *)self clearNetworkingBlocked];
  return 0;
}

- (void)setNetworkingBlocked
{
  [(SBKStoreClampsController *)self _rightNow];
  [(SBKStoreClampsController *)self setNetworkingBlockedUntil:v3 + 31536000.0];

  [(SBKStoreClampsController *)self saveToUserDefaults];
}

- (void)clearBackOff
{
  [(SBKStoreClampsController *)self setBackOffUntil:0.0];

  [(SBKStoreClampsController *)self saveToUserDefaults];
}

- (void)backOffForTimeInterval:(double)a3
{
  [(SBKStoreClampsController *)self _rightNow];
  [(SBKStoreClampsController *)self setBackOffUntil:v5 + a3];

  [(SBKStoreClampsController *)self saveToUserDefaults];
}

- (void)clearUserCancelledSignIn
{
  self->_nextUserCancelBackOffInterval = 300.0;
  [(SBKStoreClampsController *)self setUserCancelledSignInBackOffUntil:0.0];

  [(SBKStoreClampsController *)self saveToUserDefaults];
}

- (void)setUserCancelledSignIn
{
  v17 = *MEMORY[0x277D85DE8];
  [(SBKStoreClampsController *)self _rightNow];
  [(SBKStoreClampsController *)self setUserCancelledSignInBackOffUntil:v3 + self->_nextUserCancelBackOffInterval];
  userCancelledSignInBackOffUntil = self->_userCancelledSignInBackOffUntil;
  self->_nextUserCancelBackOffInterval = fmin(self->_nextUserCancelBackOffInterval * 12.0, 18000.0);
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = userCancelledSignInBackOffUntil - v7 - (3600 * ((userCancelledSignInBackOffUntil - v7) / 3600.0));
    v11 = 134218496;
    v12 = ((userCancelledSignInBackOffUntil - v7) / 3600.0);
    v13 = 2048;
    v14 = (v9 / 60.0);
    v15 = 2048;
    v16 = v9 - (60 * v14);
    _os_log_impl(&dword_26BC19000, v8, OS_LOG_TYPE_ERROR, "[StoreBookkeeper] SBKStoreClampsController - will avoid presenting authentication for %02llu:%02llu:%2f", &v11, 0x20u);
  }

  [(SBKStoreClampsController *)self saveToUserDefaults];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasUserRecentlyAcceptedSync
{
  [(SBKStoreClampsController *)self userAcceptedSyncTimestamp];
  if (fabs(v3) > 0.00000011920929 && ([(SBKStoreClampsController *)self _rightNow], v5 = v4, [(SBKStoreClampsController *)self userAcceptedSyncTimestamp], v5 - v6 <= 60.0))
  {
    v7 = 1;
  }

  else
  {
    [(SBKStoreClampsController *)self setUserAcceptedSyncTimestamp:0.0];
    v7 = 0;
  }

  [(SBKStoreClampsController *)self saveToUserDefaults];
  return v7;
}

- (void)clearUserAcceptedSyncTimestamp
{
  [(SBKStoreClampsController *)self setUserAcceptedSyncTimestamp:0.0];

  [(SBKStoreClampsController *)self saveToUserDefaults];
}

- (void)setUserAcceptedSyncTimestamp
{
  [(SBKStoreClampsController *)self _rightNow];
  [(SBKStoreClampsController *)self setUserAcceptedSyncTimestamp:?];

  [(SBKStoreClampsController *)self saveToUserDefaults];
}

- (BOOL)hasAuthenticatedTooRecentlyForTransaction:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(SBKStoreClampsController *)self _rightNow];
  v8 = v7;
  [(SBKStoreClampsController *)self authenticationNeededTimestamp];
  v10 = v8 - v9;
  if (v8 - v9 < 1.0)
  {
    v11 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = v6;
      v16 = 2048;
      v17 = v10;
      v18 = 2048;
      v19 = 1.0 - v10;
      _os_log_impl(&dword_26BC19000, v11, OS_LOG_TYPE_DEFAULT, "Drop transaction: %@ -- Too soon since last authentication: %f [%fs]", &v14, 0x20u);
    }

    if (a4)
    {
      *a4 = [SBKStoreError userClampErrorWithTransaction:v6 retrySeconds:0 underlyingError:1.0 - v10];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 < 1.0;
}

- (void)clearAuthenticationRequest
{
  [(SBKStoreClampsController *)self setAuthenticationNeededTimestamp:0.0];

  [(SBKStoreClampsController *)self saveToUserDefaults];
}

- (void)setAuthenticationRequest
{
  [(SBKStoreClampsController *)self _rightNow];
  [(SBKStoreClampsController *)self setAuthenticationNeededTimestamp:?];

  [(SBKStoreClampsController *)self saveToUserDefaults];
}

- (void)clearAccountIdentifierCheckTimestamp
{
  [(SBKStoreClampsController *)self setAccountIdentifierCheckTimestamp:0.0];

  [(SBKStoreClampsController *)self saveToUserDefaults];
}

- (void)setAccountIdentifierCheckTimestamp
{
  [(SBKStoreClampsController *)self _rightNow];
  [(SBKStoreClampsController *)self setAccountIdentifierCheckTimestamp:?];

  [(SBKStoreClampsController *)self saveToUserDefaults];
}

- (void)clearTimestampForTransaction:(id)a3
{
  v4 = a3;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __57__SBKStoreClampsController_clearTimestampForTransaction___block_invoke;
  v9 = &unk_279D22830;
  v10 = self;
  v11 = v4;
  v5 = v4;
  [(SBKStoreClampsController *)self accessTransactionClampsWithBlock:&v6];
  [(SBKStoreClampsController *)self saveToUserDefaults:v6];
}

void __57__SBKStoreClampsController_clearTimestampForTransaction___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _keyForTransaction:v3];
  [v4 setValue:0 forKey:v5];
}

- (void)setTimestampForTransaction:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SBKStoreClampsController_setTimestampForTransaction___block_invoke;
  v6[3] = &unk_279D22830;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBKStoreClampsController *)self accessTransactionClampsWithBlock:v6];
}

void __55__SBKStoreClampsController_setTimestampForTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v6 = [v3 date];
  v5 = [*(a1 + 32) _keyForTransaction:*(a1 + 40)];
  [v4 setValue:v6 forKey:v5];
}

- (void)reset
{
  v3 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26BC19000, v3, OS_LOG_TYPE_DEFAULT, "Reseting Clamps", v4, 2u);
  }

  [(SBKStoreClampsController *)self accessTransactionClampsWithBlock:&__block_literal_global_52];
  [(SBKStoreClampsController *)self clearAccountIdentifierCheckTimestamp];
  [(SBKStoreClampsController *)self clearAuthenticationRequest];
  [(SBKStoreClampsController *)self clearBackOff];
  [(SBKStoreClampsController *)self clearNetworkingBlocked];
  [(SBKStoreClampsController *)self clearUserAcceptedSyncTimestamp];
  [(SBKStoreClampsController *)self clearUserCancelledSignIn];
  [(SBKStoreClampsController *)self saveToUserDefaults];
}

- (BOOL)canScheduleTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SBKStoreClampsController *)self _canScheduleTransactionBasedOfNetworkingBlocked:v6 error:a4]&& [(SBKStoreClampsController *)self _canScheduleTransactionBasedOnBackOff:v6 error:a4]&& [(SBKStoreClampsController *)self _canScheduleTransactionBasedOnUserCancelledSignIn:v6 error:a4]&& [(SBKStoreClampsController *)self _canScheduleTransactionBasedOnAccountIdentifierCheck:v6 error:a4]&& [(SBKStoreClampsController *)self _canScheduleTransactionBasedOnType:v6 error:a4];

  return v7;
}

- (void)accessTransactionClampsWithBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SBKStoreClampsController_accessTransactionClampsWithBlock___block_invoke;
  v7[3] = &unk_279D23100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __61__SBKStoreClampsController_accessTransactionClampsWithBlock___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) transactionClamps];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v4)
    {
      v2 = [v4 mutableCopy];

      v3 = v2;
    }

    else
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v4 = v3;
    objc_storeStrong((*(a1 + 32) + 16), v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)saveToUserDefaults
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SBKStoreClampsController_saveToUserDefaults__block_invoke;
  block[3] = &unk_279D230A0;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(queue, block);
  if (*(v8 + 24) == 1)
  {
    v4 = dispatch_time(0, 2000000000);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__SBKStoreClampsController_saveToUserDefaults__block_invoke_49;
    v5[3] = &unk_279D231C8;
    v5[4] = self;
    dispatch_after(v4, MEMORY[0x277D85CD0], v5);
  }

  _Block_object_dispose(&v7, 8);
}

void __46__SBKStoreClampsController_saveToUserDefaults__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingUserDefaultArchivedData];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;

  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v9];
  v5 = v9;
  [*(a1 + 32) setPendingUserDefaultArchivedData:v4];

  if (v5)
  {
    if (os_variant_has_internal_content())
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBKStoreClampsController saveToUserDefaults]_block_invoke"];
      [v6 handleFailureInFunction:v7 file:@"SBKStoreClampsController.m" lineNumber:149 description:{@"Archiving SBKStoreClampsController resulted in error:%@", v5}];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_26BC19000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Archiving SBKStoreClampsController resulted in error:%@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __46__SBKStoreClampsController_saveToUserDefaults__block_invoke_49(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SBKStoreClampsController_saveToUserDefaults__block_invoke_50;
  v4[3] = &unk_279D230A0;
  v4[4] = v1;
  v4[5] = &v5;
  dispatch_sync(v2, v4);
  v3 = +[SBKPreferences storeBookkeeperPreferences];
  [v3 setObject:v6[5] forKey:@"SBKSyncClamps"];

  _Block_object_dispose(&v5, 8);
}

uint64_t __46__SBKStoreClampsController_saveToUserDefaults__block_invoke_50(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingUserDefaultArchivedData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setPendingUserDefaultArchivedData:0];
}

- (SBKStoreClampsController)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SBKStoreClampsController *)self init];
  if (!v5)
  {
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if (![v4 decodeIntegerForKey:@"SBKVersion"])
  {
    v7 = [v4 decodePropertyListForKey:@"SBKTransactionClamps"];
    v8 = [v7 mutableCopy];

    if (v8)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __42__SBKStoreClampsController_initWithCoder___block_invoke;
      v15[3] = &unk_279D227E8;
      v16 = v8;
      [(SBKStoreClampsController *)v5 accessTransactionClampsWithBlock:v15];
    }

    [v4 decodeDoubleForKey:@"SBAccountIdentifierCheckTimestamp"];
    v5->_accountIdentifierCheckTimestamp = v9;
    [v4 decodeDoubleForKey:@"SBKAuthenticationNeededTimestamp"];
    v5->_authenticationNeededTimestamp = v10;
    [v4 decodeDoubleForKey:@"SBKUserAcceptedSyncTimestamp"];
    v5->_userAcceptedSyncTimestamp = v11;
    [v4 decodeDoubleForKey:@"SBKNetworkingBlockedUntil"];
    v5->_networkingBlockedUntil = v12;
    [v4 decodeDoubleForKey:@"SBKUserCancelledSignInBackOffUntil"];
    v5->_userCancelledSignInBackOffUntil = v13;

    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void __42__SBKStoreClampsController_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeAllObjects];
  [v3 setValuesForKeysWithDictionary:*(a1 + 32)];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  transactionClamps = self->_transactionClamps;
  v6 = v4;
  if (transactionClamps)
  {
    [v4 encodeObject:transactionClamps forKey:@"SBKTransactionClamps"];
    v4 = v6;
  }

  if (fabs(self->_accountIdentifierCheckTimestamp) > 0.00000011920929)
  {
    [v6 encodeDouble:@"SBAccountIdentifierCheckTimestamp" forKey:?];
    v4 = v6;
  }

  if (fabs(self->_authenticationNeededTimestamp) > 0.00000011920929)
  {
    [v6 encodeDouble:@"SBKAuthenticationNeededTimestamp" forKey:?];
    v4 = v6;
  }

  if (fabs(self->_userAcceptedSyncTimestamp) > 0.00000011920929)
  {
    [v6 encodeDouble:@"SBKUserAcceptedSyncTimestamp" forKey:?];
    v4 = v6;
  }

  if (fabs(self->_networkingBlockedUntil) > 0.00000011920929)
  {
    [v6 encodeDouble:@"SBKNetworkingBlockedUntil" forKey:?];
    v4 = v6;
  }

  if (fabs(self->_userCancelledSignInBackOffUntil) > 0.00000011920929)
  {
    [v6 encodeDouble:@"SBKUserCancelledSignInBackOffUntil" forKey:?];
    v4 = v6;
  }

  [v4 encodeInteger:2 forKey:@"Version"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = SBKStoreClampsController;
  v4 = [(SBKStoreClampsController *)&v14 description];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_accountIdentifierCheckTimestamp];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_authenticationNeededTimestamp];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_userAcceptedSyncTimestamp];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_networkingBlockedUntil];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_backOffUntil];
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_userCancelledSignInBackOffUntil];
  v12 = [v3 stringWithFormat:@"%@\n\tCurrent Date = %@, \n\taccountIdentifierCheckTimestamp = %@, \n\tauthenticationNeededTimestamp = %@, \n\tuserAcceptedSyncTimestamp = %@, \n\tnetworkingBlockedUntil = %@, \n\tbackOffUntil= %@, \n\tuserCancelledSignInBackOffUntil = %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (SBKStoreClampsController)init
{
  v8.receiver = self;
  v8.super_class = SBKStoreClampsController;
  v2 = [(SBKStoreClampsController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transactionClamps = v2->_transactionClamps;
    v2->_transactionClamps = v3;

    v2->_nextUserCancelBackOffInterval = 300.0;
    v5 = dispatch_queue_create(0, 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (id)sharedClampsController
{
  if (sharedClampsController_onceToken != -1)
  {
    dispatch_once(&sharedClampsController_onceToken, &__block_literal_global);
  }

  v3 = sharedClampsController_sharedInstance;

  return v3;
}

void __50__SBKStoreClampsController_sharedClampsController__block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = +[SBKPreferences storeBookkeeperPreferences];
  v1 = [v0 objectForKey:@"SBKSyncClamps" withDefaultValue:0];

  if (v1)
  {
    v10 = 0;
    v2 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v1 error:&v10];
    v3 = v10;
    v4 = sharedClampsController_sharedInstance;
    sharedClampsController_sharedInstance = v2;

    if (v3)
    {
      if (os_variant_has_internal_content())
      {
        v5 = [MEMORY[0x277CCA890] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SBKStoreClampsController sharedClampsController]_block_invoke"];
        [v5 handleFailureInFunction:v6 file:@"SBKStoreClampsController.m" lineNumber:65 description:{@"Unarchiving SBKStoreClampsController resulted in error:%@", v3}];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_error_impl(&dword_26BC19000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unarchiving SBKStoreClampsController resulted in error:%@", buf, 0xCu);
      }
    }
  }

  if (!sharedClampsController_sharedInstance)
  {
    v7 = objc_alloc_init(SBKStoreClampsController);
    v8 = sharedClampsController_sharedInstance;
    sharedClampsController_sharedInstance = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end