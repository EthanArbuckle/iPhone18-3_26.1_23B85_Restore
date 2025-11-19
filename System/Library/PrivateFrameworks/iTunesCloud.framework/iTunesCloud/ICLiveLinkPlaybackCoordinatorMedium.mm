@interface ICLiveLinkPlaybackCoordinatorMedium
- (ICLiveLink)liveLink;
- (ICLiveLinkPlaybackCoordinatorMedium)initWithLiveLink:(id)a3;
- (void)_broadcastLocalParticipantStateDictionary:(id)a3;
- (void)_broadcastTransportControlStateDictionary:(id)a3 forItemWithIdentifier:(id)a4;
- (void)_reloadTransportControlStateForItemWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)clearCoordinationMediumDelegate;
- (void)handleNewParticipantStateDictionary:(id)a3;
- (void)handleNewTransportControlStateDictionary:(id)a3;
- (void)handlePlaybackSyncPayload:(id)a3;
- (void)removeParticipant:(id)a3;
- (void)synchronizePlaybackStateForReason:(id)a3;
@end

@implementation ICLiveLinkPlaybackCoordinatorMedium

- (ICLiveLink)liveLink
{
  WeakRetained = objc_loadWeakRetained(&self->_liveLink);

  return WeakRetained;
}

- (void)_reloadTransportControlStateForItemWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(ICLiveLinkPlaybackCoordinatorMedium *)self liveLink];
  os_unfair_lock_lock(&self->_fetchServerStateLock);
  if (self->_fetchServerStateInProgressCount && ([v8 isExpectingToJoinWithStartItem] & 1) == 0)
  {
    fetchServerStateCompletions = self->_fetchServerStateCompletions;
    v11 = MEMORY[0x1B8C781E0](v7);
    [(NSMutableArray *)fetchServerStateCompletions addObject:v11];

    os_unfair_lock_unlock(&self->_fetchServerStateLock);
    v12 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = self;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "MLLM %p: reloadTransportControlStateForItemWithIdentifier enqueuing completion handler [fetch server state in progress]", buf, 0xCu);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_fetchServerStateLock);
    v9 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v17 = self;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "MLLM %p: reloadTransportControlStateForItemWithIdentifier calling fetching item state [coordinator requested] itemID=%{public}@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __107__ICLiveLinkPlaybackCoordinatorMedium__reloadTransportControlStateForItemWithIdentifier_completionHandler___block_invoke;
    v13[3] = &unk_1E7BF4BC0;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    [v8 fetchPlaybackSyncStateForMediumWithCompletion:v13];
  }
}

void __107__ICLiveLinkPlaybackCoordinatorMedium__reloadTransportControlStateForItemWithIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 134218242;
      v32 = v7;
      v33 = 2114;
      v34 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "MLLM %p: reloadTransportControlStateForItemWithIdentifier [fetch request failed] error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    if (a2)
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = 0;
    }

    v6 = v8;
    v9 = [v6 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        v12 = v6;
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v12);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [v14 dataUsingEncoding:4];
          v26 = 0;
          v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:&v26];
          v17 = v26;
          if (v17)
          {
            v18 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = *(a1 + 32);
              v20 = *(a1 + 40);
              *buf = 134218754;
              v32 = v19;
              v33 = 2114;
              v34 = v20;
              v35 = 2114;
              v36 = v17;
              v37 = 2114;
              v38 = v14;
              _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "MLLM %p: reloadTransportControlStateForItemWithIdentifier [invalid JSON] itemID=%{public}@ error=%{public}@ transportControlStateString=%{public}@", buf, 0x2Au);
            }
          }

          else
          {
            v21 = [v16 objectForKeyedSubscript:@"Identifier"];
            v22 = [v21 isEqual:*(a1 + 40)];

            if (v22)
            {
              v23 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = *(a1 + 32);
                v25 = *(a1 + 40);
                *buf = 134218498;
                v32 = v24;
                v33 = 2114;
                v34 = v25;
                v35 = 2114;
                v36 = v16;
                _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_DEFAULT, "MLLM %p: reloadTransportControlStateForItemWithIdentifier [importing] itemID=%{public}@ transportControlState=%{public}@", buf, 0x20u);
              }

              [*(a1 + 32) handleNewTransportControlStateDictionary:v16];
            }
          }
        }

        v6 = v12;
        v10 = [v12 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v10);
      v5 = 0;
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_broadcastTransportControlStateDictionary:(id)a3 forItemWithIdentifier:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v14 = self;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "MLLM %p: broadcastTransportControlStateDictionary [AVPlaybackCoordination] itemID=%{public}@ tcs=%{public}@", buf, 0x20u);
  }

  v9 = [(ICLiveLinkPlaybackCoordinatorMedium *)self liveLink];
  v11 = @"ICLiveLinkTransportControlStateKey";
  v12 = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v9 sendPlaybackSyncPayload:v10];
}

