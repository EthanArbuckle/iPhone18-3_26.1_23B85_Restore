@interface SKAPresenceManager
+ (BOOL)isClientPayloadValid:(id)valid withError:(id *)error;
+ (id)logger;
+ (id)oversizeLogger;
+ (id)payloadFromActivityUpdate:(id)update forChannel:(id)channel;
+ (int64_t)_maxPayloadSizeBytes;
+ (int64_t)decideUpdateActionForCurrentCheckpoint:(unint64_t)checkpoint payloadLastCheckpoint:(unint64_t)lastCheckpoint payloadCurrentCheckpoint:(unint64_t)currentCheckpoint;
- (BOOL)_activePersistentPresenceAssertionsExist;
- (BOOL)_activeTransientPresenceAssertionsExist;
- (BOOL)_shouldCryptoRoll;
- (BOOL)addPersistentPresenceAssertionForPresenceIdentifier:(id)identifier presenceOptions:(id)options assertionOptions:(id)assertionOptions payload:(id)payload;
- (BOOL)addTransientPresenceAssertionForClient:(id)client presenceIdentifier:(id)identifier presenceOptions:(id)options assertionOptions:(id)assertionOptions payload:(id)payload;
- (BOOL)removeTransientPresenceAssertionForClient:(id)client presenceIdentifier:(id)identifier;
- (SKAPresenceManager)initWithDatabaseManager:(id)manager channelManager:(id)channelManager subscriptionManager:(id)subscriptionManager accountProvider:(id)provider messagingProvider:(id)messagingProvider delegate:(id)delegate;
- (SKAPresenceManagingDelegate)delegate;
- (id)_sortAndDedupePresenceIdentifiers:(id)identifiers;
- (int64_t)_cryptoRollResetTimeSeconds;
- (unint64_t)_currentCheckpointForChannel:(id)channel;
- (void)_createPresenceChannelForPresenceIdentifier:(id)identifier options:(id)options databaseContext:(id)context completion:(id)completion;
- (void)_findOrCreatePresenceChannelForPresenceIdentifier:(id)identifier options:(id)options databaseContext:(id)context completion:(id)completion;
- (void)_handleIncomingPayloadUpdate:(id)update onChannel:(id)channel withIdentifier:(unint64_t)identifier;
- (void)_markCryptoRoll;
- (void)_presencePayloadForChannel:(id)channel clientPayload:(id)payload options:(id)options timestamp:(id)timestamp completion:(id)completion;
- (void)_presentDevicesChanged:(id)changed forChannel:(id)channel;
- (void)_rollChannelForCryptoFailureIfAllowed:(id)allowed;
- (void)_sendPollingMessageForChannel:(id)channel completion:(id)completion;
- (void)_sendPresenceAssertionMessageForChannel:(id)channel withPayload:(id)payload withPriority:(int64_t)priority options:(id)options isRefresh:(BOOL)refresh completion:(id)completion;
- (void)_sendPresenceDeactivationMessageForChannel:(id)channel options:(id)options completion:(id)completion;
- (void)_setCheckpointForChannel:(id)channel checkpoint:(unint64_t)checkpoint;
- (void)channelReceivedIncomingPayloadUpdate:(id)update channel:(id)channel withIdentifier:(unint64_t)identifier;
- (void)createPresenceChannelForPresenceIdentifier:(id)identifier options:(id)options databaseContext:(id)context completion:(id)completion;
- (void)didUpdatePresentDevices:(id)devices forChannel:(id)channel;
- (void)findOrCreatePresenceChannelForPresenceIdentifier:(id)identifier options:(id)options databaseContext:(id)context completion:(id)completion;
- (void)findPresenceChannelForPresenceIdentifier:(id)identifier isPersonal:(BOOL)personal databaseContext:(id)context completion:(id)completion;
- (void)pollAndUpdatePresentDevicesForChannel:(id)channel completion:(id)completion;
- (void)presentDevicesForPresenceIdentifier:(id)identifier isPersonal:(BOOL)personal completion:(id)completion;
- (void)recalculateActivityTracking;
- (void)releaseAllTransientPresenceAssertionsAssociatedWithClient:(id)client options:(id)options completion:(id)completion;
- (void)releasePersistentPresenceAssertionForPresenceIdentifier:(id)identifier options:(id)options completion:(id)completion;
- (void)releaseTransientPresenceAssertionForPresenceIdentifier:(id)identifier options:(id)options client:(id)client completion:(id)completion;
- (void)retainPersistentPresenceAssertionForPresenceIdentifier:(id)identifier withPresencePayload:(id)payload assertionOptions:(id)options presenceOptions:(id)presenceOptions completion:(id)completion;
- (void)retainTransientPresenceAssertionForPresenceIdentifier:(id)identifier withPresencePayload:(id)payload assertionOptions:(id)options presenceOptions:(id)presenceOptions client:(id)client completion:(id)completion;
@end

@implementation SKAPresenceManager

- (SKAPresenceManager)initWithDatabaseManager:(id)manager channelManager:(id)channelManager subscriptionManager:(id)subscriptionManager accountProvider:(id)provider messagingProvider:(id)messagingProvider delegate:(id)delegate
{
  managerCopy = manager;
  channelManagerCopy = channelManager;
  subscriptionManagerCopy = subscriptionManager;
  providerCopy = provider;
  messagingProviderCopy = messagingProvider;
  delegateCopy = delegate;
  v37.receiver = self;
  v37.super_class = SKAPresenceManager;
  v18 = [(SKAPresenceManager *)&v37 init];
  if (v18)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    activeTransientPresenceAssertionsByClient = v18->_activeTransientPresenceAssertionsByClient;
    v18->_activeTransientPresenceAssertionsByClient = weakToStrongObjectsMapTable;

    objc_storeStrong(&v18->_databaseManager, manager);
    objc_storeStrong(&v18->_channelManager, channelManager);
    objc_storeStrong(&v18->_accountProvider, provider);
    objc_storeStrong(&v18->_messagingProvider, messagingProvider);
    objc_storeWeak(&v18->_delegate, delegateCopy);
    objc_storeStrong(&v18->_subscriptionManager, subscriptionManager);
    v21 = [[SKAPresentDevicesManager alloc] initWithChannelManager:v18->_channelManager databaseManager:v18->_databaseManager messagingProvider:v18->_messagingProvider delegate:v18];
    presentDevicesManager = v18->_presentDevicesManager;
    v18->_presentDevicesManager = v21;

    v18->_presenceEnabledByServer = +[SKAServerBag presenceEnabledByServer];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_DEFAULT, 0);

    v25 = dispatch_queue_create("com.apple.StatusKitAgent.PresenceManager", v24);
    internalWorkQueue = v18->_internalWorkQueue;
    v18->_internalWorkQueue = v25;

    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_queue_attr_make_with_qos_class(v27, QOS_CLASS_DEFAULT, 0);

    v29 = dispatch_queue_create("com.apple.StatusKitAgent.PayloadUpdateProcessing", v28);
    payloadUpdateProcessingQueue = v18->_payloadUpdateProcessingQueue;
    v18->_payloadUpdateProcessingQueue = v29;

    v31 = [[SKARateLimiter alloc] initWithLastRequestTimePrefsKey:@"lastReassertTime" requestsCountPrefsKey:@"assertionsSinceLastReassertTime" maxRequestsBagKey:@"shared-channels-max-reassertion-count" defaultMaxRequests:5 resetTimeBagKey:@"shared-channels-reassert-reset-time-seconds" defaultResetTime:30];
    rateLimiter = v18->_rateLimiter;
    v18->_rateLimiter = v31;

    v18->_transientAssertionsLock._os_unfair_lock_opaque = 0;
  }

  return v18;
}

- (void)retainTransientPresenceAssertionForPresenceIdentifier:(id)identifier withPresencePayload:(id)payload assertionOptions:(id)options presenceOptions:(id)presenceOptions client:(id)client completion:(id)completion
{
  identifierCopy = identifier;
  payloadCopy = payload;
  optionsCopy = options;
  presenceOptionsCopy = presenceOptions;
  clientCopy = client;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke;
  block[3] = &unk_27843EA00;
  objc_copyWeak(&v35, &location);
  v33 = optionsCopy;
  v34 = completionCopy;
  v28 = presenceOptionsCopy;
  v29 = payloadCopy;
  selfCopy = self;
  v31 = identifierCopy;
  v32 = clientCopy;
  v21 = optionsCopy;
  v22 = clientCopy;
  v23 = identifierCopy;
  v24 = payloadCopy;
  v25 = presenceOptionsCopy;
  v26 = completionCopy;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (([WeakRetained presenceEnabledByServer] & 1) == 0)
  {
    v18 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
    }

    goto LABEL_15;
  }

  v3 = [*(a1 + 32) serviceIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) serviceIdentifier];
    v6 = [SKAServerBag presenceEnabledByServerForServiceIdentifier:v5];

    if (!v6)
    {
      v21 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke_cold_2(a1 + 32);
      }

LABEL_15:
      v22 = *(a1 + 80);
      v9 = [SKAError errorWithCode:100];
      v20 = *(v22 + 16);
LABEL_16:
      v20();
      goto LABEL_17;
    }
  }

  v7 = *(a1 + 40);
  v33 = 0;
  v8 = [SKAPresenceManager isClientPayloadValid:v7 withError:&v33];
  v9 = v33;
  if (!v8)
  {
    v19 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke_cold_3();
    }

    v20 = *(*(a1 + 80) + 16);
    goto LABEL_16;
  }

  v10 = [WeakRetained databaseManager];
  v11 = [v10 newBackgroundContext];

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 32);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke_26;
  v23[3] = &unk_27843E9D8;
  objc_copyWeak(&v32, (a1 + 88));
  v24 = *(a1 + 64);
  v25 = *(a1 + 56);
  v26 = *(a1 + 32);
  v27 = *(a1 + 72);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v28 = v15;
  v29 = v16;
  v17 = *(a1 + 80);
  v30 = WeakRetained;
  v31 = v17;
  [v12 _findOrCreatePresenceChannelForPresenceIdentifier:v13 options:v14 databaseContext:v11 completion:v23];

  objc_destroyWeak(&v32);
LABEL_17:
}

void __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v8 = WeakRetained;
  if (v6)
  {
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    if (([WeakRetained addTransientPresenceAssertionForClient:*(a1 + 32) presenceIdentifier:*(a1 + 40) presenceOptions:*(a1 + 48) assertionOptions:*(a1 + 56) payload:*(a1 + 64)] & 1) == 0)
    {
      v9 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Transient presence assertion already existed, but still sending presence assertion to ensure apsd is in sync.", buf, 2u);
      }
    }

    [*(a1 + 72) recalculateActivityTracking];
    v10 = *(a1 + 64);
    v11 = [*(a1 + 56) priority];
    v12 = *(a1 + 48);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke_27;
    v15[3] = &unk_27843E9B0;
    v18 = *(a1 + 88);
    v13 = v5;
    v14 = *(a1 + 80);
    v16 = v13;
    v17 = v14;
    [v8 _sendPresenceAssertionMessageForChannel:v13 withPayload:v10 withPriority:v11 options:v12 isRefresh:0 completion:v15];
  }
}

void __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Updating active particpants for channel %@", buf, 0xCu);
    }

    v8 = [*(a1 + 40) presentDevicesManager];
    v9 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke_28;
    v11[3] = &unk_27843E988;
    v12 = *(a1 + 48);
    [v8 setParticipantPayloads:v5 forChannel:v9 withCompletion:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)retainPersistentPresenceAssertionForPresenceIdentifier:(id)identifier withPresencePayload:(id)payload assertionOptions:(id)options presenceOptions:(id)presenceOptions completion:(id)completion
{
  identifierCopy = identifier;
  payloadCopy = payload;
  optionsCopy = options;
  presenceOptionsCopy = presenceOptions;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __141__SKAPresenceManager_retainPersistentPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_completion___block_invoke;
  v23[3] = &unk_27843EA50;
  objc_copyWeak(&v30, &location);
  v24 = presenceOptionsCopy;
  v25 = payloadCopy;
  selfCopy = self;
  v27 = identifierCopy;
  v28 = optionsCopy;
  v29 = completionCopy;
  v18 = optionsCopy;
  v19 = identifierCopy;
  v20 = payloadCopy;
  v21 = presenceOptionsCopy;
  v22 = completionCopy;
  dispatch_async(internalWorkQueue, v23);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __141__SKAPresenceManager_retainPersistentPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (([WeakRetained presenceEnabledByServer] & 1) == 0)
  {
    v18 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
    }

    goto LABEL_15;
  }

  v3 = [*(a1 + 32) serviceIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) serviceIdentifier];
    v6 = [SKAServerBag presenceEnabledByServerForServiceIdentifier:v5];

    if (!v6)
    {
      v21 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __141__SKAPresenceManager_retainPersistentPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_completion___block_invoke_cold_2(a1 + 32);
      }

