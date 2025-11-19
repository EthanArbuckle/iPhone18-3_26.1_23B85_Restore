@interface ICLiveLink
+ (ICLiveLink)linkWithIdentity:(id)a3;
+ (ICLiveLink)linkWithSessionIdentifier:(id)a3 identity:(id)a4;
- (BOOL)isStarted;
- (ICLiveLink)initWithSharedListeningSessionIdentifier:(id)a3 identity:(id)a4;
- (ICLiveLinkDelegate)delegate;
- (ICLiveLinkIdentity)identity;
- (ICSharedListeningQueue)queue;
- (NSArray)participants;
- (NSURL)invitationURL;
- (id)_participantForAction:(id)a3;
- (id)_participantForParticipantID:(int64_t)a3;
- (id)participantForParticipantUUID:(id)a3;
- (void)_didReceiveAddItemsAction:(id)a3 completion:(id)a4;
- (void)_didReceiveCurrentItemChangeAction:(id)a3 completion:(id)a4;
- (void)_didReceiveCurrentItemTransitionAction:(id)a3 completion:(id)a4;
- (void)_didReceiveMoveItemAction:(id)a3 completion:(id)a4;
- (void)_didReceiveParticipantChangeAction:(id)a3 completion:(id)a4;
- (void)_didReceivePlayNowQueueItemsAction:(id)a3 completion:(id)a4;
- (void)_didReceivePlaybackSyncAction:(id)a3 completion:(id)a4;
- (void)_didReceivePluginErrorMessage:(id)a3;
- (void)_didReceiveQueueSyncAction:(id)a3 completion:(id)a4;
- (void)_didReceiveReactionAction:(id)a3 completion:(id)a4;
- (void)_didReceiveRemoveItemAction:(id)a3 completion:(id)a4;
- (void)_didReceiveReplaceQueueItemsAction:(id)a3 completion:(id)a4;
- (void)_didReceiveServerNoticeAction:(id)a3 completion:(id)a4;
- (void)_emitSessionEventIfNeededForAction:(id)a3 disconnectedParticipant:(id)a4;
- (void)_handlePotentiallyRecoverableError:(id)a3;
- (void)_handleReceivedMessage:(id)a3;
- (void)_handleUpdatedParticipantQuery:(id)a3;
- (void)_handleUpdatedQueue:(id)a3 playbackControlSettings:(id)a4 serverQueueContext:(id)a5;
- (void)_performClientInfoExchangeAndInitializeQueue;
- (void)_processPendingActions;
- (void)_storeTraceID:(id)a3 completion:(id)a4;
- (void)_updateParticipantsWithReason:(id)a3 completion:(id)a4;
- (void)_updatePlaybackControlSettingsWithReason:(id)a3 completion:(id)a4;
- (void)_updateQueueWithReason:(id)a3 completion:(id)a4;
- (void)beginSynchronizedPlaybackWithAVCFPlaybackCoordinator:(void *)a3;
- (void)beginSynchronizedPlaybackWithAVPlaybackCoordinator:(id)a3;
- (void)broadcastDirectCurrentItemChangedToItemIdentifier:(id)a3;
- (void)connectionController:(id)a3 connectionDidEndWithError:(id)a4;
- (void)connectionController:(id)a3 didEncounterFatalError:(id)a4;
- (void)connectionControllerConnectionDidStart:(id)a3;
- (void)dealloc;
- (void)endSynchronizedPlayback;
- (void)expectingToJoinWithStartItem:(id)a3 asInitiator:(BOOL)a4;
- (void)fetchPlaybackSyncStateForMediumWithCompletion:(id)a3;
- (void)fetchPlaybackSyncStateWithCompletion:(id)a3;
- (void)receivedCurrentItemIdentifier:(id)a3 fromParticipant:(id)a4;
- (void)receivedEvent:(id)a3;
- (void)reconnectWithReason:(id)a3 options:(id)a4;
- (void)sendMessage:(id)a3 completion:(id)a4;
- (void)sendPlaybackSyncPayload:(id)a3;
- (void)start;
- (void)stop;
- (void)updateWithIdentity:(id)a3;
@end

@implementation ICLiveLink

- (ICLiveLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handlePotentiallyRecoverableError:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_starting || self->_started;
  v6 = [(ICLiveLink *)self currentRetryCount];
  [(ICLiveLink *)self setCurrentRetryCount:(v6 + 1) % ([(ICLiveLink *)self maxRetries]+ 1)];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v7 = [(ICLiveLink *)self maxRetries];
    v8 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v24 = self;
      v25 = 2114;
      v26 = v4;
      v27 = 1024;
      v28 = v6 < v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "ILL %p: QRConnection encountered error %{public}@, willRetry: %{BOOL}u", buf, 0x1Cu);
    }

    v9 = [(ICLiveLink *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ICLiveLink *)self delegateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__ICLiveLink__handlePotentiallyRecoverableError___block_invoke;
      block[3] = &unk_1E7BF5288;
      v19 = v9;
      v20 = self;
      v21 = v4;
      v22 = v6 < v7;
      dispatch_async(v10, block);
    }

    if (v6 >= v7)
    {
      if ([(ICLiveLink *)self isStarted])
      {
        [(ICLiveLink *)self stop];
      }
    }

    else
    {
      if (v6 >= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v6;
      }

      v12 = v11 << v6;
      v13 = [(ICLiveLink *)self maxRetryWaitPeriod];
      if (v12 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      v15 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v24 = self;
        v25 = 2048;
        v26 = v14;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "ILL %p: QRConnection will retry connection after %ld seconds.", buf, 0x16u);
      }

      v16 = dispatch_time(0, 1000000000 * v14);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __49__ICLiveLink__handlePotentiallyRecoverableError___block_invoke_211;
      v17[3] = &unk_1E7BF9890;
      v17[4] = self;
      v17[5] = v6;
      dispatch_after(v16, MEMORY[0x1E69E96A0], v17);
    }
  }
}

void __49__ICLiveLink__handlePotentiallyRecoverableError___block_invoke_211(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40) + 1;
    v6 = 134218496;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    v10 = 2048;
    v11 = [v3 maxRetries];
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "ILL %p: QRConnection retry attempt %ld (max attempts: %ld)", &v6, 0x20u);
  }

  v5 = [*(a1 + 32) connectionController];
  [v5 start];
}

- (void)_didReceivePluginErrorMessage:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4 || (v4[24] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v7 = *(v4 + 2);
  v8 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  v6 = v8;
  if (v7 != 10)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      if (v5[6])
      {
        v9 = v5[2];
        if (v9 >= 0x10)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }

LABEL_12:
      v9 = 0;
LABEL_14:
      if ((0xEFFFu >> v9))
      {
        v10 = off_1E7BF5550[v9];
LABEL_17:
        *buf = 134218498;
        v12 = self;
        v13 = 2112;
        v14 = v10;
        v15 = 2114;
        v16 = v5;
        _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "ILL %p: Received error code %@, message %{public}@", buf, 0x20u);

        goto LABEL_18;
      }

LABEL_16:
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedCode-%ld", v9];
      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = self;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "ILL %p: Server restart. Will retry connection after termination.", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(ICLiveLink *)self setReceivedDisconnectionNotice:1];
  os_unfair_lock_unlock(&self->_lock);
LABEL_19:
}

- (void)connectionController:(id)a3 connectionDidEndWithError:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(ICLiveLink *)self forcedReconnectReason];
  v7 = [(NSMutableDictionary *)self->_pendingRequests copy];
  [(NSMutableArray *)self->_pendingActions removeAllObjects];
  [(NSMutableDictionary *)self->_pendingRequests removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICLiveLinkErrorDomain" code:8620 underlyingError:v5 debugDescription:@"Connection ended with error."];
  }

  else
  {
    v8 = 0;
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __61__ICLiveLink_connectionController_connectionDidEndWithError___block_invoke;
  v14 = &unk_1E7BF5260;
  v15 = v8;
  v9 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:&v11];
  if (v5)
  {
    [(ICLiveLink *)self _handlePotentiallyRecoverableError:v5];
  }

  else if (v6)
  {
    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICLiveLinkErrorDomain" code:100 debugDescription:{@"Requested reconnection because %@.", v6, v11, v12, v13, v14, v15}];
    [(ICLiveLink *)self _handlePotentiallyRecoverableError:v10];
  }

  else
  {
    [(ICLiveLink *)self stop];
  }
}

- (void)connectionController:(id)a3 didEncounterFatalError:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    v14 = self;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "ILL %p: Stopping because connection controller encountered fatal error: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v8 = [(ICLiveLink *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__ICLiveLink_connectionController_didEncounterFatalError___block_invoke;
    block[3] = &unk_1E7BFA178;
    v10 = WeakRetained;
    v11 = self;
    v12 = v5;
    dispatch_async(v8, block);
  }

  [(ICLiveLink *)self stop];
}

- (void)connectionControllerConnectionDidStart:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  started = self->_started;
  v5 = [(ICLiveLink *)self currentRetryCount];
  [(ICLiveLink *)self setReceivedDisconnectionNotice:0];
  [(ICLiveLink *)self setStarted:1];
  [(ICLiveLink *)self setStarting:0];
  v6 = [(ICLiveLink *)self deferredReconnectReason];
  [(ICLiveLink *)self setForcedReconnectReason:0];
  [(ICLiveLink *)self setDeferredReconnectReason:0];
  v7 = [(ICLiveLink *)self connectionController];
  v8 = [v7 sessionIdentifier];
  identifier = self->_identifier;
  self->_identifier = v8;

  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (started || (objc_opt_respondsToSelector() & 1) == 0)
    {
      if (v5 < 1 || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_14;
      }

      v15 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = self;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "ILL %p: calling delegate liveLinkDidReconnect", buf, 0xCu);
      }

      v12 = [(ICLiveLink *)self delegateQueue];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __53__ICLiveLink_connectionControllerConnectionDidStart___block_invoke_203;
      v19 = &unk_1E7BFA078;
      v13 = &v20;
      v20 = WeakRetained;
      v21 = self;
      v14 = &v16;
    }

    else
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = self;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "ILL %p: calling delegate didStartLiveLink", buf, 0xCu);
      }

      v12 = [(ICLiveLink *)self delegateQueue];
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __53__ICLiveLink_connectionControllerConnectionDidStart___block_invoke;
      v25 = &unk_1E7BFA078;
      v13 = &v26;
      v26 = WeakRetained;
      v27 = self;
      v14 = &v22;
    }

    dispatch_async(v12, v14);

LABEL_14:
    [(ICLiveLink *)self _performClientInfoExchangeAndInitializeQueue:v16];

    goto LABEL_15;
  }

  [(ICLiveLink *)self reconnectWithReason:v6 options:0];
LABEL_15:
}