- (void)_broadcastLocalParticipantStateDictionary:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ICLiveLinkPlaybackCoordinatorMedium *)self liveLink];
  v7 = @"ICLiveLinkPlaybackSyncParticipantStateKey";
  v8[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  [v5 sendPlaybackSyncPayload:v6];
}

- (void)clearCoordinationMediumDelegate
{
  v4 = [ICLiveLinkPlaybackCoordinatorMedium instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    [v8 handleFailureInMethod:a2 object:self file:@"ICLiveLinkPlaybackCoordinatorMedium.m" lineNumber:176 description:{@"Subclass %@ must implement -%@ defined in %@.", v6, v7, @"ICLiveLinkPlaybackCoordinatorMedium"}];
  }
}

- (void)synchronizePlaybackStateForReason:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_fetchServerStateLock);
  ++self->_fetchServerStateInProgressCount;
  os_unfair_lock_unlock(&self->_fetchServerStateLock);
  v5 = [(ICLiveLinkPlaybackCoordinatorMedium *)self liveLink];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__ICLiveLinkPlaybackCoordinatorMedium_synchronizePlaybackStateForReason___block_invoke;
  v7[3] = &unk_1E7BF4B98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchPlaybackSyncStateWithCompletion:v7];
}

void __73__ICLiveLinkPlaybackCoordinatorMedium_synchronizePlaybackStateForReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  --*(*(a1 + 32) + 32);
  v7 = [*(*(a1 + 32) + 40) copy];
  [*(*(a1 + 32) + 40) removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __73__ICLiveLinkPlaybackCoordinatorMedium_synchronizePlaybackStateForReason___block_invoke_2;
  v77[3] = &unk_1E7BFA078;
  v8 = v7;
  v9 = *(a1 + 32);
  v78 = v8;
  v79 = v9;
  v10 = MEMORY[0x1B8C781E0](v77);
  v11 = v10;
  v64 = v5;
  if (v6)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 134218242;
      v82 = v13;
      v83 = 2114;
      v84 = v6;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "MLLM %p: _loadInitialPlaybackSyncData [request failed] error=%{public}@", buf, 0x16u);
    }

    v11[2](v11);
    goto LABEL_57;
  }

  v76 = 0u;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v61 = v8;
  v60 = v10;
  if (v5)
  {
    v14 = v5[3];
  }

  else
  {
    v14 = 0;
  }

  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v73 objects:v89 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v74;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v74 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v73 + 1) + 8 * i);
        v20 = [v19 dataUsingEncoding:4];
        v72 = 0;
        v21 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v20 options:0 error:&v72];
        v22 = v72;
        v23 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
        v24 = v23;
        if (v22)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v25 = *(a1 + 32);
            v26 = *(a1 + 40);
            *buf = 134218754;
            v82 = v25;
            v83 = 2114;
            v84 = v26;
            v85 = 2114;
            v86 = v22;
            v87 = 2114;
            v88 = v19;
            _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_ERROR, "MLLM %p: synchronizePlaybackState [invalid JSON] reason=%{public}@ error=%{public}@ participantStateString=%{public}@", buf, 0x2Au);
          }
        }

        else
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(a1 + 32);
            v28 = *(a1 + 40);
            *buf = 134218498;
            v82 = v27;
            v83 = 2114;
            v84 = v28;
            v85 = 2114;
            v86 = v21;
            _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "MLLM %p: synchronizePlaybackState [importing] reason=%{public}@ participantState=%{public}@", buf, 0x20u);
          }

          [*(a1 + 32) handleNewParticipantStateDictionary:v21];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v73 objects:v89 count:16];
    }

    while (v16);
  }

  if (v64)
  {
    v29 = v64[1];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v30 = v64[4];
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
  }

  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v32)
  {
    v33 = v32;
    v63 = 0;
    v62 = 0;
    v34 = *v69;
    obja = v31;
    do
    {
      v35 = 0;
      do
      {
        if (*v69 != v34)
        {
          objc_enumerationMutation(obja);
        }

        v36 = *(*(&v68 + 1) + 8 * v35);
        v37 = [v36 dataUsingEncoding:4];
        v67 = 0;
        v38 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v37 options:0 error:&v67];
        v39 = v67;
        if (v39)
        {
          v40 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = *(a1 + 32);
            v42 = *(a1 + 40);
            *buf = 134218754;
            v82 = v41;
            v83 = 2114;
            v84 = v42;
            v85 = 2114;
            v86 = v39;
            v87 = 2114;
            v88 = v36;
            _os_log_impl(&dword_1B4491000, v40, OS_LOG_TYPE_ERROR, "MLLM %p: synchronizePlaybackState [invalid JSON] reason=%{public}@ error=%{public}@ transportControlStateString=%{public}@", buf, 0x2Au);
          }
        }

        else
        {
          if (v64)
          {
            v43 = v64[1];
          }

          else
          {
            v43 = 0;
          }

          v44 = v43;

          if (!v44)
          {
            v45 = [v38 objectForKeyedSubscript:@"LamportTimestamp"];
            v46 = [v45 integerValue];

            if (v46 > v63)
            {
              v47 = [v38 objectForKeyedSubscript:@"Identifier"];
              if ([v47 length])
              {
                v48 = v47;
                v49 = v29;
                v29 = v48;

                v62 = 1;
                v63 = v46;
              }
            }
          }

          v50 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = *(a1 + 32);
            v52 = *(a1 + 40);
            *buf = 134218498;
            v82 = v51;
            v83 = 2114;
            v84 = v52;
            v85 = 2114;
            v86 = v38;
            _os_log_impl(&dword_1B4491000, v50, OS_LOG_TYPE_DEFAULT, "MLLM %p: synchronizePlaybackState [importing] reason=%{public}@ transportControlState=%{public}@", buf, 0x20u);
          }

          [*(a1 + 32) handleNewTransportControlStateDictionary:v38];
        }

        ++v35;
      }

      while (v33 != v35);
      v53 = [obja countByEnumeratingWithState:&v68 objects:v80 count:16];
      v33 = v53;
    }

    while (v53);

    if ((v62 & 1) == 0)
    {
      v8 = v61;
      v6 = 0;
      v11 = v60;
      goto LABEL_52;
    }

    v31 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
    v8 = v61;
    v6 = 0;
    v11 = v60;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v54 = *(a1 + 32);
      v55 = *(a1 + 40);
      *buf = 134218498;
      v82 = v54;
      v83 = 2114;
      v84 = v55;
      v85 = 2114;
      v86 = v29;
      _os_log_impl(&dword_1B4491000, v31, OS_LOG_TYPE_DEFAULT, "MLLM %p: synchronizePlaybackState [computed local currentItemID] reason=%{public}@ currentItemID=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v6 = 0;
    v11 = v60;
  }

