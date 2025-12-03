@interface VMVoicemailManager
- (BOOL)createTranscription:(id)transcription transcription:(id)a4 error:(id *)error;
- (BOOL)isAccountOnline:(id)online;
- (BOOL)isAccountSubscribed:(id)subscribed;
- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)d;
- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)d;
- (BOOL)isMessageWaiting;
- (BOOL)isOnline;
- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)d;
- (BOOL)isSubscribed;
- (BOOL)isSyncInProgress;
- (BOOL)isTranscribing;
- (BOOL)isTranscriptionServiceAvailable;
- (BOOL)setAccountProperties:(id)properties properties:(id)a4 error:(id *)error;
- (NSArray)accounts;
- (NSArray)allVoicemails;
- (NSProgress)transcriptionProgress;
- (OS_dispatch_queue)completionQueue;
- (VMVoicemailManagedDelegate)delegate;
- (VMVoicemailManager)init;
- (VMVoicemailManager)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (double)maximumGreetingDurationForAccountUUID:(id)d;
- (id)asynchronousServerConnectionWithErrorHandler:(id)handler;
- (id)createPersonalizedTranscript:(id)transcript error:(id *)error;
- (id)dataForVoicemailWithIdentifier:(unint64_t)identifier;
- (id)deleteVoicemail:(id)voicemail;
- (id)deleteVoicemails:(id)voicemails;
- (id)fetchAccounts;
- (id)getServiceInfoForAccountUUID:(id)d;
- (id)initAsync:(id)async delegate:(id)delegate delegateQueue:(id)queue;
- (id)markVoicemailAsRead:(id)read;
- (id)markVoicemailsAsRead:(id)read;
- (id)messagesForMailboxType:(int64_t)type limit:(int64_t)limit offset:(int64_t)offset error:(id *)error;
- (id)removeVoicemailFromTrash:(id)trash;
- (id)removeVoicemailsFromTrash:(id)trash;
- (id)serverConnection:(BOOL)connection withErrorHandler:(id)handler;
- (id)synchronousServerConnectionWithErrorHandler:(id)handler;
- (id)trashVoicemail:(id)voicemail;
- (id)trashVoicemails:(id)voicemails;
- (id)uniqueIdentifierForVoiceMail:(id)mail;
- (id)voicemailWithIdentifier:(unint64_t)identifier;
- (id)voicemailsPassingTest:(id)test;
- (int64_t)maximumPasscodeLengthForAccountUUID:(id)d;
- (int64_t)messageCountForMailboxType:(int64_t)type error:(id *)error;
- (int64_t)minimumPasscodeLengthForAccountUUID:(id)d;
- (int64_t)unreadCount;
- (unint64_t)countOfVoicemailsPassingTest:(id)test;
- (unint64_t)storageUsage;
- (unint64_t)storageUsageForAccountUUID:(id)d error:(id *)error;
- (void)_checkFirstUnlock;
- (void)_fetchInitialStateIfNecessaryWithForce:(BOOL)force waitStates:(BOOL)states waitMails:(BOOL)mails waitAccounts:(BOOL)accounts session:(id)session;
- (void)call_accountStorageUsageChanged:(id)changed storageUsage:(unint64_t)usage;
- (void)call_accountsDidChange;
- (void)call_capabilitiesDidChange;
- (void)call_greetingDidChangeByCarrier:(id)carrier;
- (void)call_managerStorageUsageDidChange;
- (void)call_onlineStatusDidChange;
- (void)call_subscriptionStateStatusDidChange;
- (void)call_syncInProgresDidChange;
- (void)call_transcribingStatusDidChange;
- (void)call_transcriptionServiceStatusDidChange;
- (void)call_voicemailsDidChange:(id)change;
- (void)dealloc;
- (void)greetingChangedByCarrier:(id)carrier;
- (void)greetingForAccountUUID:(id)d completion:(id)completion;
- (void)insertVoicemail:(id)voicemail;
- (void)messageCountForMailboxType:(int64_t)type completion:(id)completion;
- (void)obliterate;
- (void)performAtomicAccessorBlock:(id)block;
- (void)performSynchronousBlock:(id)block;
- (void)remapAccount:(id)account toAccount:(id)toAccount;
- (void)reportTranscriptionProblemForUUID:(id)d;
- (void)reportTranscriptionProblemForVoicemail:(id)voicemail;
- (void)reportTranscriptionRatedAccurateForUUID:(BOOL)d forVoicemailUUID:(id)iD;
- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)notifications;
- (void)resetNetworkSettings;
- (void)retrieveDataForVoicemail:(id)voicemail;
- (void)sendStateRequestForAccountUUID:(id)d;
- (void)setAccounts:(id)accounts;
- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion;
- (void)setMessageWaiting:(BOOL)waiting;
- (void)setOnline:(BOOL)online;
- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion;
- (void)setProgressFractionCompleted:(id)completed;
- (void)setProgressTotalUnitCount:(id)count;
- (void)setStorageUsage:(id)usage storageUsage:(unint64_t)storageUsage;
- (void)setSubscribed:(BOOL)subscribed;
- (void)setSyncInProgress:(BOOL)progress;
- (void)setTranscribing:(BOOL)transcribing fractionCompleted:(id)completed totalUnitCount:(id)count;
- (void)setTranscriptionServiceAvailable:(BOOL)available;
- (void)startMailSyncing;
- (void)synchronize;
- (void)updateAccounts:(id)accounts;
- (void)voicemailsUpdated:(id)updated;
@end

@implementation VMVoicemailManager