- (void)_performClientInfoExchangeAndInitializeQueue
{
  v3 = objc_opt_new();
  v4 = v3;
  if (v3)
  {
    *(v3 + 52) |= 1u;
    *(v3 + 48) = 1;
    v5 = objc_opt_new();
    [(_ICLLProtocolMessage *)v4 setCommand:v5];

    v6 = v4[2];
    if (v6)
    {
      v6[104] |= 1u;
      *(v6 + 6) = 8;
    }
  }

  else
  {
    v24 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setCommand:v24];

    v6 = 0;
  }

  v7 = objc_opt_new();
  if (v4)
  {
    v8 = v4[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [(_ICLLCommandMessage *)v9 setClientInfo:v7];

  v10 = [(ICLiveLink *)self connectionController];
  v11 = [v10 sessionToken];
  if (v4)
  {
    v12 = v4[2];
    v13 = v12;
    if (v12)
    {
      v14 = *(v12 + 2);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
LABEL_9:
  v15 = v14;
  [(_ICLLClientInfoCommand *)v15 setSharedSessionToken:v11];

  v16 = [(ICLiveLink *)self identity];
  v17 = [v16 externalIdentifier];
  if (!v4)
  {
    v19 = 0;
    goto LABEL_18;
  }

  v18 = v4[2];
  v19 = v18;
  if (!v18)
  {
LABEL_18:
    v20 = 0;
    goto LABEL_12;
  }

  v20 = *(v18 + 2);
LABEL_12:
  v21 = v20;
  [(_ICLLClientInfoCommand *)v21 setExternalId:v17];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __58__ICLiveLink__performClientInfoExchangeAndInitializeQueue__block_invoke;
  v27[3] = &unk_1E7BF9308;
  v27[4] = self;
  v22 = MEMORY[0x1B8C781E0](v27);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__ICLiveLink__performClientInfoExchangeAndInitializeQueue__block_invoke_3;
  v25[3] = &unk_1E7BF5238;
  v25[4] = self;
  v26 = v22;
  v23 = v22;
  [(ICLiveLink *)self sendMessage:v4 completion:v25];
}

void __58__ICLiveLink__performClientInfoExchangeAndInitializeQueue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__ICLiveLink__performClientInfoExchangeAndInitializeQueue__block_invoke_2;
    block[3] = &unk_1E7BFA178;
    v6 = v4;
    v7 = *(a1 + 32);
    v9 = v6;
    v10 = v7;
    v11 = v3;
    dispatch_async(v5, block);
  }

  [*(a1 + 32) stop];
}

void __58__ICLiveLink__performClientInfoExchangeAndInitializeQueue__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    goto LABEL_25;
  }

  if (v5)
  {
    v7 = v5[1];
    if (v7)
    {
      v8 = v7;
      v9 = v7[4];
      if (!v9 || (v9[20] & 2) == 0)
      {
        goto LABEL_6;
      }

      v10 = *(v9 + 4);

      if (v10 != 1)
      {
        goto LABEL_12;
      }

      os_unfair_lock_lock((*(a1 + 32) + 16));
      v11 = [*(a1 + 32) currentRetryCount] > 0;
      [*(a1 + 32) setCurrentRetryCount:0];
      v12 = v6[1];
      v13 = v12;
      if (v12)
      {
        v14 = v12[4];
        if (v14)
        {
          v15 = v14[1];
LABEL_11:
          *(*(a1 + 32) + 112) = v15;

          os_unfair_lock_unlock((*(a1 + 32) + 16));
          v16 = *(a1 + 32);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __58__ICLiveLink__performClientInfoExchangeAndInitializeQueue__block_invoke_4;
          v24[3] = &unk_1E7BF5210;
          v24[4] = v16;
          v25 = *(a1 + 40);
          v26 = v11;
          [v16 _updateParticipantsWithReason:@"InitialSync" completion:v24];

          goto LABEL_25;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = 0;
      goto LABEL_11;
    }
  }

  v9 = 0;
  v8 = 0;
LABEL_6:

  v10 = 0;
LABEL_12:
  v17 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 32);
    if (v10)
    {
      if (v10 == 2)
      {
        v19 = @"INVALID TOKEN";
      }

      else
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedCode-%ld", v10];
      }
    }

    else
    {
      v19 = @"UNKNOWN";
    }

    *buf = 134218242;
    v28 = v18;
    v29 = 2114;
    v30 = v19;
    _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, "ILL %p: received unexpected status %{public}@ for Client Info. Stopping.", buf, 0x16u);
  }

  v20 = *(a1 + 40);
  v21 = MEMORY[0x1E696ABC0];
  if (v10)
  {
    if (v10 == 2)
    {
      v22 = @"INVALID TOKEN";
    }

    else
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedCode-%ld", v10];
    }
  }

  else
  {
    v22 = @"UNKNOWN";
  }

  v23 = [v21 msv_errorWithDomain:@"ICLiveLinkErrorDomain" code:4 debugDescription:{@"Unexpected client info status %@", v22}];
  (*(v20 + 16))(v20, v23);

LABEL_25:
}

void __58__ICLiveLink__performClientInfoExchangeAndInitializeQueue__block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqual:@"ICLiveLinkErrorDomain"])
    {
      v6 = [v4 code];

      if (v6 == 8620)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v8 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 134218242;
      v16 = v9;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "ILL %p: stopping live link [failed to load initial participants] error=%{public}@", buf, 0x16u);
    }

    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICLiveLinkErrorDomain" code:3 underlyingError:v4 debugDescription:@"Failed to load initial participants"];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__ICLiveLink__performClientInfoExchangeAndInitializeQueue__block_invoke_186;
    v12[3] = &unk_1E7BF5210;
    v12[4] = v7;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v7 _updateQueueWithReason:@"InitialSync" completion:v12];
  }

LABEL_10:
}

void __58__ICLiveLink__performClientInfoExchangeAndInitializeQueue__block_invoke_186(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqual:@"ICLiveLinkErrorDomain"])
    {
      v6 = [v4 code];

      if (v6 == 8620)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v11 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v15 = 134218242;
      v16 = v12;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "ILL %p: stopping live link [failed to load initial queue] error=%{public}@", &v15, 0x16u);
    }

    v13 = *(a1 + 40);
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICLiveLinkErrorDomain" code:2 underlyingError:v4 debugDescription:@"Failed to load initial queue"];
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    v7 = @"ResyncAfterConnect";
    if (*(a1 + 48))
    {
      v7 = @"ResyncAfterRetry";
    }

    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 playbackCoordinatorMedium];
    [v10 synchronizePlaybackStateForReason:v9];
  }

LABEL_12:
}

- (void)_updatePlaybackControlSettingsWithReason:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = v8;
  if (v8)
  {
    *(v8 + 52) |= 1u;
    *(v8 + 48) = 4;
    v10 = objc_opt_new();
    [(_ICLLProtocolMessage *)v9 setQuery:v10];

    v11 = v9[4];
    if (v11)
    {
      v11[48] |= 1u;
      *(v11 + 8) = 3;
    }
  }

  else
  {
    v22 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setQuery:v22];

    v11 = 0;
  }

  v12 = objc_opt_new();
  if (v9)
  {
    v13 = v9[4];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v12;
  if (v14)
  {
    [(_ICLLQueryMessage *)v14 clearOneofValuesForQuery];
    *(v14 + 48) |= 1u;
    *(v14 + 8) = 3;
    objc_storeStrong(v14 + 2, v12);
  }

  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];

  [(_ICLLProtocolMessage *)v9 setTraceId:v17];
  v18 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v28 = self;
    v29 = 2114;
    v30 = v6;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "ILL %p: _updatePlaybackControlSettingsWithReason [requesting] reason=%{public}@ traceID=%{public}@", buf, 0x20u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__ICLiveLink__updatePlaybackControlSettingsWithReason_completion___block_invoke;
  v23[3] = &unk_1E7BF5350;
  v23[4] = self;
  v24 = v6;
  v25 = v17;
  v26 = v7;
  v19 = v17;
  v20 = v6;
  v21 = v7;
  [(ICLiveLink *)self sendMessage:v9 completion:v23];
}

void __66__ICLiveLink__updatePlaybackControlSettingsWithReason_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = a1[7];
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v6);
    }

    goto LABEL_18;
  }

  if (!v5 || (v8 = v5[4]) == 0)
  {
    v11 = 0;
    v9 = 0;
    goto LABEL_20;
  }

  v9 = v8;
  v10 = v8[2];
  v11 = v10;
  if (!v10)
  {
LABEL_20:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = *(v10 + 1);
LABEL_8:
  v13 = v12;

  v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink_Oversize");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1[4];
    v16 = a1[5];
    v17 = a1[6];
    v22 = 134218754;
    v23 = v15;
    v24 = 2114;
    v25 = v16;
    v26 = 2114;
    v27 = v17;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "ILL %p: _updatePlaybackControlSettingsWithReason [received response] reason=%{public}@ traceID=%{public}@ settings=%{public}@", &v22, 0x2Au);
  }

  if (v13)
  {
    v18 = 0;
  }

  else
  {
    v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICLiveLinkErrorDomain" code:2 debugDescription:@"received no playback control settings in response"];
    v19 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[4];
      v22 = 134217984;
      v23 = v20;
      _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_ERROR, "ILL %p: received no playback control settings in response", &v22, 0xCu);
    }
  }

  v21 = a1[7];
  if (v21)
  {
    (*(v21 + 16))(v21, v13, v18);
  }

LABEL_18:
}

- (void)_updateQueueWithReason:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = v8;
  if (v8)
  {
    *(v8 + 52) |= 1u;
    *(v8 + 48) = 4;
    v10 = objc_opt_new();
    [(_ICLLProtocolMessage *)v9 setQuery:v10];

    v11 = v9[4];
    if (v11)
    {
      v11[48] |= 1u;
      *(v11 + 8) = 1;
    }
  }

  else
  {
    v22 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setQuery:v22];

    v11 = 0;
  }

  v12 = objc_opt_new();
  if (v9)
  {
    v13 = v9[4];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v12;
  if (v14)
  {
    [(_ICLLQueryMessage *)v14 clearOneofValuesForQuery];
    *(v14 + 48) |= 1u;
    *(v14 + 8) = 1;
    objc_storeStrong(v14 + 5, v12);
  }

  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];

  [(_ICLLProtocolMessage *)v9 setTraceId:v17];
  v18 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v28 = self;
    v29 = 2114;
    v30 = v6;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "ILL %p: _updateQueueWithReason [requesting] reason=%{public}@ traceID=%{public}@", buf, 0x20u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __48__ICLiveLink__updateQueueWithReason_completion___block_invoke;
  v23[3] = &unk_1E7BF5350;
  v23[4] = self;
  v24 = v6;
  v25 = v17;
  v26 = v7;
  v19 = v17;
  v20 = v6;
  v21 = v7;
  [(ICLiveLink *)self sendMessage:v9 completion:v23];
}