LABEL_52:
  if ([v29 length])
  {
    v56 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = *(a1 + 32);
      v58 = *(a1 + 40);
      *buf = 134218498;
      v82 = v57;
      v83 = 2114;
      v84 = v58;
      v85 = 2114;
      v86 = v29;
      _os_log_impl(&dword_1B4491000, v56, OS_LOG_TYPE_DEFAULT, "MLLM %p: synchronizePlaybackState [importing] reason=%{public}@ currentItemID=%{public}@", buf, 0x20u);
    }

    v59 = [*(a1 + 32) liveLink];
    [v59 receivedCurrentItemIdentifier:v29 fromParticipant:0];
  }

  v11[2](v11);

LABEL_57:
}

void __73__ICLiveLinkPlaybackCoordinatorMedium_synchronizePlaybackStateForReason___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 32) count];
      *buf = 134218240;
      v16 = v3;
      v17 = 2048;
      v18 = v4;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "MLLM %p: synchronizePlaybackStateForReason [flushing pending completions] completionCount=%ld", buf, 0x16u);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)handleNewTransportControlStateDictionary:(id)a3
{
  v5 = [ICLiveLinkPlaybackCoordinatorMedium instanceMethodForSelector:a2];
  if (v5 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    [v9 handleFailureInMethod:a2 object:self file:@"ICLiveLinkPlaybackCoordinatorMedium.m" lineNumber:94 description:{@"Subclass %@ must implement -%@ defined in %@.", v7, v8, @"ICLiveLinkPlaybackCoordinatorMedium"}];
  }
}