- (void)_checkFirstUnlock
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_2721BA000, a2, OS_LOG_TYPE_ERROR, "MKBDeviceUnlockedSinceBoot (2) failed with %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)call_capabilitiesDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  delegate = [(VMVoicemailManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate_queue = [(VMVoicemailManager *)self delegate_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__VMVoicemailManager_call_capabilitiesDidChange__block_invoke;
    block[3] = &unk_279E3D1D0;
    v10 = delegate;
    dispatch_async(delegate_queue, block);

    v5 = v10;
  }

  else
  {
    v5 = vm_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = delegate;
      _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support selector capabilitiesDidChange", buf, 0xCu);
    }
  }

  completionQueue = [(VMVoicemailManager *)self completionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__VMVoicemailManager_call_capabilitiesDidChange__block_invoke_41;
  v8[3] = &unk_279E3D1D0;
  v8[4] = self;
  dispatch_async(completionQueue, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (VMVoicemailManagedDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OS_dispatch_queue)completionQueue
{
  p_completionQueue = &self->_completionQueue;
  completionQueue = self->_completionQueue;
  if (!completionQueue)
  {
    objc_storeStrong(p_completionQueue, MEMORY[0x277D85CD0]);
    completionQueue = *p_completionQueue;
  }

  return completionQueue;
}

- (void)call_subscriptionStateStatusDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  delegate = [(VMVoicemailManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate_queue = [(VMVoicemailManager *)self delegate_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__VMVoicemailManager_call_subscriptionStateStatusDidChange__block_invoke;
    block[3] = &unk_279E3D1D0;
    v10 = delegate;
    dispatch_async(delegate_queue, block);

    v5 = v10;
  }

  else
  {
    v5 = vm_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = delegate;
      _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support selector subscriptionStateStatusDidChange", buf, 0xCu);
    }
  }

  completionQueue = [(VMVoicemailManager *)self completionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__VMVoicemailManager_call_subscriptionStateStatusDidChange__block_invoke_44;
  v8[3] = &unk_279E3D1D0;
  v8[4] = self;
  dispatch_async(completionQueue, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)call_onlineStatusDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  delegate = [(VMVoicemailManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate_queue = [(VMVoicemailManager *)self delegate_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__VMVoicemailManager_call_onlineStatusDidChange__block_invoke;
    block[3] = &unk_279E3D1D0;
    v10 = delegate;
    dispatch_async(delegate_queue, block);

    v5 = v10;
  }

  else
  {
    v5 = vm_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = delegate;
      _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support selector onlineStatusDidChange", buf, 0xCu);
    }
  }

  completionQueue = [(VMVoicemailManager *)self completionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__VMVoicemailManager_call_onlineStatusDidChange__block_invoke_38;
  v8[3] = &unk_279E3D1D0;
  v8[4] = self;
  dispatch_async(completionQueue, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)call_syncInProgresDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  delegate = [(VMVoicemailManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate_queue = [(VMVoicemailManager *)self delegate_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__VMVoicemailManager_call_syncInProgresDidChange__block_invoke;
    block[3] = &unk_279E3D1D0;
    v10 = delegate;
    dispatch_async(delegate_queue, block);

    v5 = v10;
  }

  else
  {
    v5 = vm_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = delegate;
      _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support selector syncInProgresDidChange", buf, 0xCu);
    }
  }

  completionQueue = [(VMVoicemailManager *)self completionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__VMVoicemailManager_call_syncInProgresDidChange__block_invoke_47;
  v8[3] = &unk_279E3D1D0;
  v8[4] = self;
  dispatch_async(completionQueue, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)call_transcribingStatusDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  delegate = [(VMVoicemailManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate_queue = [(VMVoicemailManager *)self delegate_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__VMVoicemailManager_call_transcribingStatusDidChange__block_invoke;
    block[3] = &unk_279E3D1D0;
    v10 = delegate;
    dispatch_async(delegate_queue, block);

    v5 = v10;
  }

  else
  {
    v5 = vm_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = delegate;
      _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support selector transcribingStatusDidChange", buf, 0xCu);
    }
  }

  completionQueue = [(VMVoicemailManager *)self completionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__VMVoicemailManager_call_transcribingStatusDidChange__block_invoke_55;
  v8[3] = &unk_279E3D1D0;
  v8[4] = self;
  dispatch_async(completionQueue, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)call_managerStorageUsageDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  delegate = [(VMVoicemailManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate_queue = [(VMVoicemailManager *)self delegate_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__VMVoicemailManager_call_managerStorageUsageDidChange__block_invoke;
    block[3] = &unk_279E3D1D0;
    v10 = delegate;
    dispatch_async(delegate_queue, block);

    v5 = v10;
  }

  else
  {
    v5 = vm_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = delegate;
      _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support selector managerStorageUsageDidChange", buf, 0xCu);
    }
  }

  completionQueue = [(VMVoicemailManager *)self completionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__VMVoicemailManager_call_managerStorageUsageDidChange__block_invoke_50;
  v8[3] = &unk_279E3D1D0;
  v8[4] = self;
  dispatch_async(completionQueue, v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __44__VMVoicemailManager_call_accountsDidChange__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client is notifying delegate %@ using accountsDidChange", &v6, 0xCu);
  }

  result = [*(a1 + 32) accountsDidChange];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isOnline
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__VMVoicemailManager_isOnline__block_invoke;
  v4[3] = &unk_279E3D108;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailManager *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSArray)accounts
{
  os_unfair_lock_lock(&self->_accessorLock);
  accounts = self->_accounts;
  if (!accounts)
  {
    fetchAccounts = [(VMVoicemailManager *)self fetchAccounts];
    v5 = [fetchAccounts copy];
    v6 = self->_accounts;
    self->_accounts = v5;

    accounts = self->_accounts;
  }

  v7 = accounts;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v7;
}

- (unint64_t)storageUsage
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__VMVoicemailManager_storageUsage__block_invoke;
  v4[3] = &unk_279E3D108;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailManager *)self performSynchronousBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSProgress)transcriptionProgress
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__VMVoicemailManager_transcriptionProgress__block_invoke;
  v4[3] = &unk_279E3D108;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailManager *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)isSubscribed
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__VMVoicemailManager_isSubscribed__block_invoke;
  v4[3] = &unk_279E3D108;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailManager *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __48__VMVoicemailManager_call_capabilitiesDidChange__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client is notifying delegate %@ using capabilitiesDidChange", &v6, 0xCu);
  }

  result = [*(a1 + 32) capabilitiesDidChange];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __55__VMVoicemailManager_call_managerStorageUsageDidChange__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client is notifying delegate %@ using managerStorageUsageDidChange", &v6, 0xCu);
  }

  result = [*(a1 + 32) managerStorageUsageDidChange];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __54__VMVoicemailManager_call_transcribingStatusDidChange__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client is notifying delegate %@ using transcribingStatusDidChange", &v6, 0xCu);
  }

  result = [*(a1 + 32) transcribingStatusDidChange];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__VMVoicemailManager_call_syncInProgresDidChange__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client is notifying delegate %@ using syncInProgresDidChange", &v6, 0xCu);
  }

  result = [*(a1 + 32) syncInProgresDidChange];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __48__VMVoicemailManager_call_onlineStatusDidChange__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client is notifying delegate %@ using onlineStatusDidChange", &v6, 0xCu);
  }

  result = [*(a1 + 32) onlineStatusDidChange];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)call_accountsDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  delegate = [(VMVoicemailManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate_queue = [(VMVoicemailManager *)self delegate_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__VMVoicemailManager_call_accountsDidChange__block_invoke;
    block[3] = &unk_279E3D1D0;
    v10 = delegate;
    dispatch_async(delegate_queue, block);

    v5 = v10;
  }

  else
  {
    v5 = vm_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = delegate;
      _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support selector accountsDidChange", buf, 0xCu);
    }
  }

  completionQueue = [(VMVoicemailManager *)self completionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__VMVoicemailManager_call_accountsDidChange__block_invoke_60;
  v8[3] = &unk_279E3D1D0;
  v8[4] = self;
  dispatch_async(completionQueue, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (VMVoicemailManager)init
{
  v3 = objc_alloc_init(VMClientWrapper);
  v4 = [(VMVoicemailManager *)self initWithClient:v3 synchronously:1 queryState:1 fetchMail:1 session:0 delegate:0 delegateQueue:0];

  return v4;
}

- (VMVoicemailManager)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v8 = objc_alloc_init(VMClientWrapper);
  v9 = [(VMVoicemailManager *)self initWithClient:v8 synchronously:1 queryState:1 fetchMail:1 session:0 delegate:delegateCopy delegateQueue:queueCopy];

  return v9;
}

- (id)initAsync:(id)async delegate:(id)delegate delegateQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  asyncCopy = async;
  v11 = objc_alloc_init(VMClientWrapper);
  v12 = [(VMVoicemailManager *)self initWithClient:v11 synchronously:0 queryState:1 fetchMail:1 session:asyncCopy delegate:delegateCopy delegateQueue:queueCopy];

  return v12;
}

void __103__VMVoicemailManager_initWithClient_synchronously_queryState_fetchMail_session_delegate_delegateQueue___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = vm_framework_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = objc_opt_class();
      v5 = v8;
      _os_log_impl(&dword_2721BA000, v3, OS_LOG_TYPE_DEFAULT, "%@ is handling VMXPCConnectionAvailable.", &v7, 0xCu);
    }

    [WeakRetained _fetchInitialStateIfNecessaryWithForce:1 waitStates:0 waitMails:0 waitAccounts:0 session:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  notify_cancel([(VMVoicemailManager *)self token]);
  v3.receiver = self;
  v3.super_class = VMVoicemailManager;
  [(VMVoicemailManager *)&v3 dealloc];
}

void __39__VMVoicemailManager__checkFirstUnlock__block_invoke(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Device became unlocked after boot", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 12) = 1;
  }

  notify_cancel(*(a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _fetchInitialStateIfNecessaryWithForce:0 waitStates:0 waitMails:0 waitAccounts:0 session:0];
}

- (id)asynchronousServerConnectionWithErrorHandler:(id)handler
{
  fHasDeviceBeenUnlockedSinceBoot = self->fHasDeviceBeenUnlockedSinceBoot;
  handlerCopy = handler;
  if (fHasDeviceBeenUnlockedSinceBoot)
  {
    client = [(VMVoicemailManager *)self client];
    clientConnection = [client clientConnection];
    v8 = [clientConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v9 = vm_framework_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2721BA000, v9, OS_LOG_TYPE_DEFAULT, "rejected asynchronousServerConnectionWithErrorHandler", v12, 2u);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v10);

    v8 = 0;
  }

  return v8;
}

- (id)synchronousServerConnectionWithErrorHandler:(id)handler
{
  fHasDeviceBeenUnlockedSinceBoot = self->fHasDeviceBeenUnlockedSinceBoot;
  handlerCopy = handler;
  if (fHasDeviceBeenUnlockedSinceBoot)
  {
    client = [(VMVoicemailManager *)self client];
    clientConnection = [client clientConnection];
    v8 = [clientConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v9 = vm_framework_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2721BA000, v9, OS_LOG_TYPE_DEFAULT, "rejected, synchronousServerConnectionWithErrorHandler", v12, 2u);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v10);

    v8 = 0;
  }

  return v8;
}

- (id)serverConnection:(BOOL)connection withErrorHandler:(id)handler
{
  if (connection)
  {
    [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:handler];
  }

  else
  {
    [(VMVoicemailManager *)self asynchronousServerConnectionWithErrorHandler:handler];
  }
  v4 = ;

  return v4;
}

void __38__VMVoicemailManager_serverConnection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = vm_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__VMVoicemailManager_serverConnection__block_invoke_cold_1();
  }
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)notifications
{
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "Client woke up, asking to recheck. Pinging daemon.", buf, 2u);
  }

  if (self->fHasDeviceBeenUnlockedSinceBoot)
  {
    client = [(VMVoicemailManager *)self client];
    [client setPingRetry:1];
    v6 = [(VMVoicemailManager *)self asynchronousServerConnectionWithErrorHandler:&__block_literal_global_11];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__VMVoicemailManager_requestInitialStateIfNecessaryAndSendNotifications___block_invoke_12;
    v8[3] = &unk_279E3D1A8;
    v9 = client;
    v7 = client;
    [v6 ping:v8];
  }

  else
  {
    v7 = vm_framework_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2721BA000, v7, OS_LOG_TYPE_DEFAULT, "Cannot ping when device is locked.", buf, 2u);
    }
  }
}

void __73__VMVoicemailManager_requestInitialStateIfNecessaryAndSendNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = vm_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__VMVoicemailManager_requestInitialStateIfNecessaryAndSendNotifications___block_invoke_cold_1();
  }
}

void __73__VMVoicemailManager_requestInitialStateIfNecessaryAndSendNotifications___block_invoke_12(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPingRetry:0];
  v3 = vm_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_2721BA000, v3, OS_LOG_TYPE_DEFAULT, "VMD server replied with %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)startMailSyncing
{
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__VMVoicemailManager_startMailSyncing__block_invoke;
  block[3] = &unk_279E3D1D0;
  block[4] = self;
  dispatch_async(internalClientQueue, block);
}

void __38__VMVoicemailManager_startMailSyncing__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 9);
  v3 = vm_framework_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_2721BA000, v3, OS_LOG_TYPE_DEFAULT, "requested startMailSyncing while it was already active - skipping", v5, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_2721BA000, v3, OS_LOG_TYPE_DEFAULT, "requested startMailSyncing - starting sync", buf, 2u);
    }

    *(*(a1 + 32) + 8) = 1;
    *(*(a1 + 32) + 9) = 1;
    [*(a1 + 32) _fetchInitialStateIfNecessaryWithForce:0 waitStates:0 waitMails:0 waitAccounts:0 session:0];
  }
}