void __48__ICLiveLink__updateQueueWithReason_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = a1[7];
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }

    goto LABEL_24;
  }

  if (v5)
  {
    v8 = v5[4];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 5);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_7:
  v11 = v10;

  if (v11)
  {
    v12 = v11[2];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink_Oversize");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1[4];
    v16 = a1[5];
    v17 = a1[6];
    v30 = 134218754;
    v31 = v15;
    v32 = 2114;
    v33 = v16;
    v34 = 2114;
    v35 = v17;
    v36 = 2114;
    v37 = v13;
    _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "ILL %p: _updateQueueWithReason [received response] reason=%{public}@ traceID=%{public}@ queue=%{public}@", &v30, 0x2Au);
  }

  if (!v13)
  {
    v27 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICLiveLinkErrorDomain" code:2 debugDescription:@"received no queue in response"];
    v20 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v28 = a1[4];
      v30 = 134217984;
      v31 = v28;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "ILL %p: received no queue in response.", &v30, 0xCu);
    }

    goto LABEL_21;
  }

  v18 = a1[4];
  if (v11)
  {
    v19 = v11[1];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  if (!v5 || (v21 = v5[4]) == 0)
  {
    v24 = 0;
    v22 = 0;
    goto LABEL_30;
  }

  v22 = v21;
  v23 = v21[5];
  v24 = v23;
  if (!v23)
  {
LABEL_30:
    v25 = 0;
    goto LABEL_18;
  }

  v25 = *(v23 + 3);
LABEL_18:
  v26 = v25;
  [v18 _handleUpdatedQueue:v13 playbackControlSettings:v20 serverQueueContext:v26];

  v27 = 0;
LABEL_21:

  v29 = a1[7];
  if (v29)
  {
    (*(v29 + 16))(v29, v27);
  }

LABEL_24:
}

- (void)_updateParticipantsWithReason:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = v8;
  if (v8)
  {
    *(v8 + 52) |= 1u;
    *(v8 + 48) = 4;
    v10 = objc_opt_new();
    [(_ICLLProtocolMessage *)v9 setQuery:v10];

    v11 = v9[4];
    if (v11)
    {
      v11[48] |= 1u;
      *(v11 + 8) = 4;
    }
  }

  else
  {
    v22 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setQuery:v22];

    v11 = 0;
  }

  v12 = objc_opt_new();
  if (v9)
  {
    v13 = v9[4];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v12;
  if (v14)
  {
    [(_ICLLQueryMessage *)v14 clearOneofValuesForQuery];
    *(v14 + 48) |= 1u;
    *(v14 + 8) = 4;
    objc_storeStrong(v14 + 1, v12);
  }

  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];

  [(_ICLLProtocolMessage *)v9 setTraceId:v17];
  v18 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v28 = self;
    v29 = 2114;
    v30 = v6;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "ILL %p: _updateParticipantsWithReason [requesting] reason=%{public}@ traceID=%{public}@", buf, 0x20u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__ICLiveLink__updateParticipantsWithReason_completion___block_invoke;
  v23[3] = &unk_1E7BF5350;
  v23[4] = self;
  v24 = v6;
  v25 = v17;
  v26 = v7;
  v19 = v17;
  v20 = v6;
  v21 = v7;
  [(ICLiveLink *)self sendMessage:v9 completion:v23];
}

void __55__ICLiveLink__updateParticipantsWithReason_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }

    goto LABEL_21;
  }

  if (!v5)
  {
    v9 = 0;
    goto LABEL_23;
  }

  v8 = v5[4];
  v9 = v8;
  if (!v8)
  {
LABEL_23:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = *(v8 + 1);
LABEL_7:
  v11 = v10;

  v12 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink_Oversize");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(a1 + 48);
    if (v11)
    {
      v16 = v11[1];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v24 = 134218754;
    v25 = v14;
    v26 = 2114;
    v27 = v13;
    v28 = 2114;
    v29 = v15;
    v30 = 2114;
    v31 = v17;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "ILL %p: _updateParticipantsWithReason [received response] reason=%{public}@ traceID=%{public}@ participants=%{public}@", &v24, 0x2Au);
  }

  if (v11)
  {
    v18 = v11[1];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    [*(a1 + 32) _handleUpdatedParticipantQuery:v11];
    v20 = 0;
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICLiveLinkErrorDomain" code:3 debugDescription:@"received no participants in response"];
    v21 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      v24 = 134217984;
      v25 = v22;
      _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "ILL %p: received no participants in response.", &v24, 0xCu);
    }
  }

  v23 = *(a1 + 56);
  if (v23)
  {
    (*(v23 + 16))(v23, v20);
  }

LABEL_21:
}

- (void)_storeTraceID:(id)a3 completion:(id)a4
{
  v13 = a3;
  v7 = a4;
  if (v13)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:1337 description:{@"Invalid parameter not satisfying: %@", @"traceID"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:1338 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_pendingRequests objectForKeyedSubscript:v13];

  if (v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:1340 description:{@"Attempted to overwrite completion handler for traceID %@", v13}];
  }

  v9 = MEMORY[0x1B8C781E0](v7);
  [(NSMutableDictionary *)self->_pendingRequests setObject:v9 forKeyedSubscript:v13];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_processPendingActions
{
  v31 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableArray *)self->_pendingActions count];
  if (v4 < 1 || self->_processingAction)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    self->_processingAction = 1;
  }

  v6 = [(NSMutableArray *)self->_pendingActions firstObject];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v26 = self;
      v27 = 2048;
      v28 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEBUG, "ILL %p: _processPendingActions: [processing action] action=%p", buf, 0x16u);
    }

    v8 = objc_alloc(MEMORY[0x1E69B13F0]);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __36__ICLiveLink__processPendingActions__block_invoke;
    v22[3] = &unk_1E7BF58E0;
    v24 = a2;
    v22[4] = self;
    v9 = v6;
    v23 = v9;
    v10 = [v8 initWithDeallocHandler:v22];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __36__ICLiveLink__processPendingActions__block_invoke_2;
    v17[3] = &unk_1E7BF51E8;
    v18 = v10;
    v19 = self;
    v11 = v9;
    v20 = v11;
    v21 = a2;
    v12 = v10;
    v13 = MEMORY[0x1B8C781E0](v17);
    if (v11 && (*(v11 + 148) & 2) != 0)
    {
      switch(*(v11 + 4))
      {
        case 0:
          break;
        case 1:
          [(ICLiveLink *)self _didReceivePlaybackSyncAction:v11 completion:v13];
          goto LABEL_14;
        case 2:
          [(ICLiveLink *)self _didReceiveAddItemsAction:v11 completion:v13];
          goto LABEL_14;
        case 3:
          [(ICLiveLink *)self _didReceiveRemoveItemAction:v11 completion:v13];
          goto LABEL_14;
        case 4:
          [(ICLiveLink *)self _didReceiveMoveItemAction:v11 completion:v13];
          goto LABEL_14;
        case 5:
          [(ICLiveLink *)self _didReceiveCurrentItemChangeAction:v11 completion:v13];
          goto LABEL_14;
        case 6:
          [(ICLiveLink *)self _didReceiveReactionAction:v11 completion:v13];
          goto LABEL_14;
        case 7:
          [(ICLiveLink *)self _didReceiveParticipantChangeAction:v11 completion:v13];
          goto LABEL_14;
        case 8:
          [(ICLiveLink *)self _didReceiveServerNoticeAction:v11 completion:v13];
          goto LABEL_14;
        case 9:
          v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          *buf = 134218242;
          v26 = self;
          v27 = 2114;
          v28 = v11;
          v15 = "ILL %p: Received ClientInfo action with no matching completion %{public}@";
          goto LABEL_12;
        case 0xA:
          [(ICLiveLink *)self _didReceiveReplaceQueueItemsAction:v11 completion:v13];
          goto LABEL_14;
        case 0xB:
          [(ICLiveLink *)self _didReceivePlayNowQueueItemsAction:v11 completion:v13];
          goto LABEL_14;
        case 0xC:
          [(ICLiveLink *)self _didReceiveCurrentItemTransitionAction:v11 completion:v13];
          goto LABEL_14;
        case 0xD:
          [(ICLiveLink *)self _didReceiveQueueSyncAction:v11 completion:v13];
          goto LABEL_14;
        default:
          v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          *buf = 134218242;
          v26 = self;
          v27 = 2114;
          v28 = v11;
          v15 = "ILL %p: Received unknown action %{public}@";
          goto LABEL_12;
      }
    }

    v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v26 = self;
      v27 = 2114;
      v28 = v11;
      v15 = "ILL %p: Received invalid action %{public}@";
LABEL_12:
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);
    }

LABEL_13:

    v13[2](v13);
LABEL_14:
  }

  else if (v6)
  {
    v16 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v26 = self;
      v27 = 2048;
      v28 = v6;
      v29 = 2048;
      v30 = v4;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEBUG, "ILL %p: _processPendingActions: [action already in flight] action=%p pendingActionCount=%ld", buf, 0x20u);
    }
  }
}

void __36__ICLiveLink__processPendingActions__block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v7 = v2;
  if (!v3)
  {
    goto LABEL_5;
  }

  if ((*(v3 + 148) & 2) == 0)
  {
    LODWORD(v3) = 0;
LABEL_5:
    v6 = off_1E7BF54E0[v3];
    goto LABEL_7;
  }

  LODWORD(v3) = *(v3 + 16);
  if (v3 < 0xE)
  {
    goto LABEL_5;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownAction-%ld", v3];
  v2 = v7;
LABEL_7:
  [v2 handleFailureInMethod:v4 object:v5 file:@"ICLiveLink.m" lineNumber:1249 description:{@"LiveLink action completion handler not called: %@", v6}];
}

uint64_t __36__ICLiveLink__processPendingActions__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) disarm];
  os_unfair_lock_lock((*(a1 + 40) + 16));
  if ([*(*(a1 + 40) + 72) count])
  {
    v2 = [*(*(a1 + 40) + 72) firstObject];
    if (*(a1 + 48) != v2)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"ICLiveLink.m" lineNumber:1257 description:{@"Unexpected state (pending actions dequeued while processing) action=%@ firstAction=%@", *(a1 + 48), v2}];
    }

    [*(*(a1 + 40) + 72) removeObjectAtIndex:0];
  }

  *(*(a1 + 40) + 9) = 0;
  v3 = [*(*(a1 + 40) + 72) count];
  os_unfair_lock_unlock((*(a1 + 40) + 16));
  v4 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *buf = 134218496;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEBUG, "ILL %p: _processPendingActions: [completed action] action=%p pendingActionCount=%ld", buf, 0x20u);
  }

  return [*(a1 + 40) _processPendingActions];
}

- (id)_participantForParticipantID:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_participants;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 serverID] == a3)
        {
          v12 = [v11 copy];

          v8 = v12;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)_participantForAction:(id)a3
{
  if (a3)
  {
    a3 = *(a3 + 1);
  }

  return [(ICLiveLink *)self _participantForParticipantID:a3];
}

