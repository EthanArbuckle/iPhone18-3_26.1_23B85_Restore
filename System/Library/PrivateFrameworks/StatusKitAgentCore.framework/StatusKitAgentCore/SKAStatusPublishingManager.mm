@interface SKAStatusPublishingManager
+ (id)_errorForDuplicateStatusPublishRequestWithIdentifier:(id)identifier;
+ (id)_errorForStatusPublishRequestWithIdentifier:(id)identifier requestedStatusCreationDate:(id)date isOlderThanExistingStatus:(id)status existingStatusCreationDate:(id)creationDate;
+ (id)logger;
- (BOOL)_shouldAbandonRequestForError:(id)error;
- (BOOL)_shouldAllowPublishForPublishRequest:(id)request onChannel:(id)channel error:(id *)error;
- (BOOL)_shouldClientRateLimit;
- (BOOL)_shouldRetryWithDelayForError:(id)error;
- (BOOL)_shouldRollChannelForError:(id)error;
- (SKAStatusPublishingManager)initWithDatabaseManager:(id)manager channelManager:(id)channelManager accountProvider:(id)provider encryptionManager:(id)encryptionManager invitationManager:(id)invitationManager;
- (double)_pendingDelayTime;
- (double)_rapidPublishesTimescale;
- (double)_rateLimitDelayTime;
- (id)pendingPublishRequestsForStatusTypeIdentifier:(id)identifier;
- (int64_t)_maxRapidPublishes;
- (int64_t)_maxRetryCount;
- (void)_markPublishAttempt;
- (void)_publishStatusRequest:(id)request statusTypeIdentifier:(id)identifier afterTime:(double)time isPendingPublish:(BOOL)publish retryCount:(unint64_t)count completion:(id)completion;
- (void)_removePendingPublishRequestWithUniqueIdentifier:(id)identifier databaseContext:(id)context;
- (void)_removePendingPublishRequestsForStatusTypeIdentifier:(id)identifier olderThanRequest:(id)request databaseContext:(id)context;
- (void)_shouldClientRateLimit;
- (void)createPersonalChannelForStatusTypeIdentifier:(id)identifier databaseContext:(id)context completion:(id)completion;
- (void)ensurePendingPublishRequestExistsWithPublishRequest:(id)request forStatusTypeIdentifier:(id)identifier databaseContext:(id)context;
- (void)findOrCreatePersonalChannelForStatusTypeIdentifier:(id)identifier databaseContext:(id)context completion:(id)completion;
- (void)provisionPayloads:(id)payloads statusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)publishPendingRequestForReason:(int64_t)reason;
- (void)publishPendingRequestsWithDelay:(double)delay;
- (void)removePendingPublishRequestsForStatusTypeIdentifier:(id)identifier olderThanRequest:(id)request;
@end

@implementation SKAStatusPublishingManager

- (SKAStatusPublishingManager)initWithDatabaseManager:(id)manager channelManager:(id)channelManager accountProvider:(id)provider encryptionManager:(id)encryptionManager invitationManager:(id)invitationManager
{
  managerCopy = manager;
  channelManagerCopy = channelManager;
  providerCopy = provider;
  encryptionManagerCopy = encryptionManager;
  invitationManagerCopy = invitationManager;
  v25.receiver = self;
  v25.super_class = SKAStatusPublishingManager;
  v17 = [(SKAStatusPublishingManager *)&v25 init];
  v18 = v17;
  if (v17)
  {
    *&v17->_pendingRequestScheduled = 0;
    objc_storeStrong(&v17->_databaseManager, manager);
    objc_storeStrong(&v18->_channelManager, channelManager);
    objc_storeStrong(&v18->_encryptionManager, encryptionManager);
    objc_storeStrong(&v18->_accountProvider, provider);
    objc_storeStrong(&v18->_invitationManager, invitationManager);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_DEFAULT, 0);

    v21 = dispatch_queue_create("com.apple.StatusKitAgent.PublishingManager", v20);
    internalWorkQueue = v18->_internalWorkQueue;
    v18->_internalWorkQueue = v21;
  }

  return v18;
}

- (void)removePendingPublishRequestsForStatusTypeIdentifier:(id)identifier olderThanRequest:(id)request
{
  requestCopy = request;
  identifierCopy = identifier;
  databaseManager = [(SKAStatusPublishingManager *)self databaseManager];
  newBackgroundContext = [databaseManager newBackgroundContext];

  [(SKAStatusPublishingManager *)self _removePendingPublishRequestsForStatusTypeIdentifier:identifierCopy olderThanRequest:requestCopy databaseContext:newBackgroundContext];
}

- (void)provisionPayloads:(id)payloads statusTypeIdentifier:(id)identifier completion:(id)completion
{
  payloadsCopy = payloads;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = os_transaction_create();
  databaseManager = [(SKAStatusPublishingManager *)self databaseManager];
  newBackgroundContext = [databaseManager newBackgroundContext];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke;
  v18[3] = &unk_27843F290;
  v19 = payloadsCopy;
  selfCopy = self;
  v22 = identifierCopy;
  v23 = completionCopy;
  v21 = v11;
  v14 = identifierCopy;
  v15 = v11;
  v16 = completionCopy;
  v17 = payloadsCopy;
  [(SKAStatusPublishingManager *)self findOrCreatePersonalChannelForStatusTypeIdentifier:v14 databaseContext:newBackgroundContext completion:v18];
}