- (void)_fetchInitialStateIfNecessaryWithForce:(BOOL)force waitStates:(BOOL)states waitMails:(BOOL)mails waitAccounts:(BOOL)accounts session:(id)session
{
  sessionCopy = session;
  v13 = sessionCopy;
  if (sessionCopy)
  {
    dispatch_group_enter(sessionCopy);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke;
  v15[3] = &unk_279E3D360;
  v15[4] = self;
  v16 = v13;
  forceCopy = force;
  accountsCopy = accounts;
  mailsCopy = mails;
  statesCopy = states;
  v14 = v13;
  [(VMVoicemailManager *)self performSynchronousBlock:v15];
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((v2[9] & 1) == 0 && (v2[8] & 1) == 0)
  {
    v3 = vm_framework_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v32 = objc_opt_class();
      v12 = v32;
      _os_log_impl(&dword_2721BA000, v3, OS_LOG_TYPE_DEFAULT, "%@ client initialized without expecting mail or states sync", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (v2[10] == 1)
  {
    v3 = vm_framework_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v32 = objc_opt_class();
      v5 = v32;
      _os_log_impl(&dword_2721BA000, v3, OS_LOG_TYPE_DEFAULT, "%@ mail loading is already in progress", buf, 0xCu);
    }

LABEL_17:

    v15 = *(a1 + 40);
    if (v15)
    {
      dispatch_group_leave(v15);
    }

    goto LABEL_19;
  }

  if (v2[11] == 1 && (*(a1 + 48) & 1) == 0)
  {
    v3 = vm_framework_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v32 = objc_opt_class();
      v14 = v32;
      _os_log_impl(&dword_2721BA000, v3, OS_LOG_TYPE_DEFAULT, "%@ mail already loaded - bailing out", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (v2[9])
  {
    v2[11] = 0;
    *(*(a1 + 32) + 10) = 1;
    v2 = *(a1 + 32);
  }

  objc_initWeak(buf, v2);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_15;
  v27[3] = &unk_279E3D270;
  v30 = *(a1 + 49);
  objc_copyWeak(&v29, buf);
  v28 = *(a1 + 40);
  v6 = [v27 copy];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_20;
  v22[3] = &unk_279E3D2E8;
  v26 = *(a1 + 50);
  objc_copyWeak(&v25, buf);
  v23 = *(a1 + 40);
  v7 = v6;
  v24 = v7;
  v8 = [v22 copy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_25;
  v17[3] = &unk_279E3D2E8;
  v21 = *(a1 + 51);
  objc_copyWeak(&v20, buf);
  v18 = *(a1 + 40);
  v9 = v8;
  v19 = v9;
  v10 = MEMORY[0x2743C3970](v17);
  v10[2](v10, *(a1 + 32));

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v25);

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "Requesting initial VVM accounts", buf, 2u);
  }

  v5 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_16;
  v11[3] = &unk_279E3D1F8;
  objc_copyWeak(&v13, (a1 + 40));
  v12 = *(a1 + 32);
  v6 = [v3 serverConnection:v5 withErrorHandler:v11];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_17;
  v7[3] = &unk_279E3D248;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = *(a1 + 32);
  v10 = v5;
  [v6 accounts:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v13);
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_16_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 10) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    dispatch_group_leave(v7);
  }
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = MEMORY[0x277CBEBF8];
    if (v3)
    {
      v6 = v3;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_2;
    v11[3] = &unk_279E3D220;
    v11[4] = WeakRetained;
    v3 = v6;
    v12 = v3;
    v13 = *(a1 + 32);
    v7 = MEMORY[0x2743C3970](v11);
    v8 = v7;
    if (*(a1 + 48) == 1)
    {
      (*(v7 + 16))(v7);
    }

    else
    {
      v10 = [v5 internalClientQueue];
      dispatch_async(v10, v8);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      dispatch_group_leave(v9);
    }
  }
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_3;
  v3[3] = &unk_279E3D220;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 performSynchronousBlock:v3];
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_3(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Requesting initial VVM accounts - replied", v4, 2u);
  }

  [*(a1 + 32) setAccounts:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    dispatch_group_leave(v3);
  }
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[9];
  v5 = vm_framework_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Requesting initial VVM voicemails", buf, 2u);
    }

    v7 = *(a1 + 56);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_21;
    v14[3] = &unk_279E3D1F8;
    objc_copyWeak(&v16, (a1 + 48));
    v15 = *(a1 + 32);
    v8 = [v3 serverConnection:v7 withErrorHandler:v14];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_22;
    v9[3] = &unk_279E3D2C0;
    objc_copyWeak(&v12, (a1 + 48));
    v11 = *(a1 + 40);
    v13 = v7;
    v10 = *(a1 + 32);
    [v8 allVoicemails:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v16);
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "mail fetch is not requested - skipping to accounts", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_21_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 10) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    dispatch_group_leave(v7);
  }
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_2_23;
    v10[3] = &unk_279E3D298;
    v10[4] = WeakRetained;
    v11 = v3;
    v12 = *(a1 + 40);
    v6 = MEMORY[0x2743C3970](v10);
    v7 = v6;
    if (*(a1 + 56) == 1)
    {
      (*(v6 + 16))(v6);
    }

    else
    {
      v9 = [v5 internalClientQueue];
      dispatch_async(v9, v7);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      dispatch_group_leave(v8);
    }
  }
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_2_23(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Requesting initial VVM voicemails - replied", v9, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  v5 = *(a1 + 40);
  v6 = *(v3 + 72);
  *(v3 + 72) = v5;
  v7 = v4;

  *(*(a1 + 32) + 10) = 0;
  *(*(a1 + 32) + 11) = 1;
  [*(a1 + 32) call_voicemailsDidChange:v7];
  v8 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "Requesting initial VVM states", buf, 2u);
  }

  v5 = *(a1 + 56);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_26;
  v12[3] = &unk_279E3D1F8;
  objc_copyWeak(&v14, (a1 + 48));
  v13 = *(a1 + 32);
  v6 = [v3 serverConnection:v5 withErrorHandler:v12];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_27;
  v7[3] = &unk_279E3D338;
  objc_copyWeak(&v10, (a1 + 48));
  v9 = *(a1 + 40);
  v11 = v5;
  v8 = *(a1 + 32);
  [v6 requestInitialState:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v14);
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_21_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 10) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    dispatch_group_leave(v7);
  }
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_27(uint64_t a1, char a2, char a3, char a4, char a5, char a6, void *a7)
{
  v13 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v15 = WeakRetained;
  if (WeakRetained)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_2_28;
    v23 = &unk_279E3D310;
    v24 = WeakRetained;
    v27 = a2;
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v25 = v13;
    v26 = *(a1 + 40);
    v16 = MEMORY[0x2743C3970](&v20);
    v17 = v16;
    if (*(a1 + 56) == 1)
    {
      (*(v16 + 16))(v16);
    }

    else
    {
      v19 = [v15 internalClientQueue];
      dispatch_async(v19, v17);
    }
  }

  else
  {
    v18 = *(a1 + 32);
    if (v18)
    {
      dispatch_group_leave(v18);
    }
  }
}

uint64_t __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_2_28(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Requesting initial VVM states - replied", v5, 2u);
  }

  *(*(a1 + 32) + 15) = *(a1 + 56);
  *(*(a1 + 32) + 14) = *(a1 + 57);
  *(*(a1 + 32) + 16) = *(a1 + 58);
  *(*(a1 + 32) + 17) = *(a1 + 59);
  *(*(a1 + 32) + 18) = *(a1 + 60);
  *(*(a1 + 32) + 48) = [*(a1 + 40) unsignedIntegerValue];
  [*(a1 + 32) call_capabilitiesDidChange];
  [*(a1 + 32) call_subscriptionStateStatusDidChange];
  [*(a1 + 32) call_onlineStatusDidChange];
  [*(a1 + 32) call_syncInProgresDidChange];
  [*(a1 + 32) call_transcriptionServiceStatusDidChange];
  [*(a1 + 32) call_transcribingStatusDidChange];
  [*(a1 + 32) call_managerStorageUsageDidChange];
  v3 = *(a1 + 32);
  return (*(*(a1 + 48) + 16))();
}