- (void)handleNewParticipantStateDictionary:(id)a3
{
  v5 = [ICLiveLinkPlaybackCoordinatorMedium instanceMethodForSelector:a2];
  if (v5 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    [v9 handleFailureInMethod:a2 object:self file:@"ICLiveLinkPlaybackCoordinatorMedium.m" lineNumber:90 description:{@"Subclass %@ must implement -%@ defined in %@.", v7, v8, @"ICLiveLinkPlaybackCoordinatorMedium"}];
  }
}

- (void)removeParticipant:(id)a3
{
  v5 = [ICLiveLinkPlaybackCoordinatorMedium instanceMethodForSelector:a2];
  if (v5 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    [v9 handleFailureInMethod:a2 object:self file:@"ICLiveLinkPlaybackCoordinatorMedium.m" lineNumber:86 description:{@"Subclass %@ must implement -%@ defined in %@.", v7, v8, @"ICLiveLinkPlaybackCoordinatorMedium"}];
  }
}

- (void)handlePlaybackSyncPayload:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ICLiveLinkPlaybackSyncParticipantStateKey"];
  v6 = [v4 objectForKeyedSubscript:@"ICLiveLinkTransportControlStateKey"];
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      if (_NSIsNSDictionary())
      {
        [(ICLiveLinkPlaybackCoordinatorMedium *)self handleNewTransportControlStateDictionary:v7];
        goto LABEL_15;
      }

      v8 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 134218243;
        v11 = self;
        v12 = 2113;
        v13 = v7;
        v9 = "MLLM %p: ignoring transport control state of unknown form %{private}@";
        goto LABEL_13;
      }
    }

    else
    {
      v8 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 134218243;
        v11 = self;
        v12 = 2113;
        v13 = v4;
        v9 = "MLLM %p: no state found in sync payload %{private}@";
        goto LABEL_13;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!_NSIsNSDictionary())
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 134218243;
      v11 = self;
      v12 = 2113;
      v13 = v5;
      v9 = "MLLM %p: ignoring participant state of unknown form %{private}@";
LABEL_13:
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, v9, &v10, 0x16u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  [(ICLiveLinkPlaybackCoordinatorMedium *)self handleNewParticipantStateDictionary:v5];
LABEL_15:
}

- (ICLiveLinkPlaybackCoordinatorMedium)initWithLiveLink:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ICLiveLinkPlaybackCoordinatorMedium;
  v5 = [(ICLiveLinkPlaybackCoordinatorMedium *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_liveLink, v4);
    v7 = [v4 identity];
    v8 = [v7 identifier];
    localParticipantUUID = v6->_localParticipantUUID;
    v6->_localParticipantUUID = v8;

    if (!v6->_localParticipantUUID)
    {
      v10 = [MEMORY[0x1E696AFB0] UUID];
      v11 = v6->_localParticipantUUID;
      v6->_localParticipantUUID = v10;

      v12 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v6->_localParticipantUUID;
        *buf = 134218242;
        v19 = v6;
        v20 = 2114;
        v21 = v13;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "MLLM %p: playback sync initialized without a server defined local participant UUID: locallyGeneratedUUID=%{public}@", buf, 0x16u);
      }
    }

    v6->_fetchServerStateLock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fetchServerStateCompletions = v6->_fetchServerStateCompletions;
    v6->_fetchServerStateCompletions = v14;
  }

  return v6;
}

@end