- (void)_handleUpdatedQueue:(id)a3 playbackControlSettings:(id)a4 serverQueueContext:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[ICSharedListeningQueue alloc] initWithProtobuf:v10 serverQueueContext:v8 liveLink:self playbackControlSettings:v9];

  os_unfair_lock_lock(&self->_lock);
  v12 = [(ICSharedListeningQueue *)self->_queue serverRevision];
  v13 = [(ICSharedListeningQueue *)v11 serverRevision];
  v14 = [(ICSharedListeningQueue *)self->_queue isAutoPlayEnabled];
  v15 = [(ICSharedListeningQueue *)v11 isAutoPlayEnabled];
  v16 = [(ICSharedListeningQueue *)self->_queue isAutoPlayAvailable];
  v17 = [(ICSharedListeningQueue *)v11 isAutoPlayAvailable];
  v18 = v17;
  if (v13 > v12 || ((v14 ^ v15) & 1) != 0 || v16 != v17)
  {
    objc_storeStrong(&self->_queue, v11);
    os_unfair_lock_unlock(&self->_lock);
    v20 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219520;
      v27 = self;
      v28 = 2048;
      v29 = v12;
      v30 = 2048;
      v31 = v13;
      v32 = 1024;
      v33 = v16;
      v34 = 1024;
      v35 = v18;
      v36 = 1024;
      v37 = v14;
      v38 = 1024;
      v39 = v15;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "ILL %p: _handleUpdatedQueue [serverRevision:(%ld --> %ld), isAutoPlayAvailable:(%{BOOL}u --> %{BOOL}u), isAutoPlayEnabled:(%{BOOL}u --> %{BOOL}u)]", buf, 0x38u);
    }

    v19 = [(ICLiveLink *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v21 = [(ICLiveLink *)self delegateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __77__ICLiveLink__handleUpdatedQueue_playbackControlSettings_serverQueueContext___block_invoke;
      block[3] = &unk_1E7BFA178;
      v19 = v19;
      v23 = v19;
      v24 = self;
      v25 = v11;
      dispatch_async(v21, block);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v19 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v27 = self;
      v28 = 2048;
      v29 = v12;
      v30 = 2048;
      v31 = v13;
      _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "ILL %p: _handleUpdatedQueue dropping queue update [client already has newer revision] currentRevision=%ld updatedRevision=%ld", buf, 0x20u);
    }
  }
}

- (void)_handleUpdatedParticipantQuery:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(a3 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__ICLiveLink__handleUpdatedParticipantQuery___block_invoke;
  v16[3] = &unk_1E7BF51C0;
  v16[4] = self;
  v16[5] = a2;
  v7 = [v6 msv_map:v16];

  os_unfair_lock_lock(&self->_lock);
  if (self->_localParticipantServerID)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:self->_participants];
    objc_storeStrong(&self->_participants, v7);
    os_unfair_lock_unlock(&self->_lock);
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    if (([v8 isEqual:v9]& 1) == 0)
    {
      v10 = [(ICLiveLink *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v11 = [(ICLiveLink *)self delegateQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__ICLiveLink__handleUpdatedParticipantQuery___block_invoke_3;
        block[3] = &unk_1E7BFA178;
        v13 = v10;
        v14 = self;
        v15 = v7;
        dispatch_async(v11, block);
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v8 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v18 = self;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "ILL %p: Dropping participants [waiting for clientInfo] %{public}@", buf, 0x16u);
    }
  }
}

id __45__ICLiveLink__handleUpdatedParticipantQuery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ICLiveLinkIdentity alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__ICLiveLink__handleUpdatedParticipantQuery___block_invoke_2;
  v8[3] = &unk_1E7BF5198;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = [(ICLiveLinkIdentity *)v4 _initWithBlock:v8];

  return v6;
}

void __45__ICLiveLink__handleUpdatedParticipantQuery___block_invoke_2(void *a1, void *a2)
{
  v16 = a2;
  v3 = a1[4];
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  [v16 setServerID:v4];
  v5 = objc_alloc(MEMORY[0x1E696AFB0]);
  v6 = a1[4];
  if (v6)
  {
    v6 = v6[3];
  }

  v7 = v6;
  v8 = [v5 initWithUUIDString:v7];

  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = a1[5];
    v12 = a1[6];
    v14 = a1[4];
    if (v14)
    {
      v14 = v14[3];
    }

    v15 = v14;
    [v11 handleFailureInMethod:v12 object:v13 file:@"ICLiveLink.m" lineNumber:1143 description:{@"Received invalid UUID from server: %@", v15}];
  }

  [v16 setIdentifier:v8];
  v9 = a1[4];
  if (v9)
  {
    v9 = v9[2];
  }

  v10 = v9;
  [v16 setExternalIdentifier:v10];
}

- (void)_handleReceivedMessage:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    os_unfair_lock_lock(&self->_lock);
    pendingRequests = self->_pendingRequests;
    v9 = v5 ? *(v5 + 5) : 0;
    v10 = v9;
    v11 = [(NSMutableDictionary *)pendingRequests objectForKeyedSubscript:v10];

    v12 = self->_pendingRequests;
    v13 = v5 ? *(v5 + 5) : 0;
    v14 = v13;
    [(NSMutableDictionary *)v12 setObject:0 forKeyedSubscript:v14];

    os_unfair_lock_unlock(&self->_lock);
    if (v11)
    {
      (v11[2].isa)(v11, v5, 0);
LABEL_22:

      goto LABEL_23;
    }
  }

  if (!v5 || (*(v5 + 52) & 1) == 0)
  {
    goto LABEL_20;
  }

  v15 = *(v5 + 12);
  if (v15 <= 2)
  {
    if (v15 >= 2)
    {
      if (v15 == 2)
      {
        v11 = *(v5 + 1);
        v16 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = 134218242;
          v18 = self;
          v19 = 2114;
          v20 = v11;
          _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEBUG, "ILL %p: _handleReceivedMessage enqueuing action: %{public}@", &v17, 0x16u);
        }

        os_unfair_lock_lock(&self->_lock);
        [(NSMutableArray *)self->_pendingActions addObject:v11];
        os_unfair_lock_unlock(&self->_lock);
        [(ICLiveLink *)self _processPendingActions];
        goto LABEL_22;
      }

      goto LABEL_23;
    }

LABEL_20:
    v11 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218242;
      v18 = self;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "ILL %p: Received unhandled message %{public}@", &v17, 0x16u);
    }

    goto LABEL_22;
  }

  if (v15 == 3)
  {
    v11 = *(v5 + 3);
    [(ICLiveLink *)self _didReceivePluginErrorMessage:v11];
    goto LABEL_22;
  }

  if (v15 == 4)
  {
    goto LABEL_20;
  }

LABEL_23:
}

- (void)_emitSessionEventIfNeededForAction:(id)a3 disconnectedParticipant:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 || (*(v6 + 144) & 1) == 0)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    if (v6)
    {
      v11 = *(v6 + 10);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v20 = 134218242;
    v21 = self;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "ILL %p: Received ParticipantChangeAction with displayNotice=NO %{public}@", &v20, 0x16u);
LABEL_27:

    goto LABEL_28;
  }

  os_unfair_lock_lock(&self->_lock);
  localParticipantServerID = self->_localParticipantServerID;
  v9 = *(v6 + 1);
  os_unfair_lock_unlock(&self->_lock);
  if (v9 == localParticipantServerID)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218240;
      v21 = self;
      v22 = 2048;
      v23 = localParticipantServerID;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "ILL %p: Received ParticipantChangeAction for the local participant: %lld", &v20, 0x16u);
    }

    goto LABEL_28;
  }

  v13 = *(v6 + 10);
  if (!v13 || (v13[7] & 2) == 0)
  {
    v14 = 0;
LABEL_24:

    v16 = v7;
    goto LABEL_25;
  }

  v14 = v13[6];
  if (v14 <= 2)
  {
    if (v14 != 1)
    {
      if (v14 == 2)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (v14 != 3)
    {
      v15 = 5;
      if (v14 != 5)
      {
        v15 = 0;
      }

      if (v14 == 4)
      {
        v14 = 3;
      }

      else
      {
        v14 = v15;
      }

      goto LABEL_24;
    }

    v14 = 2;
  }

  v16 = [(ICLiveLink *)self _participantForAction:v6];
LABEL_25:
  v10 = v16;
  if (v16)
  {
    v12 = [[ICLiveLinkSessionEvent alloc] initWithKind:v14];
    v17 = [ICLiveLinkEvent eventWithSessionEvent:v12 participant:v10];
    [(ICLiveLink *)self receivedEvent:v17];

    goto LABEL_27;
  }

  v18 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = *(v6 + 1);
    v20 = 134218240;
    v21 = self;
    v22 = 2048;
    v23 = v19;
    _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "ILL %p: Received Participant Join/Connect for unknown participant ID = %ld", &v20, 0x16u);
  }

  v10 = 0;
LABEL_28:
}

- (void)_didReceiveServerNoticeAction:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = *(v6 + 17)) != 0)
  {
    v9 = v8;
    if (*(v6 + 144))
    {
      v10 = [ICLiveLinkCustomEvent alloc];
      v11 = v9[1];
      v12 = [(ICLiveLinkCustomEvent *)v10 initWithLocalizedMessage:v11];

      v13 = [(ICLiveLink *)self _participantForAction:v6];
      v14 = [ICLiveLinkEvent eventWithCustomEvent:v12 participant:v13];

      [(ICLiveLink *)self receivedEvent:v14];
      v7[2](v7);
    }

    else
    {
      v15 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = 134218242;
        v18 = self;
        v19 = 2114;
        v20 = v9;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "ILL %p: Received ServerNoticeAction with displayNotice=NO %{public}@", &v17, 0x16u);
      }

      v7[2](v7);
    }
  }

  else
  {
    v16 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218242;
      v18 = self;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid ServerNoticeAction %{public}@", &v17, 0x16u);
    }

    v7[2](v7);
    v9 = 0;
  }
}

- (void)_didReceiveReplaceQueueItemsAction:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = v6[16]) != 0)
  {
    v9 = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__ICLiveLink__didReceiveReplaceQueueItemsAction_completion___block_invoke;
    v12[3] = &unk_1E7BF8058;
    v16 = v7;
    v10 = v9;
    v13 = v10;
    v14 = self;
    v15 = v6;
    [(ICLiveLink *)self _updateQueueWithReason:@"ServerAction[ReplaceQueueItems]" completion:v12];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v18 = self;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid ReplaceQueueItemsAction %{public}@", buf, 0x16u);
    }

    v7[2](v7);
    v10 = 0;
  }
}

void __60__ICLiveLink__didReceiveReplaceQueueItemsAction_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    if (!v4 || (v5 = *(v4 + 24)) == 0)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v6 = v6[2];
      }

      v7 = v6;
      v8 = [v7 firstObject];
      v9 = v8;
      if (v8)
      {
        v10 = *(v8 + 24);
      }

      else
      {
        v10 = 0;
      }

      v5 = v10;

      v11 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        *buf = 134218242;
        v26 = v12;
        v27 = 2114;
        v28 = v5;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "ILL %p: Received ReplaceQueueItemsAction without preferredPlayItemId, using first itemId: %{public}@", buf, 0x16u);
      }
    }

    v13 = [*(a1 + 40) participants];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__ICLiveLink__didReceiveReplaceQueueItemsAction_completion___block_invoke_130;
    v23[3] = &unk_1E7BF5170;
    v24 = *(a1 + 48);
    v14 = [v13 msv_firstWhere:v23];

    [*(a1 + 40) receivedCurrentItemIdentifier:v5 fromParticipant:v14];
    v15 = *(a1 + 48);
    if (v15 && (*(v15 + 144) & 1) != 0)
    {
      v16 = [[ICLiveLinkQueueEventContentReplaced alloc] initWithStartItemIdentifier:v5];
      v17 = [ICLiveLinkQueueEvent queueEventWithContentReplaced:v16];
      v18 = [*(a1 + 40) _participantForAction:*(a1 + 48)];
      v19 = [ICLiveLinkEvent eventWithQueueEvent:v17 participant:v18];

      [*(a1 + 40) receivedEvent:v19];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v20 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        v21 = *(a1 + 40);
        *buf = 134218242;
        v26 = v21;
        v27 = 2114;
        v28 = v22;
        _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "ILL %p: Received ReplaceQueueItemsAction with displayNotice=NO %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

BOOL __60__ICLiveLink__didReceiveReplaceQueueItemsAction_completion___block_invoke_130(uint64_t a1, void *a2)
{
  v3 = [a2 serverID];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = *(v4 + 8);
  }

  return v3 == v4;
}