void __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v31 = v6;
    v8 = v5;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = a1[4];
    v9 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        v12 = 0;
        do
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v39 + 1) + 8 * v12);
          v14 = [a1[5] channelManager];
          v15 = [v14 serverTime];

          v16 = [a1[5] encryptionManager];
          v17 = [v13 identifier];
          v18 = [MEMORY[0x277CBEAA8] now];
          [v16 encodeStatusPayloadForProvisioning:v13 statusUniqueIdentifier:v17 dateCreated:v18 currentServerTime:v15 channel:v8];

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v10);
    }

    v19 = +[SKAPowerLogger shared];
    v5 = v8;
    [v19 logEvent:4 ofType:0 onDatabaseChannel:v8];

    v20 = [a1[5] channelManager];
    v21 = a1[4];
    v22 = [v5 identifier];
    v23 = [v5 channelToken];
    v24 = [MEMORY[0x277CBEAA8] now];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_2;
    v34[3] = &unk_27843F268;
    v35 = v5;
    *obja = *(a1 + 2);
    v25 = obja[0];
    v36 = vextq_s8(*obja, *obja, 8uLL);
    v38 = a1[8];
    v37 = a1[6];
    [v20 publishProvisionPayloads:v21 onChannel:v22 withChannelToken:v23 publishInitiateTime:v24 retryCount:0 completion:v34];

    v26 = v35;
    v7 = v31;
  }

  else
  {
    v27 = +[SKAStatusPublishingManager logger];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_cold_1(a1);
    }

    v26 = [SKAError errorWithCode:1101];
    (*(a1[8] + 2))();
    v28 = a1[6];
    v29 = objc_opt_self();
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAPowerLogger shared];
  [v4 logEvent:4 ofType:1 onDatabaseChannel:a1[4]];

  v5 = +[SKAStatusPublishingManager logger];
  v6 = v5;
  if (!v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Successfully provisioned status payloads with the channel manager", buf, 2u);
    }

    v13 = a1[6];
    v14 = *(a1[8] + 2);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_2_cold_1();
  }

  if (![v3 shouldReauthForRetry])
  {
    v14 = *(a1[8] + 2);
LABEL_12:
    v14();
    goto LABEL_13;
  }

  v7 = +[SKAStatusPublishingManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Attempting reauth to resolve error", buf, 2u);
  }

  v8 = [a1[5] accountProvider];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_15;
  v18[3] = &unk_27843F268;
  *&v9 = a1[4];
  *(&v9 + 1) = a1[5];
  v17 = v9;
  v10 = a1[6];
  v21 = a1[8];
  v11 = a1[7];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v19 = v17;
  v20 = v12;
  [v8 refreshCredentialForPrimaryAccountWithCompletion:v18];

LABEL_13:
  v15 = a1[7];
  v16 = objc_opt_self();
}

void __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_15(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusPublishingManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_15_cold_1();
    }

    (*(a1[8] + 2))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Account refresh succeeded, provisioning status payloads", buf, 2u);
    }

    v6 = +[SKAPowerLogger shared];
    [v6 logEvent:4 ofType:0 onDatabaseChannel:a1[4]];

    v7 = [a1[5] channelManager];
    v8 = a1[6];
    v9 = [a1[4] identifier];
    v10 = [a1[4] channelToken];
    v11 = [MEMORY[0x277CBEAA8] now];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_16;
    v12[3] = &unk_27843F240;
    v13 = a1[4];
    v16 = a1[8];
    v14 = a1[6];
    v15 = a1[7];
    [v7 publishProvisionPayloads:v8 onChannel:v9 withChannelToken:v10 publishInitiateTime:v11 retryCount:0 completion:v12];
  }
}

void __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_16(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAPowerLogger shared];
  [v4 logEvent:4 ofType:1 onDatabaseChannel:a1[4]];

  v5 = +[SKAStatusPublishingManager logger];
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_2_cold_1();
    }

    v7 = *(a1[7] + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Successfully provisioned status payloads with the channel manager", v11, 2u);
    }

    v8 = a1[5];
    v7 = *(a1[7] + 16);
  }

  v7();
  v9 = a1[6];
  v10 = objc_opt_self();
}