LABEL_15:
      v22 = *(a1 + 72);
      v9 = [SKAError errorWithCode:100];
      v20 = *(v22 + 16);
LABEL_16:
      v20();
      goto LABEL_17;
    }
  }

  v7 = *(a1 + 40);
  v32 = 0;
  v8 = [SKAPresenceManager isClientPayloadValid:v7 withError:&v32];
  v9 = v32;
  if (!v8)
  {
    v19 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke_cold_3();
    }

    v20 = *(*(a1 + 72) + 16);
    goto LABEL_16;
  }

  v10 = [WeakRetained databaseManager];
  v11 = [v10 newBackgroundContext];

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 32);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __141__SKAPresenceManager_retainPersistentPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_completion___block_invoke_32;
  v23[3] = &unk_27843EA28;
  objc_copyWeak(&v31, (a1 + 80));
  v24 = *(a1 + 56);
  v25 = *(a1 + 32);
  v26 = *(a1 + 64);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v27 = v15;
  v28 = v16;
  v17 = *(a1 + 72);
  v29 = WeakRetained;
  v30 = v17;
  [v12 _findOrCreatePresenceChannelForPresenceIdentifier:v13 options:v14 databaseContext:v11 completion:v23];

  objc_destroyWeak(&v31);
LABEL_17:
}

void __141__SKAPresenceManager_retainPersistentPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_completion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v8 = WeakRetained;
  if (v6)
  {
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    if (([WeakRetained addPersistentPresenceAssertionForPresenceIdentifier:*(a1 + 32) presenceOptions:*(a1 + 40) assertionOptions:*(a1 + 48) payload:*(a1 + 56)] & 1) == 0)
    {
      v9 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Persistent presence assertion already existed, but still sending presence assertion to ensure apsd is in sync.", buf, 2u);
      }
    }

    [*(a1 + 64) recalculateActivityTracking];
    v10 = *(a1 + 56);
    v11 = [*(a1 + 48) priority];
    v12 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __141__SKAPresenceManager_retainPersistentPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_completion___block_invoke_33;
    v15[3] = &unk_27843E9B0;
    v18 = *(a1 + 80);
    v13 = v5;
    v14 = *(a1 + 72);
    v16 = v13;
    v17 = v14;
    [v8 _sendPresenceAssertionMessageForChannel:v13 withPayload:v10 withPriority:v11 options:v12 isRefresh:0 completion:v15];
  }
}

void __141__SKAPresenceManager_retainPersistentPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_completion___block_invoke_33(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Updating active particpants for channel %@", buf, 0xCu);
    }

    v8 = [*(a1 + 40) presentDevicesManager];
    v9 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __141__SKAPresenceManager_retainPersistentPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_completion___block_invoke_34;
    v11[3] = &unk_27843E988;
    v12 = *(a1 + 48);
    [v8 setParticipantPayloads:v5 forChannel:v9 withCompletion:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isClientPayloadValid:(id)valid withError:(id *)error
{
  validCopy = valid;
  if (validCopy && (v6 = +[SKAPresenceManager _maxPayloadSizeBytes](SKAPresenceManager, "_maxPayloadSizeBytes"), [validCopy payloadData], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8 > v6))
  {
    v9 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[SKAPresenceManager isClientPayloadValid:withError:];
    }

    if (error)
    {
      [SKAError errorWithCode:902];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_sendPresenceAssertionMessageForChannel:(id)channel withPayload:(id)payload withPriority:(int64_t)priority options:(id)options isRefresh:(BOOL)refresh completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  payloadCopy = payload;
  optionsCopy = options;
  completionCopy = completion;
  identifier = [channelCopy identifier];
  v16 = [SKAPresenceMembershipKey alloc];
  presenceMembershipKey = [channelCopy presenceMembershipKey];
  v18 = [(SKAPresenceMembershipKey *)v16 initWithPrivateKeyMaterial:presenceMembershipKey];

  v19 = [SKAPresenceEncryptionKey alloc];
  presenceServerKey = [channelCopy presenceServerKey];
  v21 = [(SKAPresenceEncryptionKey *)v19 initWithKeyMaterial:presenceServerKey];

  if (v18 && v21)
  {
    v22 = +[SKAPresenceManager oversizeLogger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [channelCopy identifier];
      [channelCopy presenceIdentifier];
      v25 = v24 = self;
      *buf = 138412802;
      v49 = identifier2;
      v50 = 2112;
      v51 = v25;
      v52 = 2112;
      v53 = payloadCopy;
      _os_log_impl(&dword_220099000, v22, OS_LOG_TYPE_DEFAULT, "Attempting to assert on channel %@ for presence identifier %@ with payload %@", buf, 0x20u);

      self = v24;
    }

    channelToken = [channelCopy channelToken];
    channelManager = [(SKAPresenceManager *)self channelManager];
    [channelManager serverTime];
    v29 = v28 = self;

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke;
    v37[3] = &unk_27843EB40;
    v45 = completionCopy;
    v37[4] = v28;
    v38 = channelCopy;
    v39 = identifier;
    priorityCopy = priority;
    v40 = v18;
    v41 = v21;
    v42 = v29;
    v43 = channelToken;
    v44 = optionsCopy;
    refreshCopy = refresh;
    v35 = channelToken;
    v30 = v29;
    [(SKAPresenceManager *)v28 _presencePayloadForChannel:v38 clientPayload:payloadCopy options:v44 timestamp:v30 completion:v37];
  }

  else
  {
    v31 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceManager _sendPresenceAssertionMessageForChannel:withPayload:withPriority:options:isRefresh:completion:];
    }

    v30 = [SKAError errorWithCode:402];
    [(SKAPresenceManager *)self _rollChannelForCryptoFailureIfAllowed:channelCopy];
    (*(completionCopy + 2))(completionCopy, v30, MEMORY[0x277CBEBF8], 1.79769313e308);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 96) + 16))(1.79769313e308);
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = [*(a1 + 32) payloadUpdateProcessingQueue];
    dispatch_suspend(v8);

    v9 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) presenceIdentifier];
      v11 = *(a1 + 48);
      *buf = 138412546;
      v51 = v10;
      v52 = 2112;
      v53 = v11;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "payloadUpdateProcessingQueue suspended. Sending presence assertion message for presence identifier %@ on channel %@", buf, 0x16u);
    }

    v12 = +[SKAPowerLogger shared];
    [v12 logEvent:0 ofType:0 onDatabaseChannel:*(a1 + 40)];

    v13 = [*(a1 + 32) channelManager];
    v14 = *(a1 + 104);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a1 + 72);
    v37 = *(a1 + 80);
    v19 = [*(a1 + 88) serviceIdentifier];
    v33 = v18;
    v34 = v16;
    v35 = v15;
    v36 = v14;
    v32 = *(a1 + 112);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_38;
    v38[3] = &unk_27843EB18;
    objc_copyWeak(v47, &location);
    v39 = *(a1 + 40);
    v20 = v5;
    v21 = v5;
    v22 = *(a1 + 104);
    v40 = v21;
    v47[1] = v22;
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);
    v26 = *(a1 + 72);
    *&v27 = v25;
    *(&v27 + 1) = v26;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v41 = v28;
    v42 = v27;
    v43 = *(a1 + 80);
    v44 = *(a1 + 88);
    v48 = *(a1 + 112);
    v29 = *(a1 + 96);
    v45 = *(a1 + 32);
    v46 = v29;
    LOBYTE(v31) = v32 & 1;
    [v13 assertPresence:v21 withPriority:v36 onChannel:v35 membershipKey:v34 serverKey:v17 timestamp:v33 withChannelToken:v37 serviceIdentifier:v19 isRefresh:v31 completion:v38];

    v5 = v20;
    objc_destroyWeak(v47);
    objc_destroyWeak(&location);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_38(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  v12 = [WeakRetained internalWorkQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2;
  v27[3] = &unk_27843EAF0;
  v28 = *(a1 + 32);
  v29 = v9;
  v30 = WeakRetained;
  v13 = *(a1 + 40);
  v37 = *(a1 + 120);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v31 = v18;
  v32 = v17;
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v40 = *(a1 + 128);
  v22 = *(a1 + 104);
  *&v23 = v21;
  *(&v23 + 1) = *(a1 + 96);
  *&v24 = v19;
  *(&v24 + 1) = v20;
  v33 = v24;
  v34 = v23;
  v38 = a5;
  v35 = v10;
  v36 = v22;
  v39 = a3;
  v25 = v10;
  v26 = v9;
  dispatch_async(v12, v27);
}

void __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2(uint64_t a1)
{
  v2 = +[SKAPowerLogger shared];
  [v2 logEvent:0 ofType:1 onDatabaseChannel:*(a1 + 32)];

  v3 = *(a1 + 40);
  if (!v3)
  {
    v17 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Presence assertion completed with success.", &v23, 2u);
    }

    [*(a1 + 112) _setCheckpointForChannel:*(a1 + 32) checkpoint:*(a1 + 152)];
    v18 = *(a1 + 40);
    v19 = *(a1 + 120);
    (*(*(a1 + 128) + 16))(*(a1 + 144));
    v20 = +[SKAPresenceManager logger];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v23 = 0;
    goto LABEL_14;
  }

  v4 = [v3 shouldReauthForRetry];
  v5 = +[SKAPresenceManager logger];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (!v4)
  {
    if (v6)
    {
      __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_cold_1((a1 + 40));
    }

    v21 = *(a1 + 40);
    v22 = *(a1 + 120);
    (*(*(a1 + 128) + 16))(*(a1 + 144));
    v20 = +[SKAPresenceManager logger];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v23 = 0;
LABEL_14:
    _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "payloadUpdateProcessingQueue resumed", &v23, 2u);
LABEL_15:

    v16 = [*(a1 + 48) payloadUpdateProcessingQueue];
    dispatch_resume(v16);
    goto LABEL_16;
  }

  if (v6)
  {
    __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_cold_2((a1 + 40));
  }

  v7 = [*(a1 + 48) accountProvider];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_39;
  v24[3] = &unk_27843EAC8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v25 = v8;
  v26 = v9;
  v11 = v10;
  v12 = *(a1 + 136);
  v27 = v11;
  v37 = v12;
  v28 = *(a1 + 64);
  v29 = *(a1 + 72);
  v30 = *(a1 + 80);
  v31 = *(a1 + 88);
  v32 = *(a1 + 96);
  v33 = *(a1 + 104);
  v39 = *(a1 + 160);
  v13 = *(a1 + 128);
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  v36 = v13;
  v34 = v14;
  v38 = *(a1 + 144);
  v35 = v15;
  [v7 refreshCredentialForPrimaryAccountWithCompletion:v24];

  v16 = v25;
LABEL_16:
}

void __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAPresenceManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_39_cold_1();
    }

    v6 = *(a1 + 112);
    (*(*(a1 + 120) + 16))(*(a1 + 136));
    v7 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "payloadUpdateProcessingQueue resumed", buf, 2u);
    }

    v8 = [*(a1 + 40) payloadUpdateProcessingQueue];
    dispatch_resume(v8);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Account refresh succeeded, reattempting presence assertion", buf, 2u);
    }

    v9 = +[SKAPowerLogger shared];
    [v9 logEvent:0 ofType:0 onDatabaseChannel:*(a1 + 32)];

    v10 = [*(a1 + 40) channelManager];
    v11 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23 = *(a1 + 128);
    v12 = *(a1 + 72);
    v21 = *(a1 + 64);
    v14 = *(a1 + 80);
    v13 = *(a1 + 88);
    v15 = [*(a1 + 96) serviceIdentifier];
    v16 = *(a1 + 144);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_40;
    v24[3] = &unk_27843EAA0;
    v20 = *(a1 + 32);
    v17 = v20.i64[0];
    v25 = vextq_s8(v20, v20, 8uLL);
    v18 = *(a1 + 120);
    v26 = *(a1 + 104);
    v27 = v18;
    LOBYTE(v19) = v16;
    [v10 assertPresence:v11 withPriority:v23 onChannel:v22 membershipKey:v21 serverKey:v12 timestamp:v14 withChannelToken:v13 serviceIdentifier:v15 isRefresh:v19 completion:v24];
  }
}

void __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_40(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a4;
  v11 = [*(a1 + 32) internalWorkQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_41;
  v16[3] = &unk_27843EA78;
  v17 = *(a1 + 40);
  v18 = v9;
  v12 = *(a1 + 56);
  v23 = a5;
  v13 = *(a1 + 48);
  v19 = v10;
  v20 = v13;
  v24 = a3;
  v21 = *(a1 + 32);
  v22 = v12;
  v14 = v10;
  v15 = v9;
  dispatch_async(v11, v16);
}

void __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_41(uint64_t a1)
{
  v2 = +[SKAPowerLogger shared];
  [v2 logEvent:0 ofType:1 onDatabaseChannel:*(a1 + 32)];

  v3 = *(a1 + 40);
  v4 = +[SKAPresenceManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_41_cold_1((a1 + 40));
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Presence assertion completed with success.", buf, 2u);
    }

    [*(a1 + 56) _setCheckpointForChannel:*(a1 + 32) checkpoint:*(a1 + 88)];
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  (*(*(a1 + 72) + 16))(*(a1 + 80));
  v8 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "payloadUpdateProcessingQueue resumed", v10, 2u);
  }

  v9 = [*(a1 + 64) payloadUpdateProcessingQueue];
  dispatch_resume(v9);
}