- (void)_didReceiveRemoveItemAction:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = *(v6 + 15)) != 0)
  {
    v9 = v8;
    if (*(v6 + 144) == 1)
    {
      v10 = [ICLiveLinkQueueEventContentRemoved alloc];
      v11 = v9[1];
      v12 = [(ICLiveLinkQueueEventContentRemoved *)v10 initWithItemIdentifier:v11];

      v13 = [ICLiveLinkQueueEvent queueEventWithContentRemoved:v12];
      v14 = [(ICLiveLink *)self _participantForAction:v6];
      v15 = [ICLiveLinkEvent eventWithQueueEvent:v13 participant:v14];

      [(ICLiveLink *)self receivedEvent:v15];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v20 = self;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "ILL %p: Received RemoveItemAction with displayNotice=NO %{public}@", buf, 0x16u);
      }
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__ICLiveLink__didReceiveRemoveItemAction_completion___block_invoke;
    v17[3] = &unk_1E7BF77C0;
    v18 = v7;
    [(ICLiveLink *)self _updateQueueWithReason:@"ServerAction[RemoveItem]" completion:v17];
  }

  else
  {
    v16 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v20 = self;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid RemoveItemAction %{public}@", buf, 0x16u);
    }

    v7[2](v7);
    v9 = 0;
  }
}

- (void)_didReceiveReactionAction:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = *(v6 + 14)) != 0)
  {
    v9 = v8;
    if (*(v6 + 144))
    {
      v10 = [ICLiveLinkReactionEvent alloc];
      v11 = v9[2];
      v12 = v9[3];
      v13 = v9[1];
      v14 = [(ICLiveLinkReactionEvent *)v10 initWithReaction:v11 reactionIdentifier:v12 itemIdentifier:v13];

      v15 = [(ICLiveLink *)self _participantForAction:v6];
      v16 = [ICLiveLinkEvent eventWithReactionEvent:v14 participant:v15];

      [(ICLiveLink *)self receivedEvent:v16];
      v7[2](v7);
    }

    else
    {
      v17 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = 134218242;
        v20 = self;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, "ILL %p: Received ReactionAction with displayNotice=NO %{public}@", &v19, 0x16u);
      }

      v7[2](v7);
    }
  }

  else
  {
    v18 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 134218242;
      v20 = self;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid ReactionAction %{public}@", &v19, 0x16u);
    }

    v7[2](v7);
    v9 = 0;
  }
}

- (void)_didReceiveQueueSyncAction:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6[13];
    if (v8)
    {
      v9 = v8;
      v10 = v8[2];
      v11 = v9[1];
      v12 = v9[3];
      [(ICLiveLink *)self _handleUpdatedQueue:v10 playbackControlSettings:v11 serverQueueContext:v12];

      if (v6[18])
      {
        v13 = v6[7];
        if (v13)
        {
          v14 = v13;
          v15 = [ICLiveLinkQueueEventContentUpdatedMessage alloc];
          v16 = v14[2].isa;
          v17 = v14[1].isa;
          v18 = [(ICLiveLinkQueueEventContentUpdatedMessage *)v15 initWithLocalizedTitle:v16 localizedMessage:v17];

          v19 = [ICLiveLinkQueueEvent queueEventWithContentUpdatedMessage:v18];
          v20 = [(ICLiveLink *)self _participantForAction:v6];
          v21 = [ICLiveLinkEvent eventWithQueueEvent:v19 participant:v20];

          [(ICLiveLink *)self receivedEvent:v21];
LABEL_11:

          goto LABEL_15;
        }

        v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v24 = 134218242;
        v25 = self;
        v26 = 2114;
        v27 = v9;
        v22 = "ILL %p: Received QueueSyncAction with displayNotice=YES but no DisplayMessage %{public}@";
      }

      else
      {
        v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v24 = 134218242;
        v25 = self;
        v26 = 2114;
        v27 = v9;
        v22 = "ILL %p: Received QueueSyncAction with displayNotice=NO %{public}@";
      }

      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, v22, &v24, 0x16u);
      goto LABEL_11;
    }
  }

  v23 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 134218242;
    v25 = self;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid QueueSyncAction %{public}@", &v24, 0x16u);
  }

  v9 = 0;
LABEL_15:
  v7[2](v7);
}

- (void)_didReceivePlayNowQueueItemsAction:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = v6[11]) != 0)
  {
    v9 = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__ICLiveLink__didReceivePlayNowQueueItemsAction_completion___block_invoke;
    v12[3] = &unk_1E7BF8058;
    v16 = v7;
    v10 = v9;
    v13 = v10;
    v14 = self;
    v15 = v6;
    [(ICLiveLink *)self _updateQueueWithReason:@"ServerAction[PlayNowQueueItems]" completion:v12];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v18 = self;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid PlayNowQueueItemsAction %{public}@", buf, 0x16u);
    }

    v7[2](v7);
    v10 = 0;
  }
}

void __60__ICLiveLink__didReceivePlayNowQueueItemsAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    if (!v4 || (v5 = *(v4 + 24)) == 0)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v6 = v6[1];
      }

      v7 = v6;
      v8 = [v7 firstObject];
      v9 = v8;
      if (v8)
      {
        v10 = *(v8 + 24);
      }

      else
      {
        v10 = 0;
      }

      v5 = v10;

      v11 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        *buf = 134218242;
        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v5;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "ILL %p: Received PlayNowQueueItemsAction without preferredPlayItemId, using first itemId: %{public}@", buf, 0x16u);
      }
    }

    v13 = [*(a1 + 40) participants];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __60__ICLiveLink__didReceivePlayNowQueueItemsAction_completion___block_invoke_118;
    v38[3] = &unk_1E7BF5170;
    v39 = *(a1 + 48);
    v14 = [v13 msv_firstWhere:v38];

    [*(a1 + 40) receivedCurrentItemIdentifier:v5 fromParticipant:v14];
    v15 = *(a1 + 48);
    if (v15 && (*(v15 + 144) & 1) != 0)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v41 = __Block_byref_object_copy__12417;
      v42 = __Block_byref_object_dispose__12418;
      v43 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__12417;
      v32 = __Block_byref_object_dispose__12418;
      v33 = 0;
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = v16[1];
      }

      v17 = v16;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __60__ICLiveLink__didReceivePlayNowQueueItemsAction_completion___block_invoke_119;
      v27[3] = &unk_1E7BF5148;
      v27[4] = &v34;
      v27[5] = buf;
      v27[6] = &v28;
      v18 = [v17 msv_map:v27];

      v19 = [ICLiveLinkQueueEventContentPlayedNow alloc];
      v20 = [(ICLiveLinkQueueEventContentPlayedNow *)v19 initWithItemIdentifiers:v18 containerKind:v35[3] containerIdentifier:*(*&buf[8] + 40) containerMediaIdentifier:v29[5] startItemIdentifier:v5];
      v21 = [ICLiveLinkQueueEvent queueEventWithContentPlayedNow:v20];
      v22 = [*(a1 + 40) _participantForAction:*(a1 + 48)];
      v23 = [ICLiveLinkEvent eventWithQueueEvent:v21 participant:v22];

      [*(a1 + 40) receivedEvent:v23];
      (*(*(a1 + 56) + 16))();

      _Block_object_dispose(&v28, 8);
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v34, 8);
    }

    else
    {
      v24 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 32);
        v25 = *(a1 + 40);
        *buf = 134218242;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "ILL %p: Received PlayNowQueueItemsAction with displayNotice=NO %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

BOOL __60__ICLiveLink__didReceivePlayNowQueueItemsAction_completion___block_invoke_118(uint64_t a1, void *a2)
{
  v3 = [a2 serverID];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = *(v4 + 8);
  }

  return v3 == v4;
}

id __60__ICLiveLink__didReceivePlayNowQueueItemsAction_completion___block_invoke_119(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1[4] + 8) + 24))
  {
    goto LABEL_17;
  }

  if (v3)
  {
    v5 = v3[2];
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 3);
      goto LABEL_5;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_5:
  v8 = v7;

  if ([v8 length])
  {
    if (v4)
    {
      v9 = v4[2];
      v10 = v9;
      if (v9)
      {
        v11 = *(v9 + 1);
        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
LABEL_9:
    objc_storeStrong((*(a1[5] + 8) + 40), v11);

    if (v4)
    {
      v12 = v4[2];
      if (v12 && (v12[44] & 1) != 0)
      {
        v13 = *(v12 + 10);
        if ((v13 - 1) >= 4)
        {
          v13 = 0;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 0;
LABEL_15:
    *(*(a1[4] + 8) + 24) = v13;

    objc_storeStrong((*(a1[6] + 8) + 40), v7);
  }

LABEL_17:
  if (v4)
  {
    v14 = v4[3];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (void)_didReceivePlaybackSyncAction:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6[12];
    if (v8)
    {
      v9 = v8;
      if (v8[4])
      {
        v10 = *(v8 + 4);
        if (v10 == 2)
        {
          v11 = @"ICLiveLinkTransportControlStateKey";
          v12 = &OBJC_IVAR____ICLLPlaybackSyncAction__transportControlState;
LABEL_8:
          v13 = *(v8 + *v12);
          v14 = [v13 dataUsingEncoding:4];

          if (v14)
          {
            v25 = 0;
            v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:0 error:&v25];
            v22 = v25;
            if (v22)
            {
              v16 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218242;
                v29 = self;
                v30 = 2114;
                v31 = v9;
                _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "ILL %p: Could not construct payload for sync message %{public}@", buf, 0x16u);
              }
            }

            else
            {
              playbackCoordinatorMedium = self->_playbackCoordinatorMedium;
              v26 = v11;
              v27 = v15;
              v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
              [(ICLiveLinkPlaybackCoordinatorMedium *)playbackCoordinatorMedium handlePlaybackSyncPayload:v18];

              if (![(ICLiveLinkPlaybackCoordinatorMedium *)self->_playbackCoordinatorMedium isCoordinatorSuspended]|| (v9[4] & 1) == 0 || *(v9 + 4) != 2 || !_NSIsNSDictionary())
              {
                goto LABEL_20;
              }

              v19 = v15;
              v16 = [v19 objectForKeyedSubscript:@"Identifier"];
              v20 = [(ICLiveLink *)self participants];
              v23[0] = MEMORY[0x1E69E9820];
              v23[1] = 3221225472;
              v23[2] = __55__ICLiveLink__didReceivePlaybackSyncAction_completion___block_invoke;
              v23[3] = &unk_1E7BF5170;
              v24 = v6;
              v21 = [v20 msv_firstWhere:v23];

              [(ICLiveLink *)self receivedCurrentItemIdentifier:v16 fromParticipant:v21];
            }

LABEL_20:
            goto LABEL_24;
          }

          goto LABEL_13;
        }

        if (v10 == 1)
        {
          v11 = @"ICLiveLinkPlaybackSyncParticipantStateKey";
          v12 = &OBJC_IVAR____ICLLPlaybackSyncAction__participantState;
          goto LABEL_8;
        }
      }

LABEL_13:
      v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v29 = self;
        v30 = 2114;
        v31 = v9;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "ILL %p: No payload for sync message %{public}@", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    v29 = self;
    v30 = 2114;
    v31 = v6;
    _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid PlaybackSyncAction %{public}@", buf, 0x16u);
  }

  v9 = 0;
LABEL_24:

  v7[2](v7);
}

BOOL __55__ICLiveLink__didReceivePlaybackSyncAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serverID];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = *(v4 + 8);
  }

  return v3 == v4;
}