- (void)_publishStatusRequest:(id)request statusTypeIdentifier:(id)identifier afterTime:(double)time isPendingPublish:(BOOL)publish retryCount:(unint64_t)count completion:(id)completion
{
  requestCopy = request;
  identifierCopy = identifier;
  completionCopy = completion;
  v17 = os_transaction_create();
  v18 = dispatch_time(0, (time * 1000000000.0));
  internalWorkQueue = [(SKAStatusPublishingManager *)self internalWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke;
  block[3] = &unk_27843F358;
  block[4] = self;
  v25 = requestCopy;
  publishCopy = publish;
  v28 = completionCopy;
  countCopy = count;
  v26 = identifierCopy;
  v27 = v17;
  v20 = v17;
  v21 = completionCopy;
  v22 = identifierCopy;
  v23 = requestCopy;
  dispatch_after(v18, internalWorkQueue, block);
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseManager];
  v3 = [v2 newBackgroundContext];

  [*(a1 + 32) ensurePendingPublishRequestExistsWithPublishRequest:*(a1 + 40) forStatusTypeIdentifier:*(a1 + 48) databaseContext:v3];
  if ([*(a1 + 32) _shouldClientRateLimit])
  {
    v4 = [SKAError errorWithCode:1105];
    [*(a1 + 32) setClientIsRateLimited:1];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [*(a1 + 32) setClientIsRateLimited:0];
    objc_initWeak(&location, *(a1 + 32));
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_2;
    v13[3] = &unk_27843F330;
    objc_copyWeak(v17, &location);
    v7 = *(a1 + 40);
    v18 = *(a1 + 80);
    v17[1] = *(a1 + 72);
    *&v8 = v7;
    *(&v8 + 1) = *(a1 + 32);
    v12 = v8;
    v9 = *(a1 + 48);
    v16 = *(a1 + 64);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v14 = v12;
    v15 = v11;
    [v5 findOrCreatePersonalChannelForStatusTypeIdentifier:v6 databaseContext:v3 completion:v13];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (v5)
  {
    v9 = *(a1 + 32);
    v52 = 0;
    v10 = [WeakRetained _shouldAllowPublishForPublishRequest:v9 onChannel:v5 error:&v52];
    v11 = v52;
    v12 = v11;
    if (v10)
    {
      v41 = v11;
      v42 = v6;
      [*(a1 + 40) _markPublishAttempt];
      v13 = [*(a1 + 32) statusUniqueIdentifier];
      v14 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v5 identifier];
        *buf = 138412546;
        v54 = v13;
        v55 = 2112;
        v56 = v15;
        _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Publishing status unique identifier: %@ to channel: %@", buf, 0x16u);
      }

      v39 = [*(a1 + 32) statusPayload];
      v16 = [*(a1 + 40) channelManager];
      v40 = [v16 serverTime];

      v17 = [v8 encryptionManager];
      v18 = [*(a1 + 32) dateCreated];
      v38 = [v17 encodeStatusPayload:v39 statusUniqueIdentifier:v13 dateCreated:v18 currentServerTime:v40 channel:v5];

      v19 = [v5 identifier];
      v37 = [v5 channelToken];
      v36 = [*(a1 + 32) isScheduledRequest];
      LOBYTE(v18) = [*(a1 + 32) isSecondaryDeviceRepublish];
      v20 = +[SKAPowerLogger shared];
      [v20 logEvent:5 ofType:0 onDatabaseChannel:v5];

      v21 = [v8 channelManager];
      v22 = [*(a1 + 32) dateCreated];
      v35 = *(a1 + 88);
      v23 = *(a1 + 80);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20;
      v43[3] = &unk_27843F308;
      v44 = v5;
      v34 = *(a1 + 32);
      v24 = v34.i64[0];
      v45 = vextq_s8(v34, v34, 8uLL);
      v51 = v18;
      v46 = *(a1 + 48);
      v50 = *(a1 + 64);
      v47 = v13;
      v48 = v19;
      v49 = *(a1 + 56);
      v25 = v19;
      v26 = v13;
      v27 = v39;
      [v21 publishData:v38 onChannel:v25 withChannelToken:v37 publishInitiateTime:v22 isPendingPublish:v35 isScheduledPublish:v36 retryCount:v23 completion:v43];

      v12 = v41;
      v6 = v42;
    }

    else
    {
      v29 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_2_cold_1((a1 + 32), v12, v29);
      }

      v30 = [*(a1 + 40) databaseManager];
      v27 = [v30 newBackgroundContext];

      v31 = *(a1 + 40);
      v32 = [*(a1 + 32) statusUniqueIdentifier];
      [v31 _removePendingPublishRequestWithUniqueIdentifier:v32 databaseContext:v27];

      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v28 = +[SKAStatusPublishingManager logger];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_2_cold_2(a1);
    }

    v12 = [SKAError errorWithCode:1101];
    (*(*(a1 + 64) + 16))();
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPowerLogger shared];
  [v4 logEvent:5 ofType:1 onDatabaseChannel:*(a1 + 32)];

  v5 = +[SKAStatusPublishingManager logger];
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_1();
    }

    v7 = [v3 retryIntervalSeconds];
    if ([v3 shouldReauthForRetry])
    {
      v8 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Attempting reauth to resolve error", buf, 2u);
      }

      v9 = [*(a1 + 40) accountProvider];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_21;
      v33[3] = &unk_27843F2B8;
      v33[4] = *(a1 + 40);
      *&v33[5] = v7;
      [v9 refreshCredentialForPrimaryAccountWithCompletion:v33];
    }

    if ([*(a1 + 40) _shouldAbandonRequestForError:v3])
    {
      v10 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_2();
      }

      v11 = [*(a1 + 40) databaseManager];
      v12 = [v11 newBackgroundContext];

      v13 = *(a1 + 40);
      v14 = [*(a1 + 48) statusUniqueIdentifier];
      [v13 _removePendingPublishRequestWithUniqueIdentifier:v14 databaseContext:v12];
    }

    if ([*(a1 + 40) _shouldRollChannelForError:v3])
    {
      v15 = *(a1 + 96);
      v16 = +[SKAStatusPublishingManager logger];
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        if (v17)
        {
          __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_4();
        }
      }

      else
      {
        if (v17)
        {
          __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_3();
        }

        v16 = [*(a1 + 40) invitationManager];
        v25 = *(a1 + 56);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_22;
        v32[3] = &unk_27843F2E0;
        v32[4] = *(a1 + 40);
        *&v32[5] = v7;
        [v16 rollPersonalChannelWithStatusTypeIdentifier:v25 completion:v32];
      }
    }

    if ([*(a1 + 40) _shouldRetryWithDelayForError:v3])
    {
      v26 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_5();
      }

      v27 = +[SKAStatusPublishingManager logger];
      v28 = v27;
      if (v7)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v35 = v7;
          _os_log_impl(&dword_220099000, v28, OS_LOG_TYPE_DEFAULT, "Retrying after %f sec delay", buf, 0xCu);
        }

        [*(a1 + 40) setClientIsRateLimited:1];
        [*(a1 + 40) publishPendingRequestsWithDelay:v7];
      }

      else
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_6();
        }
      }
    }

    else
    {
      [*(a1 + 40) setClientIsRateLimited:0];
    }

    (*(*(a1 + 88) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      *buf = 138412546;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Successfully published status %@ to channel %@", buf, 0x16u);
    }

    [*(a1 + 40) setClientIsRateLimited:0];
    v20 = [*(a1 + 40) databaseManager];
    v21 = [v20 newBackgroundContext];

    v22 = *(a1 + 40);
    v23 = [*(a1 + 48) statusUniqueIdentifier];
    [v22 _removePendingPublishRequestWithUniqueIdentifier:v23 databaseContext:v21];

    v24 = *(a1 + 64);
    (*(*(a1 + 88) + 16))();
  }

  v29 = *(a1 + 80);
  v30 = objc_opt_self();

  v31 = *MEMORY[0x277D85DE8];
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusPublishingManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_15_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Account refresh succeeded, publishing pending publish requests", v6, 2u);
    }

    [*(a1 + 32) publishPendingRequestsWithDelay:*(a1 + 40)];
  }
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_22(uint64_t a1, int a2)
{
  v4 = +[SKAStatusPublishingManager logger];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Channel was rolled successfully.", v6, 2u);
    }

    [*(a1 + 32) publishPendingRequestsWithDelay:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_22_cold_1();
    }
  }
}