- (void)call_voicemailsDidChange:(id)change
{
  v30[3] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (changeCopy)
  {
    voicemails = [(VMVoicemailManager *)self voicemails];
    v6 = [voicemails arrayBySubtractingOrderedSet:changeCopy];
    v7 = [changeCopy arrayBySubtractingOrderedSet:voicemails];
    v8 = [voicemails arrayByIntersectingWithOrderedSet:changeCopy];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __47__VMVoicemailManager_call_voicemailsDidChange___block_invoke;
    v25[3] = &unk_279E3D388;
    v26 = changeCopy;
    v9 = [v8 indexesOfObjectsPassingTest:v25];
    v10 = [v8 objectsAtIndexes:v9];

    if (![v6 count] && !objc_msgSend(v7, "count") && !objc_msgSend(v10, "count"))
    {

      v15 = 0;
      goto LABEL_12;
    }

    v29[0] = @"VMVoicemailVoicemailsAddedKey";
    v29[1] = @"VMVoicemailVoicemailsDeletedKey";
    v30[0] = v6;
    v30[1] = v7;
    v29[2] = @"VMVoicemailVoicemailFlagsChangedKey";
    v30[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  }

  else
  {
    v11 = 0;
    v6 = 0;
    v7 = 0;
    v10 = 0;
  }

  voicemails = [(VMVoicemailManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate_queue = [(VMVoicemailManager *)self delegate_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__VMVoicemailManager_call_voicemailsDidChange___block_invoke_2;
    block[3] = &unk_279E3D3C8;
    v20 = voicemails;
    v21 = changeCopy;
    v22 = v6;
    v23 = v7;
    v24 = v10;
    dispatch_async(delegate_queue, block);

    v13 = v20;
  }

  else
  {
    v13 = vm_framework_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = voicemails;
      _os_log_impl(&dword_2721BA000, v13, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support selector voicemailsDidChangeInitial", buf, 0xCu);
    }
  }

  completionQueue = [(VMVoicemailManager *)self completionQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__VMVoicemailManager_call_voicemailsDidChange___block_invoke_34;
  v17[3] = &unk_279E3D3F8;
  v17[4] = self;
  v15 = v11;
  v18 = v15;
  dispatch_async(completionQueue, v17);

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __47__VMVoicemailManager_call_voicemailsDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) indexOfObject:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:v4];
    if ([v6 hasSameContent:v3])
    {
      v5 = [v6 hasSameFlags:v3] ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

uint64_t __47__VMVoicemailManager_call_voicemailsDidChange___block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client is notifying delegate %@ using voicemailsDidChangeInitial", &v11, 0xCu);
  }

  v4 = a1[4];
  v5 = a1[5];
  if ([a1[6] count])
  {
    v6 = a1[6];
  }

  else
  {
    v6 = 0;
  }

  if ([a1[7] count])
  {
    v7 = a1[7];
  }

  else
  {
    v7 = 0;
  }

  if ([a1[8] count])
  {
    v8 = a1[8];
  }

  else
  {
    v8 = 0;
  }

  result = [v4 voicemailsDidChangeInitial:v5 == 0 added:v6 deleted:v7 updated:v8];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __47__VMVoicemailManager_call_voicemailsDidChange___block_invoke_34(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client post voicemails changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"VMVoicemailVoicemailsChangedNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

void __48__VMVoicemailManager_call_onlineStatusDidChange__block_invoke_38(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client post online status changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"VMVoicemailOnlineStatusChangedNotification" object:*(a1 + 32)];
}

void __48__VMVoicemailManager_call_capabilitiesDidChange__block_invoke_41(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client post capabilities changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"VMVoicemailCapabilitiesChangedNotification" object:*(a1 + 32)];
}

uint64_t __59__VMVoicemailManager_call_subscriptionStateStatusDidChange__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client is notifying delegate %@ using subscriptionStateStatusDidChange", &v6, 0xCu);
  }

  result = [*(a1 + 32) subscriptionStateStatusDidChange];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __59__VMVoicemailManager_call_subscriptionStateStatusDidChange__block_invoke_44(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client post subscription status changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"VMVoicemailSubscriptionStateStatusChangedNotification" object:*(a1 + 32)];
}

void __49__VMVoicemailManager_call_syncInProgresDidChange__block_invoke_47(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client post sync in progress changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"VMVoicemailSyncInProgressChangedNotification" object:*(a1 + 32)];
}

void __55__VMVoicemailManager_call_managerStorageUsageDidChange__block_invoke_50(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client post storage usage changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"VMVoicemailManagerStorageUsageChangedNotification" object:*(a1 + 32)];
}

- (void)call_accountStorageUsageChanged:(id)changed storageUsage:(unint64_t)usage
{
  v17 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  delegate = [(VMVoicemailManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate_queue = [(VMVoicemailManager *)self delegate_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__VMVoicemailManager_call_accountStorageUsageChanged_storageUsage___block_invoke;
    block[3] = &unk_279E3D448;
    v12 = delegate;
    v13 = changedCopy;
    usageCopy = usage;
    dispatch_async(delegate_queue, block);

    v9 = v12;
  }

  else
  {
    v9 = vm_framework_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = delegate;
      _os_log_impl(&dword_2721BA000, v9, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support selector accountStorageUsageChanged", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __67__VMVoicemailManager_call_accountStorageUsageChanged_storageUsage___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client is notifying delegate %@ using accountStorageUsageChanged", &v6, 0xCu);
  }

  result = [*(a1 + 32) accountStorageUsageChanged:*(a1 + 40) storageUsage:*(a1 + 48)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __54__VMVoicemailManager_call_transcribingStatusDidChange__block_invoke_55(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client post transcribing status changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"VMVoicemailTranscriptionInProgressChangedNotification" object:*(a1 + 32)];
}

- (void)call_transcriptionServiceStatusDidChange
{
  v11 = *MEMORY[0x277D85DE8];
  delegate = [(VMVoicemailManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate_queue = [(VMVoicemailManager *)self delegate_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__VMVoicemailManager_call_transcriptionServiceStatusDidChange__block_invoke;
    block[3] = &unk_279E3D1D0;
    v8 = delegate;
    dispatch_async(delegate_queue, block);

    v5 = v8;
  }

  else
  {
    v5 = vm_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = delegate;
      _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support selector transcriptionServiceStatusDidChange", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __62__VMVoicemailManager_call_transcriptionServiceStatusDidChange__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client is notifying delegate %@ using transcriptionServiceStatusDidChange", &v6, 0xCu);
  }

  result = [*(a1 + 32) transcriptionServiceStatusDidChange];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __44__VMVoicemailManager_call_accountsDidChange__block_invoke_60(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client post accounts changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"VMVoicemailManagerAccountsDidChangeNotification" object:*(a1 + 32)];
}

- (void)call_greetingDidChangeByCarrier:(id)carrier
{
  v14 = *MEMORY[0x277D85DE8];
  carrierCopy = carrier;
  delegate = [(VMVoicemailManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate_queue = [(VMVoicemailManager *)self delegate_queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__VMVoicemailManager_call_greetingDidChangeByCarrier___block_invoke;
    v9[3] = &unk_279E3D3F8;
    v10 = delegate;
    v11 = carrierCopy;
    dispatch_async(delegate_queue, v9);

    v7 = v10;
  }

  else
  {
    v7 = vm_framework_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = delegate;
      _os_log_impl(&dword_2721BA000, v7, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support selector greetingDidChangeByCarrier", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __54__VMVoicemailManager_call_greetingDidChangeByCarrier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client is notifying delegate %@ using greetingDidChangeByCarrier", &v6, 0xCu);
  }

  result = [*(a1 + 32) greetingDidChangeByCarrier:*(a1 + 40)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isSyncInProgress
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__VMVoicemailManager_isSyncInProgress__block_invoke;
  v4[3] = &unk_279E3D108;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailManager *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isTranscriptionServiceAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__VMVoicemailManager_isTranscriptionServiceAvailable__block_invoke;
  v4[3] = &unk_279E3D108;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailManager *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isTranscribing
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__VMVoicemailManager_isTranscribing__block_invoke;
  v4[3] = &unk_279E3D108;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailManager *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isMessageWaiting
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__VMVoicemailManager_isMessageWaiting__block_invoke;
  v4[3] = &unk_279E3D108;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailManager *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)synchronize
{
  serverConnection = [(VMVoicemailManager *)self serverConnection];
  [serverConnection synchronize];
}

- (void)retrieveDataForVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  isOnline = [(VMVoicemailManager *)self isOnline];
  if ([(VMVoicemailManager *)self isSyncInProgress])
  {
    v6 = 0;
  }

  else
  {
    v6 = [voicemailCopy isDownloading] ^ 1;
  }

  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__VMVoicemailManager_retrieveDataForVoicemail___block_invoke;
  block[3] = &unk_279E3D480;
  v11 = isOnline;
  v12 = v6;
  block[4] = self;
  v10 = voicemailCopy;
  v8 = voicemailCopy;
  dispatch_async(internalClientQueue, block);
}

void __47__VMVoicemailManager_retrieveDataForVoicemail___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1 && *(a1 + 49) == 1)
  {
    v2 = [*(a1 + 32) serverConnection];
    [v2 retrieveDataForIdentifier:{objc_msgSend(*(a1 + 40), "identifier")}];
  }
}

- (NSArray)allVoicemails
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__VMVoicemailManager_allVoicemails__block_invoke;
  v4[3] = &unk_279E3D108;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailManager *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __35__VMVoicemailManager_allVoicemails__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) voicemails];
  if (v4)
  {
    v1 = [*(a1 + 32) voicemails];
    v3 = [v1 array];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

- (int64_t)unreadCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__VMVoicemailManager_unreadCount__block_invoke;
  v4[3] = &unk_279E3D108;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailManager *)self performSynchronousBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __33__VMVoicemailManager_unreadCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) countOfVoicemailsPassingTest:&__block_literal_global_65];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __33__VMVoicemailManager_unreadCount__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isRead] & 1) != 0 || (objc_msgSend(v2, "isDeleted") & 1) != 0 || (objc_msgSend(v2, "isTrashed"))
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isBlocked] ^ 1;
  }

  return v3;
}