- (void)pollAndUpdatePresentDevicesForChannel:(id)channel completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  v8 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = channelCopy;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Polling for channel: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__SKAPresenceManager_pollAndUpdatePresentDevicesForChannel_completion___block_invoke;
  v12[3] = &unk_27843EB68;
  objc_copyWeak(&v15, buf);
  v9 = channelCopy;
  v13 = v9;
  v10 = completionCopy;
  v14 = v10;
  [(SKAPresenceManager *)self _sendPollingMessageForChannel:v9 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __71__SKAPresenceManager_pollAndUpdatePresentDevicesForChannel_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = +[SKAPresenceManager logger];
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __71__SKAPresenceManager_pollAndUpdatePresentDevicesForChannel_completion___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Updating active particpants for channel %@  based on polling response", buf, 0xCu);
    }

    v11 = [WeakRetained presentDevicesManager];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__SKAPresenceManager_pollAndUpdatePresentDevicesForChannel_completion___block_invoke_45;
    v14[3] = &unk_27843E988;
    v12 = *(a1 + 32);
    v15 = *(a1 + 40);
    [v11 setParticipantPayloads:v6 forChannel:v12 withCompletion:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendPollingMessageForChannel:(id)channel completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  v8 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = channelCopy;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Sending polling request for channel: %@", buf, 0xCu);
  }

  identifier = [channelCopy identifier];
  v10 = [SKAPresenceMembershipKey alloc];
  presenceMembershipKey = [channelCopy presenceMembershipKey];
  v22 = [(SKAPresenceMembershipKey *)v10 initWithPrivateKeyMaterial:presenceMembershipKey];

  v12 = [SKAPresenceEncryptionKey alloc];
  presenceServerKey = [channelCopy presenceServerKey];
  v21 = [(SKAPresenceEncryptionKey *)v12 initWithKeyMaterial:presenceServerKey];

  if (v22 && v21)
  {
    channelToken = [channelCopy channelToken];
    v15 = +[SKAPowerLogger shared];
    [v15 logEvent:3 ofType:0 onDatabaseChannel:channelCopy];

    objc_initWeak(buf, self);
    channelManager = [(SKAPresenceManager *)self channelManager];
    serviceIdentifier = [channelCopy serviceIdentifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __63__SKAPresenceManager__sendPollingMessageForChannel_completion___block_invoke;
    v23[3] = &unk_27843EC30;
    objc_copyWeak(&v31, buf);
    v24 = channelCopy;
    v30 = completionCopy;
    v25 = identifier;
    v26 = v22;
    v27 = v21;
    v18 = channelToken;
    v28 = v18;
    selfCopy = self;
    [channelManager pollActiveParticipantsForChannel:v25 membershipKey:v26 serverKey:v27 withChannelToken:v18 serviceIdentifier:serviceIdentifier completion:v23];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceManager _sendPollingMessageForChannel:completion:];
    }

    v18 = [SKAError errorWithCode:402];
    [(SKAPresenceManager *)self _rollChannelForCryptoFailureIfAllowed:channelCopy];
    (*(completionCopy + 2))(completionCopy, v18, MEMORY[0x277CBEBF8]);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __63__SKAPresenceManager__sendPollingMessageForChannel_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v10 = [WeakRetained internalWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SKAPresenceManager__sendPollingMessageForChannel_completion___block_invoke_2;
  block[3] = &unk_27843EC08;
  v20 = *(a1 + 32);
  v21 = v7;
  v22 = WeakRetained;
  v27 = *(a1 + 80);
  v23 = v8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v24 = v16;
  v25 = v15;
  v26 = *(a1 + 72);
  v28 = a3;
  v17 = v8;
  v18 = v7;
  dispatch_async(v10, block);
}

void __63__SKAPresenceManager__sendPollingMessageForChannel_completion___block_invoke_2(uint64_t a1)
{
  v2 = +[SKAPowerLogger shared];
  [v2 logEvent:3 ofType:1 onDatabaseChannel:*(a1 + 32)];

  v3 = *(a1 + 40);
  if (!v3)
  {
    v12 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Polling completed with success.", v17, 2u);
    }

    [*(a1 + 96) _setCheckpointForChannel:*(a1 + 32) checkpoint:*(a1 + 112)];
    v13 = *(a1 + 56);
    v14 = *(*(a1 + 104) + 16);
    goto LABEL_12;
  }

  v4 = [v3 shouldReauthForRetry];
  v5 = +[SKAPresenceManager logger];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (!v4)
  {
    if (v6)
    {
      __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_cold_1((a1 + 40));
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v14 = *(*(a1 + 104) + 16);
LABEL_12:
    v14();
    return;
  }

  if (v6)
  {
    __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_cold_2((a1 + 40));
  }

  v7 = [*(a1 + 48) accountProvider];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__SKAPresenceManager__sendPollingMessageForChannel_completion___block_invoke_47;
  v18[3] = &unk_27843EBE0;
  v27 = *(a1 + 104);
  v19 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v20 = v8;
  v21 = v9;
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  v25 = v10;
  v26 = v11;
  [v7 refreshCredentialForPrimaryAccountWithCompletion:v18];
}

void __63__SKAPresenceManager__sendPollingMessageForChannel_completion___block_invoke_47(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_39_cold_1();
    }

    v5 = *(a1 + 32);
    (*(*(a1 + 96) + 16))();
  }

  else
  {
    v6 = +[SKAPowerLogger shared];
    [v6 logEvent:3 ofType:0 onDatabaseChannel:*(a1 + 40)];

    v7 = [*(a1 + 48) channelManager];
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = [*(a1 + 40) serviceIdentifier];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__SKAPresenceManager__sendPollingMessageForChannel_completion___block_invoke_48;
    v16[3] = &unk_27843EBB8;
    v15 = *(a1 + 40);
    v13 = v15.i64[0];
    v17 = vextq_s8(v15, v15, 8uLL);
    v14 = *(a1 + 96);
    v18 = *(a1 + 88);
    v19 = v14;
    [v7 pollActiveParticipantsForChannel:v8 membershipKey:v9 serverKey:v10 withChannelToken:v11 serviceIdentifier:v12 completion:v16];
  }
}

void __63__SKAPresenceManager__sendPollingMessageForChannel_completion___block_invoke_48(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) internalWorkQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__SKAPresenceManager__sendPollingMessageForChannel_completion___block_invoke_2_49;
  v14[3] = &unk_27843EB90;
  v15 = *(a1 + 40);
  v16 = v7;
  v10 = *(a1 + 56);
  v11 = *(a1 + 48);
  v17 = v8;
  v18 = v11;
  v19 = v10;
  v20 = a3;
  v12 = v8;
  v13 = v7;
  dispatch_async(v9, v14);
}

uint64_t __63__SKAPresenceManager__sendPollingMessageForChannel_completion___block_invoke_2_49(uint64_t a1)
{
  v2 = +[SKAPowerLogger shared];
  [v2 logEvent:3 ofType:1 onDatabaseChannel:*(a1 + 32)];

  v3 = *(a1 + 40);
  v4 = +[SKAPresenceManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_41_cold_1((a1 + 40));
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 64) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Polling completed with success.", v11, 2u);
    }

    [*(a1 + 56) _setCheckpointForChannel:*(a1 + 32) checkpoint:*(a1 + 72)];
    v9 = *(a1 + 48);
    v8 = *(*(a1 + 64) + 16);
  }

  return v8();
}

- (void)releaseTransientPresenceAssertionForPresenceIdentifier:(id)identifier options:(id)options client:(id)client completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  clientCopy = client;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke;
  block[3] = &unk_27843ECA8;
  objc_copyWeak(&v25, &location);
  selfCopy = self;
  v24 = completionCopy;
  v20 = identifierCopy;
  v21 = optionsCopy;
  v22 = clientCopy;
  v15 = clientCopy;
  v16 = optionsCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if ([WeakRetained presenceEnabledByServer])
  {
    v3 = [WeakRetained databaseManager];
    v4 = [v3 newBackgroundContext];

    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) isPersonal];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke_51;
    v13[3] = &unk_27843DC98;
    objc_copyWeak(&v17, (a1 + 72));
    v16 = *(a1 + 64);
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    *&v9 = *(a1 + 40);
    *(&v9 + 1) = *(a1 + 56);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v14 = v10;
    v15 = v9;
    [WeakRetained findPresenceChannelForPresenceIdentifier:v5 isPersonal:v6 databaseContext:v4 completion:v13];

    objc_destroyWeak(&v17);
  }

  else
  {
    v11 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
    }

    v12 = *(a1 + 64);
    v4 = [SKAError errorWithCode:100];
    (*(v12 + 16))(v12, v4);
  }
}

void __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (v6)
  {
    (*(*(a1 + 64) + 16))();
  }

  else if (WeakRetained)
  {
    v9 = [WeakRetained internalWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke_2;
    block[3] = &unk_27843EC80;
    block[4] = v8;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = v5;
    v17 = *(a1 + 48);
    v10 = *(a1 + 64);
    v18 = *(a1 + 56);
    v19 = v10;
    dispatch_async(v9, block);
  }

  else
  {
    v11 = *(a1 + 64);
    v12 = [SKAError errorWithCode:9999];
    (*(v11 + 16))(v11, v12);
  }
}

void __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 48);
  v3 = [*(a1 + 32) removeTransientPresenceAssertionForClient:*(a1 + 40) presenceIdentifier:*(a1 + 48)];
  v4 = +[SKAPresenceManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *v2;
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully removed transient presence assertion for presence identifier: %@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke_52;
    v14[3] = &unk_27843EC58;
    v15 = *(a1 + 48);
    v10 = *(a1 + 80);
    v16 = *(a1 + 72);
    v17 = v10;
    [v7 _sendPresenceDeactivationMessageForChannel:v8 options:v9 completion:v14];

    v11 = v15;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke_2_cold_1(v2);
    }

    v12 = *(a1 + 80);
    v11 = [SKAError errorWithCode:900];
    (*(v12 + 16))(v12, v11);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke_52(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPresenceManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke_52_cold_1(a1);
    }

    v6 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Deactivation message succeeded for %@", &v9, 0xCu);
    }

    v6 = *(*(a1 + 48) + 16);
  }

  v6();
  [*(a1 + 40) recalculateActivityTracking];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)releasePersistentPresenceAssertionForPresenceIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__SKAPresenceManager_releasePersistentPresenceAssertionForPresenceIdentifier_options_completion___block_invoke;
  v15[3] = &unk_27843ECF8;
  objc_copyWeak(&v20, &location);
  v16 = identifierCopy;
  v17 = optionsCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = optionsCopy;
  v13 = identifierCopy;
  v14 = completionCopy;
  dispatch_async(internalWorkQueue, v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __97__SKAPresenceManager_releasePersistentPresenceAssertionForPresenceIdentifier_options_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([WeakRetained presenceEnabledByServer])
  {
    v3 = [WeakRetained databaseManager];
    v4 = [v3 newBackgroundContext];

    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) isPersonal];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __97__SKAPresenceManager_releasePersistentPresenceAssertionForPresenceIdentifier_options_completion___block_invoke_53;
    v14[3] = &unk_27843DCC0;
    objc_copyWeak(&v17, (a1 + 64));
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *&v10 = *(a1 + 48);
    *(&v10 + 1) = v7;
    *&v11 = v8;
    *(&v11 + 1) = v9;
    v15 = v11;
    v16 = v10;
    [WeakRetained findPresenceChannelForPresenceIdentifier:v5 isPersonal:v6 databaseContext:v4 completion:v14];

    objc_destroyWeak(&v17);
  }

  else
  {
    v12 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
    }

    v13 = *(a1 + 56);
    v4 = [SKAError errorWithCode:100];
    (*(v13 + 16))(v13, v4);
  }
}

void __97__SKAPresenceManager_releasePersistentPresenceAssertionForPresenceIdentifier_options_completion___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else if (WeakRetained)
  {
    v9 = [WeakRetained internalWorkQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __97__SKAPresenceManager_releasePersistentPresenceAssertionForPresenceIdentifier_options_completion___block_invoke_2;
    v13[3] = &unk_27843ECD0;
    v13[4] = v8;
    v14 = *(a1 + 32);
    v15 = v5;
    v16 = *(a1 + 40);
    v10 = *(a1 + 56);
    v17 = *(a1 + 48);
    v18 = v10;
    dispatch_async(v9, v13);
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = [SKAError errorWithCode:9999];
    (*(v11 + 16))(v11, v12);
  }
}