- (void)_didReceiveParticipantChangeAction:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6[10];
    if (v8)
    {
      v9 = v8;
      if ((*(v8 + 28) & 2) != 0)
      {
        v10 = *(v8 + 6);
        if (v10 == 4 || v10 == 2)
        {
          v12 = [(ICLiveLink *)self _participantForAction:v6];
          if (v12)
          {
            v13 = v12;
            playbackCoordinatorMedium = self->_playbackCoordinatorMedium;
            v15 = [v12 identifier];
            [(ICLiveLinkPlaybackCoordinatorMedium *)playbackCoordinatorMedium removeParticipant:v15];

LABEL_15:
            v18 = v9[2];
            if (v18)
            {
              v19 = v18;
              [(ICLiveLink *)self _handleUpdatedParticipantQuery:v19];
              [(ICLiveLink *)self _emitSessionEventIfNeededForAction:v6 disconnectedParticipant:v13];
              v7[2](v7);
            }

            else
            {
              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = __60__ICLiveLink__didReceiveParticipantChangeAction_completion___block_invoke;
              v21[3] = &unk_1E7BF8058;
              v21[4] = self;
              v22 = v6;
              v23 = v13;
              v24 = v7;
              [(ICLiveLink *)self _updateParticipantsWithReason:@"ParticipantChangeAction" completion:v21];
            }

            goto LABEL_22;
          }

          v16 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = v6[1];
            *buf = 134218240;
            v26 = self;
            v27 = 2048;
            v28 = v17;
            _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "ILL %p: Received Participant Leave/Disconnect for unknown participant ID = %ld", buf, 0x16u);
          }
        }
      }

      v13 = 0;
      goto LABEL_15;
    }
  }

  v20 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    v26 = self;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid ParticipantChangeAction %{public}@", buf, 0x16u);
  }

  v7[2](v7);
  v9 = 0;
LABEL_22:
}

uint64_t __60__ICLiveLink__didReceiveParticipantChangeAction_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _emitSessionEventIfNeededForAction:*(a1 + 40) disconnectedParticipant:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (void)_didReceiveMoveItemAction:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = v6[8]) != 0)
  {
    v9 = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__ICLiveLink__didReceiveMoveItemAction_completion___block_invoke;
    v12[3] = &unk_1E7BF8058;
    v13 = v6;
    v14 = self;
    v10 = v9;
    v15 = v10;
    v16 = v7;
    [(ICLiveLink *)self _updateQueueWithReason:@"ServerAction[MoveItem]" completion:v12];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v18 = self;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid MoveItemAction %{public}@", buf, 0x16u);
    }

    v7[2](v7);
    v10 = 0;
  }
}

void __51__ICLiveLink__didReceiveMoveItemAction_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 144) & 1) != 0)
  {
    v3 = [ICLiveLinkQueueEventContentReordered alloc];
    v4 = *(a1 + 48);
    if (v4)
    {
      v4 = v4[1];
    }

    v5 = v4;
    v12 = [(ICLiveLinkQueueEventContentReordered *)v3 initWithItemIdentifier:v5];

    v6 = [ICLiveLinkQueueEvent queueEventWithContentReordered:v12];
    v7 = [*(a1 + 40) _participantForAction:*(a1 + 32)];
    v8 = [ICLiveLinkEvent eventWithQueueEvent:v6 participant:v7];

    [*(a1 + 40) receivedEvent:v8];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      *buf = 134218242;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "ILL %p: Received MoveItemAction with displayNotice=NO %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)_didReceiveCurrentItemTransitionAction:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = v6[6]) != 0)
  {
    v9 = v8;
    v10 = v8[2];
    v11 = v9[1];
    v12 = [(ICLiveLink *)self participants];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__ICLiveLink__didReceiveCurrentItemTransitionAction_completion___block_invoke;
    v16[3] = &unk_1E7BF5170;
    v17 = v6;
    v13 = [v12 msv_firstWhere:v16];

    v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v19 = self;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "ILL %p: [received current item transition - INFORMATIONAL ONLY] fromItemID=%{public}@ toItemID=%{public}@ originator=%{public}@", buf, 0x2Au);
    }

    v7[2](v7);
    v7 = v10;
  }

  else
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v19 = self;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid CurrentItemTransitionAction %{public}@", buf, 0x16u);
    }

    v7[2](v7);
    v9 = 0;
  }
}

BOOL __64__ICLiveLink__didReceiveCurrentItemTransitionAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serverID];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = *(v4 + 8);
  }

  return v3 == v4;
}

- (void)_didReceiveCurrentItemChangeAction:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = v6[5]) != 0)
  {
    v9 = v8;
    v10 = v8[1];
    v11 = [(ICLiveLink *)self participants];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__ICLiveLink__didReceiveCurrentItemChangeAction_completion___block_invoke;
    v20[3] = &unk_1E7BF5170;
    v12 = v6;
    v21 = v12;
    v13 = [v11 msv_firstWhere:v20];

    v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v23 = self;
      v24 = 2114;
      v25 = v10;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "ILL %p: [received current item change] currentItemIdentifier=%{public}@ originator=%{public}@", buf, 0x20u);
    }

    [(ICLiveLink *)self receivedCurrentItemIdentifier:v10 fromParticipant:v13];
    if (v12[18])
    {
      v15 = [[ICLiveLinkPlaybackEvent alloc] initWithKind:4];
      v16 = [(ICLiveLink *)self _participantForAction:v12];
      v17 = [ICLiveLinkEvent eventWithPlaybackEvent:v15 participant:v16];

      [(ICLiveLink *)self receivedEvent:v17];
      v7[2](v7);
    }

    else
    {
      v18 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v23 = self;
        v24 = 2114;
        v25 = v9;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "ILL %p: Received CurrentItemChangeAction with displayNotice=NO %{public}@", buf, 0x16u);
      }

      v7[2](v7);
    }
  }

  else
  {
    v19 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v23 = self;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid CurrentItemChangeAction %{public}@", buf, 0x16u);
    }

    v7[2](v7);
    v9 = 0;
  }
}

BOOL __60__ICLiveLink__didReceiveCurrentItemChangeAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serverID];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = *(v4 + 8);
  }

  return v3 == v4;
}

- (void)_didReceiveAddItemsAction:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = v6[3]) != 0)
  {
    v9 = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__ICLiveLink__didReceiveAddItemsAction_completion___block_invoke;
    v12[3] = &unk_1E7BF8058;
    v13 = v6;
    v14 = self;
    v10 = v9;
    v15 = v10;
    v16 = v7;
    [(ICLiveLink *)self _updateQueueWithReason:@"ServerAction[AddItems]" completion:v12];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v18 = self;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "ILL %p: Received invalid AddItemsAction %{public}@", buf, 0x16u);
    }

    v7[2](v7);
    v10 = 0;
  }
}

void __51__ICLiveLink__didReceiveAddItemsAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && (*(v4 + 144) & 1) != 0)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v28 = __Block_byref_object_copy__12417;
    v29 = __Block_byref_object_dispose__12418;
    v30 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__12417;
    v21 = __Block_byref_object_dispose__12418;
    v22 = 0;
    v5 = *(a1 + 48);
    if (v5)
    {
      v5 = v5[1];
    }

    v6 = v5;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__ICLiveLink__didReceiveAddItemsAction_completion___block_invoke_96;
    v16[3] = &unk_1E7BF5148;
    v16[4] = &v23;
    v16[5] = buf;
    v16[6] = &v17;
    v7 = [v6 msv_map:v16];

    v8 = [ICLiveLinkQueueEventContentAdded alloc];
    v9 = [(ICLiveLinkQueueEventContentAdded *)v8 initWithItemIdentifiers:v7 containerKind:v24[3] containerIdentifier:*(*&buf[8] + 40) containerMediaIdentifier:v18[5]];
    v10 = [ICLiveLinkQueueEvent queueEventWithContentAdded:v9];
    v11 = [*(a1 + 40) _participantForAction:*(a1 + 32)];
    v12 = [ICLiveLinkEvent eventWithQueueEvent:v10 participant:v11];

    [*(a1 + 40) receivedEvent:v12];
    (*(*(a1 + 56) + 16))();

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      *buf = 134218242;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "ILL %p: Received AddItemsAction with displayNotice=NO %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