- (id)voicemailWithIdentifier:(unint64_t)identifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  allVoicemails = [(VMVoicemailManager *)self allVoicemails];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__VMVoicemailManager_voicemailWithIdentifier___block_invoke;
  v7[3] = &unk_279E3D4C8;
  v7[4] = &v8;
  v7[5] = identifier;
  [allVoicemails enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __46__VMVoicemailManager_voicemailWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 identifier] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)dataForVoicemailWithIdentifier:(unint64_t)identifier
{
  v3 = [(VMVoicemailManager *)self voicemailWithIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    data = [v3 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (id)voicemailsPassingTest:(id)test
{
  v20 = *MEMORY[0x277D85DE8];
  testCopy = test;
  array = [MEMORY[0x277CBEB18] array];
  if (testCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allVoicemails = [(VMVoicemailManager *)self allVoicemails];
    v7 = [allVoicemails countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(allVoicemails);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (testCopy[2](testCopy, v11))
          {
            [array addObject:v11];
          }
        }

        v8 = [allVoicemails countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v12 = [array copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)countOfVoicemailsPassingTest:(id)test
{
  v3 = [(VMVoicemailManager *)self voicemailsPassingTest:test];
  v4 = [v3 count];

  return v4;
}

- (id)uniqueIdentifierForVoiceMail:(id)mail
{
  v3 = MEMORY[0x277CCACA8];
  mailCopy = mail;
  senderDestinationID = [mailCopy senderDestinationID];
  v6 = MEMORY[0x277CCABB0];
  date = [mailCopy date];
  [date timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mailCopy, "isDeleted")}];
  v10 = MEMORY[0x277CCABB0];
  isTrashed = [mailCopy isTrashed];

  v12 = [v10 numberWithBool:isTrashed];
  v13 = [v3 stringWithFormat:@"%@-%@-%@-%@", senderDestinationID, v8, v9, v12];

  return v13;
}

- (void)remapAccount:(id)account toAccount:(id)toAccount
{
  accountCopy = account;
  toAccountCopy = toAccount;
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__VMVoicemailManager_remapAccount_toAccount___block_invoke;
  block[3] = &unk_279E3D220;
  v12 = accountCopy;
  v13 = toAccountCopy;
  selfCopy = self;
  v9 = toAccountCopy;
  v10 = accountCopy;
  dispatch_async(internalClientQueue, block);
}

void __45__VMVoicemailManager_remapAccount_toAccount___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "remap account %@ to %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 48) serverConnection];
  [v5 remapAccount:*(a1 + 32) toAccount:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetNetworkSettings
{
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__VMVoicemailManager_resetNetworkSettings__block_invoke;
  block[3] = &unk_279E3D1D0;
  block[4] = self;
  dispatch_async(internalClientQueue, block);
}

void __42__VMVoicemailManager_resetNetworkSettings__block_invoke(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "resetNetworkSettings", v4, 2u);
  }

  v3 = [*(a1 + 32) serverConnection];
  [v3 resetNetworkSettings];
}

- (id)deleteVoicemail:(id)voicemail
{
  v12 = *MEMORY[0x277D85DE8];
  voicemailCopy = voicemail;
  v4 = MEMORY[0x277CBEA60];
  voicemailCopy2 = voicemail;
  v6 = [v4 arrayWithObjects:&voicemailCopy count:1];

  v7 = [(VMVoicemailManager *)self deleteVoicemails:v6, voicemailCopy, v12];
  firstObject = [v7 firstObject];

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)deleteVoicemails:(id)voicemails
{
  v30 = *MEMORY[0x277D85DE8];
  voicemailsCopy = voicemails;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = voicemailsCopy;
    _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "Perform delete for voicemails %@", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = voicemailsCopy;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if (([v12 isDeleted] & 1) == 0)
        {
          v13 = [v12 mutableCopy];
          [v13 setDeleted:1];
          v14 = [v13 copy];
          [array addObject:v14];

          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "identifier")}];
          [array2 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  if ([array2 count])
  {
    internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__VMVoicemailManager_deleteVoicemails___block_invoke;
    block[3] = &unk_279E3D3F8;
    block[4] = self;
    v22 = array2;
    dispatch_async(internalClientQueue, block);
  }

  v17 = [array copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __39__VMVoicemailManager_deleteVoicemails___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) serverConnection];
  v2 = [*(a1 + 40) copy];
  [v3 setDeletedForIdentifiers:v2];
}

- (id)markVoicemailAsRead:(id)read
{
  v12 = *MEMORY[0x277D85DE8];
  readCopy = read;
  v4 = MEMORY[0x277CBEA60];
  readCopy2 = read;
  v6 = [v4 arrayWithObjects:&readCopy count:1];

  v7 = [(VMVoicemailManager *)self markVoicemailsAsRead:v6, readCopy, v12];
  firstObject = [v7 firstObject];

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)markVoicemailsAsRead:(id)read
{
  v29 = *MEMORY[0x277D85DE8];
  readCopy = read;
  v5 = vm_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = readCopy;
    _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Perform mark as read for voicemails %@", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = readCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (([v12 isRead] & 1) == 0)
        {
          v13 = [v12 mutableCopy];
          [v13 setRead:1];
          v14 = [v13 copy];
          [array addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = [array copy];
  if ([v15 count])
  {
    internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __43__VMVoicemailManager_markVoicemailsAsRead___block_invoke;
    v19[3] = &unk_279E3D3F8;
    v20 = v15;
    selfCopy = self;
    dispatch_async(internalClientQueue, v19);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

void __43__VMVoicemailManager_markVoicemailsAsRead___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v12 + 1) + 8 * v7), "identifier", v12)}];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 40) serverConnection];
  v10 = [v2 copy];
  [v9 setReadForIdentifiers:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)trashVoicemail:(id)voicemail
{
  v12 = *MEMORY[0x277D85DE8];
  voicemailCopy = voicemail;
  v4 = MEMORY[0x277CBEA60];
  voicemailCopy2 = voicemail;
  v6 = [v4 arrayWithObjects:&voicemailCopy count:1];

  v7 = [(VMVoicemailManager *)self trashVoicemails:v6, voicemailCopy, v12];
  firstObject = [v7 firstObject];

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)trashVoicemails:(id)voicemails
{
  v30 = *MEMORY[0x277D85DE8];
  voicemailsCopy = voicemails;
  v5 = vm_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = voicemailsCopy;
    _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Perform trashed for voicemails %@", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = voicemailsCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (([v13 isTrashed] & 1) == 0)
        {
          v14 = [v13 mutableCopy];
          [v14 setTrashed:1];
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "identifier")}];
          [array2 addObject:v15];

          v16 = [v14 copy];
          [array addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v17 = [array copy];
  if ([array2 count])
  {
    internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __38__VMVoicemailManager_trashVoicemails___block_invoke;
    v21[3] = &unk_279E3D3F8;
    v21[4] = self;
    v22 = array2;
    dispatch_async(internalClientQueue, v21);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

void __38__VMVoicemailManager_trashVoicemails___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverConnection];
  [v2 setTrashedForIdentifiers:*(a1 + 40)];
}

- (id)removeVoicemailFromTrash:(id)trash
{
  v12 = *MEMORY[0x277D85DE8];
  trashCopy = trash;
  v4 = MEMORY[0x277CBEA60];
  trashCopy2 = trash;
  v6 = [v4 arrayWithObjects:&trashCopy count:1];

  v7 = [(VMVoicemailManager *)self removeVoicemailsFromTrash:v6, trashCopy, v12];
  firstObject = [v7 firstObject];

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)removeVoicemailsFromTrash:(id)trash
{
  v29 = *MEMORY[0x277D85DE8];
  trashCopy = trash;
  v5 = vm_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = trashCopy;
    _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Remove voicemails %@ from trash", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = trashCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if ([v12 isTrashed])
        {
          v13 = [v12 mutableCopy];
          [v13 setTrashed:0];
          v14 = [v13 copy];
          [array addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = [array copy];
  if ([v15 count])
  {
    internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__VMVoicemailManager_removeVoicemailsFromTrash___block_invoke;
    v19[3] = &unk_279E3D3F8;
    v20 = v15;
    selfCopy = self;
    dispatch_async(internalClientQueue, v19);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

void __48__VMVoicemailManager_removeVoicemailsFromTrash___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 40) serverConnection];
        [v8 removeVoicemailFromTrashWithIdentifier:{objc_msgSend(v7, "identifier")}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)voicemailsUpdated:(id)updated
{
  updatedCopy = updated;
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__VMVoicemailManager_voicemailsUpdated___block_invoke;
  v7[3] = &unk_279E3D3F8;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(internalClientQueue, v7);
}

void __40__VMVoicemailManager_voicemailsUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) voicemails];
  [*(a1 + 32) setVoicemails:*(a1 + 40)];
  v3 = vm_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v3, OS_LOG_TYPE_DEFAULT, "Client received voicemails updated message from vmd", v4, 2u);
  }

  [*(a1 + 32) call_voicemailsDidChange:v2];
}

- (void)setOnline:(BOOL)online
{
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__VMVoicemailManager_setOnline___block_invoke;
  v6[3] = &unk_279E3D4F0;
  v6[4] = self;
  onlineCopy = online;
  dispatch_async(internalClientQueue, v6);
}

uint64_t __32__VMVoicemailManager_setOnline___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 14) != v3)
  {
    *(v2 + 14) = v3;
  }

  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 14))
    {
      v5 = @"ONLINE";
    }

    else
    {
      v5 = @"OFFLINE";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "Client received online state change message from vmd. vmd is %@", &v8, 0xCu);
  }

  result = [*(a1 + 32) call_onlineStatusDidChange];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setSubscribed:(BOOL)subscribed
{
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__VMVoicemailManager_setSubscribed___block_invoke;
  v6[3] = &unk_279E3D4F0;
  v6[4] = self;
  subscribedCopy = subscribed;
  dispatch_async(internalClientQueue, v6);
}

uint64_t __36__VMVoicemailManager_setSubscribed___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 15) != v3)
  {
    *(v2 + 15) = v3;
  }

  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 15))
    {
      v5 = @"SUBSCRIBED";
    }

    else
    {
      v5 = @"UNSUBSCRIBED";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "Client received subscription state change message from vmd. vmd is %@", &v8, 0xCu);
  }

  result = [*(a1 + 32) call_subscriptionStateStatusDidChange];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setTranscriptionServiceAvailable:(BOOL)available
{
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__VMVoicemailManager_setTranscriptionServiceAvailable___block_invoke;
  v6[3] = &unk_279E3D4F0;
  v6[4] = self;
  availableCopy = available;
  dispatch_async(internalClientQueue, v6);
}