void __97__SKAPresenceManager_releasePersistentPresenceAssertionForPresenceIdentifier_options_completion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) removePersistentPresenceAssertionForPresenceIdentifier:*(a1 + 40) isPersonal:{objc_msgSend(*(a1 + 48), "isPersonal")}];
  v4 = +[SKAPresenceManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *v2;
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully removed persistent presence assertion for presence identifier: %@", buf, 0xCu);
    }

    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __97__SKAPresenceManager_releasePersistentPresenceAssertionForPresenceIdentifier_options_completion___block_invoke_54;
    v14[3] = &unk_27843EC58;
    v9 = *(a1 + 32);
    v15 = *(a1 + 40);
    v10 = *(a1 + 72);
    v16 = *(a1 + 64);
    v17 = v10;
    [v9 _sendPresenceDeactivationMessageForChannel:v7 options:v8 completion:v14];

    v11 = v15;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__SKAPresenceManager_releasePersistentPresenceAssertionForPresenceIdentifier_options_completion___block_invoke_2_cold_1(v2);
    }

    v12 = *(a1 + 72);
    v11 = [SKAError errorWithCode:900];
    (*(v12 + 16))(v12, v11);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __97__SKAPresenceManager_releasePersistentPresenceAssertionForPresenceIdentifier_options_completion___block_invoke_54(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPresenceManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke_52_cold_1(a1);
    }

    v6 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Deactivation message succeeded for %@", &v9, 0xCu);
    }

    v6 = *(*(a1 + 48) + 16);
  }

  v6();
  [*(a1 + 40) recalculateActivityTracking];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_sendPresenceDeactivationMessageForChannel:(id)channel options:(id)options completion:(id)completion
{
  channelCopy = channel;
  optionsCopy = options;
  completionCopy = completion;
  identifier = [channelCopy identifier];
  v12 = [SKAPresenceMembershipKey alloc];
  presenceMembershipKey = [channelCopy presenceMembershipKey];
  v14 = [(SKAPresenceMembershipKey *)v12 initWithPrivateKeyMaterial:presenceMembershipKey];

  v15 = [SKAPresenceEncryptionKey alloc];
  presenceServerKey = [channelCopy presenceServerKey];
  v17 = [(SKAPresenceEncryptionKey *)v15 initWithKeyMaterial:presenceServerKey];

  if (v14 && v17)
  {
    channelToken = [channelCopy channelToken];
    channelManager = [(SKAPresenceManager *)self channelManager];
    serverTime = [channelManager serverTime];

    v21 = +[SKAPowerLogger shared];
    [v21 logEvent:8 ofType:0 onDatabaseChannel:channelCopy];

    objc_initWeak(location, self);
    channelManager2 = [(SKAPresenceManager *)self channelManager];
    serviceIdentifier = [optionsCopy serviceIdentifier];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke;
    v27[3] = &unk_27843ED98;
    objc_copyWeak(&v36, location);
    v28 = channelCopy;
    v35 = completionCopy;
    v29 = identifier;
    v30 = v14;
    v31 = v17;
    v24 = serverTime;
    v32 = v24;
    v25 = channelToken;
    v33 = v25;
    v34 = optionsCopy;
    [channelManager2 releasePresenceOnChannel:v29 membershipKey:v30 serverKey:v31 timestamp:v24 withChannelToken:v25 serviceIdentifier:serviceIdentifier completion:v27];

    objc_destroyWeak(&v36);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceManager _sendPresenceDeactivationMessageForChannel:options:completion:];
    }

    v25 = [SKAError errorWithCode:402];
    [(SKAPresenceManager *)self _rollChannelForCryptoFailureIfAllowed:channelCopy];
    (*(completionCopy + 2))(completionCopy, v25);
  }
}

void __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 12);
  v5 = [WeakRetained internalWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke_2;
  v13[3] = &unk_27843ED70;
  v14 = a1[4];
  v15 = v3;
  v16 = WeakRetained;
  v21 = a1[11];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v17 = v11;
  v18 = v10;
  v19 = a1[9];
  v20 = a1[10];
  v12 = v3;
  dispatch_async(v5, v13);
}

void __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = +[SKAPowerLogger shared];
  [v2 logEvent:8 ofType:1 onDatabaseChannel:*(a1 + 32)];

  v3 = *(a1 + 40);
  if (!v3)
  {
    v11 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Presence release completed with success.", v13, 2u);
    }

    goto LABEL_12;
  }

  v4 = [v3 shouldReauthForRetry];
  v5 = +[SKAPresenceManager logger];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (!v4)
  {
    if (v6)
    {
      __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke_2_cold_1((a1 + 40));
    }

LABEL_12:
    v12 = *(a1 + 40);
    (*(*(a1 + 104) + 16))();
    return;
  }

  if (v6)
  {
    __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_cold_2((a1 + 40));
  }

  v7 = [*(a1 + 48) accountProvider];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke_55;
  v14[3] = &unk_27843EBE0;
  v23 = *(a1 + 104);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v22 = *(a1 + 96);
  [v7 refreshCredentialForPrimaryAccountWithCompletion:v14];
}

void __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_39_cold_1();
    }

    (*(*(a1 + 96) + 16))();
  }

  else
  {
    v5 = +[SKAPowerLogger shared];
    [v5 logEvent:8 ofType:0 onDatabaseChannel:*(a1 + 32)];

    v6 = [*(a1 + 40) channelManager];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = [*(a1 + 88) serviceIdentifier];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke_56;
    v15[3] = &unk_27843ED48;
    v14 = *(a1 + 32);
    v13 = v14.i64[0];
    v16 = vextq_s8(v14, v14, 8uLL);
    v17 = *(a1 + 96);
    [v6 releasePresenceOnChannel:v7 membershipKey:v8 serverKey:v9 timestamp:v10 withChannelToken:v11 serviceIdentifier:v12 completion:v15];
  }
}

void __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke_56(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] internalWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke_2_57;
  block[3] = &unk_27843ED20;
  v7 = a1[5];
  v8 = v3;
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke_2_57(void *a1)
{
  v2 = +[SKAPowerLogger shared];
  [v2 logEvent:8 ofType:1 onDatabaseChannel:a1[4]];

  v3 = a1[5];
  v4 = +[SKAPresenceManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_41_cold_1(a1 + 5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Release completed with success.", v8, 2u);
  }

  v6 = a1[5];
  return (*(a1[6] + 16))();
}

- (void)releaseAllTransientPresenceAssertionsAssociatedWithClient:(id)client options:(id)options completion:(id)completion
{
  clientCopy = client;
  optionsCopy = options;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__SKAPresenceManager_releaseAllTransientPresenceAssertionsAssociatedWithClient_options_completion___block_invoke;
  v15[3] = &unk_27843ECF8;
  objc_copyWeak(&v20, &location);
  v16 = optionsCopy;
  v17 = clientCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = clientCopy;
  v13 = optionsCopy;
  v14 = completionCopy;
  dispatch_async(internalWorkQueue, v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __99__SKAPresenceManager_releaseAllTransientPresenceAssertionsAssociatedWithClient_options_completion___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v35 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained presenceEnabledByServer])
    {
      v3 = [*(a1 + 32) serviceIdentifier];
      if (v3 && ([*(a1 + 32) serviceIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = +[SKAServerBag presenceEnabledByServerForServiceIdentifier:](SKAServerBag, "presenceEnabledByServerForServiceIdentifier:", v4), v4, v3, !v5))
      {
        v30 = +[SKAPresenceManager logger];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          __99__SKAPresenceManager_releaseAllTransientPresenceAssertionsAssociatedWithClient_options_completion___block_invoke_cold_2(a1 + 32);
        }

        v31 = *(a1 + 56);
        v32 = [SKAError errorWithCode:100];
        (*(v31 + 16))(v31, v32);
      }

      else
      {
        os_unfair_lock_lock(v35 + 3);
        v6 = [*(v35 + 2) objectForKey:*(a1 + 40)];
        if (!v6)
        {
          v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
          v7 = [v35 activeTransientPresenceAssertionsByClient];
          [v7 setObject:v6 forKey:*(a1 + 40)];
        }

        os_unfair_lock_unlock(v35 + 3);
        v34 = v6;
        v8 = [v6 count] == 0;
        v9 = +[SKAPresenceManager logger];
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        if (v8)
        {
          if (v10)
          {
            *buf = 0;
            _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Disconnecting client had no active transient presence assertions, not updating registered subscriptions", buf, 2u);
          }

          (*(*(a1 + 56) + 16))();
        }

        else
        {
          if (v10)
          {
            *buf = 134218242;
            *&buf[4] = [v34 count];
            *&buf[12] = 2112;
            *&buf[14] = v34;
            _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Disconnecting client had %ld transient presence assertion, removing presence assertions and updating registrations for channels: %@", buf, 0x16u);
          }

          os_unfair_lock_lock(v35 + 3);
          v11 = [v35 activeTransientPresenceAssertionsByClient];
          [v11 removeObjectForKey:*(a1 + 40)];

          os_unfair_lock_unlock(v35 + 3);
          v12 = [v35 databaseManager];
          v13 = [v12 newBackgroundContext];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v49 = __Block_byref_object_copy__1;
          v50 = __Block_byref_object_dispose__1;
          v51 = 0;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          obj = v34;
          v14 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v14)
          {
            v15 = *v44;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v44 != v15)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v43 + 1) + 8 * i);
                v18 = [v17 presenceIdentifier];
                v19 = [v17 presenceOptions];
                v20 = [v19 isPersonal];

                v21 = *(a1 + 48);
                v37[0] = MEMORY[0x277D85DD0];
                v37[1] = 3221225472;
                v37[2] = __99__SKAPresenceManager_releaseAllTransientPresenceAssertionsAssociatedWithClient_options_completion___block_invoke_59;
                v37[3] = &unk_27843EDE8;
                objc_copyWeak(&v42, (a1 + 64));
                v38 = *(a1 + 32);
                v41 = buf;
                v22 = v18;
                v23 = *(a1 + 48);
                v39 = v22;
                v40 = v23;
                [v21 findPresenceChannelForPresenceIdentifier:v22 isPersonal:v20 databaseContext:v13 completion:v37];

                objc_destroyWeak(&v42);
              }

              v14 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
            }

            while (v14);
          }

          v24 = *(*&buf[8] + 40);
          (*(*(a1 + 56) + 16))();
          _Block_object_dispose(buf, 8);
        }
      }
    }

    else
    {
      v27 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
      }

      v28 = *(a1 + 56);
      v29 = [SKAError errorWithCode:100];
      (*(v28 + 16))(v28, v29);
    }
  }

  else
  {
    v25 = *(a1 + 56);
    v26 = [SKAError errorWithCode:9999];
    (*(v25 + 16))(v25, v26);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __99__SKAPresenceManager_releaseAllTransientPresenceAssertionsAssociatedWithClient_options_completion___block_invoke_59(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (a3)
  {
    v7 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __99__SKAPresenceManager_releaseAllTransientPresenceAssertionsAssociatedWithClient_options_completion___block_invoke_59_cold_1(a1);
    }

    v8 = [SKAError errorWithCode:900];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __99__SKAPresenceManager_releaseAllTransientPresenceAssertionsAssociatedWithClient_options_completion___block_invoke_2;
    v14[3] = &unk_27843EDC0;
    v17 = *(a1 + 56);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = v12;
    v16 = v13;
    [WeakRetained _sendPresenceDeactivationMessageForChannel:v5 options:v11 completion:v14];
    v10 = v15;
  }
}

void __99__SKAPresenceManager_releaseAllTransientPresenceAssertionsAssociatedWithClient_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    v5 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Completed sending deactivation message for presence identifier: %@ because of a disconnected client", &v8, 0xCu);
    }
  }

  [*(a1 + 40) recalculateActivityTracking];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)presentDevicesForPresenceIdentifier:(id)identifier isPersonal:(BOOL)personal completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__SKAPresenceManager_presentDevicesForPresenceIdentifier_isPersonal_completion___block_invoke;
  v13[3] = &unk_27843EE60;
  objc_copyWeak(&v16, &location);
  v14 = identifierCopy;
  v15 = completionCopy;
  v13[4] = self;
  personalCopy = personal;
  v11 = identifierCopy;
  v12 = completionCopy;
  dispatch_async(internalWorkQueue, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __80__SKAPresenceManager_presentDevicesForPresenceIdentifier_isPersonal_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained presenceEnabledByServer])
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    objc_initWeak(&location, WeakRetained);
    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__SKAPresenceManager_presentDevicesForPresenceIdentifier_isPersonal_completion___block_invoke_61;
    v10[3] = &unk_27843EE38;
    objc_copyWeak(&v12, &location);
    v11 = *(a1 + 48);
    [WeakRetained findPresenceChannelForPresenceIdentifier:v5 isPersonal:v6 databaseContext:v4 completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
    }

    v8 = *(a1 + 48);
    v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v9 = [SKAError errorWithCode:100];
    (*(v8 + 16))(v8, v4, v9);
  }
}