id __51__ICLiveLink__didReceiveAddItemsAction_completion___block_invoke_96(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1[4] + 8) + 24))
  {
    goto LABEL_17;
  }

  if (v3)
  {
    v5 = v3[2];
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 3);
      goto LABEL_5;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_5:
  v8 = v7;

  if ([v8 length])
  {
    if (v4)
    {
      v9 = v4[2];
      v10 = v9;
      if (v9)
      {
        v11 = *(v9 + 1);
        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
LABEL_9:
    objc_storeStrong((*(a1[5] + 8) + 40), v11);

    if (v4)
    {
      v12 = v4[2];
      if (v12 && (v12[44] & 1) != 0)
      {
        v13 = *(v12 + 10);
        if ((v13 - 1) >= 4)
        {
          v13 = 0;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 0;
LABEL_15:
    *(*(a1[4] + 8) + 24) = v13;

    objc_storeStrong((*(a1[6] + 8) + 40), v7);
  }

LABEL_17:
  if (v4)
  {
    v14 = v4[3];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v12)
  {
    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (![v8 length])
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];

    [(_ICLLProtocolMessage *)v12 setTraceId:v10];
    v8 = v10;
  }

  [(ICLiveLink *)self _storeTraceID:v8 completion:v6];
  v11 = [(ICLiveLink *)self connectionController];
  [v11 sendMessage:v12];
}

- (void)sendPlaybackSyncPayload:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 52) |= 1u;
    *(v5 + 48) = 1;
  }

  v7 = objc_opt_new();
  [(_ICLLProtocolMessage *)v6 setCommand:v7];

  v8 = objc_opt_new();
  if (v6)
  {
    v9 = v6[2];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = v8;
  if (v10)
  {
    [(_ICLLCommandMessage *)v10 clearOneofValuesForCommand];
    *(v10 + 104) |= 1u;
    *(v10 + 6) = 1;
    objc_storeStrong(v10 + 9, v8);
  }

  if (v6 && (v12 = v6[2]) != 0)
  {
    v13 = v12;
    v14 = v12[9];
    if (v14)
    {
      v14[32] |= 1u;
      *(v14 + 4) = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = [v4 objectForKeyedSubscript:@"ICLiveLinkTransportControlStateKey"];

  if (v15)
  {
    v16 = [v4 objectForKeyedSubscript:@"ICLiveLinkTransportControlStateKey"];
    v37 = 0;
    v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v16 options:0 error:&v37];
    v18 = v37;
    if (v18)
    {
      v19 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v39 = self;
        v40 = 2114;
        v41 = v18;
        v42 = 2114;
        v43 = v16;
        v20 = "ILL %p: Serialization failed with error %{public}@ for transport control state %{public}@";
LABEL_19:
        _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x20u);
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v17 encoding:4];
    if (v6 && (v23 = v6[2]) != 0)
    {
      v24 = v23;
      v25 = v23[9];
      if (v25)
      {
        v25[32] |= 1u;
        *(v25 + 4) = 2;
      }
    }

    else if (!v6)
    {
      v27 = 0;
      goto LABEL_48;
    }

    v26 = v6[2];
    v27 = v26;
    if (v26)
    {
      v28 = *(v26 + 9);
      goto LABEL_27;
    }

LABEL_48:
    v28 = 0;
LABEL_27:
    v29 = v28;
    v19 = v22;
    if (v29)
    {
      [(_ICLLPlaybackSyncCommand *)v29 clearOneofValuesForPayload];
      v29[32] |= 1u;
      *(v29 + 4) = 2;
      v30 = 24;
LABEL_40:
      objc_storeStrong(&v29[v30], v22);
      goto LABEL_41;
    }

    goto LABEL_41;
  }

  v21 = [v4 objectForKeyedSubscript:@"ICLiveLinkPlaybackSyncParticipantStateKey"];

  if (v21)
  {
    v16 = [v4 objectForKeyedSubscript:@"ICLiveLinkPlaybackSyncParticipantStateKey"];
    v36 = 0;
    v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v16 options:0 error:&v36];
    v18 = v36;
    if (v18)
    {
      v19 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v39 = self;
        v40 = 2114;
        v41 = v18;
        v42 = 2114;
        v43 = v16;
        v20 = "ILL %p: Serialization failed with error %{public}@ for participant state %{public}@";
        goto LABEL_19;
      }

LABEL_42:

      goto LABEL_43;
    }

    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v17 encoding:4];
    if (v6 && (v31 = v6[2]) != 0)
    {
      v32 = v31;
      v33 = v31[9];
      if (v33)
      {
        v33[32] |= 1u;
        *(v33 + 4) = 1;
      }
    }

    else if (!v6)
    {
      v27 = 0;
      goto LABEL_51;
    }

    v34 = v6[2];
    v27 = v34;
    if (v34)
    {
      v35 = *(v34 + 9);
      goto LABEL_38;
    }

LABEL_51:
    v35 = 0;
LABEL_38:
    v29 = v35;
    v19 = v22;
    if (v29)
    {
      [(_ICLLPlaybackSyncCommand *)v29 clearOneofValuesForPayload];
      v29[32] |= 1u;
      *(v29 + 4) = 1;
      v30 = 8;
      goto LABEL_40;
    }

LABEL_41:

    goto LABEL_42;
  }

  v16 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    v39 = self;
    v40 = 2114;
    v41 = v4;
    _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "ILL %p: Playback sync payload had no recognized key. Payload: %{public}@", buf, 0x16u);
  }

LABEL_43:

  [(ICLiveLink *)self sendMessage:v6 completion:&__block_literal_global_91];
}

- (void)receivedEvent:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ICLiveLink *)self delegate];
  v6 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v14 = self;
    v15 = 2114;
    v16 = objc_opt_class();
    v17 = 2048;
    v18 = v5;
    v19 = 2114;
    v20 = v4;
    v7 = v16;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "ILL %p: receivedEvent delegate=<%{public}@ %p> event=%{public}@", buf, 0x2Au);
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(ICLiveLink *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__ICLiveLink_receivedEvent___block_invoke;
    block[3] = &unk_1E7BFA178;
    v10 = v5;
    v11 = self;
    v12 = v4;
    dispatch_async(v8, block);
  }
}

- (void)receivedCurrentItemIdentifier:(id)a3 fromParticipant:(id)a4
{
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(ICSharedListeningQueue *)self->_queue itemForIdentifier:v7];
  os_unfair_lock_unlock(&self->_lock);
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:618 description:{@"Received current item ID not in queue: %@", v7}];
  }

  v10 = [(ICLiveLink *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(ICLiveLink *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__ICLiveLink_receivedCurrentItemIdentifier_fromParticipant___block_invoke;
    block[3] = &unk_1E7BFA1F0;
    v12 = v20;
    v20[0] = v10;
    v20[1] = self;
    v13 = &v21;
    v21 = v9;
    v22 = v8;
    dispatch_async(v11, block);

    v14 = v22;
LABEL_7:

    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [(ICLiveLink *)self delegateQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__ICLiveLink_receivedCurrentItemIdentifier_fromParticipant___block_invoke_2;
    v16[3] = &unk_1E7BFA178;
    v12 = v17;
    v17[0] = v10;
    v17[1] = self;
    v13 = &v18;
    v18 = v9;
    dispatch_async(v14, v16);
    goto LABEL_7;
  }

LABEL_8:
}

- (id)participantForParticipantUUID:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_participants;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      participants = self->_participants;
      *buf = 134218498;
      v21 = self;
      v22 = 2114;
      v23 = v4;
      v24 = 2114;
      v25 = participants;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "ILL %p: Failed to find participant with UUID: %{public}@, in participants: %{public}@", buf, 0x20u);
    }
  }

  return v7;
}

- (void)fetchPlaybackSyncStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 52) |= 1u;
    *(v5 + 48) = 4;
    v7 = objc_opt_new();
    [(_ICLLProtocolMessage *)v6 setQuery:v7];

    v8 = v6[4];
    if (v8)
    {
      v8[48] |= 1u;
      *(v8 + 8) = 2;
    }
  }

  else
  {
    v13 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setQuery:v13];

    v8 = 0;
  }

  v9 = objc_opt_new();
  if (v6)
  {
    v10 = v6[4];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [(_ICLLQueryMessage *)v11 setPlaybackSyncState:v9];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__ICLiveLink_fetchPlaybackSyncStateWithCompletion___block_invoke;
  v14[3] = &unk_1E7BF5238;
  v14[4] = self;
  v15 = v4;
  v12 = v4;
  [(ICLiveLink *)self sendMessage:v6 completion:v14];
}

void __51__ICLiveLink_fetchPlaybackSyncStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5)
    {
      v8 = v5[4];
      v9 = v8;
      if (v8)
      {
        v10 = *(v8 + 3);
LABEL_7:
        v11 = v10;

        v12 = *(*(a1 + 32) + 88);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __51__ICLiveLink_fetchPlaybackSyncStateWithCompletion___block_invoke_2;
        v15[3] = &unk_1E7BF9EC8;
        v13 = *(a1 + 40);
        v16 = v11;
        v17 = v13;
        v14 = v11;
        dispatch_async(v12, v15);

        goto LABEL_8;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = 0;
    goto LABEL_7;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v6);
  }

LABEL_8:
}

- (void)fetchPlaybackSyncStateForMediumWithCompletion:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 52) |= 1u;
    *(v5 + 48) = 4;
    v7 = objc_opt_new();
    [(_ICLLProtocolMessage *)v6 setQuery:v7];

    v8 = v6[4];
    if (v8)
    {
      v8[48] |= 1u;
      *(v8 + 8) = 2;
    }
  }

  else
  {
    v26 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setQuery:v26];

    v8 = 0;
  }

  v9 = objc_opt_new();
  if (v6)
  {
    v10 = v6[4];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [(_ICLLQueryMessage *)v11 setPlaybackSyncState:v9];

  if (self->_expectingToJoinStartItemIdentifier)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      expectingToJoinStartItemIdentifier = self->_expectingToJoinStartItemIdentifier;
      expectingToJoinAsInitiator = self->_expectingToJoinAsInitiator;
      *buf = 134218498;
      v30 = self;
      v31 = 2114;
      v32 = expectingToJoinStartItemIdentifier;
      v33 = 1024;
      v34 = expectingToJoinAsInitiator;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "ILL %p: fetchPlaybackSyncStateForMedium [first AV sync] initialAVSyncStartItem=%{public}@ initialAVSyncInitiator=%{BOOL}u", buf, 0x1Cu);
    }

    if (v6 && (v15 = self->_expectingToJoinStartItemIdentifier, (v16 = v6[4]) != 0))
    {
      v17 = v16;
      v18 = v16[3];
      v19 = v18;
      if (v18)
      {
        objc_storeStrong(v18 + 2, v15);
      }
    }

    else if (!v6)
    {
      goto LABEL_22;
    }

    v20 = self->_expectingToJoinAsInitiator;
    v21 = v6[4];
    if (v21)
    {
      v22 = v21;
      v23 = v21[3];
      if (v23)
      {
        v23[44] |= 1u;
        v23[40] = v20;
      }

      goto LABEL_17;
    }

LABEL_22:
    v23 = 0;
    v22 = 0;
LABEL_17:

    v24 = self->_expectingToJoinStartItemIdentifier;
    self->_expectingToJoinStartItemIdentifier = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __60__ICLiveLink_fetchPlaybackSyncStateForMediumWithCompletion___block_invoke;
  v27[3] = &unk_1E7BF5238;
  v27[4] = self;
  v28 = v4;
  v25 = v4;
  [(ICLiveLink *)self sendMessage:v6 completion:v27];
}

void __60__ICLiveLink_fetchPlaybackSyncStateForMediumWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5)
    {
      v8 = v5[4];
      v9 = v8;
      if (v8)
      {
        v10 = *(v8 + 3);
LABEL_7:
        v11 = v10;

        v12 = *(*(a1 + 32) + 88);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __60__ICLiveLink_fetchPlaybackSyncStateForMediumWithCompletion___block_invoke_2;
        v15[3] = &unk_1E7BF9EC8;
        v13 = *(a1 + 40);
        v16 = v11;
        v17 = v13;
        v14 = v11;
        dispatch_async(v12, v15);

        goto LABEL_8;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = 0;
    goto LABEL_7;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v6);
  }

LABEL_8:
}

- (ICSharedListeningQueue)queue
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_queue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)participants
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_participants;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (ICLiveLinkIdentity)identity
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_participants;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([v9 serverID] == self->_localParticipantServerID)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v9;

    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v10 = self->_clientSpecifiedIdentity;