uint64_t __55__VMVoicemailManager_setTranscriptionServiceAvailable___block_invoke(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 17) != v2)
  {
    v3 = result;
    *(v1 + 17) = v2;
    v4 = vm_framework_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 40))
      {
        v5 = @"Yes";
      }

      else
      {
        v5 = @"No";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "Client received transcription service availability status change message from vmd. transcription service available is %@", &v7, 0xCu);
    }

    [*(v3 + 32) call_transcriptionServiceStatusDidChange];
    result = [*(v3 + 32) call_capabilitiesDidChange];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setTranscribing:(BOOL)transcribing fractionCompleted:(id)completed totalUnitCount:(id)count
{
  completedCopy = completed;
  countCopy = count;
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__VMVoicemailManager_setTranscribing_fractionCompleted_totalUnitCount___block_invoke;
  v13[3] = &unk_279E3D518;
  transcribingCopy = transcribing;
  v13[4] = self;
  v14 = countCopy;
  v15 = completedCopy;
  v11 = completedCopy;
  v12 = countCopy;
  dispatch_async(internalClientQueue, v13);
}

uint64_t __71__VMVoicemailManager_setTranscribing_fractionCompleted_totalUnitCount___block_invoke(uint64_t result)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  v2 = *(result + 56);
  if (*(v1 + 18) != v2)
  {
    v3 = result;
    *(v1 + 18) = v2;
    v4 = vm_framework_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 56))
      {
        v5 = @"Yes";
      }

      else
      {
        v5 = @"No";
      }

      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "Client received transcribing state change message from vmd. transcribing is %@", &v15, 0xCu);
    }

    if (*(v3 + 56) == 1)
    {
      v6 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:{objc_msgSend(*(v3 + 40), "unsignedLongValue")}];
      v7 = *(v3 + 32);
      v8 = *(v7 + 56);
      *(v7 + 56) = v6;

      v9 = [*(v3 + 40) unsignedLongValue];
      [*(v3 + 48) doubleValue];
      [*(*(v3 + 32) + 56) setCompletedUnitCount:(v10 * v9)];
      v11 = vm_framework_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(v3 + 32) + 56);
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&dword_2721BA000, v11, OS_LOG_TYPE_DEFAULT, "Received progress from server: %@", &v15, 0xCu);
      }
    }

    else
    {
      [*(*(v3 + 32) + 56) setCompletedUnitCount:{objc_msgSend(*(*(v3 + 32) + 56), "totalUnitCount")}];
      v13 = *(v3 + 32);
      v11 = *(v13 + 56);
      *(v13 + 56) = 0;
    }

    result = [*(v3 + 32) call_transcribingStatusDidChange];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setProgressFractionCompleted:(id)completed
{
  completedCopy = completed;
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__VMVoicemailManager_setProgressFractionCompleted___block_invoke;
  v7[3] = &unk_279E3D3F8;
  v7[4] = self;
  v8 = completedCopy;
  v6 = completedCopy;
  dispatch_async(internalClientQueue, v7);
}

void __51__VMVoicemailManager_setProgressFractionCompleted___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"No";
    v4 = *(a1 + 40);
    if (*(*(a1 + 32) + 18))
    {
      v3 = @"Yes";
    }

    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client received transcription progress fraction completed from vmd. transcribing is %@, fractionCompleted is %@", &v9, 0x16u);
  }

  v5 = *(a1 + 32);
  if (*(v5 + 18) == 1)
  {
    v6 = [*(v5 + 56) totalUnitCount];
    [*(a1 + 40) doubleValue];
    [*(*(a1 + 32) + 56) setCompletedUnitCount:(v7 * v6)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setProgressTotalUnitCount:(id)count
{
  countCopy = count;
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__VMVoicemailManager_setProgressTotalUnitCount___block_invoke;
  v7[3] = &unk_279E3D3F8;
  v7[4] = self;
  v8 = countCopy;
  v6 = countCopy;
  dispatch_async(internalClientQueue, v7);
}

void __48__VMVoicemailManager_setProgressTotalUnitCount___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"No";
    v4 = *(a1 + 40);
    if (*(*(a1 + 32) + 18))
    {
      v3 = @"Yes";
    }

    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client received transcription progress total count from vmd. transcribing is %@, totalUnitCount is %@", &v6, 0x16u);
  }

  if (*(*(a1 + 32) + 18) == 1)
  {
    [*(*(a1 + 32) + 56) setTotalUnitCount:{objc_msgSend(*(a1 + 40), "unsignedLongValue")}];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setMessageWaiting:(BOOL)waiting
{
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__VMVoicemailManager_setMessageWaiting___block_invoke;
  v6[3] = &unk_279E3D4F0;
  v6[4] = self;
  waitingCopy = waiting;
  dispatch_async(internalClientQueue, v6);
}

void __40__VMVoicemailManager_setMessageWaiting___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 13) != v2)
  {
    *(v1 + 13) = v2;
    v4 = vm_framework_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v5 = @"MESSAGE WAITING";
      }

      else
      {
        v5 = @"NO MESSAGE WAITING";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "Client received message waiting change message from vmd. vmd has %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSyncInProgress:(BOOL)progress
{
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__VMVoicemailManager_setSyncInProgress___block_invoke;
  v6[3] = &unk_279E3D4F0;
  v6[4] = self;
  progressCopy = progress;
  dispatch_async(internalClientQueue, v6);
}

uint64_t __40__VMVoicemailManager_setSyncInProgress___block_invoke(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 16) != v2)
  {
    v3 = result;
    *(v1 + 16) = v2;
    v4 = vm_framework_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 40))
      {
        v5 = @"SYNCHRONIZING";
      }

      else
      {
        v5 = @"NOT SYNCHRONIZING";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "Client received sync in progress change message from vmd. vmd is %@", &v7, 0xCu);
    }

    result = [*(v3 + 32) call_syncInProgresDidChange];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setStorageUsage:(id)usage storageUsage:(unint64_t)storageUsage
{
  usageCopy = usage;
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__VMVoicemailManager_setStorageUsage_storageUsage___block_invoke;
  block[3] = &unk_279E3D448;
  selfCopy = self;
  storageUsageCopy = storageUsage;
  v10 = usageCopy;
  v8 = usageCopy;
  dispatch_async(internalClientQueue, block);
}

uint64_t __51__VMVoicemailManager_setStorageUsage_storageUsage___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "Client received storage usage changed message for account UUID %@, storage usage is %@%%", &v11, 0x16u);
  }

  result = [*(a1 + 40) call_accountStorageUsageChanged:*(a1 + 32) storageUsage:*(a1 + 48)];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (*(v6 + 48) != v7)
  {
    *(v6 + 48) = v7;
    v8 = vm_framework_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_2721BA000, v8, OS_LOG_TYPE_DEFAULT, "Client received storage usage changed message from vmd. storage usage is %@", &v11, 0xCu);
    }

    result = [*(a1 + 40) call_managerStorageUsageDidChange];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)obliterate
{
  v3 = vm_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2721BA000, v3, OS_LOG_TYPE_DEFAULT, "Initiating VVM reset (obliterate)...", v5, 2u);
  }

  v4 = [(VMVoicemailManager *)self asynchronousServerConnectionWithErrorHandler:&__block_literal_global_104];
  [v4 obliterate];
}

void __32__VMVoicemailManager_obliterate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = vm_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __32__VMVoicemailManager_obliterate__block_invoke_cold_1();
  }
}

- (void)insertVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__VMVoicemailManager_insertVoicemail___block_invoke;
  v7[3] = &unk_279E3D3F8;
  v7[4] = self;
  v8 = voicemailCopy;
  v6 = voicemailCopy;
  dispatch_async(internalClientQueue, v7);
}

void __38__VMVoicemailManager_insertVoicemail___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverConnection];
  [v2 insertVoicemail:*(a1 + 40)];
}

- (BOOL)createTranscription:(id)transcription transcription:(id)a4 error:(id *)error
{
  transcriptionCopy = transcription;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__VMVoicemailManager_createTranscription_transcription_error___block_invoke;
  v15[3] = &unk_279E3D540;
  v10 = transcriptionCopy;
  v16 = v10;
  v17 = &v25;
  v18 = &v19;
  v11 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__VMVoicemailManager_createTranscription_transcription_error___block_invoke_105;
  v14[3] = &unk_279E3D568;
  v14[4] = &v25;
  v14[5] = &v19;
  [v11 createTranscription:v10 transcription:v9 reply:v14];

  if (error)
  {
    *error = v20[5];
  }

  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __62__VMVoicemailManager_createTranscription_transcription_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__VMVoicemailManager_createTranscription_transcription_error___block_invoke_cold_1(a1);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)createPersonalizedTranscript:(id)transcript error:(id *)error
{
  transcriptCopy = transcript;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__VMVoicemailManager_createPersonalizedTranscript_error___block_invoke;
  v12[3] = &unk_279E3D590;
  v7 = transcriptCopy;
  v13 = v7;
  v14 = &v15;
  v8 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__VMVoicemailManager_createPersonalizedTranscript_error___block_invoke_107;
  v11[3] = &unk_279E3D5B8;
  v11[4] = &v21;
  v11[5] = &v15;
  [v8 createPersonalizedTranscript:v7 reply:v11];

  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __57__VMVoicemailManager_createPersonalizedTranscript_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__VMVoicemailManager_createTranscription_transcription_error___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __57__VMVoicemailManager_createPersonalizedTranscript_error___block_invoke_107(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = vm_framework_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __57__VMVoicemailManager_createPersonalizedTranscript_error___block_invoke_107_cold_1();
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
}

- (void)sendStateRequestForAccountUUID:(id)d
{
  dCopy = d;
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__VMVoicemailManager_sendStateRequestForAccountUUID___block_invoke;
  v7[3] = &unk_279E3D3F8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(internalClientQueue, v7);
}

void __53__VMVoicemailManager_sendStateRequestForAccountUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverConnection];
  [v2 sendStateRequestForAccountUUID:*(a1 + 40)];
}