void __80__SKAPresenceManager_presentDevicesForPresenceIdentifier_isPersonal_completion___block_invoke_61(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Error occurred finding presence channel: %@", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[10];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__SKAPresenceManager_presentDevicesForPresenceIdentifier_isPersonal_completion___block_invoke_62;
    block[3] = &unk_27843ED20;
    v15 = v5;
    v16 = v9;
    v17 = *(a1 + 32);
    dispatch_async(v10, block);

    v11 = v15;
  }

  else
  {
    v12 = *(a1 + 32);
    v11 = [SKAError errorWithCode:9999];
    (*(v12 + 16))(v12, 0, v11);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __80__SKAPresenceManager_presentDevicesForPresenceIdentifier_isPersonal_completion___block_invoke_62(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) presentDevicesManager];
    v3 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80__SKAPresenceManager_presentDevicesForPresenceIdentifier_isPersonal_completion___block_invoke_2;
    v8[3] = &unk_27843EE10;
    v9 = *(a1 + 48);
    [v2 activePresentDevicesForChannel:v3 withCompletion:v8];

    v4 = v9;
  }

  else
  {
    v5 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "No channel currently exists, so returning empty set of present devices", v7, 2u);
    }

    v6 = *(a1 + 48);
    v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
    (*(v6 + 16))(v6, v4, 0);
  }
}

void __80__SKAPresenceManager_presentDevicesForPresenceIdentifier_isPersonal_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a2 allObjects];
  v4 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [v3 count];
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "presentDevicesForPresenceIdentifier returning %ld devices", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)channelReceivedIncomingPayloadUpdate:(id)update channel:(id)channel withIdentifier:(unint64_t)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  channelCopy = channel;
  presenceEnabledByServer = [(SKAPresenceManager *)self presenceEnabledByServer];
  v11 = +[SKAPresenceManager logger];
  v12 = v11;
  if (presenceEnabledByServer)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = channelCopy;
      _os_log_impl(&dword_220099000, &v12->super.super, OS_LOG_TYPE_DEFAULT, "Received incoming payload on channel %@", buf, 0xCu);
    }

    v12 = [[ChannelActivityUpdate alloc] initWithData:updateCopy];
    if (v12)
    {
      payloadUpdateProcessingQueue = [(SKAPresenceManager *)self payloadUpdateProcessingQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __82__SKAPresenceManager_channelReceivedIncomingPayloadUpdate_channel_withIdentifier___block_invoke;
      v16[3] = &unk_27843EE88;
      v16[4] = self;
      v12 = v12;
      v17 = v12;
      v18 = channelCopy;
      identifierCopy = identifier;
      dispatch_async(payloadUpdateProcessingQueue, v16);
    }

    else
    {
      v14 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SKAPresenceManager channelReceivedIncomingPayloadUpdate:channel:withIdentifier:];
      }
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __82__SKAPresenceManager_channelReceivedIncomingPayloadUpdate_channel_withIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalWorkQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__SKAPresenceManager_channelReceivedIncomingPayloadUpdate_channel_withIdentifier___block_invoke_2;
  v6[3] = &unk_27843EE88;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v4;
  v9 = v5;
  dispatch_async(v2, v6);
}

+ (int64_t)decideUpdateActionForCurrentCheckpoint:(unint64_t)checkpoint payloadLastCheckpoint:(unint64_t)lastCheckpoint payloadCurrentCheckpoint:(unint64_t)currentCheckpoint
{
  v5 = 1;
  v6 = 3;
  v7 = 1;
  if (currentCheckpoint > checkpoint)
  {
    v7 = 2;
  }

  if (!lastCheckpoint)
  {
    v6 = v7;
  }

  if (checkpoint != currentCheckpoint)
  {
    v5 = v6;
  }

  if (checkpoint == lastCheckpoint)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

+ (id)payloadFromActivityUpdate:(id)update forChannel:(id)channel
{
  channelCopy = channel;
  encryptedUpdatePayload = [update encryptedUpdatePayload];
  if (encryptedUpdatePayload)
  {
    v7 = [SKAPresenceEncryptionKey alloc];
    presenceServerKey = [channelCopy presenceServerKey];
    v9 = [(SKAPresenceEncryptionKey *)v7 initWithKeyMaterial:presenceServerKey];

    if (!v9)
    {
      v10 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[SKAPresenceManager payloadFromActivityUpdate:forChannel:];
      }

      v11 = 0;
      goto LABEL_17;
    }

    v10 = [v9 decryptPayload:encryptedUpdatePayload];
    if (v10)
    {
      v11 = [[ChannelActivityUpdatePayload alloc] initWithData:v10];
      if (v11)
      {
LABEL_17:

        goto LABEL_18;
      }

      v12 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[SKAPresenceManager payloadFromActivityUpdate:forChannel:];
      }
    }

    else
    {
      v12 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[SKAPresenceManager payloadFromActivityUpdate:forChannel:];
      }

      v11 = 0;
    }

    goto LABEL_17;
  }

  v9 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[SKAPresenceManager payloadFromActivityUpdate:forChannel:];
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (void)_handleIncomingPayloadUpdate:(id)update onChannel:(id)channel withIdentifier:(unint64_t)identifier
{
  v42 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  channelCopy = channel;
  v10 = [(SKAPresenceManager *)self _currentCheckpointForChannel:channelCopy];
  prevVersion = [updateCopy prevVersion];
  currentVersion = [updateCopy currentVersion];
  v13 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    identifierCopy = identifier;
    v38 = 2048;
    v39 = prevVersion;
    v40 = 2048;
    v41 = currentVersion;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Handling payload update %lu with lastCheckpoint %llu and previous checkpoint %llu", buf, 0x20u);
  }

  v14 = [SKAPresenceManager decideUpdateActionForCurrentCheckpoint:v10 payloadLastCheckpoint:prevVersion payloadCurrentCheckpoint:currentVersion];
  if (v14 <= 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        v15 = +[SKAPresenceManager logger];
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v10 == currentVersion)
        {
          if (v16)
          {
            *buf = 0;
            v17 = "Our current checkpoint matches the update's checkpoint. We're up to date --dropping";
LABEL_37:
            _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
          }
        }

        else if (v16)
        {
          *buf = 0;
          v17 = "Payload last checkpoint is 0 with older/same updates -- dropping";
          goto LABEL_37;
        }

        goto LABEL_43;
      }

      goto LABEL_13;
    }

    v23 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Last checkpoint matches current checkpoint -- not polling", buf, 2u);
    }

    v24 = 0;
LABEL_26:

    [(SKAPresenceManager *)self _setCheckpointForChannel:channelCopy checkpoint:currentVersion];
    v25 = [SKAPresenceManager payloadFromActivityUpdate:updateCopy forChannel:channelCopy];
    v26 = v25;
    if (v25)
    {
      participantPayloads = [v25 participantPayloads];

      if (participantPayloads)
      {
        if (v24)
        {
          v28 = +[SKAPresenceManager logger];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_220099000, v28, OS_LOG_TYPE_DEFAULT, "The last checkpoint was 0, so we're clearing any previously present devices before adding the new one", buf, 2u);
          }
        }

        presentDevicesManager = self->_presentDevicesManager;
        participantPayloads2 = [v26 participantPayloads];
        -[SKAPresentDevicesManaging handleParticipantPayloads:forChannel:withUpdateType:resetState:](presentDevicesManager, "handleParticipantPayloads:forChannel:withUpdateType:resetState:", participantPayloads2, channelCopy, [v26 updateType], v24);

        goto LABEL_42;
      }

      v31 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [SKAPresenceManager _handleIncomingPayloadUpdate:onChannel:withIdentifier:];
      }
    }

    else
    {
      v31 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[SKAPresenceManager payloadFromActivityUpdate:forChannel:];
      }
    }

LABEL_42:
    goto LABEL_43;
  }

  if (v14 == 2)
  {
    v23 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Payload last checkpoint is 0 with newer updates -- not polling, will reset state", buf, 2u);
    }

    v24 = 1;
    goto LABEL_26;
  }

  if (v14 == 3)
  {
    v18 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      identifierCopy = prevVersion;
      v38 = 2048;
      v39 = v10;
      _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Last checkpoint does not match current checkpoint -- polling because we missed something. Payload last checkpoint:%llu ; Current saved checkpoint: %llu", buf, 0x16u);
    }

    goto LABEL_15;
  }

LABEL_13:
  v18 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [SKAPresenceManager _handleIncomingPayloadUpdate:onChannel:withIdentifier:];
  }

LABEL_15:

  subscriptionManager = [(SKAPresenceManager *)self subscriptionManager];
  identifier = [channelCopy identifier];
  v21 = [subscriptionManager activePresenceSubscriptionAssertionsExistForChannelIdentifier:identifier];

  if (v21)
  {
    [(SKAPresenceManager *)self _setCheckpointForChannel:channelCopy checkpoint:currentVersion];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __76__SKAPresenceManager__handleIncomingPayloadUpdate_onChannel_withIdentifier___block_invoke;
    v33[3] = &unk_27843EEB0;
    v34 = channelCopy;
    selfCopy = self;
    [(SKAPresenceManager *)self _sendPollingMessageForChannel:v34 completion:v33];
  }

  else
  {
    v22 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v22, OS_LOG_TYPE_DEFAULT, "We want to poll but we currently have no connected clients with an active subscription.  Resetting state and dropping payload", buf, 2u);
    }

    [(SKAPresentDevicesManaging *)self->_presentDevicesManager clearPresentDevicesForChannel:channelCopy];
  }

LABEL_43:

  v32 = *MEMORY[0x277D85DE8];
}

void __76__SKAPresenceManager__handleIncomingPayloadUpdate_onChannel_withIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKAPresenceManager logger];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__SKAPresenceManager_pollAndUpdatePresentDevicesForChannel_completion___block_invoke_cold_1(a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Updating active particpants for channel %@  based on polling response", &v10, 0xCu);
    }

    v7 = [*(a1 + 40) presentDevicesManager];
    [v7 setParticipantPayloads:v5 forChannel:*(a1 + 32)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)findOrCreatePresenceChannelForPresenceIdentifier:(id)identifier options:(id)options databaseContext:(id)context completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__SKAPresenceManager_findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke;
  v19[3] = &unk_27843ECF8;
  objc_copyWeak(&v24, &location);
  v20 = optionsCopy;
  v21 = identifierCopy;
  v22 = contextCopy;
  v23 = completionCopy;
  v15 = contextCopy;
  v16 = identifierCopy;
  v17 = optionsCopy;
  v18 = completionCopy;
  dispatch_async(internalWorkQueue, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __106__SKAPresenceManager_findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (([WeakRetained presenceEnabledByServer] & 1) == 0)
  {
    v13 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
    }

    goto LABEL_13;
  }

  v3 = [*(a1 + 32) serviceIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) serviceIdentifier];
    v6 = [SKAServerBag presenceEnabledByServerForServiceIdentifier:v5];

    if (!v6)
    {
      v14 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __106__SKAPresenceManager_findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_cold_2(a1 + 32);
      }

LABEL_13:
      v15 = *(a1 + 56);
      v12 = [SKAError errorWithCode:100];
      (*(v15 + 16))(v15, 0, v12);
      goto LABEL_14;
    }
  }

  v7 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Finding channel for presence identifier %@", buf, 0xCu);
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __106__SKAPresenceManager_findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_66;
  v17[3] = &unk_27843DE78;
  v11 = *(a1 + 48);
  v18 = *(a1 + 56);
  [WeakRetained _findOrCreatePresenceChannelForPresenceIdentifier:v9 options:v10 databaseContext:v11 completion:v17];
  v12 = v18;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)findPresenceChannelForPresenceIdentifier:(id)identifier isPersonal:(BOOL)personal databaseContext:(id)context completion:(id)completion
{
  identifierCopy = identifier;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__SKAPresenceManager_findPresenceChannelForPresenceIdentifier_isPersonal_databaseContext_completion___block_invoke;
  v17[3] = &unk_27843EE60;
  objc_copyWeak(&v21, &location);
  v19 = contextCopy;
  v20 = completionCopy;
  personalCopy = personal;
  v18 = identifierCopy;
  v14 = contextCopy;
  v15 = identifierCopy;
  v16 = completionCopy;
  dispatch_async(internalWorkQueue, v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __101__SKAPresenceManager_findPresenceChannelForPresenceIdentifier_isPersonal_databaseContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained presenceEnabledByServer])
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __101__SKAPresenceManager_findPresenceChannelForPresenceIdentifier_isPersonal_databaseContext_completion___block_invoke_67;
    v9[3] = &unk_27843DE78;
    v10 = *(a1 + 48);
    [WeakRetained _findPresenceChannelForPresenceIdentifier:v4 isPersonal:v3 databaseContext:v5 completion:v9];
    v6 = v10;
  }

  else
  {
    v7 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
    }

    v8 = *(a1 + 48);
    v6 = [SKAError errorWithCode:100];
    (*(v8 + 16))(v8, 0, v6);
  }
}