- (void)publishPendingRequestsWithDelay:(double)delay
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SKAStatusPublishingManager *)selfCopy pendingRequestScheduled])
  {
    newBackgroundContext = +[SKAStatusPublishingManager logger];
    if (os_log_type_enabled(newBackgroundContext, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, newBackgroundContext, OS_LOG_TYPE_DEFAULT, "Pending publish request has already been scheduled.  Not enqueuing again", buf, 2u);
    }
  }

  else
  {
    databaseManager = [(SKAStatusPublishingManager *)selfCopy databaseManager];
    newBackgroundContext = [databaseManager newBackgroundContext];

    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__2;
    v22 = __Block_byref_object_dispose__2;
    v23 = [(SKADatabaseManaging *)selfCopy->_databaseManager existingPendingPublishRequestsWithDatabaseContext:newBackgroundContext];
    if ([*(v19 + 5) count])
    {
      v7 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(v19 + 5) count];
        delayCopy = delay;
        *v24 = 134218240;
        v25 = v8;
        v26 = 2048;
        v27 = delayCopy;
        _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Will attempt to process %ld pending publish requests after a %.2f second delay", v24, 0x16u);
      }

      v10 = os_transaction_create();
      [(SKAStatusPublishingManager *)selfCopy setPendingRequestScheduled:1];
      v11 = dispatch_time(0, (delay * 1000000000.0));
      internalWorkQueue = [(SKAStatusPublishingManager *)selfCopy internalWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__SKAStatusPublishingManager_publishPendingRequestsWithDelay___block_invoke;
      block[3] = &unk_27843F3A8;
      v16 = v10;
      v17 = buf;
      block[4] = selfCopy;
      v13 = v10;
      dispatch_after(v11, internalWorkQueue, block);
    }

    else
    {
      v13 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "No pending publish requests", v24, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x277D85DE8];
}