LABEL_12:
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)expectingToJoinWithStartItem:(id)a3 asInitiator:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218498;
    v10 = self;
    v11 = 2114;
    v12 = v6;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "ILL %p: expectingToJoin startItem=%{public}@ asInitiator=%{BOOL}u", &v9, 0x1Cu);
  }

  expectingToJoinStartItemIdentifier = self->_expectingToJoinStartItemIdentifier;
  self->_expectingToJoinStartItemIdentifier = v6;

  self->_expectingToJoinAsInitiator = v4;
}

- (void)updateWithIdentity:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(ICLiveLinkIdentity *)self->_clientSpecifiedIdentity externalIdentifier];
  v6 = [v4 externalIdentifier];
  if (v5 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  v8 = [v4 copy];
  clientSpecifiedIdentity = self->_clientSpecifiedIdentity;
  self->_clientSpecifiedIdentity = v8;

  started = self->_started;
  v11 = [(ICLiveLinkIdentity *)self->_clientSpecifiedIdentity externalIdentifier];
  os_unfair_lock_unlock(&self->_lock);
  if (started && (v7 & 1) == 0)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 134218242;
      v32 = self;
      v33 = 2114;
      v34 = v11;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "ILL %p: Notifying server of updated externalID: %{public}@", &v31, 0x16u);
    }

    v13 = objc_opt_new();
    v14 = v13;
    if (v13)
    {
      *(v13 + 52) |= 1u;
      *(v13 + 48) = 1;
      v15 = objc_opt_new();
      [(_ICLLProtocolMessage *)v14 setCommand:v15];

      v16 = v14[2];
      if (v16)
      {
        v16[104] |= 1u;
        *(v16 + 6) = 8;
      }
    }

    else
    {
      v30 = objc_opt_new();
      [(_ICLLProtocolMessage *)0 setCommand:v30];

      v16 = 0;
    }

    v17 = objc_opt_new();
    if (v14)
    {
      v18 = v14[2];
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    [(_ICLLCommandMessage *)v19 setClientInfo:v17];

    v20 = [(ICLiveLink *)self connectionController];
    v21 = [v20 sessionToken];
    if (v14)
    {
      v22 = v14[2];
      v23 = v22;
      if (v22)
      {
        v24 = *(v22 + 2);
        goto LABEL_16;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = 0;
LABEL_16:
    v25 = v24;
    [(_ICLLClientInfoCommand *)v25 setSharedSessionToken:v21];

    if (v14)
    {
      v26 = v14[2];
      v27 = v26;
      if (v26)
      {
        v28 = *(v26 + 2);
LABEL_19:
        v29 = v28;
        [(_ICLLClientInfoCommand *)v29 setExternalId:v11];

        [(ICLiveLink *)self sendMessage:v14 completion:&__block_literal_global_76];
        goto LABEL_20;
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = 0;
    goto LABEL_19;
  }

LABEL_20:
}

- (void)broadcastDirectCurrentItemChangedToItemIdentifier:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 52) |= 1u;
    *(v5 + 48) = 1;
    v7 = objc_opt_new();
    [(_ICLLProtocolMessage *)v6 setCommand:v7];

    v8 = v6[2];
    if (v8)
    {
      v8[104] |= 1u;
      *(v8 + 6) = 5;
    }
  }

  else
  {
    v18 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setCommand:v18];

    v8 = 0;
  }

  v9 = objc_opt_new();
  if (v6)
  {
    v10 = v6[2];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v9;
  if (v11)
  {
    [(_ICLLCommandMessage *)v11 clearOneofValuesForCommand];
    *(v11 + 104) |= 1u;
    *(v11 + 6) = 5;
    objc_storeStrong(v11 + 4, v9);
  }

  if (v6 && (v13 = v6[2]) != 0)
  {
    v14 = v13;
    v15 = v13[4];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 1, a3);
    }
  }

  else
  {
    v16 = 0;
    v14 = 0;
  }

  v17 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v21 = self;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "ILL %p: broadcastDirectCurrentItemChangedToItemIdentifier itemId=%{public}@", buf, 0x16u);
  }

  [(ICLiveLink *)self sendMessage:v6 completion:&__block_literal_global_12547];
}

- (void)endSynchronizedPlayback
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "ILL %p: ending playback sync", &v5, 0xCu);
  }

  [(ICLiveLinkPlaybackCoordinatorMedium *)self->_playbackCoordinatorMedium clearCoordinationMediumDelegate];
  playbackCoordinatorMedium = self->_playbackCoordinatorMedium;
  self->_playbackCoordinatorMedium = 0;
}

- (void)beginSynchronizedPlaybackWithAVCFPlaybackCoordinator:(void *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "ILL %p: failed to begin playback sync with AVCFPlaybackCoordinator [ICLiveLink compiled without AVCFPlaybackCoordinator.h]", &v5, 0xCu);
  }
}

- (void)beginSynchronizedPlaybackWithAVPlaybackCoordinator:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_playbackCoordinatorMedium)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  playbackCoordinatorMedium = self->_playbackCoordinatorMedium;
  v6 = [(ICLiveLinkPlaybackCoordinatorMedium *)playbackCoordinatorMedium playbackCoordinator];

  if (v6 != v4)
  {

LABEL_5:
    v7 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      v11 = self;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "ILL %p: beginning playback sync with coordinator: %{public}@", &v10, 0x16u);
    }

    v8 = [[ICLinkLinkAVPlaybackCoordinatorMedium alloc] initWithPlaybackCoordinator:v4 liveLink:self];
    playbackCoordinatorMedium = self->_playbackCoordinatorMedium;
    self->_playbackCoordinatorMedium = &v8->super;
    goto LABEL_8;
  }

  v9 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = self;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "ILL %p: already syncing playback with coordinator: %{public}@", &v10, 0x16u);
  }

LABEL_8:
}

- (void)reconnectWithReason:(id)a3 options:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = self;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "ILL %p: forcing reconnect because: %{public}@", &v9, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(ICLiveLink *)self forcedReconnectReason];

  if (v7)
  {
    [(ICLiveLink *)self setDeferredReconnectReason:v5];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(ICLiveLink *)self setCurrentRetryCount:0];
    [(ICLiveLink *)self setForcedReconnectReason:v5];
    os_unfair_lock_unlock(&self->_lock);
    v8 = [(ICLiveLink *)self connectionController];
    [v8 stop];
  }
}

- (void)stop
{
  os_unfair_lock_lock(&self->_lock);
  started = self->_started;
  [(ICLiveLink *)self setStarted:0];
  [(ICLiveLink *)self setStarting:0];
  v4 = [(ICLiveLink *)self connectionController];
  [v4 stop];

  [(ICLiveLink *)self setConnectionController:0];
  [(ICLiveLink *)self setForcedReconnectReason:0];
  [(ICLiveLink *)self setDeferredReconnectReason:0];
  os_unfair_lock_unlock(&self->_lock);
  if (started)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v6 = [(ICLiveLink *)self delegateQueue];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __18__ICLiveLink_stop__block_invoke;
      v7[3] = &unk_1E7BFA078;
      v8 = WeakRetained;
      v9 = self;
      dispatch_async(v6, v7);
    }
  }
}

- (void)start
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(ICLiveLink *)self isStarted])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:372 description:@"Attempted to start an already started live link"];
  }

  v4 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    v19 = self;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "ILL %p: Starting.", &v18, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(ICLiveLink *)self setStarting:1];
  v5 = [(ICLiveLink *)self connectionController];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileipod"];
    v7 = [v6 BOOLForKey:@"forceExternalQR"];

    if (v7)
    {
      v8 = [(ICLiveLink *)self identifier];
      v9 = [(ICLiveLink *)self clientSpecifiedIdentity];
      v10 = [MEMORY[0x1E696AAE8] mainBundle];
      v11 = [v10 bundleIdentifier];
    }

    else
    {
      v12 = [MEMORY[0x1E69B1418] hasBoolEntitlement:@"com.apple.itunescloud.quic.inprocess"];
      v8 = [(ICLiveLink *)self identifier];
      v9 = [(ICLiveLink *)self clientSpecifiedIdentity];
      v10 = [MEMORY[0x1E696AAE8] mainBundle];
      v11 = [v10 bundleIdentifier];
      if (v12)
      {
        v13 = [ICSharedListeningConnectionController sharedListeningConnectionWithSessionIdentifier:v8 identity:v9 bundleID:v11];
LABEL_11:
        v14 = v13;
        [(ICLiveLink *)self setConnectionController:v13];

        v15 = [(ICLiveLink *)self connectionController];
        [v15 setDelegate:self];

        v16 = [(ICLiveLink *)self connectionController];
        [v16 start];

        goto LABEL_12;
      }
    }

    v13 = [ICSharedListeningConnectionController externalSharedListeningConnectionWithSessionIdentifier:v8 identity:v9 bundleID:v11];
    goto LABEL_11;
  }

LABEL_12:
  os_unfair_lock_unlock(&self->_lock);
}

- (NSURL)invitationURL
{
  v2 = [(ICLiveLink *)self connectionController];
  v3 = [v2 inviteURL];

  return v3;
}

- (BOOL)isStarted
{
  os_unfair_lock_lock(&self->_lock);
  started = self->_started;
  os_unfair_lock_unlock(&self->_lock);
  return started;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "ILL %p: Deallocating.", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = ICLiveLink;
  [(ICLiveLink *)&v4 dealloc];
}

- (ICLiveLink)initWithSharedListeningSessionIdentifier:(id)a3 identity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = ICLiveLink;
  v8 = [(ICLiveLink *)&v27 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    clientSpecifiedIdentity = v8->_clientSpecifiedIdentity;
    v8->_clientSpecifiedIdentity = v11;

    v8->_currentRetryCount = 0;
    v8->_started = 0;
    *&v8->_starting = 0;
    v13 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileipod"];
    v14 = [v13 integerForKey:@"LiveLinkMaxRetries"];

    v15 = 3;
    if (v14 > 3)
    {
      v15 = v14;
    }

    v8->_maxRetries = v15;
    v16 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileipod"];
    v17 = [v16 integerForKey:@"LiveLinkMaxRetryWaitPeriod"];

    v18 = 2;
    if (v17 > 2)
    {
      v18 = v17;
    }

    v8->_maxRetryWaitPeriod = v18;
    v8->_lock._os_unfair_lock_opaque = 0;
    v19 = [MEMORY[0x1E695DF90] dictionary];
    pendingRequests = v8->_pendingRequests;
    v8->_pendingRequests = v19;

    v21 = [MEMORY[0x1E695DF70] array];
    pendingActions = v8->_pendingActions;
    v8->_pendingActions = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.amp.MediaServices.LiveLink.delegateQueue", v23);
    delegateQueue = v8->_delegateQueue;
    v8->_delegateQueue = v24;
  }

  return v8;
}

+ (ICLiveLink)linkWithSessionIdentifier:(id)a3 identity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ICLiveLink alloc] initWithSharedListeningSessionIdentifier:v6 identity:v5];

  return v7;
}

+ (ICLiveLink)linkWithIdentity:(id)a3
{
  v3 = a3;
  v4 = [[ICLiveLink alloc] initWithSharedListeningSessionIdentifier:0 identity:v3];

  return v4;
}

@end