void __101__SKAPresenceManager_findPresenceChannelForPresenceIdentifier_isPersonal_databaseContext_completion___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKAPresenceManager logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __101__SKAPresenceManager_findPresenceChannelForPresenceIdentifier_isPersonal_databaseContext_completion___block_invoke_67_cold_1();
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "CreateChannel: Found an existing presence channel: %@", &v11, 0xCu);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)createPresenceChannelForPresenceIdentifier:(id)identifier options:(id)options databaseContext:(id)context completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__SKAPresenceManager_createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke;
  v19[3] = &unk_27843ECF8;
  objc_copyWeak(&v24, &location);
  v20 = optionsCopy;
  v21 = identifierCopy;
  v22 = contextCopy;
  v23 = completionCopy;
  v15 = contextCopy;
  v16 = identifierCopy;
  v17 = optionsCopy;
  v18 = completionCopy;
  dispatch_async(internalWorkQueue, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __100__SKAPresenceManager_createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (([WeakRetained presenceEnabledByServer] & 1) == 0)
  {
    v12 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
    }

    goto LABEL_13;
  }

  v3 = [*(a1 + 32) serviceIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) serviceIdentifier];
    v6 = [SKAServerBag presenceEnabledByServerForServiceIdentifier:v5];

    if (!v6)
    {
      v13 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __106__SKAPresenceManager_findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_cold_2(a1 + 32);
      }

LABEL_13:
      v14 = *(a1 + 56);
      v11 = [SKAError errorWithCode:100];
      (*(v14 + 16))(v14, 0, v11);
      goto LABEL_14;
    }
  }

  v7 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "CreateChannel: Creating a presence channel", buf, 2u);
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__SKAPresenceManager_createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_68;
  v15[3] = &unk_27843DE78;
  v10 = *(a1 + 48);
  v16 = *(a1 + 56);
  [WeakRetained _createPresenceChannelForPresenceIdentifier:v8 options:v9 databaseContext:v10 completion:v15];
  v11 = v16;
LABEL_14:
}

void __100__SKAPresenceManager_createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKAPresenceManager logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __100__SKAPresenceManager_createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_68_cold_1();
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "CreateChannel: Presence channel created: %@", &v11, 0xCu);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)addTransientPresenceAssertionForClient:(id)client presenceIdentifier:(id)identifier presenceOptions:(id)options assertionOptions:(id)assertionOptions payload:(id)payload
{
  v46 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  identifierCopy = identifier;
  optionsCopy = options;
  assertionOptionsCopy = assertionOptions;
  payloadCopy = payload;
  os_unfair_lock_lock(&self->_transientAssertionsLock);
  selfCopy = self;
  v32 = clientCopy;
  v14 = [(NSMapTable *)self->_activeTransientPresenceAssertionsByClient objectForKey:clientCopy];
  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB40]);
    [(NSMapTable *)self->_activeTransientPresenceAssertionsByClient setObject:v14 forKey:clientCopy];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v16)
  {
    v17 = 0;
    v18 = *v36;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        presenceIdentifier = [v20 presenceIdentifier];
        if ([presenceIdentifier isEqualToString:identifierCopy])
        {
          presenceOptions = [v20 presenceOptions];
          v23 = [presenceOptions isEqual:optionsCopy];

          if (v23)
          {
            v24 = +[SKAPresenceManager logger];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v40 = identifierCopy;
              v41 = 2112;
              v42 = v32;
              v43 = 2112;
              v44 = v20;
              _os_log_impl(&dword_220099000, v24, OS_LOG_TYPE_DEFAULT, "Found an existing transient presence assertion for %@ and client: %@. ExistingAssertion: %@", buf, 0x20u);
            }

            [v20 setPayload:payloadCopy];
            v17 = 1;
          }
        }

        else
        {
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v16);

    if (v17)
    {
      v25 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(&v25->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, &v25->super, OS_LOG_TYPE_DEFAULT, "Not creating a new transient presence assertion, one already exists.", buf, 2u);
      }

      v26 = 0;
      goto LABEL_24;
    }
  }

  else
  {
  }

  v25 = [[SKAPresenceAssertion alloc] initWithPresenceIdentifier:identifierCopy presenceOptions:optionsCopy assertionOptions:assertionOptionsCopy payload:payloadCopy];
  [v15 addObject:v25];
  v27 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = identifierCopy;
    v41 = 2112;
    v42 = optionsCopy;
    _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, "Successfully added transient presence assertion to in memory model for presence identifier: %@ options: %@", buf, 0x16u);
  }

  v26 = 1;
LABEL_24:

  os_unfair_lock_unlock(&selfCopy->_transientAssertionsLock);
  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)removeTransientPresenceAssertionForClient:(id)client presenceIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_transientAssertionsLock);
  v8 = [(NSMapTable *)self->_activeTransientPresenceAssertionsByClient objectForKey:clientCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
    [(NSMapTable *)self->_activeTransientPresenceAssertionsByClient setObject:v8 forKey:clientCopy];
  }

  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __83__SKAPresenceManager_removeTransientPresenceAssertionForClient_presenceIdentifier___block_invoke;
  v21 = &unk_27843EED8;
  v10 = identifierCopy;
  v22 = v10;
  v11 = v9;
  v23 = v11;
  [v8 enumerateObjectsUsingBlock:&v18];
  v12 = [v11 count];
  if (v12)
  {
    v13 = [v8 count];
    [v8 removeObjectsAtIndexes:v11];
    v14 = [v8 count];
    v15 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v25 = v10;
      v26 = 2048;
      v27 = v13;
      v28 = 2048;
      v29 = v14;
      v30 = 2112;
      v31 = clientCopy;
      _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Successfully removed transient presence assertion for identifier: %@. Client had %ld presence assertions, now has %ld. Client: %@", buf, 0x2Au);
    }
  }

  else
  {
    v15 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = v10;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = clientCopy;
      _os_log_error_impl(&dword_220099000, v15, OS_LOG_TYPE_ERROR, "Could not find transient presence assertion for subscription identifier: %@. Active presence assertions: %@ for client: %@", buf, 0x20u);
    }
  }

  os_unfair_lock_unlock(&self->_transientAssertionsLock);
  v16 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

void __83__SKAPresenceManager_removeTransientPresenceAssertionForClient_presenceIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 presenceIdentifier];
  LODWORD(v5) = [v5 isEqualToString:v6];

  if (v5)
  {
    v7 = *(a1 + 40);

    [v7 addIndex:a3];
  }
}

- (BOOL)_activeTransientPresenceAssertionsExist
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_transientAssertionsLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMapTable *)self->_activeTransientPresenceAssertionsByClient objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v13 + 1) + 8 * i) count])
        {
          v9 = +[SKAPresenceManager logger];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Active transient presence assertions exist?: YES", v12, 2u);
          }

          os_unfair_lock_unlock(&self->_transientAssertionsLock);
          v8 = 1;
          goto LABEL_15;
        }
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  os_unfair_lock_unlock(&self->_transientAssertionsLock);
  objectEnumerator = +[SKAPresenceManager logger];
  if (os_log_type_enabled(objectEnumerator, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_220099000, objectEnumerator, OS_LOG_TYPE_DEFAULT, "Active transient presence assertions exist?: NO", v12, 2u);
  }

  v8 = 0;
LABEL_15:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)addPersistentPresenceAssertionForPresenceIdentifier:(id)identifier presenceOptions:(id)options assertionOptions:(id)assertionOptions payload:(id)payload
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  assertionOptionsCopy = assertionOptions;
  payloadCopy = payload;
  newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v15 = -[SKAPresenceManager _activePersistentPresenceAssertionForPresenceIdentifier:isPersonal:](self, "_activePersistentPresenceAssertionForPresenceIdentifier:isPersonal:", identifierCopy, [optionsCopy isPersonal]);

  v16 = [(SKADatabaseManaging *)self->_databaseManager createOrUpdatePresenceAssertionForPresenceIdentifier:identifierCopy presenceOptions:optionsCopy assertionOptions:assertionOptionsCopy payload:payloadCopy databaseContext:newBackgroundContext];
  v17 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"updated";
    v21 = 138412802;
    if (!v15)
    {
      v18 = @"added";
    }

    v22 = v18;
    v23 = 2112;
    v24 = identifierCopy;
    v25 = 2112;
    v26 = optionsCopy;
    _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Successfully %@ persistent presence assertion in database for presence identifier: %@ options: %@", &v21, 0x20u);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15 == 0;
}

- (BOOL)_activePersistentPresenceAssertionsExist
{
  v11 = *MEMORY[0x277D85DE8];
  newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v4 = [(SKADatabaseManaging *)self->_databaseManager activePresenceAssertionsExistWithDatabaseContext:newBackgroundContext];
  v5 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Active persistent presence assertions exist?: %@", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_presentDevicesChanged:(id)changed forChannel:(id)channel
{
  v38 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  channelCopy = channel;
  presenceIdentifier = [channelCopy presenceIdentifier];
  v25 = -[SKAPresenceManager activePresenceAssertionForPresenceIdentifier:isPersonal:](self, "activePresenceAssertionForPresenceIdentifier:isPersonal:", presenceIdentifier, [channelCopy isPersonal]);

  if (v25)
  {
    v6 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = channelCopy;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Looking for self device in channel: %@", buf, 0xCu);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    payload = changedCopy;
    v8 = [payload countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = *v32;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(payload);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        v12 = +[SKAPresenceManager logger];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v11;
          _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Present device: %@", buf, 0xCu);
        }

        if ([v11 isSelfDevice])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [payload countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:

      v13 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SKAPresenceManager _presentDevicesChanged:forChannel:];
      }

      isUnderRequestLimit = [(SKARateLimiter *)self->_rateLimiter isUnderRequestLimit];
      payload = +[SKAPresenceManager logger];
      v15 = os_log_type_enabled(payload, OS_LOG_TYPE_ERROR);
      if (isUnderRequestLimit)
      {
        if (v15)
        {
          [SKAPresenceManager _presentDevicesChanged:forChannel:];
        }

        [(SKARateLimiter *)self->_rateLimiter recordRequest];
        payload = [v25 payload];
        objc_initWeak(buf, self);
        assertionOptions = [v25 assertionOptions];
        priority = [assertionOptions priority];
        presenceOptions = [v25 presenceOptions];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __56__SKAPresenceManager__presentDevicesChanged_forChannel___block_invoke;
        v28[3] = &unk_27843EF00;
        objc_copyWeak(&v30, buf);
        v29 = channelCopy;
        [(SKAPresenceManager *)self _sendPresenceAssertionMessageForChannel:v29 withPayload:payload withPriority:priority options:presenceOptions isRefresh:1 completion:v28];

        objc_destroyWeak(&v30);
        objc_destroyWeak(buf);
      }

      else if (v15)
      {
        [SKAPresenceManager _presentDevicesChanged:forChannel:];
      }
    }
  }

  subscriptionManager = self->_subscriptionManager;
  identifier = [channelCopy identifier];
  LOBYTE(subscriptionManager) = [(SKAStatusSubscriptionManaging *)subscriptionManager activePresenceSubscriptionAssertionsExistForChannelIdentifier:identifier];

  if ((v25 != 0) | subscriptionManager & 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    presenceIdentifier2 = [channelCopy presenceIdentifier];
    [WeakRetained presenceManager:self didReceivePresentDevicesUpdate:changedCopy forPresenceIdentifier:presenceIdentifier2];
  }

  else
  {
    WeakRetained = +[SKAPresenceManager logger];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceManager _presentDevicesChanged:channelCopy forChannel:?];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __56__SKAPresenceManager__presentDevicesChanged_forChannel___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = +[SKAPresenceManager logger];
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__SKAPresenceManager__presentDevicesChanged_forChannel___block_invoke_cold_1(a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Updating active particpants for channel %@ following reassert", &v11, 0xCu);
    }

    v8 = [WeakRetained presentDevicesManager];
    [v8 setParticipantPayloads:v5 forChannel:*(a1 + 32)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_currentCheckpointForChannel:(id)channel
{
  channelCopy = channel;
  databaseManager = [(SKAPresenceManager *)self databaseManager];
  newBackgroundContext = [databaseManager newBackgroundContext];

  databaseManager2 = [(SKAPresenceManager *)self databaseManager];
  v8 = [databaseManager2 currentCheckpointForChannel:channelCopy databaseContext:newBackgroundContext];

  return v8;
}

- (void)_setCheckpointForChannel:(id)channel checkpoint:(unint64_t)checkpoint
{
  v19 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  databaseManager = [(SKAPresenceManager *)self databaseManager];
  newBackgroundContext = [databaseManager newBackgroundContext];

  databaseManager2 = [(SKAPresenceManager *)self databaseManager];
  v10 = [databaseManager2 setCurrentCheckpointForChannel:channelCopy checkpoint:checkpoint databaseContext:newBackgroundContext];

  v11 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218498;
    checkpointCopy = checkpoint;
    v15 = 2112;
    v16 = channelCopy;
    v17 = 1024;
    v18 = v10;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Updated checkpoint to %llu on channel %@ with result %d", &v13, 0x1Cu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_sortAndDedupePresenceIdentifiers:(id)identifiers
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  identifiersCopy = identifiers;
  v5 = [[v3 alloc] initWithArray:identifiersCopy];

  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_compare_];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)recalculateActivityTracking
{
  internalWorkQueue = [(SKAPresenceManager *)self internalWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SKAPresenceManager_recalculateActivityTracking__block_invoke;
  block[3] = &unk_27843E5A8;
  block[4] = self;
  dispatch_async(internalWorkQueue, block);
}

void __49__SKAPresenceManager_recalculateActivityTracking__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeTransientPresenceAssertionsExist];
  v3 = [*(a1 + 32) _activePersistentPresenceAssertionsExist];
  v4 = [*(a1 + 32) channelManager];
  v5 = v4;
  if ((v2 & 1) != 0 || v3)
  {
    [v4 enableActivityTracking];
  }

  else
  {
    [v4 disableActivityTracking];
  }
}