void __62__SKAStatusPublishingManager_publishPendingRequestsWithDelay___block_invoke(uint64_t a1)
{
  v1 = a1;
  v64 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPendingRequestScheduled:0];
  v2 = [*(v1 + 32) databaseManager];
  v3 = [v2 newBackgroundContext];

  v4 = [*(v1 + 32) databaseManager];
  v49 = v3;
  v5 = [v4 existingPendingPublishRequestsWithDatabaseContext:v3];
  v6 = *(*(v1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v8 = *(*(*(v1 + 48) + 8) + 40);
  v9 = [v8 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v56;
    v45 = v51;
    v13 = 0x27843D000uLL;
    *&v10 = 138412546;
    v44 = v10;
    v48 = v1;
    v46 = v8;
    do
    {
      v14 = 0;
      v47 = v11;
      do
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v55 + 1) + 8 * v14);
        v16 = [v15 statusUniqueIdentifier];

        if (v16)
        {
          v17 = [v15 dateCreated];
          v18 = [MEMORY[0x277CBEAA8] now];
          [v18 timeIntervalSinceDate:v17];
          v20 = v19;

          if (v20 <= 604800.0)
          {
            v25 = [v15 retryCount];
            v26 = [*(v1 + 32) _maxRetryCount];
            if (v25 >= v26)
            {
              v39 = v26;
              v13 = 0x27843D000uLL;
              v40 = +[SKAStatusPublishingManager logger];
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = [v15 statusUniqueIdentifier];
                *buf = v44;
                v60 = v41;
                v61 = 2048;
                v62 = v39;
                _os_log_impl(&dword_220099000, v40, OS_LOG_TYPE_DEFAULT, "Deleting pending status with ID %@ as it has passed the max retry count of %ld", buf, 0x16u);
              }

              v1 = v48;
              v42 = *(v48 + 32);
              v24 = [v15 statusUniqueIdentifier];
              [v42 _removePendingPublishRequestWithUniqueIdentifier:v24 databaseContext:v49];
              v11 = v47;
            }

            else
            {
              v27 = v1;
              v28 = objc_alloc(MEMORY[0x277D68128]);
              v29 = [v15 payloadData];
              v24 = [v28 initWithData:v29];

              v30 = [objc_alloc(MEMORY[0x277D68138]) initWithStatusPayload:v24];
              v31 = [v15 dateCreated];
              [v30 setDateCreated:v31];

              v32 = [v15 statusUniqueIdentifier];
              [v30 setStatusUniqueIdentifier:v32];

              v33 = [v15 statusTypeIdentifier];
              v34 = [*(v27 + 32) databaseManager];
              v35 = [v15 statusUniqueIdentifier];
              [v34 incrementPendingPublishRequestRetryCountWithUniqueIdentifier:v35 databaseContext:v49];

              v36 = +[SKAStatusPublishingManager logger];
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v37 = [v30 statusUniqueIdentifier];
                *buf = 138412290;
                v60 = v37;
                _os_log_impl(&dword_220099000, v36, OS_LOG_TYPE_DEFAULT, "Attempting to publish pending request with ID: %@", buf, 0xCu);
              }

              v50[0] = MEMORY[0x277D85DD0];
              v50[1] = 3221225472;
              v51[0] = __62__SKAStatusPublishingManager_publishPendingRequestsWithDelay___block_invoke_27;
              v51[1] = &unk_27843F380;
              v38 = *(v48 + 32);
              v52 = *(v48 + 40);
              [v38 _publishStatusRequest:v30 statusTypeIdentifier:v33 afterTime:1 isPendingPublish:v25 + 1 retryCount:v50 completion:0.0];

              v1 = v48;
              v8 = v46;
              v11 = v47;
              v13 = 0x27843D000;
            }
          }

          else
          {
            v21 = [*(v13 + 1136) logger];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v15 statusUniqueIdentifier];
              *buf = 138412290;
              v60 = v22;
              _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Deleting pending status with ID %@ as it has expired", buf, 0xCu);

              v1 = v48;
            }

            v23 = *(v1 + 32);
            v24 = [v15 statusUniqueIdentifier];
            [v23 _removePendingPublishRequestWithUniqueIdentifier:v24 databaseContext:v49];
          }
        }

        else
        {
          v17 = [*(v13 + 1136) logger];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __62__SKAStatusPublishingManager_publishPendingRequestsWithDelay___block_invoke_cold_1(&v53, v54, v17);
          }
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v8 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v11);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __62__SKAStatusPublishingManager_publishPendingRequestsWithDelay___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKAStatusPublishingManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Publish of pending status request with ID:%@ finished with error:%@", &v11, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = objc_opt_self();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)publishPendingRequestForReason:(int64_t)reason
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = +[SKAStatusPublishingManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    reasonCopy = reason;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Publish requested for reason: %ld", &v7, 0xCu);
  }

  [(SKAStatusPublishingManager *)self _pendingDelayTime];
  [(SKAStatusPublishingManager *)self publishPendingRequestsWithDelay:?];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)pendingPublishRequestsForStatusTypeIdentifier:(id)identifier
{
  databaseManager = self->_databaseManager;
  identifierCopy = identifier;
  newBackgroundContext = [(SKADatabaseManaging *)databaseManager newBackgroundContext];
  v7 = [(SKAStatusPublishingManager *)self _pendingPublishRequestsForStatusTypeIdentifier:identifierCopy databaseContext:newBackgroundContext];

  return v7;
}