- (id)getServiceInfoForAccountUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__VMVoicemailManager_getServiceInfoForAccountUUID___block_invoke;
  v10[3] = &unk_279E3D5E0;
  v5 = dCopy;
  v11 = v5;
  v6 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__VMVoicemailManager_getServiceInfoForAccountUUID___block_invoke_109;
  v9[3] = &unk_279E3D608;
  v9[4] = &v12;
  [v6 getServiceInfoForAccountUUID:v5 reply:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__VMVoicemailManager_getServiceInfoForAccountUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__VMVoicemailManager_getServiceInfoForAccountUUID___block_invoke_cold_1(a1);
  }
}

- (BOOL)setAccountProperties:(id)properties properties:(id)a4 error:(id *)error
{
  propertiesCopy = properties;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__VMVoicemailManager_setAccountProperties_properties_error___block_invoke;
  v15[3] = &unk_279E3D590;
  v10 = propertiesCopy;
  v16 = v10;
  v17 = &v18;
  v11 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__VMVoicemailManager_setAccountProperties_properties_error___block_invoke_111;
  v14[3] = &unk_279E3D568;
  v14[4] = &v24;
  v14[5] = &v18;
  [v11 setAccountProperties:v10 properties:v9 reply:v14];

  if (error)
  {
    *error = v19[5];
  }

  v12 = *(v25 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __60__VMVoicemailManager_setAccountProperties_properties_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__VMVoicemailManager_setAccountProperties_properties_error___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)performSynchronousBlock:(id)block
{
  if (dispatch_get_specific(VMVoicemailManagerSerialQueueContextKey) == self)
  {
    v6 = *(block + 2);
    blockCopy = block;
    v6();
  }

  else
  {
    blockCopy2 = block;
    blockCopy = [(VMVoicemailManager *)self internalClientQueue];
    dispatch_sync(blockCopy, blockCopy2);
  }
}

- (void)performAtomicAccessorBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock_with_options();
    blockCopy[2]();
    os_unfair_lock_unlock(&self->_accessorLock);
  }

  else
  {
    [(VMVoicemailManager *)a2 performAtomicAccessorBlock:?];
  }
}

- (id)fetchAccounts
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v2 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:&__block_literal_global_123];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__VMVoicemailManager_fetchAccounts__block_invoke_124;
  v6[3] = &unk_279E3D630;
  v6[4] = &v7;
  [v2 accounts:v6];

  v3 = v8[5];
  if (!v3)
  {
    v8[5] = MEMORY[0x277CBEBF8];

    v3 = v8[5];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__VMVoicemailManager_fetchAccounts__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = vm_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_16_cold_1();
  }
}

- (void)setAccounts:(id)accounts
{
  accountsCopy = accounts;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = self->_accounts;
  v9 = accountsCopy;
  if (v9 | v5)
  {
    if (v9)
    {
      v6 = [v5 isEqual:v9];

      if (v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v7 = [v9 copy];
    accounts = self->_accounts;
    self->_accounts = v7;

    [(VMVoicemailManager *)self call_accountsDidChange];
  }

LABEL_7:
  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)isAccountSubscribed:(id)subscribed
{
  subscribedCopy = subscribed;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__VMVoicemailManager_isAccountSubscribed___block_invoke;
  v9[3] = &unk_279E3D5E0;
  v5 = subscribedCopy;
  v10 = v5;
  v6 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__VMVoicemailManager_isAccountSubscribed___block_invoke_125;
  v8[3] = &unk_279E3D658;
  v8[4] = &v11;
  [v6 isAccountSubscribed:v5 reply:v8];

  LOBYTE(v6) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __42__VMVoicemailManager_isAccountSubscribed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42__VMVoicemailManager_isAccountSubscribed___block_invoke_cold_1(a1);
  }
}

- (BOOL)isAccountOnline:(id)online
{
  onlineCopy = online;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__VMVoicemailManager_isAccountOnline___block_invoke;
  v9[3] = &unk_279E3D5E0;
  v5 = onlineCopy;
  v10 = v5;
  v6 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__VMVoicemailManager_isAccountOnline___block_invoke_126;
  v8[3] = &unk_279E3D658;
  v8[4] = &v11;
  [v6 isAccountOnline:v5 reply:v8];

  LOBYTE(v6) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __38__VMVoicemailManager_isAccountOnline___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__VMVoicemailManager_isAccountOnline___block_invoke_cold_1(a1);
  }
}

- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__VMVoicemailManager_isCallVoicemailSupportedForAccountUUID___block_invoke;
  v9[3] = &unk_279E3D5E0;
  v5 = dCopy;
  v10 = v5;
  v6 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__VMVoicemailManager_isCallVoicemailSupportedForAccountUUID___block_invoke_127;
  v8[3] = &unk_279E3D658;
  v8[4] = &v11;
  [v6 isCallVoicemailSupportedForAccountUUID:v5 reply:v8];

  LOBYTE(v6) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __61__VMVoicemailManager_isCallVoicemailSupportedForAccountUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__VMVoicemailManager_isCallVoicemailSupportedForAccountUUID___block_invoke_cold_1(a1);
  }
}

- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__VMVoicemailManager_isPasscodeChangeSupportedForAccountUUID___block_invoke;
  v9[3] = &unk_279E3D5E0;
  v5 = dCopy;
  v10 = v5;
  v6 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__VMVoicemailManager_isPasscodeChangeSupportedForAccountUUID___block_invoke_128;
  v8[3] = &unk_279E3D658;
  v8[4] = &v11;
  [v6 isPasscodeChangeSupportedForAccountUUID:v5 reply:v8];

  LOBYTE(v6) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __62__VMVoicemailManager_isPasscodeChangeSupportedForAccountUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__VMVoicemailManager_isPasscodeChangeSupportedForAccountUUID___block_invoke_cold_1(a1);
  }
}

- (int64_t)minimumPasscodeLengthForAccountUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__VMVoicemailManager_minimumPasscodeLengthForAccountUUID___block_invoke;
  v10[3] = &unk_279E3D5E0;
  v5 = dCopy;
  v11 = v5;
  v6 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__VMVoicemailManager_minimumPasscodeLengthForAccountUUID___block_invoke_129;
  v9[3] = &unk_279E3D680;
  v9[4] = &v12;
  [v6 minimumPasscodeLengthForAccountUUID:v5 reply:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__VMVoicemailManager_minimumPasscodeLengthForAccountUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__VMVoicemailManager_minimumPasscodeLengthForAccountUUID___block_invoke_cold_1(a1);
  }
}

- (int64_t)maximumPasscodeLengthForAccountUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__VMVoicemailManager_maximumPasscodeLengthForAccountUUID___block_invoke;
  v10[3] = &unk_279E3D5E0;
  v5 = dCopy;
  v11 = v5;
  v6 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__VMVoicemailManager_maximumPasscodeLengthForAccountUUID___block_invoke_131;
  v9[3] = &unk_279E3D680;
  v9[4] = &v12;
  [v6 maximumPasscodeLengthForAccountUUID:v5 reply:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__VMVoicemailManager_maximumPasscodeLengthForAccountUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__VMVoicemailManager_maximumPasscodeLengthForAccountUUID___block_invoke_cold_1(a1);
  }
}

- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__VMVoicemailManager_setPasscode_forAccountUUID_completion___block_invoke;
  v19[3] = &unk_279E3D6A8;
  v10 = dCopy;
  v20 = v10;
  v11 = completionCopy;
  v21 = v11;
  passcodeCopy = passcode;
  v13 = [(VMVoicemailManager *)self asynchronousServerConnectionWithErrorHandler:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__VMVoicemailManager_setPasscode_forAccountUUID_completion___block_invoke_132;
  v16[3] = &unk_279E3D6D0;
  v17 = v10;
  v18 = v11;
  v14 = v11;
  v15 = v10;
  [v13 setPasscode:passcodeCopy forAccountUUID:v15 reply:v16];
}

void __60__VMVoicemailManager_setPasscode_forAccountUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__VMVoicemailManager_setPasscode_forAccountUUID_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void __60__VMVoicemailManager_setPasscode_forAccountUUID_completion___block_invoke_132(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = vm_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Received reply for accountUUID: %@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (unint64_t)storageUsageForAccountUUID:(id)d error:(id *)error
{
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__VMVoicemailManager_storageUsageForAccountUUID_error___block_invoke;
  v12[3] = &unk_279E3D590;
  v7 = dCopy;
  v13 = v7;
  v14 = &v15;
  v8 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__VMVoicemailManager_storageUsageForAccountUUID_error___block_invoke_133;
  v11[3] = &unk_279E3D6F8;
  v11[4] = &v21;
  v11[5] = &v15;
  [v8 storageUsageForAccountUUID:v7 reply:v11];

  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __55__VMVoicemailManager_storageUsageForAccountUUID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__VMVoicemailManager_storageUsageForAccountUUID_error___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)updateAccounts:(id)accounts
{
  v9 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v5 = vm_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = accountsCopy;
    _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Updating accounts: %@", &v7, 0xCu);
  }

  [(VMVoicemailManager *)self setAccounts:accountsCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__VMVoicemailManager_isGreetingChangeSupportedForAccountUUID___block_invoke;
  v9[3] = &unk_279E3D5E0;
  v5 = dCopy;
  v10 = v5;
  v6 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__VMVoicemailManager_isGreetingChangeSupportedForAccountUUID___block_invoke_135;
  v8[3] = &unk_279E3D658;
  v8[4] = &v11;
  [v6 isGreetingChangeSupportedForAccountUUID:v5 reply:v8];

  LOBYTE(v6) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __62__VMVoicemailManager_isGreetingChangeSupportedForAccountUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__VMVoicemailManager_isGreetingChangeSupportedForAccountUUID___block_invoke_cold_1(a1);
  }
}

- (double)maximumGreetingDurationForAccountUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__VMVoicemailManager_maximumGreetingDurationForAccountUUID___block_invoke;
  v10[3] = &unk_279E3D5E0;
  v5 = dCopy;
  v11 = v5;
  v6 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__VMVoicemailManager_maximumGreetingDurationForAccountUUID___block_invoke_136;
  v9[3] = &unk_279E3D720;
  v9[4] = &v12;
  [v6 maximumGreetingDurationForAccountUUID:v5 reply:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __60__VMVoicemailManager_maximumGreetingDurationForAccountUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__VMVoicemailManager_maximumGreetingDurationForAccountUUID___block_invoke_cold_1(a1);
  }
}

- (void)greetingForAccountUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__VMVoicemailManager_greetingForAccountUUID_completion___block_invoke;
  v14[3] = &unk_279E3D6A8;
  v15 = dCopy;
  v8 = completionCopy;
  v16 = v8;
  v9 = dCopy;
  v10 = [(VMVoicemailManager *)self asynchronousServerConnectionWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__VMVoicemailManager_greetingForAccountUUID_completion___block_invoke_138;
  v12[3] = &unk_279E3D748;
  v13 = v8;
  v11 = v8;
  [v10 greetingForAccountUUID:v9 reply:v12];
}

void __56__VMVoicemailManager_greetingForAccountUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__VMVoicemailManager_greetingForAccountUUID_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__VMVoicemailManager_setGreeting_forAccountUUID_completion___block_invoke;
  v17[3] = &unk_279E3D6A8;
  v18 = dCopy;
  v10 = completionCopy;
  v19 = v10;
  v11 = dCopy;
  greetingCopy = greeting;
  v13 = [(VMVoicemailManager *)self asynchronousServerConnectionWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__VMVoicemailManager_setGreeting_forAccountUUID_completion___block_invoke_140;
  v15[3] = &unk_279E3D770;
  v16 = v10;
  v14 = v10;
  [v13 setGreeting:greetingCopy forAccountUUID:v11 reply:v15];
}

void __60__VMVoicemailManager_setGreeting_forAccountUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__VMVoicemailManager_setPasscode_forAccountUUID_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)greetingChangedByCarrier:(id)carrier
{
  v13 = *MEMORY[0x277D85DE8];
  carrierCopy = carrier;
  v5 = vm_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = carrierCopy;
    _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "greetingChangedByCarrier: %@", buf, 0xCu);
  }

  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__VMVoicemailManager_greetingChangedByCarrier___block_invoke;
  v9[3] = &unk_279E3D3F8;
  v9[4] = self;
  v10 = carrierCopy;
  v7 = carrierCopy;
  dispatch_async(internalClientQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (int64_t)messageCountForMailboxType:(int64_t)type error:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__VMVoicemailManager_messageCountForMailboxType_error___block_invoke;
  v11[3] = &unk_279E3D798;
  v11[4] = &v18;
  v11[5] = &v12;
  v6 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__VMVoicemailManager_messageCountForMailboxType_error___block_invoke_141;
  v10[3] = &unk_279E3D680;
  v10[4] = &v18;
  [v6 messageCountForMailboxType:type reply:v10];

  if (error)
  {
    v7 = v13[5];
    if (v7)
    {
      *error = v7;
    }
  }

  v8 = v19[3];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __55__VMVoicemailManager_messageCountForMailboxType_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__VMVoicemailManager_messageCountForMailboxType_error___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)messageCountForMailboxType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__VMVoicemailManager_messageCountForMailboxType_completion___block_invoke;
  v12[3] = &unk_279E3D078;
  v7 = completionCopy;
  v13 = v7;
  v8 = [(VMVoicemailManager *)self asynchronousServerConnectionWithErrorHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__VMVoicemailManager_messageCountForMailboxType_completion___block_invoke_142;
  v10[3] = &unk_279E3D7C0;
  v11 = v7;
  v9 = v7;
  [v8 messageCountForMailboxType:type reply:v10];
}

void __60__VMVoicemailManager_messageCountForMailboxType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__VMVoicemailManager_messageCountForMailboxType_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __60__VMVoicemailManager_messageCountForMailboxType_read_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__VMVoicemailManager_messageCountForMailboxType_error___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __65__VMVoicemailManager_messageCountForMailboxType_read_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__VMVoicemailManager_messageCountForMailboxType_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)messagesForMailboxType:(int64_t)type limit:(int64_t)limit offset:(int64_t)offset error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__VMVoicemailManager_messagesForMailboxType_limit_offset_error___block_invoke;
  v15[3] = &unk_279E3D798;
  v15[4] = &v22;
  v15[5] = &v16;
  v10 = [(VMVoicemailManager *)self synchronousServerConnectionWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__VMVoicemailManager_messagesForMailboxType_limit_offset_error___block_invoke_145;
  v14[3] = &unk_279E3D630;
  v14[4] = &v22;
  [v10 messagesForMailboxType:type limit:limit offset:offset reply:v14];

  if (error)
  {
    v11 = v17[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __64__VMVoicemailManager_messagesForMailboxType_limit_offset_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__VMVoicemailManager_messagesForMailboxType_limit_offset_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
}

uint64_t __64__VMVoicemailManager_messagesForMailboxType_limit_offset_error___block_invoke_145(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __69__VMVoicemailManager_messagesForMailboxType_read_limit_offset_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__VMVoicemailManager_messagesForMailboxType_limit_offset_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
}

uint64_t __69__VMVoicemailManager_messagesForMailboxType_read_limit_offset_error___block_invoke_146(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)reportTranscriptionProblemForVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  serverConnection = [(VMVoicemailManager *)self serverConnection];
  identifier = [voicemailCopy identifier];

  [serverConnection reportTranscriptionProblemForIdentifier:identifier];
}

- (void)reportTranscriptionProblemForUUID:(id)d
{
  dCopy = d;
  serverConnection = [(VMVoicemailManager *)self serverConnection];
  [serverConnection reportTranscriptionProblemForUUID:dCopy];
}

- (void)reportTranscriptionRatedAccurateForUUID:(BOOL)d forVoicemailUUID:(id)iD
{
  iDCopy = iD;
  internalClientQueue = [(VMVoicemailManager *)self internalClientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__VMVoicemailManager_reportTranscriptionRatedAccurateForUUID_forVoicemailUUID___block_invoke;
  block[3] = &unk_279E3D7E8;
  dCopy = d;
  block[4] = self;
  v10 = iDCopy;
  v8 = iDCopy;
  dispatch_async(internalClientQueue, block);
}

void __79__VMVoicemailManager_reportTranscriptionRatedAccurateForUUID_forVoicemailUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverConnection];
  [v2 reportTranscriptionRatedAccurateForUUID:*(a1 + 48) forVoicemailUUID:*(a1 + 40)];
}

void __38__VMVoicemailManager_serverConnection__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_2721BA000, v0, v1, "Received error while communicating with vmd: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__VMVoicemailManager_requestInitialStateIfNecessaryAndSendNotifications___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_2721BA000, v0, v1, "Cannot ping due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_16_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_2721BA000, v0, v1, "Could not retrieve accounts due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __103__VMVoicemailManager__fetchInitialStateIfNecessaryWithForce_waitStates_waitMails_waitAccounts_session___block_invoke_21_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_2721BA000, v0, v1, "Could not retrieve states due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __32__VMVoicemailManager_obliterate__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_2721BA000, v0, v1, "Error resetting VVM: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__VMVoicemailManager_createTranscription_transcription_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not create transcription for %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __57__VMVoicemailManager_createPersonalizedTranscript_error___block_invoke_107_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_2721BA000, v0, v1, "createPersonalizedTranscript: Results %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__VMVoicemailManager_getServiceInfoForAccountUUID___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not retrieve service state for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __60__VMVoicemailManager_setAccountProperties_properties_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not set properties for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)performAtomicAccessorBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"VMVoicemailManager.m" lineNumber:1230 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void __42__VMVoicemailManager_isAccountSubscribed___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not retrieve subscribed status for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __38__VMVoicemailManager_isAccountOnline___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not retrieve online status for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __61__VMVoicemailManager_isCallVoicemailSupportedForAccountUUID___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not retrieve call voicemail status for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __62__VMVoicemailManager_isPasscodeChangeSupportedForAccountUUID___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not determine whether passcode change is supported for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __58__VMVoicemailManager_minimumPasscodeLengthForAccountUUID___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not retrieve minimum passcode length for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __58__VMVoicemailManager_maximumPasscodeLengthForAccountUUID___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not retrieve maximum password length for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __60__VMVoicemailManager_setPasscode_forAccountUUID_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not set passcode for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __55__VMVoicemailManager_storageUsageForAccountUUID_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not retrieve storage usage for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __62__VMVoicemailManager_isGreetingChangeSupportedForAccountUUID___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not whether greeting change is supported for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __60__VMVoicemailManager_maximumGreetingDurationForAccountUUID___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not retrieve maximum greeting duration for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __56__VMVoicemailManager_greetingForAccountUUID_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2721BA000, v1, v2, "Could not retrieve greeting for account UUID %@ due to error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __55__VMVoicemailManager_messageCountForMailboxType_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_2721BA000, v0, v1, "Could not retrieve message count due to error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__VMVoicemailManager_messagesForMailboxType_limit_offset_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_2721BA000, v0, v1, "Could not retrieve messages due to error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end