- (void)_findOrCreatePresenceChannelForPresenceIdentifier:(id)identifier options:(id)options databaseContext:(id)context completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  contextCopy = context;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalWorkQueue);
  v14 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "CreateChannel: Proceeding to find/create a presence channel", buf, 2u);
  }

  objc_initWeak(buf, self);
  isPersonal = [optionsCopy isPersonal];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __107__SKAPresenceManager__findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke;
  v20[3] = &unk_27843EF50;
  v16 = completionCopy;
  v24 = v16;
  v20[4] = self;
  v17 = identifierCopy;
  v21 = v17;
  v18 = optionsCopy;
  v22 = v18;
  v19 = contextCopy;
  v23 = v19;
  objc_copyWeak(&v25, buf);
  [(SKAPresenceManager *)self _findPresenceChannelForPresenceIdentifier:v17 isPersonal:isPersonal databaseContext:v19 completion:v20];
  objc_destroyWeak(&v25);

  objc_destroyWeak(buf);
}

void __107__SKAPresenceManager__findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "CreateChannel: Error occurred finding presence channel: %@", buf, 0xCu);
    }
  }

  v8 = +[SKAPresenceManager logger];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v9)
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "CreateChannel: Found an existing presence channel: %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "CreateChannel: Could not find an existing presence channel, attempting to create a new one.", buf, 2u);
    }

    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __107__SKAPresenceManager__findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_88;
    v15[3] = &unk_27843EF28;
    objc_copyWeak(&v18, (a1 + 72));
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    [v11 _createPresenceChannelForPresenceIdentifier:v12 options:v13 databaseContext:v10 completion:v15];

    objc_destroyWeak(&v18);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __107__SKAPresenceManager__findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_88(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained databaseManager];
  [v8 saveContextIfNeeded:*(a1 + 32)];

  v9 = +[SKAPresenceManager logger];
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __107__SKAPresenceManager__findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_88_cold_1();
    }

    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "CreateChannel: Finished creating a presence channel: %@", &v13, 0xCu);
    }

    v11 = *(*(a1 + 40) + 16);
  }

  v11();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_createPresenceChannelForPresenceIdentifier:(id)identifier options:(id)options databaseContext:(id)context completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  contextCopy = context;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalWorkQueue);
  initWithNewKeyMaterial = [[SKAPresenceMembershipKey alloc] initWithNewKeyMaterial];
  initWithNewKeyMaterial2 = [[SKAPresenceEncryptionKey alloc] initWithNewKeyMaterial];
  initWithNewKeyMaterial3 = [[SKAPresenceEncryptionKey alloc] initWithNewKeyMaterial];
  v16 = initWithNewKeyMaterial3;
  if (initWithNewKeyMaterial && initWithNewKeyMaterial2 && initWithNewKeyMaterial3)
  {
    privateKeyMaterial = [(SKAPresenceMembershipKey *)initWithNewKeyMaterial privateKeyMaterial];
    keyMaterial = [(SKAPresenceEncryptionKey *)initWithNewKeyMaterial2 keyMaterial];
    keyMaterial2 = [(SKAPresenceEncryptionKey *)v16 keyMaterial];
    if (privateKeyMaterial && keyMaterial && keyMaterial2)
    {
      v18 = +[SKAPowerLogger shared];
      [v18 logEvent:1 ofType:0 channelType:1 identifier:identifierCopy];

      objc_initWeak(location, self);
      channelManager = [(SKAPresenceManager *)self channelManager];
      serviceIdentifier = [optionsCopy serviceIdentifier];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __101__SKAPresenceManager__createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke;
      v32[3] = &unk_27843F018;
      objc_copyWeak(&v43, location);
      v33 = identifierCopy;
      v34 = initWithNewKeyMaterial;
      v20 = initWithNewKeyMaterial2;
      v21 = optionsCopy;
      v22 = v20;
      v35 = v20;
      v23 = v21;
      v36 = v21;
      v42 = completionCopy;
      v37 = keyMaterial2;
      v38 = keyMaterial;
      v39 = privateKeyMaterial;
      v40 = contextCopy;
      selfCopy = self;
      [channelManager createPresenceChannelWithMembershipKey:v34 serverKey:v22 serviceIdentifier:serviceIdentifier completion:v32];

      optionsCopy = v23;
      objc_destroyWeak(&v43);
      objc_destroyWeak(location);
    }

    else
    {
      v25 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [SKAPresenceManager _createPresenceChannelForPresenceIdentifier:options:databaseContext:completion:];
      }

      v26 = [SKAError errorWithCode:402];
      (*(completionCopy + 2))(completionCopy, 0, v26);
    }
  }

  else
  {
    v24 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *location = 138412802;
      *&location[4] = initWithNewKeyMaterial;
      v45 = 2112;
      v46 = initWithNewKeyMaterial2;
      v47 = 2112;
      v48 = v16;
      _os_log_error_impl(&dword_220099000, v24, OS_LOG_TYPE_ERROR, "_sendPresenceDeactivationMessageForChannel - Failed to create one or more required crypto keys. membershipKey %@ serverKey %@ peerKey %@", location, 0x20u);
    }

    privateKeyMaterial = [SKAError errorWithCode:402];
    (*(completionCopy + 2))(completionCopy, 0, privateKeyMaterial);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __101__SKAPresenceManager__createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  v11 = [WeakRetained internalWorkQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __101__SKAPresenceManager__createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_2;
  v27[3] = &unk_27843EFF0;
  v28 = v9;
  v29 = WeakRetained;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v30 = v17;
  v31 = v16;
  v37 = *(a1 + 104);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  *&v22 = v20;
  *(&v22 + 1) = v21;
  *&v23 = v18;
  *(&v23 + 1) = v19;
  v32 = v23;
  v33 = v22;
  v34 = *(a1 + 96);
  v35 = v7;
  v36 = v8;
  v24 = v8;
  v25 = v7;
  v26 = v9;
  dispatch_async(v11, v27);
}

void __101__SKAPresenceManager__createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_2(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 shouldReauthForRetry])
    {
      v4 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_cold_2(v3);
      }

      v5 = [*(a1 + 40) accountProvider];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __101__SKAPresenceManager__createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_89;
      v22[3] = &unk_27843EFC8;
      *&v6 = *(a1 + 48);
      *(&v6 + 1) = *(a1 + 40);
      *v20 = v6;
      v7 = *(a1 + 56);
      v8 = *(a1 + 64);
      *&v9 = v7;
      *(&v9 + 1) = v8;
      v23 = *v20;
      v24 = v9;
      v25 = *(a1 + 72);
      v32 = *(a1 + 136);
      v26 = *(a1 + 32);
      v27 = *(a1 + 80);
      v28 = *(a1 + 88);
      v29 = *(a1 + 96);
      v10 = *(a1 + 104);
      v11 = *(a1 + 112);
      v30 = v10;
      v31 = v11;
      [v5 refreshCredentialForPrimaryAccountWithCompletion:v22];
    }

    else
    {
      v18 = *(a1 + 32);
      v19 = *(*(a1 + 136) + 16);

      v19();
    }
  }

  else
  {
    v12 = [*(a1 + 40) channelManager];
    v21 = [v12 serverTime];

    v13 = [*(a1 + 40) databaseManager];
    v14 = *(a1 + 72);
    v15 = [v13 createPresenceChannelForPresenceIdentifier:*(a1 + 48) channelIdentifier:*(a1 + 120) channelToken:*(a1 + 128) peerKey:*(a1 + 80) serverKey:*(a1 + 88) membershipKey:*(a1 + 96) creationDate:v21 options:v14 databaseContext:*(a1 + 104)];

    v16 = +[SKAPowerLogger shared];
    [v16 logEvent:1 ofType:1 onDatabaseChannel:v15];

    v17 = [*(a1 + 40) delegate];
    [v17 presenceManager:*(a1 + 112) didCreateChannel:v15];

    (*(*(a1 + 136) + 16))();
  }
}

void __101__SKAPresenceManager__createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAPresenceManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_39_cold_1();
    }

    (*(*(a1 + 120) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Account refresh succeeded, reattempting channel creation", buf, 2u);
    }

    v6 = +[SKAPowerLogger shared];
    [v6 logEvent:1 ofType:0 channelType:1 identifier:*(a1 + 32)];

    objc_initWeak(buf, *(a1 + 40));
    v7 = [*(a1 + 40) channelManager];
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = [*(a1 + 64) serviceIdentifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __101__SKAPresenceManager__createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_90;
    v13[3] = &unk_27843EFA0;
    objc_copyWeak(&v23, buf);
    v22 = *(a1 + 120);
    v14 = *(a1 + 72);
    v15 = *(a1 + 32);
    v16 = *(a1 + 80);
    v17 = *(a1 + 88);
    v18 = *(a1 + 96);
    v19 = *(a1 + 64);
    v11 = *(a1 + 104);
    v12 = *(a1 + 112);
    v20 = v11;
    v21 = v12;
    [v7 createPresenceChannelWithMembershipKey:v8 serverKey:v9 serviceIdentifier:v10 completion:v13];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

void __101__SKAPresenceManager__createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_90(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v11 = [WeakRetained internalWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SKAPresenceManager__createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_2_91;
  block[3] = &unk_27843EF78;
  v24 = v9;
  v34 = *(a1 + 96);
  v25 = *(a1 + 32);
  v26 = WeakRetained;
  v27 = *(a1 + 40);
  v28 = v7;
  v29 = v8;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v30 = v17;
  v31 = v16;
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  v32 = v18;
  v33 = v19;
  v20 = v8;
  v21 = v7;
  v22 = v9;
  dispatch_async(v11, block);
}

void __101__SKAPresenceManager__createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_2_91(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 128);
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 128) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 48) channelManager];
    v10 = [v5 serverTime];

    v6 = [*(a1 + 48) databaseManager];
    v7 = [v6 createPresenceChannelForPresenceIdentifier:*(a1 + 56) channelIdentifier:*(a1 + 64) channelToken:*(a1 + 72) peerKey:*(a1 + 80) serverKey:*(a1 + 88) membershipKey:*(a1 + 96) creationDate:v10 options:*(a1 + 104) databaseContext:*(a1 + 112)];

    v8 = +[SKAPowerLogger shared];
    [v8 logEvent:1 ofType:1 onDatabaseChannel:v7];

    v9 = [*(a1 + 48) delegate];
    [v9 presenceManager:*(a1 + 120) didCreateChannel:v7];

    (*(*(a1 + 128) + 16))();
  }
}