- (BOOL)_shouldAllowPublishForPublishRequest:(id)request onChannel:(id)channel error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  channelCopy = channel;
  databaseManager = [(SKAStatusPublishingManager *)self databaseManager];
  newBackgroundContext = [databaseManager newBackgroundContext];

  databaseManager2 = [(SKAStatusPublishingManager *)self databaseManager];
  v13 = [databaseManager2 existingStatusForChannel:channelCopy databaseContext:newBackgroundContext];

  uniqueIdentifier = [v13 uniqueIdentifier];
  statusUniqueIdentifier = [requestCopy statusUniqueIdentifier];
  if ([uniqueIdentifier isEqualToString:statusUniqueIdentifier])
  {
    v16 = +[SKAStatusPublishingManager logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingManager _shouldAllowPublishForPublishRequest:onChannel:error:];
    }

    if (error)
    {
      [SKAStatusPublishingManager _errorForDuplicateStatusPublishRequestWithIdentifier:uniqueIdentifier];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    dateCreated = [v13 dateCreated];
    dateCreated2 = [requestCopy dateCreated];
    v20 = dateCreated2;
    v17 = 1;
    if (dateCreated && dateCreated2 && [dateCreated compare:dateCreated2] != -1)
    {
      v21 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v24 = 138413058;
        v25 = uniqueIdentifier;
        v26 = 2112;
        v27 = dateCreated;
        v28 = 2112;
        v29 = statusUniqueIdentifier;
        v30 = 2112;
        v31 = v20;
        _os_log_error_impl(&dword_220099000, v21, OS_LOG_TYPE_ERROR, "Dropping status publish request, existing status %@ was created at %@, publish request %@ from %@ is not newer.", &v24, 0x2Au);
      }

      if (error)
      {
        [SKAStatusPublishingManager _errorForStatusPublishRequestWithIdentifier:statusUniqueIdentifier requestedStatusCreationDate:v20 isOlderThanExistingStatus:uniqueIdentifier existingStatusCreationDate:dateCreated];
        *error = v17 = 0;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_shouldClientRateLimit
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = CFPreferencesCopyAppValue(@"rapidPublishCount", @"com.apple.StatusKitAgent");
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_2833EBAB0;
  }

  _maxRapidPublishes = [(SKAStatusPublishingManager *)self _maxRapidPublishes];
  if (_maxRapidPublishes < [v5 intValue])
  {
    v7 = CFPreferencesCopyAppValue(@"lastPublishTime", @"com.apple.StatusKitAgent");
    if (v7)
    {
      [(SKAStatusPublishingManager *)self _rateLimitDelayTime];
      v9 = v8;
      [v3 timeIntervalSinceDate:v7];
      if (v10 < v9)
      {
        v11 = [v7 dateByAddingTimeInterval:v9];
        v12 = +[SKAStatusPublishingManager logger];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [SKAStatusPublishingManager _shouldClientRateLimit];
        }

        v13 = 1;
        goto LABEL_15;
      }

      v14 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "We've left the rate-limit backoff window.", v16, 2u);
      }

      CFPreferencesSetAppValue(@"rapidPublishCount", &unk_2833EBAB0, @"com.apple.StatusKitAgent");
    }

    v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (void)_markPublishAttempt
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_removePendingPublishRequestsForStatusTypeIdentifier:(id)identifier olderThanRequest:(id)request databaseContext:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contextCopy = context;
  selfCopy = self;
  v27 = contextCopy;
  v11 = [(SKAStatusPublishingManager *)self _pendingPublishRequestsForStatusTypeIdentifier:identifier databaseContext:?];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v29;
    *&v13 = 138412546;
    v26 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        dateCreated = [v17 dateCreated];
        dateCreated2 = [requestCopy dateCreated];
        v20 = [dateCreated compare:dateCreated2];

        if (v20 == -1)
        {
          v21 = +[SKAStatusPublishingManager logger];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            statusUniqueIdentifier = [v17 statusUniqueIdentifier];
            statusUniqueIdentifier2 = [requestCopy statusUniqueIdentifier];
            *buf = v26;
            v33 = statusUniqueIdentifier;
            v34 = 2112;
            v35 = statusUniqueIdentifier2;
            _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Deleting pending publish request with ID: %@ because it is older than newly received publish request with ID %@", buf, 0x16u);
          }

          statusUniqueIdentifier3 = [v17 statusUniqueIdentifier];
          [(SKAStatusPublishingManager *)selfCopy _removePendingPublishRequestWithUniqueIdentifier:statusUniqueIdentifier3 databaseContext:v27];
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v14);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)ensurePendingPublishRequestExistsWithPublishRequest:(id)request forStatusTypeIdentifier:(id)identifier databaseContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  contextCopy = context;
  statusUniqueIdentifier = [requestCopy statusUniqueIdentifier];
  v12 = [(SKADatabaseManaging *)self->_databaseManager existingPendingPublishRequestForUniqueIdentifier:statusUniqueIdentifier withDatabaseContext:contextCopy];

  statusUniqueIdentifier2 = +[SKAStatusPublishingManager logger];
  v14 = os_log_type_enabled(statusUniqueIdentifier2, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v21 = 138412290;
      v22 = statusUniqueIdentifier;
      _os_log_impl(&dword_220099000, statusUniqueIdentifier2, OS_LOG_TYPE_DEFAULT, "Pending status publish request already exists for status unique identifier: %@", &v21, 0xCu);
    }
  }

  else
  {
    if (v14)
    {
      v21 = 138412290;
      v22 = statusUniqueIdentifier;
      _os_log_impl(&dword_220099000, statusUniqueIdentifier2, OS_LOG_TYPE_DEFAULT, "Creating new pending status publish request for status unique identifier: %@", &v21, 0xCu);
    }

    databaseManager = self->_databaseManager;
    statusUniqueIdentifier2 = [requestCopy statusUniqueIdentifier];
    dateCreated = [requestCopy dateCreated];
    statusPayload = [requestCopy statusPayload];
    payloadData = [statusPayload payloadData];
    v19 = [(SKADatabaseManaging *)databaseManager createPendingPublishRequestWithUniqueIdentifier:statusUniqueIdentifier2 dateCreated:dateCreated payloadData:payloadData statusTypeIdentifier:identifierCopy databaseContext:contextCopy];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)findOrCreatePersonalChannelForStatusTypeIdentifier:(id)identifier databaseContext:(id)context completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  completionCopy = completion;
  v11 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:identifierCopy databaseContext:contextCopy];
  v12 = +[SKAStatusPublishingManager logger];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      identifier = [v11 identifier];
      *buf = 138412546;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = identifier;
      _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "StatusTypeIdentifier %@ corresponds to personal channel %@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, v11, 0);
  }

  else
  {
    if (v13)
    {
      *buf = 138412290;
      v19 = identifierCopy;
      _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Could not find an existing personal status channel for statusTypeIdentifier %@, attempting to create a new one.", buf, 0xCu);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __108__SKAStatusPublishingManager_findOrCreatePersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke;
    v16[3] = &unk_27843DE78;
    v17 = completionCopy;
    [(SKAStatusPublishingManager *)self createPersonalChannelForStatusTypeIdentifier:identifierCopy databaseContext:contextCopy completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)createPersonalChannelForStatusTypeIdentifier:(id)identifier databaseContext:(id)context completion:(id)completion
{
  identifierCopy = identifier;
  contextCopy = context;
  completionCopy = completion;
  v11 = +[SKAPowerLogger shared];
  [v11 logEvent:1 ofType:0 channelType:0 identifier:identifierCopy];

  objc_initWeak(&location, self);
  channelManager = self->_channelManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__SKAStatusPublishingManager_createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke;
  v16[3] = &unk_27843F3F8;
  objc_copyWeak(&v20, &location);
  v16[4] = self;
  v13 = completionCopy;
  v19 = v13;
  v14 = identifierCopy;
  v17 = v14;
  v15 = contextCopy;
  v18 = v15;
  [(SKAChannelManaging *)channelManager createChannelWithCompletion:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __102__SKAStatusPublishingManager_createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = +[SKAStatusPublishingManager logger];
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __102__SKAStatusPublishingManager_createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_cold_1();
    }

    if ([v9 shouldReauthForRetry])
    {
      v13 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Attempting reauth to resolve error", buf, 2u);
      }

      v14 = [*(a1 + 32) accountProvider];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __102__SKAStatusPublishingManager_createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_31;
      v20[3] = &unk_27843F3D0;
      v20[4] = *(a1 + 32);
      [v14 refreshCredentialForPrimaryAccountWithCompletion:v20];
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      *buf = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Channel creation request succeeded, new personal channel for statusTypeIdentifier %@ has channel identifier %@", buf, 0x16u);
    }

    v16 = [WeakRetained databaseManager];
    v17 = [v16 createPersonalChannelForStatusTypeIdentifier:*(a1 + 40) channelIdentifier:v7 channelToken:v8 databaseContext:*(a1 + 48)];

    v18 = +[SKAPowerLogger shared];
    [v18 logEvent:1 ofType:1 onDatabaseChannel:v17];

    (*(*(a1 + 56) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __102__SKAStatusPublishingManager_createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusPublishingManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_15_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Account refresh succeeded, publishing pending publish requests", v6, 2u);
    }

    [*(a1 + 32) publishPendingRequestsWithDelay:0.0];
  }
}

- (void)_removePendingPublishRequestWithUniqueIdentifier:(id)identifier databaseContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  v8 = +[SKAStatusPublishingManager logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = identifierCopy;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Deleting pending status publish request with identifier: %@", &v12, 0xCu);
  }

  v9 = [(SKADatabaseManaging *)self->_databaseManager deletePendingPublishRequestWithWithUniqueIdentifier:identifierCopy databaseContext:contextCopy];
  if ((v9 & 1) == 0)
  {
    v10 = +[SKAStatusPublishingManager logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingManager _removePendingPublishRequestWithUniqueIdentifier:databaseContext:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldAbandonRequestForError:(id)error
{
  errorCopy = error;
  if (![errorCopy isSKAError])
  {
    goto LABEL_9;
  }

  if ([errorCopy code] != 805)
  {
    if ([errorCopy code] == 802)
    {
      v4 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusPublishingManager _shouldAbandonRequestForError:];
      }

      goto LABEL_8;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v4 = +[SKAStatusPublishingManager logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SKAStatusPublishingManager _shouldAbandonRequestForError:];
  }

LABEL_8:

  v5 = 1;
LABEL_10:

  return v5;
}

- (BOOL)_shouldRollChannelForError:(id)error
{
  errorCopy = error;
  if ([errorCopy isSKAError] && objc_msgSend(errorCopy, "code") == 803)
  {
    v4 = +[SKAStatusPublishingManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingManager _shouldRollChannelForError:];
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldRetryWithDelayForError:(id)error
{
  errorCopy = error;
  if ([errorCopy isSKAError] && objc_msgSend(errorCopy, "code") == 806)
  {
    v4 = +[SKAStatusPublishingManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingManager _shouldRetryWithDelayForError:];
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_pendingDelayTime
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-stale-publish-wait-time-seconds"];

  v4 = 30.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      v4 = v5;
      v6 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v4;
        v10 = 134217984;
        v11 = v7;
        _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Server bag indicates our pending publish request delay time should be %.2f", &v10, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (double)_rateLimitDelayTime
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-rate-limit-wait-time-seconds"];

  v4 = 300.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      v4 = v5;
      v6 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v4;
        v10 = 134217984;
        v11 = v7;
        _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Server bag indicates our rate limit delay time should be %.2f", &v10, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int64_t)_maxRetryCount
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-request-retry-count"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v3 integerValue];
    v5 = +[SKAStatusPublishingManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = integerValue;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Server bag indicates our max retry count should be %ld", &v8, 0xCu);
    }
  }

  else
  {
    integerValue = 5;
  }

  v6 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (int64_t)_maxRapidPublishes
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-client-rate-limit-max-rapid-publishes"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v3 integerValue];
    v5 = +[SKAStatusPublishingManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = integerValue;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Server bag indicates our max rapid publishes should be %ld", &v8, 0xCu);
    }
  }

  else
  {
    integerValue = 50;
  }

  v6 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (double)_rapidPublishesTimescale
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-client-rate-limit-rapid-publish-time-seconds"];

  integerValue = 10.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v3 integerValue];
      v5 = +[SKAStatusPublishingManager logger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = integerValue;
        _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Server bag indicates our rapid publish timescale should be %ld", &v8, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return integerValue;
}

+ (id)logger
{
  if (logger_onceToken_20 != -1)
  {
    +[SKAStatusPublishingManager logger];
  }

  v3 = logger__logger_20;

  return v3;
}

uint64_t __36__SKAStatusPublishingManager_logger__block_invoke()
{
  logger__logger_20 = os_log_create("com.apple.StatusKit", "SKAStatusPublishingManager");

  return MEMORY[0x2821F96F8]();
}

+ (id)_errorForStatusPublishRequestWithIdentifier:(id)identifier requestedStatusCreationDate:(id)date isOlderThanExistingStatus:(id)status existingStatusCreationDate:(id)creationDate
{
  creationDate = [MEMORY[0x277CCACA8] stringWithFormat:@"Status publish request %@ created at %@ is not newer than existing status %@ at %@", identifier, date, status, creationDate];
  v7 = [SKAError errorWithCode:1103 customDescription:creationDate];

  return v7;
}

+ (id)_errorForDuplicateStatusPublishRequestWithIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"Status publish request has the same status unique identifier as existing status: %@", identifier];
  v4 = [SKAError errorWithCode:1102 customDescription:identifier];

  return v4;
}

- (void)publishStatusRequest:statusTypeIdentifier:afterTime:isPendingPublish:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 56);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Could not find or create a personal channel for statusTypeIdentifier %@ error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__SKAStatusPublishingManager_provisionPayloads_statusTypeIdentifier_completion___block_invoke_15_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_2_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*a1 statusUniqueIdentifier];
  OUTLINED_FUNCTION_1_0();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_220099000, a3, OS_LOG_TYPE_ERROR, "Dropping and removing status publish request with unique identifier %@. Error: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_2_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 48);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Could not find or create a personal channel for statusTypeIdentifier %@ error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_20_cold_6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __122__SKAStatusPublishingManager__publishStatusRequest_statusTypeIdentifier_afterTime_isPendingPublish_retryCount_completion___block_invoke_22_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__SKAStatusPublishingManager_publishPendingRequestsWithDelay___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_220099000, log, OS_LOG_TYPE_ERROR, "Skipping publish of pending request that lacks an status identifier", buf, 2u);
}

- (void)_shouldAllowPublishForPublishRequest:onChannel:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Dropping status publish request, a status with unique identifier %@ has already been published. PublishRequest: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_shouldClientRateLimit
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __102__SKAStatusPublishingManager_createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_removePendingPublishRequestWithUniqueIdentifier:databaseContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_shouldAbandonRequestForError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_shouldAbandonRequestForError:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_shouldRollChannelForError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_shouldRetryWithDelayForError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end