- (void)_presencePayloadForChannel:(id)channel clientPayload:(id)payload options:(id)options timestamp:(id)timestamp completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  payloadCopy = payload;
  optionsCopy = options;
  timestampCopy = timestamp;
  completionCopy = completion;
  clientSpecifiedURI = [optionsCopy clientSpecifiedURI];

  if (clientSpecifiedURI)
  {
    messagingProvider = self->_messagingProvider;
    clientSpecifiedURI2 = [optionsCopy clientSpecifiedURI];
    LODWORD(messagingProvider) = [(SKAMessagingProviding *)messagingProvider isValidURI:clientSpecifiedURI2];

    if (!messagingProvider)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_11;
    }

    v20 = self->_messagingProvider;
    clientSpecifiedURI3 = [optionsCopy clientSpecifiedURI];
    v46 = 0;
    v22 = &v46;
    v23 = [(SKAMessagingProviding *)v20 selfAddressedURIForURI:clientSpecifiedURI3 error:&v46];
  }

  else
  {
    clientSpecifiedURI3 = [(SKAPresenceManager *)self messagingProvider];
    v45 = 0;
    v22 = &v45;
    v23 = [clientSpecifiedURI3 tokenURIWithError:&v45];
  }

  v24 = v23;
  v25 = *v22;

  if (v24 && ![v24 isEqualToString:&stru_2833DEA50])
  {
    v40 = timestampCopy;
    v26 = payloadCopy;
    v27 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v24;
      _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, "SenderTokenURI: %@", buf, 0xCu);
    }

    v28 = objc_alloc_init(DecryptedParticipantPayload);
    [(DecryptedParticipantPayload *)v28 setTokenUri:v24];
    identifier = [channelCopy identifier];
    [(DecryptedParticipantPayload *)v28 setChannelIdentifier:identifier];

    presenceIdentifier = [channelCopy presenceIdentifier];
    [(DecryptedParticipantPayload *)v28 setPresenceIdentifier:presenceIdentifier];

    payloadData = [v26 payloadData];
    v32 = [payloadData copy];
    [(DecryptedParticipantPayload *)v28 setClientPayload:v32];

    payloadCopy = v26;
    timestampCopy = v40;
    [v40 timeIntervalSince1970];
    [(DecryptedParticipantPayload *)v28 setTimestamp:v33];
    messagingProvider = [(SKAPresenceManager *)self messagingProvider];
    data = [(DecryptedParticipantPayload *)v28 data];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __92__SKAPresenceManager__presencePayloadForChannel_clientPayload_options_timestamp_completion___block_invoke;
    v41[3] = &unk_27843F040;
    v44 = completionCopy;
    v42 = v28;
    v43 = channelCopy;
    v36 = v28;
    [messagingProvider signPayload:data completion:v41];

    goto LABEL_16;
  }

LABEL_11:
  v37 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    clientSpecifiedURI4 = [optionsCopy clientSpecifiedURI];
    *buf = 138412802;
    v48 = v24;
    v49 = 2112;
    v50 = clientSpecifiedURI4;
    v51 = 2112;
    v52 = v25;
    _os_log_error_impl(&dword_220099000, v37, OS_LOG_TYPE_ERROR, "Failed to get senderTokenURI: %@ clientSpecifiedURI %@ error %@", buf, 0x20u);
  }

  if (!v25)
  {
    v25 = [SKAError errorWithCode:706 customDescription:@"Failed to get sender token URI"];
  }

  (*(completionCopy + 2))(completionCopy, 0, v25);
LABEL_16:

  v38 = *MEMORY[0x277D85DE8];
}

void __92__SKAPresenceManager__presencePayloadForChannel_clientPayload_options_timestamp_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __92__SKAPresenceManager__presencePayloadForChannel_clientPayload_options_timestamp_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(SignedParticipantPayload);
    [(SignedParticipantPayload *)v8 setPayload:*(a1 + 32)];
    [(SignedParticipantPayload *)v8 setSignature:v6];
    v9 = [SKAPresenceEncryptionKey alloc];
    v10 = [*(a1 + 40) presencePeerKey];
    v11 = [(SKAPresenceEncryptionKey *)v9 initWithKeyMaterial:v10];

    if (v11)
    {
      v12 = [(SignedParticipantPayload *)v8 data];
      v13 = [(SKAPresenceEncryptionKey *)v11 encryptPayload:v12];

      v14 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20 = [v13 length];
        _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Payload size: %lu", &v19, 0xCu);
      }

      v15 = *(*(a1 + 48) + 16);
    }

    else
    {
      v16 = +[SKAPresenceManager logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __92__SKAPresenceManager__presencePayloadForChannel_clientPayload_options_timestamp_completion___block_invoke_cold_2();
      }

      v17 = *(a1 + 48);
      v13 = [SKAError errorWithCode:403 customDescription:@"Failed to get peer key"];
      v15 = *(v17 + 16);
    }

    v15();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_rollChannelForCryptoFailureIfAllowed:(id)allowed
{
  allowedCopy = allowed;
  _shouldCryptoRoll = [(SKAPresenceManager *)self _shouldCryptoRoll];
  delegate = +[SKAPresenceManager logger];
  v7 = os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR);
  if (_shouldCryptoRoll)
  {
    if (v7)
    {
      [SKAPresenceManager _rollChannelForCryptoFailureIfAllowed:];
    }

    [(SKAPresenceManager *)self _markCryptoRoll];
    delegate = [(SKAPresenceManager *)self delegate];
    [delegate presenceManager:self didRequestToRollChannel:allowedCopy];
  }

  else if (v7)
  {
    [SKAPresenceManager _rollChannelForCryptoFailureIfAllowed:];
  }
}

- (BOOL)_shouldCryptoRoll
{
  v3 = CFPreferencesCopyAppValue(@"lastCryptoRollTime", @"com.apple.StatusKitAgent");
  _cryptoRollResetTimeSeconds = [(SKAPresenceManager *)self _cryptoRollResetTimeSeconds];
  if (v3)
  {
    v5 = _cryptoRollResetTimeSeconds;
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:v3];
    v8 = v7 > v5;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_markCryptoRoll
{
  v2 = [MEMORY[0x277CBEAA8] now];
  CFPreferencesSetAppValue(@"lastCryptoRollTime", v2, @"com.apple.StatusKitAgent");
}

- (void)didUpdatePresentDevices:(id)devices forChannel:(id)channel
{
  devicesCopy = devices;
  channelCopy = channel;
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SKAPresenceManager_didUpdatePresentDevices_forChannel___block_invoke;
  block[3] = &unk_27843E358;
  block[4] = self;
  v12 = devicesCopy;
  v13 = channelCopy;
  v9 = channelCopy;
  v10 = devicesCopy;
  dispatch_async(internalWorkQueue, block);
}

- (int64_t)_cryptoRollResetTimeSeconds
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-crypto-roll-reset-time-seconds"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v3 intValue];
    v5 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = intValue;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Server bag indicates our reset time for resetting crypto roll rate limits presence should be %lu", &v8, 0xCu);
    }
  }

  else
  {
    intValue = 18000;
  }

  v6 = *MEMORY[0x277D85DE8];
  return intValue;
}

+ (int64_t)_maxPayloadSizeBytes
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = +[SKAEnvironment overrideStatusKitPrefsDomain];
  v3 = v2;
  v4 = @"com.apple.StatusKitAgent";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = +[SKAEnvironment overrideMaxPayloadSizeBytes];
  v7 = v6;
  v8 = @"maxPayloadSizeBytes";
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = CFPreferencesCopyAppValue(v9, v5);
  if (+[SKAEnvironment overrideServerBagCheck])
  {
    v11 = 0;
    if (!v10)
    {
LABEL_17:
      intValue = 2048;
      goto LABEL_18;
    }

LABEL_9:
    intValue = [v10 intValue];
    v14 = +[SKAPresenceManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = intValue;
      v15 = "User override indicates our maxPayload size should be %lu";
LABEL_11:
      _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, v15, &v18, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v12 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v11 = [v12 objectForKey:@"shared-channels-max-presence-payload-size-bytes"];

  if (v10)
  {
    goto LABEL_9;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  intValue = [v11 intValue];
  v14 = +[SKAPresenceManager logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    v19 = intValue;
    v15 = "Server bag indicates our maxPayload size should be %lu";
    goto LABEL_11;
  }

LABEL_12:

LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return intValue;
}

+ (id)logger
{
  if (logger_onceToken_17 != -1)
  {
    +[SKAPresenceManager logger];
  }

  v3 = logger__logger_17;

  return v3;
}

uint64_t __28__SKAPresenceManager_logger__block_invoke()
{
  logger__logger_17 = os_log_create("com.apple.StatusKit", "SKAPresenceManager");

  return MEMORY[0x2821F96F8]();
}

+ (id)oversizeLogger
{
  if (oversizeLogger_onceToken != -1)
  {
    +[SKAPresenceManager oversizeLogger];
  }

  v3 = oversizeLogger__logger;

  return v3;
}

uint64_t __36__SKAPresenceManager_oversizeLogger__block_invoke()
{
  oversizeLogger__logger = os_log_create("com.apple.StatusKit", "StatusKit-oversized");

  return MEMORY[0x2821F96F8]();
}

- (SKAPresenceManagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_9(a1) serviceIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_220099000, v3, v4, "Presence has been disabled by the server for identifier %@.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __147__SKAPresenceManager_retainTransientPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_client_completion___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Payload is invalid! Aborting presence assertion. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __141__SKAPresenceManager_retainPersistentPresenceAssertionForPresenceIdentifier_withPresencePayload_assertionOptions_presenceOptions_completion___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_9(a1) serviceIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_220099000, v3, v4, "Presence has been disabled by the server for identifier %@.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)isClientPayloadValid:withError:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  WORD2(v4) = 2048;
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Payload is oversized! Payload size:%lu Max size:%lu", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sendPresenceAssertionMessageForChannel:withPayload:withPriority:options:isRefresh:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "_sendPresenceAssertionMessageForChannel - Failed to retrieve one or more required crypto keys. membershipKey %@ serverKey %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to create presence payload with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Should not reauth for error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Account refresh required for error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_39_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Account refresh failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __116__SKAPresenceManager__sendPresenceAssertionMessageForChannel_withPayload_withPriority_options_isRefresh_completion___block_invoke_2_41_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Account refresh did not fix secondary attempt %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __71__SKAPresenceManager_pollAndUpdatePresentDevicesForChannel_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Error updating active particpants for channel %@  based on polling response", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sendPollingMessageForChannel:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "_sendPollingMessageForChannel - Failed to retrieve one or more required crypto keys. membershipKey %@ serverKey %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Could not find transient presence assertion to remove from in memory model for presence identifier: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __103__SKAPresenceManager_releaseTransientPresenceAssertionForPresenceIdentifier_options_client_completion___block_invoke_52_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Deactivation message failed for %@ with error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __97__SKAPresenceManager_releasePersistentPresenceAssertionForPresenceIdentifier_options_completion___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Could not find persistent presence assertion to remove from database for presence identifier: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sendPresenceDeactivationMessageForChannel:options:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "_sendPresenceDeactivationMessageForChannel - Failed to retrieve one or more required crypto keys. membershipKey %@ serverKey %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __84__SKAPresenceManager__sendPresenceDeactivationMessageForChannel_options_completion___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Should not reauth for error releasing presence: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __99__SKAPresenceManager_releaseAllTransientPresenceAssertionsAssociatedWithClient_options_completion___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_9(a1) serviceIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_220099000, v3, v4, "Presence has been disabled by the server for identifier %@.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __99__SKAPresenceManager_releaseAllTransientPresenceAssertionsAssociatedWithClient_options_completion___block_invoke_59_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v2, v3, "Could not find transient presence assertion to remove from in memory model for presence identifier: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)channelReceivedIncomingPayloadUpdate:channel:withIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to deserialize data on channel %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)payloadFromActivityUpdate:forChannel:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to deserialize update on channel %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)payloadFromActivityUpdate:forChannel:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to decrypt payload for channel %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)payloadFromActivityUpdate:forChannel:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to instantiate server key for channel %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)payloadFromActivityUpdate:forChannel:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Encrypted update data missing on channel %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingPayloadUpdate:onChannel:withIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Missing participant payloads for update on channel %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingPayloadUpdate:onChannel:withIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __106__SKAPresenceManager_findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_9(a1) serviceIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_220099000, v3, v4, "Presence has been disabled by the server for identifier %@.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __101__SKAPresenceManager_findPresenceChannelForPresenceIdentifier_isPersonal_databaseContext_completion___block_invoke_67_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "CreateChannel: Error finding presence channel: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __100__SKAPresenceManager_createPresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_68_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "CreateChannel: Error creating presence channel: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removePersistentPresenceAssertionForPresenceIdentifier:isPersonal:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Could not find persistent presence assertion in database for presence identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_presentDevicesChanged:forChannel:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Active assertion exists but we're missing or have expired from this channel: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_presentDevicesChanged:forChannel:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_presentDevicesChanged:forChannel:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_presentDevicesChanged:(void *)a1 forChannel:.cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 presenceIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_220099000, v2, v3, "There is no active subscription or assertion for presenceIdentifier %@, not informing delegate of present device changes", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __56__SKAPresenceManager__presentDevicesChanged_forChannel___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Error reasserting presence for channel %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __107__SKAPresenceManager__findOrCreatePresenceChannelForPresenceIdentifier_options_databaseContext_completion___block_invoke_88_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "CreateChannel: Error creating a presence channel: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createPresenceChannelForPresenceIdentifier:options:databaseContext:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __92__SKAPresenceManager__presencePayloadForChannel_clientPayload_options_timestamp_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to get signature: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __92__SKAPresenceManager__presencePayloadForChannel_clientPayload_options_timestamp_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_rollChannelForCryptoFailureIfAllowed:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_rollChannelForCryptoFailureIfAllowed:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end