@interface ICSharedListeningQueue
- (BOOL)hasActiveRadioStation;
- (BOOL)isAutoPlayAvailable;
- (BOOL)isAutoPlayEnabled;
- (ICLiveLink)liveLink;
- (ICSharedListeningQueue)initWithProtobuf:(id)a3 serverQueueContext:(id)a4 liveLink:(id)a5 playbackControlSettings:(id)a6;
- (id)_itemForIdentifier:(id)a3 outIndexPath:(id *)a4;
- (id)_playbackItemProtosForTracklist:(id)a3 withPreferredStartItemIndexPath:(id)a4;
- (id)_tracklistForQueueProto:(id)a3;
- (id)containerForIdentifier:(id)a3;
- (int64_t)_afterItemPositionForItemIdentifier:(id)a3;
- (void)_detectTrackGenerationSourceForTracklist:(id)a3 detectedCompletion:(id)a4;
- (void)addMediaIdentifiers:(id)a3 afterItemIdentifier:(id)a4;
- (void)getExpectedCurrentItemWithCompletion:(id)a3;
- (void)insertTracklist:(id)a3 afterItemIdentifier:(id)a4 completion:(id)a5;
- (void)insertTracklist:(id)a3 afterItemIdentifier:(id)a4 playNowWithPreferredStartIndexPath:(id)a5 completion:(id)a6;
- (void)insertTracklist:(id)a3 afterItemIdentifier:(id)a4 playNowWithPreferredStartIndexPath:(id)a5 completionEx:(id)a6;
- (void)insertTracklist:(id)a3 atPosition:(id)a4 completion:(id)a5;
- (void)insertTracklist:(id)a3 atPosition:(id)a4 completionEx:(id)a5;
- (void)moveItemIdentifier:(id)a3 afterItemIdentifier:(id)a4;
- (void)moveItemIdentifier:(id)a3 beforeItemIdentifier:(id)a4;
- (void)removeAllItemIdentifiersAfterItemIdentifier:(id)a3;
- (void)removeItemIdentifier:(id)a3;
- (void)removeItemIdentifiers:(id)a3;
- (void)replaceTracklist:(id)a3 preferredStartIndexPath:(id)a4 completion:(id)a5;
- (void)setAutoPlayEnabled:(BOOL)a3 completion:(id)a4;
@end

@implementation ICSharedListeningQueue

- (ICLiveLink)liveLink
{
  WeakRetained = objc_loadWeakRetained(&self->_liveLink);

  return WeakRetained;
}

- (id)_tracklistForQueueProto:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69B1458]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  if (v3)
  {
    v5 = v3[6];
  }

  else
  {
    v5 = 0;
  }

  obj = v5;
  v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  v29 = v3;
  v6 = 0;
  if (v33)
  {
    v31 = *v35;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [ICSharedListeningItem alloc];
        WeakRetained = objc_loadWeakRetained(&self->_liveLink);
        v12 = WeakRetained;
        if (v8)
        {
          v13 = *(v8 + 8);
        }

        else
        {
          v13 = 0;
        }

        v14 = [WeakRetained _participantForParticipantID:v13];
        v15 = [(ICSharedListeningItem *)v10 initWithProtobuf:v8 identity:v14];

        v16 = [v6 identifier];
        if (v8)
        {
          v17 = *(v8 + 16);
          v18 = v17;
          if (v17)
          {
            v19 = *(v17 + 1);
            goto LABEL_13;
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = 0;
LABEL_13:
        v20 = v19;
        v21 = [v16 isEqual:v20];

        if ((v21 & 1) == 0)
        {
          v22 = [ICSharedListeningContainer alloc];
          if (v8)
          {
            v23 = *(v8 + 16);
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;
          v25 = [(ICSharedListeningContainer *)v22 initWithProtobuf:v24];

          [v4 appendSection:v25];
          v6 = v25;
        }

        [v4 appendItem:v15];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v33 != v7);
      v26 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v33 = v26;
    }

    while (v26);
  }

  v27 = [v4 copy];

  return v27;
}

- (void)_detectTrackGenerationSourceForTracklist:(id)a3 detectedCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__12417;
  v18 = __Block_byref_object_dispose__12418;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__12417;
  v12 = __Block_byref_object_dispose__12418;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__ICSharedListeningQueue__detectTrackGenerationSourceForTracklist_detectedCompletion___block_invoke;
  v7[3] = &unk_1E7BF5490;
  v7[4] = &v14;
  v7[5] = &v8;
  [v5 reverseEnumerateSectionsUsingBlock:v7];
  v6[2](v6, v15[5], v9[5]);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __86__ICSharedListeningQueue__detectTrackGenerationSourceForTracklist_detectedCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = a2;
  if ([v23 kind] != 2)
  {
    if ([v23 kind] != 5)
    {
      goto LABEL_18;
    }

    v14 = objc_opt_new();
    v15 = *(*(a1 + 40) + 8);
    v12 = *(v15 + 40);
    *(v15 + 40) = v14;
    goto LABEL_16;
  }

  v6 = objc_opt_new();
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v23 featureName];
  v10 = *(*(*(a1 + 32) + 8) + 40);
  if (v10)
  {
    objc_storeStrong((v10 + 8), v9);
  }

  v11 = [v23 mediaIdentifier];

  if (v11)
  {
    v12 = [v23 mediaIdentifier];
    v13 = *(*(*(a1 + 32) + 8) + 40);
    if (v13)
    {
      objc_storeStrong((v13 + 24), v12);
    }

LABEL_16:

    goto LABEL_17;
  }

  v16 = [v23 seedItem];

  if (v16)
  {
    v17 = objc_opt_new();
    v18 = *(*(*(a1 + 32) + 8) + 40);
    if (v18)
    {
      objc_storeStrong((v18 + 16), v17);
    }

    v12 = [v23 seedItem];
    v19 = [v12 mediaIdentifier];
    v20 = *(*(*(a1 + 32) + 8) + 40);
    if (v20)
    {
      v21 = *(v20 + 16);
      v22 = v21;
      if (v21)
      {
        objc_storeStrong(v21 + 1, v19);
      }
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_16;
  }

LABEL_17:
  *a4 = 1;
LABEL_18:
}

- (id)_playbackItemProtosForTracklist:(id)a3 withPreferredStartItemIndexPath:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 msv_section];
  v9 = [v7 msv_item];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = -1;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "totalItemCount")}];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __90__ICSharedListeningQueue__playbackItemProtosForTracklist_withPreferredStartItemIndexPath___block_invoke;
  v26 = &unk_1E7BF5468;
  v11 = v6;
  v27 = v11;
  v12 = v7;
  v31 = v8;
  v32 = v9;
  v28 = v12;
  v30 = v33;
  v13 = v10;
  v29 = v13;
  [v11 enumerateSectionsUsingBlock:&v23];
  v14 = v13;
  v15 = v14;
  if ([v14 count] >= 0x7D1)
  {
    if (v9 > 99)
    {
      v18 = v9 - [v14 count];
      if (v18 <= -1901)
      {
        v18 = -1901;
      }

      v19 = v18 + 2000;
      if (v19 <= 99)
      {
        v19 = 99;
      }

      v17 = v9 - v19;
      v16 = [v14 subarrayWithRange:{v17, 2000}];
      v15 = [v16 mutableCopy];
    }

    else
    {
      v16 = [v14 subarrayWithRange:{0, 2000}];
      v15 = [v16 mutableCopy];
      v17 = 0;
    }

    v20 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v14 count];
      *buf = 134219008;
      v35 = self;
      v36 = 2048;
      v37 = v21;
      v38 = 1024;
      v39 = 2000;
      v40 = 2048;
      v41 = v17;
      v42 = 2048;
      v43 = v17 + 2000;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "ILL %p: _playbackItemProtosForTracklist: trimming from %ld to %d items. Taking items from indices %ld to %ld.", buf, 0x30u);
    }
  }

  _Block_object_dispose(v33, 8);

  return v15;
}

void __90__ICSharedListeningQueue__playbackItemProtosForTracklist_withPreferredStartItemIndexPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(_ICLLPlaybackItemContainer);
  v7 = [v5 identifier];
  if (v6)
  {
    objc_storeStrong(&v6->_containerId, v7);
  }

  v8 = [v5 kind];
  if ((v8 - 1) > 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_1B47555E8[v8 - 1];
  }

  if (v6)
  {
    *&v6->_has |= 1u;
    v6->_type = v9;
    v10 = [v5 mediaIdentifier];
    objc_storeStrong(&v6->_mediaId, v10);
  }

  else
  {
    v10 = [v5 mediaIdentifier];
  }

  v11 = [v5 featureName];
  if (v6)
  {
    objc_storeStrong(&v6->_featureName, v11);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__ICSharedListeningQueue__playbackItemProtosForTracklist_withPreferredStartItemIndexPath___block_invoke_2;
  v16[3] = &unk_1E7BF5440;
  v17 = v6;
  v12 = *(a1 + 32);
  v18 = *(a1 + 40);
  v20 = a3;
  v15 = *(a1 + 48);
  v21 = *(a1 + 64);
  v13 = v15;
  v19 = v15;
  v14 = v6;
  [v12 enumerateItemsInSectionAtIndex:a3 usingBlock:v16];
}

void __90__ICSharedListeningQueue__playbackItemProtosForTracklist_withPreferredStartItemIndexPath___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = objc_alloc_init(_ICLLPlaybackItem);
  container = [v5 identifier];
  if (v9)
  {
    objc_storeStrong(&v9->_itemId, container);

    v7 = *(a1 + 32);
    container = v9->_container;
    v9->_container = v7;
  }

  v8 = [v5 mediaIdentifier];

  if (v9)
  {
    objc_storeStrong(&v9->_mediaId, v8);
  }

  if (*(a1 + 40) && *(a1 + 64) == *(a1 + 72) && *(a1 + 80) == a3)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) count];
  }

  [*(a1 + 48) addObject:v9];
}

- (id)_itemForIdentifier:(id)a3 outIndexPath:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12417;
  v25 = __Block_byref_object_dispose__12418;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12417;
  v19 = __Block_byref_object_dispose__12418;
  v20 = 0;
  tracklist = self->_tracklist;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__ICSharedListeningQueue__itemForIdentifier_outIndexPath___block_invoke;
  v11[3] = &unk_1E7BF5418;
  v8 = v6;
  v12 = v8;
  v13 = &v21;
  v14 = &v15;
  [(MSVSectionedCollection *)tracklist enumerateItemsUsingBlock:v11];
  if (a4)
  {
    *a4 = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __58__ICSharedListeningQueue__itemForIdentifier_outIndexPath___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = [v11 identifier];
  v10 = [v9 isEqualToString:a1[4]];

  if (v10)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *a4 = 1;
  }
}

- (int64_t)_afterItemPositionForItemIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v12 = 0;
    v6 = [(ICSharedListeningQueue *)self _itemForIdentifier:v5 outIndexPath:&v12];
    v7 = v12;
    if (!v7 || (v8 = v7, v9 = [(MSVSectionedCollection *)self->_tracklist globalIndexForIndexPath:v7]+ 1, v8, v9 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:2512 description:{@"Could not find item to insert after: %@", v5}];

      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)getExpectedCurrentItemWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_liveLink);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__ICSharedListeningQueue_getExpectedCurrentItemWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF53F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [WeakRetained fetchPlaybackSyncStateWithCompletion:v7];
}

void __63__ICSharedListeningQueue_getExpectedCurrentItemWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (a2)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if ([v6 length])
    {
      v7 = [*(a1 + 32) itemForIdentifier:v6];
      if (v7)
      {
        v8 = v7;
        v9 = *(*(a1 + 40) + 16);
LABEL_17:
        v9();

        return;
      }

      v14 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = 134217984;
        v17 = v15;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "ILL %p: getExpectedCurrentItemWithCompletion returning nil [currentItemID not in queue]", &v16, 0xCu);
      }

      v12 = MEMORY[0x1E696ABC0];
      v13 = @"currentItemID from the response is not in queue";
    }

    else
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v16 = 134217984;
        v17 = v11;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "ILL %p: getExpectedCurrentItemWithCompletion returning nil [currentItemID not in PlaybackSyncState]", &v16, 0xCu);
      }

      v12 = MEMORY[0x1E696ABC0];
      v13 = @"received no currentItemID in response";
    }

    v8 = [v12 msv_errorWithDomain:@"ICLiveLinkErrorDomain" code:5 debugDescription:v13];
    v9 = *(*(a1 + 40) + 16);
    goto LABEL_17;
  }

  v4 = *(*(a1 + 40) + 16);

  v4();
}

- (void)moveItemIdentifier:(id)a3 afterItemIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v48 = 0;
  v9 = [(ICSharedListeningQueue *)self _itemForIdentifier:v7 outIndexPath:&v48];
  v10 = v48;
  v11 = [(MSVSectionedCollection *)self->_tracklist globalIndexForIndexPath:v10];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:2405 description:{@"Could not find item to move: %@", v7}];
  }

  if (v8)
  {
    v47 = 0;
    v12 = [(ICSharedListeningQueue *)self _itemForIdentifier:v8 outIndexPath:&v47];
    v13 = v47;
    v14 = [(MSVSectionedCollection *)self->_tracklist globalIndexForIndexPath:v13];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      [v43 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:2432 description:{@"Could not find item to insert after: %@", v8}];
    }

    if (v14 >= v11)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_opt_new();
  v17 = v16;
  if (v16)
  {
    *(v16 + 52) |= 1u;
    *(v16 + 48) = 1;
    v18 = objc_opt_new();
    [(_ICLLProtocolMessage *)v17 setCommand:v18];

    v19 = v17[2];
    if (v19)
    {
      v19[104] |= 1u;
      *(v19 + 6) = 4;
    }
  }

  else
  {
    v44 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setCommand:v44];

    v19 = 0;
  }

  v20 = objc_opt_new();
  if (v17)
  {
    v21 = v17[2];
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  [(_ICLLCommandMessage *)v22 setMoveItem:v20];

  serverQueueContext = self->_serverQueueContext;
  if (!v17)
  {
    v25 = 0;
    goto LABEL_34;
  }

  v24 = v17[2];
  v25 = v24;
  if (!v24)
  {
LABEL_34:
    v26 = 0;
    goto LABEL_19;
  }

  v26 = *(v24 + 6);
LABEL_19:
  v27 = v26;
  [(_ICLLMoveQueueItemCommand *)v27 setQueueContext:?];

  if (v17 && (serverRevision = self->_serverRevision, (v29 = v17[2]) != 0))
  {
    v30 = v29;
    v31 = v29[6];
    if (v31)
    {
      v31[36] |= 2u;
      *(v31 + 8) = serverRevision;
    }
  }

  else if (!v17)
  {
    goto LABEL_36;
  }

  v32 = v17[2];
  if (v32)
  {
    v33 = v32;
    v34 = v32[6];
    if (v34)
    {
      v34[36] |= 1u;
      *(v34 + 4) = v15;
    }

    goto LABEL_28;
  }

LABEL_36:
  if (!v17)
  {
    v36 = 0;
    v38 = 0;
    v37 = v10;
    goto LABEL_30;
  }

LABEL_28:
  v35 = v17[2];
  v36 = v35;
  v37 = v10;
  if (v35)
  {
    v38 = *(v35 + 6);
  }

  else
  {
    v38 = 0;
  }

LABEL_30:
  v39 = v38;
  [(_ICLLMoveQueueItemCommand *)v39 setItemId:v7];

  WeakRetained = objc_loadWeakRetained(&self->_liveLink);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __65__ICSharedListeningQueue_moveItemIdentifier_afterItemIdentifier___block_invoke;
  v45[3] = &unk_1E7BF53A0;
  v45[4] = self;
  v46 = WeakRetained;
  v41 = WeakRetained;
  [v41 sendMessage:v17 completion:v45];
}

void __65__ICSharedListeningQueue_moveItemIdentifier_afterItemIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v26 = 134218242;
      v27 = v8;
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "ILL %p: [moveItemAfter] Received requestError=%{public}@", &v26, 0x16u);
    }

    v9 = *(a1 + 40);
    v10 = @"UpdateAfterRequestError";
    goto LABEL_5;
  }

  if (!v5 || (v11 = v5[1]) == 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = v11[8];
  if (!v13)
  {
LABEL_18:

    goto LABEL_19;
  }

  v14 = v13[3];

  if (!v14)
  {
LABEL_19:
    v9 = *(a1 + 40);
    v10 = @"UpdateAfterMoveItemAfter";
LABEL_5:
    [v9 _updateQueueWithReason:v10 completion:0];
    goto LABEL_16;
  }

  v15 = v5[1];
  v16 = v15;
  if (!v15)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v17 = v15[8];
  v18 = v17;
  if (!v17)
  {
LABEL_21:
    v19 = 0;
    goto LABEL_13;
  }

  v19 = *(v17 + 3);
LABEL_13:
  v20 = v19;

  v21 = *(a1 + 40);
  if (v20)
  {
    v22 = v20[2];
    v23 = v20[1];
    v24 = v20[3];
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
  }

  v25 = v24;
  [v21 _handleUpdatedQueue:v22 playbackControlSettings:v23 serverQueueContext:v25];

LABEL_16:
}

- (void)moveItemIdentifier:(id)a3 beforeItemIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v48 = 0;
  v9 = [(ICSharedListeningQueue *)self _itemForIdentifier:v7 outIndexPath:&v48];
  v10 = v48;
  v11 = [(MSVSectionedCollection *)self->_tracklist globalIndexForIndexPath:v10];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:2332 description:{@"Could not find item to move: %@", v7}];
  }

  if (v8)
  {
    v47 = 0;
    v12 = [(ICSharedListeningQueue *)self _itemForIdentifier:v8 outIndexPath:&v47];
    v13 = v47;
    v14 = [(MSVSectionedCollection *)self->_tracklist globalIndexForIndexPath:v13];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      [v43 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:2359 description:{@"Could not find item to insert after: %@", v8}];
    }

    v15 = v14 - (v14 > v11);
  }

  else
  {
    v15 = [(MSVSectionedCollection *)self->_tracklist totalItemCount]- 1;
  }

  v16 = objc_opt_new();
  v17 = v16;
  if (v16)
  {
    *(v16 + 52) |= 1u;
    *(v16 + 48) = 1;
    v18 = objc_opt_new();
    [(_ICLLProtocolMessage *)v17 setCommand:v18];

    v19 = v17[2];
    if (v19)
    {
      v19[104] |= 1u;
      *(v19 + 6) = 4;
    }
  }

  else
  {
    v44 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setCommand:v44];

    v19 = 0;
  }

  v20 = objc_opt_new();
  if (v17)
  {
    v21 = v17[2];
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  [(_ICLLCommandMessage *)v22 setMoveItem:v20];

  serverQueueContext = self->_serverQueueContext;
  if (!v17)
  {
    v25 = 0;
    goto LABEL_31;
  }

  v24 = v17[2];
  v25 = v24;
  if (!v24)
  {
LABEL_31:
    v26 = 0;
    goto LABEL_16;
  }

  v26 = *(v24 + 6);
LABEL_16:
  v27 = v26;
  [(_ICLLMoveQueueItemCommand *)v27 setQueueContext:?];

  if (v17 && (serverRevision = self->_serverRevision, (v29 = v17[2]) != 0))
  {
    v30 = v29;
    v31 = v29[6];
    if (v31)
    {
      v31[36] |= 2u;
      *(v31 + 8) = serverRevision;
    }
  }

  else if (!v17)
  {
    goto LABEL_33;
  }

  v32 = v17[2];
  if (v32)
  {
    v33 = v32;
    v34 = v32[6];
    if (v34)
    {
      v34[36] |= 1u;
      *(v34 + 4) = v15;
    }

    goto LABEL_25;
  }

LABEL_33:
  if (!v17)
  {
    v36 = 0;
    v38 = 0;
    v37 = v10;
    goto LABEL_27;
  }

LABEL_25:
  v35 = v17[2];
  v36 = v35;
  v37 = v10;
  if (v35)
  {
    v38 = *(v35 + 6);
  }

  else
  {
    v38 = 0;
  }

LABEL_27:
  v39 = v38;
  [(_ICLLMoveQueueItemCommand *)v39 setItemId:v7];

  WeakRetained = objc_loadWeakRetained(&self->_liveLink);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __66__ICSharedListeningQueue_moveItemIdentifier_beforeItemIdentifier___block_invoke;
  v45[3] = &unk_1E7BF53A0;
  v45[4] = self;
  v46 = WeakRetained;
  v41 = WeakRetained;
  [v41 sendMessage:v17 completion:v45];
}

void __66__ICSharedListeningQueue_moveItemIdentifier_beforeItemIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v26 = 134218242;
      v27 = v8;
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "ILL %p: [moveItemBefore] Received requestError=%{public}@", &v26, 0x16u);
    }

    v9 = *(a1 + 40);
    v10 = @"UpdateAfterRequestError";
    goto LABEL_5;
  }

  if (!v5 || (v11 = v5[1]) == 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = v11[8];
  if (!v13)
  {
LABEL_18:

    goto LABEL_19;
  }

  v14 = v13[3];

  if (!v14)
  {
LABEL_19:
    v9 = *(a1 + 40);
    v10 = @"UpdateAfterMoveItemBefore";
LABEL_5:
    [v9 _updateQueueWithReason:v10 completion:0];
    goto LABEL_16;
  }

  v15 = v5[1];
  v16 = v15;
  if (!v15)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v17 = v15[8];
  v18 = v17;
  if (!v17)
  {
LABEL_21:
    v19 = 0;
    goto LABEL_13;
  }

  v19 = *(v17 + 3);
LABEL_13:
  v20 = v19;

  v21 = *(a1 + 40);
  if (v20)
  {
    v22 = v20[2];
    v23 = v20[1];
    v24 = v20[3];
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
  }

  v25 = v24;
  [v21 _handleUpdatedQueue:v22 playbackControlSettings:v23 serverQueueContext:v25];

LABEL_16:
}

- (void)removeAllItemIdentifiersAfterItemIdentifier:(id)a3
{
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
      *(v8 + 6) = 3;
    }
  }

  else
  {
    v29 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setCommand:v29];

    v8 = 0;
  }

  v9 = objc_opt_new();
  if (!v6)
  {
    [(_ICLLCommandMessage *)0 setRemoveItem:v9];

    v12 = 0;
    goto LABEL_21;
  }

  v10 = v6[2];
  [(_ICLLCommandMessage *)v10 setRemoveItem:v9];

  v11 = v6[2];
  v12 = v11;
  if (!v11)
  {
LABEL_21:
    v13 = 0;
    goto LABEL_7;
  }

  v13 = *(v11 + 11);
LABEL_7:
  v14 = v13;
  [(_ICLLRemoveQueueItemCommand *)v14 setItemId:v4];

  if (v6 && (v15 = v6[2]) != 0)
  {
    v16 = v15;
    v17 = v15[11];
    if (v17)
    {
      v17[40] |= 1u;
      *(v17 + 8) = 2;
    }

    serverQueueContext = self->_serverQueueContext;
  }

  else
  {
    serverQueueContext = self->_serverQueueContext;
    if (!v6)
    {
      v20 = 0;
      goto LABEL_24;
    }
  }

  v19 = v6[2];
  v20 = v19;
  if (!v19)
  {
LABEL_24:
    v21 = 0;
    goto LABEL_14;
  }

  v21 = *(v19 + 11);
LABEL_14:
  v22 = v21;
  [(_ICLLRemoveQueueItemCommand *)v22 setQueueContext:?];

  if (v6 && (serverRevision = self->_serverRevision, (v24 = v6[2]) != 0))
  {
    v25 = v24;
    v26 = v24[11];
    if (v26)
    {
      v26[40] |= 2u;
      *(v26 + 9) = serverRevision;
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_liveLink);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __70__ICSharedListeningQueue_removeAllItemIdentifiersAfterItemIdentifier___block_invoke;
  v30[3] = &unk_1E7BF53C8;
  v31 = WeakRetained;
  v28 = WeakRetained;
  [v28 sendMessage:v6 completion:v30];
}

void __70__ICSharedListeningQueue_removeAllItemIdentifiersAfterItemIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v21 = v5;
    if (v5 && (v6 = v5[1]) != 0)
    {
      v7 = v6;
      v8 = v6[15];
      if (v8)
      {
        v9 = v8[2];

        if (v9)
        {
          v10 = v21[1];
          v11 = v10;
          if (v10)
          {
            v12 = v10[15];
            v13 = v12;
            if (v12)
            {
              v14 = *(v12 + 2);
LABEL_9:
              v15 = v14;

              v16 = *(a1 + 32);
              if (v15)
              {
                v17 = v15[2];
                v18 = v15[1];
                v19 = v15[3];
              }

              else
              {
                v18 = 0;
                v17 = 0;
                v19 = 0;
              }

              v20 = v19;
              [v16 _handleUpdatedQueue:v17 playbackControlSettings:v18 serverQueueContext:v20];

              goto LABEL_15;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = 0;
          goto LABEL_9;
        }

LABEL_14:
        [*(a1 + 32) _updateQueueWithReason:@"UpdateAfterRemoveAllItemsAfterItem" completion:0];
LABEL_15:
        v5 = v21;
        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)removeItemIdentifiers:(id)a3
{
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
      *(v8 + 6) = 3;
    }
  }

  else
  {
    v31 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setCommand:v31];

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
  [(_ICLLCommandMessage *)v11 setRemoveItem:v9];

  v12 = [v4 mutableCopy];
  if (v6 && (v13 = v6[2]) != 0)
  {
    v14 = v13;
    v15 = v13[11];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 2, v12);
    }
  }

  else
  {

    if (!v6)
    {
      goto LABEL_25;
    }
  }

  v17 = v6[2];
  if (v17)
  {
    v18 = v17;
    v19 = v17[11];
    if (v19)
    {
      v19[40] |= 1u;
      *(v19 + 8) = 4;
    }

    serverQueueContext = self->_serverQueueContext;
    goto LABEL_15;
  }

LABEL_25:
  serverQueueContext = self->_serverQueueContext;
  if (!v6)
  {
    v22 = 0;
    goto LABEL_27;
  }

LABEL_15:
  v21 = v6[2];
  v22 = v21;
  if (!v21)
  {
LABEL_27:
    v23 = 0;
    goto LABEL_17;
  }

  v23 = *(v21 + 11);
LABEL_17:
  v24 = v23;
  [(_ICLLRemoveQueueItemCommand *)v24 setQueueContext:?];

  if (v6 && (serverRevision = self->_serverRevision, (v26 = v6[2]) != 0))
  {
    v27 = v26;
    v28 = v26[11];
    if (v28)
    {
      v28[40] |= 2u;
      *(v28 + 9) = serverRevision;
    }
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_liveLink);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __48__ICSharedListeningQueue_removeItemIdentifiers___block_invoke;
  v32[3] = &unk_1E7BF53C8;
  v33 = WeakRetained;
  v30 = WeakRetained;
  [v30 sendMessage:v6 completion:v32];
}

void __48__ICSharedListeningQueue_removeItemIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v21 = v5;
    if (v5 && (v6 = v5[1]) != 0)
    {
      v7 = v6;
      v8 = v6[15];
      if (v8)
      {
        v9 = v8[2];

        if (v9)
        {
          v10 = v21[1];
          v11 = v10;
          if (v10)
          {
            v12 = v10[15];
            v13 = v12;
            if (v12)
            {
              v14 = *(v12 + 2);
LABEL_9:
              v15 = v14;

              v16 = *(a1 + 32);
              if (v15)
              {
                v17 = v15[2];
                v18 = v15[1];
                v19 = v15[3];
              }

              else
              {
                v18 = 0;
                v17 = 0;
                v19 = 0;
              }

              v20 = v19;
              [v16 _handleUpdatedQueue:v17 playbackControlSettings:v18 serverQueueContext:v20];

              goto LABEL_15;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = 0;
          goto LABEL_9;
        }

LABEL_14:
        [*(a1 + 32) _updateQueueWithReason:@"UpdateAfterRemoveItems [bulk]" completion:0];
LABEL_15:
        v5 = v21;
        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)removeItemIdentifier:(id)a3
{
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
      *(v8 + 6) = 3;
    }
  }

  else
  {
    v26 = objc_opt_new();
    [(_ICLLProtocolMessage *)0 setCommand:v26];

    v8 = 0;
  }

  v9 = objc_opt_new();
  if (v6)
  {
    v10 = v6[2];
    [(_ICLLCommandMessage *)v10 setRemoveItem:v9];

    v11 = v6[2];
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 11);
      goto LABEL_7;
    }
  }

  else
  {
    [(_ICLLCommandMessage *)0 setRemoveItem:v9];

    v12 = 0;
  }

  v13 = 0;
LABEL_7:
  v14 = v13;
  [(_ICLLRemoveQueueItemCommand *)v14 setItemId:v4];

  serverQueueContext = self->_serverQueueContext;
  if (!v6)
  {
    v17 = 0;
    goto LABEL_19;
  }

  v16 = v6[2];
  v17 = v16;
  if (!v16)
  {
LABEL_19:
    v18 = 0;
    goto LABEL_10;
  }

  v18 = *(v16 + 11);
LABEL_10:
  v19 = v18;
  [(_ICLLRemoveQueueItemCommand *)v19 setQueueContext:?];

  if (v6 && (serverRevision = self->_serverRevision, (v21 = v6[2]) != 0))
  {
    v22 = v21;
    v23 = v21[11];
    if (v23)
    {
      v23[40] |= 2u;
      *(v23 + 9) = serverRevision;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_liveLink);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __47__ICSharedListeningQueue_removeItemIdentifier___block_invoke;
  v27[3] = &unk_1E7BF53A0;
  v27[4] = self;
  v28 = WeakRetained;
  v25 = WeakRetained;
  [v25 sendMessage:v6 completion:v27];
}

void __47__ICSharedListeningQueue_removeItemIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v26 = 134218242;
      v27 = v8;
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "ILL %p: [removeItem] Received requestError=%{public}@", &v26, 0x16u);
    }

    v9 = *(a1 + 40);
    v10 = @"UpdateAfterRequestError";
    goto LABEL_5;
  }

  if (!v5 || (v11 = v5[1]) == 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = v11[15];
  if (!v13)
  {
LABEL_18:

    goto LABEL_19;
  }

  v14 = v13[2];

  if (!v14)
  {
LABEL_19:
    v9 = *(a1 + 40);
    v10 = @"UpdateAfterRemoveItem";
LABEL_5:
    [v9 _updateQueueWithReason:v10 completion:0];
    goto LABEL_16;
  }

  v15 = v5[1];
  v16 = v15;
  if (!v15)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v17 = v15[15];
  v18 = v17;
  if (!v17)
  {
LABEL_21:
    v19 = 0;
    goto LABEL_13;
  }

  v19 = *(v17 + 2);
LABEL_13:
  v20 = v19;

  v21 = *(a1 + 40);
  if (v20)
  {
    v22 = v20[2];
    v23 = v20[1];
    v24 = v20[3];
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
  }

  v25 = v24;
  [v21 _handleUpdatedQueue:v22 playbackControlSettings:v23 serverQueueContext:v25];

LABEL_16:
}

- (void)insertTracklist:(id)a3 afterItemIdentifier:(id)a4 playNowWithPreferredStartIndexPath:(id)a5 completionEx:(id)a6
{
  v71 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v55 = a4;
  v57 = a5;
  v56 = a6;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke;
  v64[3] = &unk_1E7BF5300;
  v64[4] = &v65;
  [(ICSharedListeningQueue *)self _detectTrackGenerationSourceForTracklist:v11 detectedCompletion:v64];
  if ([v11 totalItemCount] || (v66[3] & 1) != 0)
  {
    v12 = v57;
    if (v57)
    {
      v13 = [v57 msv_section];
      if (v13 >= [v11 numberOfSections])
      {
        v52 = [MEMORY[0x1E696AAA8] currentHandler];
        [v52 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:2155 description:{@"preferredStartIndexPath section out of bounds (%ld/%ld)", objc_msgSend(v57, "msv_section"), objc_msgSend(v11, "numberOfSections")}];

        v12 = v57;
      }

      v14 = [v12 msv_item];
      if (v14 >= [v11 numberOfItemsInSection:{objc_msgSend(v12, "msv_section")}])
      {
        v53 = [MEMORY[0x1E696AAA8] currentHandler];
        [v53 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:2156 description:{@"preferredStartIndexPath item out of bounds (%ld/%ld)", objc_msgSend(v12, "msv_item"), objc_msgSend(v11, "numberOfItemsInSection:", objc_msgSend(v12, "msv_section"))}];

        v12 = v57;
      }

      v15 = [v11 itemAtIndexPath:v12];
      obj = [v15 identifier];
    }

    else
    {
      obj = 0;
    }

    v16 = objc_opt_new();
    v17 = v16;
    if (v16)
    {
      *(v16 + 52) |= 1u;
      *(v16 + 48) = 1;
    }

    v18 = objc_opt_new();
    [(_ICLLProtocolMessage *)v17 setCommand:v18];

    if (v17)
    {
      v19 = v17[2];
      if (v19)
      {
        v19[104] |= 1u;
        *(v19 + 6) = 10;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = objc_opt_new();
    if (v17)
    {
      v21 = v17[2];
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = v20;
    if (v22)
    {
      [(_ICLLCommandMessage *)v22 clearOneofValuesForCommand];
      *(v22 + 104) |= 1u;
      *(v22 + 6) = 10;
      objc_storeStrong(v22 + 7, v20);
    }

    v24 = [(ICSharedListeningQueue *)self _afterItemPositionForItemIdentifier:v55];
    if (v17 && (v25 = v24, (v26 = v17[2]) != 0))
    {
      v27 = v26;
      v28 = v26[7];
      if (v28)
      {
        v28[52] |= 1u;
        *(v28 + 4) = v25;
      }
    }

    else if (!v17)
    {
      goto LABEL_47;
    }

    serverQueueContext = self->_serverQueueContext;
    v30 = v17[2];
    if (v30)
    {
      v31 = v30;
      v32 = v30[7];
      v33 = v32;
      if (v32)
      {
        objc_storeStrong(v32 + 4, serverQueueContext);
      }

LABEL_28:
      serverRevision = self->_serverRevision;
      v35 = v17[2];
      if (v35)
      {
        v36 = v35;
        v37 = v35[7];
        if (v37)
        {
          v37[52] |= 2u;
          *(v37 + 12) = serverRevision;
        }

LABEL_31:

        v38 = [(ICSharedListeningQueue *)self _playbackItemProtosForTracklist:v11 withPreferredStartItemIndexPath:v57];
        if (v17 && (v39 = v17[2]) != 0)
        {
          v40 = v39;
          v41 = v39[7];
          v42 = v41;
          if (v41)
          {
            objc_storeStrong(v41 + 1, v38);
          }
        }

        else
        {

          if (!v17)
          {
            goto LABEL_50;
          }
        }

        v43 = v17[2];
        if (v43)
        {
          v44 = v43;
          v45 = v43[7];
          v46 = v45;
          if (v45)
          {
            objc_storeStrong(v45 + 3, obj);
          }

          goto LABEL_39;
        }

LABEL_50:
        v46 = 0;
        v44 = 0;
LABEL_39:

        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke_616;
        v62[3] = &unk_1E7BF5328;
        v47 = v17;
        v63 = v47;
        [(ICSharedListeningQueue *)self _detectTrackGenerationSourceForTracklist:v11 detectedCompletion:v62];
        WeakRetained = objc_loadWeakRetained(&self->_liveLink);
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke_2;
        v58[3] = &unk_1E7BF5350;
        v58[4] = self;
        v49 = WeakRetained;
        v59 = v49;
        v61 = v56;
        v50 = obj;
        v60 = v50;
        [v49 sendMessage:v47 completion:v58];

        goto LABEL_40;
      }

LABEL_48:
      v37 = 0;
      v36 = 0;
      goto LABEL_31;
    }

LABEL_47:
    if (!v17)
    {
      goto LABEL_48;
    }

    goto LABEL_28;
  }

  v51 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v70 = self;
    _os_log_impl(&dword_1B4491000, v51, OS_LOG_TYPE_DEFAULT, "ILL %p: insertTracklistPlayNow completing immediately [tracklist.totalItemCount = 0, hasRadioTrackGenerationSource = NO]", buf, 0xCu);
  }

  (*(v56 + 2))(v56, 0, 0);
LABEL_40:
  _Block_object_dispose(&v65, 8);
}

void __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke_616(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3 && (v5 = *(v3 + 16)) != 0)
  {
    v8 = v5;
    v6 = v5[7];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 5, a2);
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }
}

void __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5)
    {
      v11 = v5[3];
      if (v11)
      {
        v10 = v11;
        if (!*(a1 + 56))
        {
          goto LABEL_48;
        }

        v12 = MEMORY[0x1E696ABC0];
        if (v11[3])
        {
          v13 = *(v11 + 2);
        }

        else
        {
          v13 = 0;
        }

        v65 = *MEMORY[0x1E696A578];
        v16 = v11[2];
        v17 = v16;
        if (!v16)
        {
          if (v10[3])
          {
            v18 = *(v10 + 2);
          }

          else
          {
            v18 = 0;
          }

          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error [%ld]", v18];
        }

        v66 = v17;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v25 = [v12 msv_errorWithDomain:@"ICLiveLinkServerErrorDomain" code:v13 userInfo:v24 debugDescription:@"Failed to insert tracklist after item"];

        if (!v16)
        {
        }

        v26 = [*(a1 + 40) delegateQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke_2_621;
        block[3] = &unk_1E7BF9EC8;
        v27 = &v61;
        v28 = *(a1 + 56);
        v29 = &v60;
        v60 = v25;
        v61 = v28;
        v30 = v25;
        dispatch_async(v26, block);
LABEL_47:

        goto LABEL_48;
      }

      v14 = *(a1 + 48);
      if (v14)
      {
        v15 = v14;
LABEL_31:
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke_3;
        v55[3] = &unk_1E7BF80A8;
        v56 = *(a1 + 40);
        v30 = v15;
        v57 = v30;
        v58 = *(a1 + 56);
        v36 = MEMORY[0x1B8C781E0](v55);
        if (v5 && (v37 = v5[1]) != 0)
        {
          v38 = v37;
          v39 = v37[11];
          if (v39)
          {
            v40 = v39[4];

            if (v40)
            {
              v41 = v5[1];
              v42 = v41;
              if (v41)
              {
                v43 = v41[11];
                v44 = v43;
                if (v43)
                {
                  v45 = *(v43 + 4);
LABEL_38:
                  v46 = v45;

                  v47 = *(a1 + 40);
                  v27 = &v56;
                  if (v46)
                  {
                    v48 = v46[2];
                    v49 = v46[1];
                    v50 = v46[3];
                  }

                  else
                  {
                    v49 = 0;
                    v48 = 0;
                    v50 = 0;
                  }

                  v51 = v50;
                  [v47 _handleUpdatedQueue:v48 playbackControlSettings:v49 serverQueueContext:v51];

                  v36[2](v36, 0);
                  goto LABEL_46;
                }
              }

              else
              {
                v44 = 0;
              }

              v45 = 0;
              goto LABEL_38;
            }

LABEL_45:
            v52 = *(a1 + 40);
            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 3221225472;
            v53[2] = __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke_5;
            v53[3] = &unk_1E7BF77C0;
            v54 = v36;
            [v52 _updateQueueWithReason:@"UpdateAfterPlayNow" completion:v53];
            v46 = v54;
            v27 = &v56;
LABEL_46:

            v10 = 0;
            v26 = v58;
            v29 = &v57;
            goto LABEL_47;
          }
        }

        else
        {
          v38 = 0;
        }

        goto LABEL_45;
      }

      v19 = v5[1];
      v15 = v19;
      if (v19)
      {
        v20 = *(v19 + 11);
        goto LABEL_18;
      }
    }

    else
    {
      v15 = *(a1 + 48);
      if (v15)
      {
        goto LABEL_31;
      }
    }

    v20 = 0;
LABEL_18:
    v21 = v20;

    if (v21)
    {
      v22 = v21[3];
      if (v22)
      {
        v23 = v22;
        v15 = v23;
LABEL_30:

        goto LABEL_31;
      }

      v31 = v21[1];
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v33 = [v32 firstObject];
    v34 = v33;
    if (v33)
    {
      v35 = *(v33 + 24);
    }

    else
    {
      v35 = 0;
    }

    v15 = v35;

    v23 = 0;
    goto LABEL_30;
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 134218242;
    v68 = v8;
    v69 = 2114;
    v70 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "ILL %p: [insertTracklistAndPlayNow] Received requestError=%{public}@", buf, 0x16u);
  }

  v9 = *(a1 + 40);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke_617;
  v62[3] = &unk_1E7BFA490;
  v64 = *(a1 + 56);
  v63 = v6;
  [v9 _updateQueueWithReason:@"UpdateAfterRequestError" completion:v62];

  v10 = v64;
LABEL_48:
}

uint64_t __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke_617(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [a1[4] receivedCurrentItemIdentifier:a1[5] fromParticipant:0];
  }

  if (a1[6])
  {
    v4 = [a1[4] delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __110__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completionEx___block_invoke_4;
    block[3] = &unk_1E7BF9E28;
    v8 = a1[6];
    v6 = a1[5];
    v7 = v3;
    dispatch_async(v4, block);
  }
}

- (void)insertTracklist:(id)a3 afterItemIdentifier:(id)a4 playNowWithPreferredStartIndexPath:(id)a5 completion:(id)a6
{
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    v13 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __108__ICSharedListeningQueue_insertTracklist_afterItemIdentifier_playNowWithPreferredStartIndexPath_completion___block_invoke;
    v18[3] = &unk_1E7BF6908;
    v6 = &v19;
    v19 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = MEMORY[0x1B8C781E0](v13);
  [(ICSharedListeningQueue *)self insertTracklist:v16 afterItemIdentifier:v15 playNowWithPreferredStartIndexPath:v14 completionEx:v17];

  if (v12)
  {
  }
}

- (void)insertTracklist:(id)a3 atPosition:(id)a4 completionEx:(id)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v50 = a5;
  v51 = v10;
  if (!v10)
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:2049 description:{@"Invalid parameter not satisfying: %@", @"position"}];
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke;
  v57[3] = &unk_1E7BF5300;
  v57[4] = &v58;
  [(ICSharedListeningQueue *)self _detectTrackGenerationSourceForTracklist:v9 detectedCompletion:v57];
  if ([v9 totalItemCount] || (v59[3] & 1) != 0)
  {
    v11 = objc_opt_new();
    v12 = v11;
    if (v11)
    {
      *(v11 + 52) |= 1u;
      *(v11 + 48) = 1;
    }

    v13 = objc_opt_new();
    [(_ICLLProtocolMessage *)v12 setCommand:v13];

    if (v12)
    {
      v14 = v12[2];
      if (v14)
      {
        v14[104] |= 1u;
        *(v14 + 6) = 2;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = objc_opt_new();
    if (v12)
    {
      v16 = v12[2];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = v15;
    if (v17)
    {
      [(_ICLLCommandMessage *)v17 clearOneofValuesForCommand];
      *(v17 + 104) |= 1u;
      *(v17 + 6) = 2;
      objc_storeStrong(v17 + 1, v15);
    }

    v19 = [v10 type];
    if (v19 == 1)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    if (v19 == 2)
    {
      v21 = 3;
    }

    else
    {
      v21 = v20;
    }

    if (v12 && (v22 = v12[2]) != 0)
    {
      v23 = v22;
      v24 = v22[1];
      if (v24)
      {
        v24[52] |= 1u;
        *(v24 + 2) = v21;
      }
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v25 = [v51 afterItemIdentifier];
    v26 = [(ICSharedListeningQueue *)self _afterItemPositionForItemIdentifier:v25];
    if (v12 && (v27 = v26, (v28 = v12[2]) != 0))
    {
      v29 = v28;
      v30 = v28[1];
      if (v30)
      {
        v30[52] |= 2u;
        *(v30 + 6) = v27;
      }
    }

    else
    {
      v30 = 0;
      v29 = 0;
    }

    if (v12 && (serverQueueContext = self->_serverQueueContext, (v32 = v12[2]) != 0))
    {
      v33 = v32;
      v34 = v32[1];
      v35 = v34;
      if (v34)
      {
        objc_storeStrong(v34 + 4, serverQueueContext);
      }
    }

    else if (!v12)
    {
      goto LABEL_50;
    }

    serverRevision = self->_serverRevision;
    v37 = v12[2];
    if (v37)
    {
      v38 = v37;
      v39 = v37[1];
      if (v39)
      {
        v39[52] |= 4u;
        *(v39 + 12) = serverRevision;
      }

      goto LABEL_36;
    }

LABEL_50:
    v39 = 0;
    v38 = 0;
LABEL_36:

    v40 = [(ICSharedListeningQueue *)self _playbackItemProtosForTracklist:v9 withPreferredStartItemIndexPath:0];
    if (v12 && (v41 = v12[2]) != 0)
    {
      v42 = v41;
      v43 = v41[1];
      v44 = v43;
      if (v43)
      {
        objc_storeStrong(v43 + 2, v40);
      }
    }

    else
    {
      v44 = 0;
      v42 = 0;
    }

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke_606;
    v55[3] = &unk_1E7BF5328;
    v45 = v12;
    v56 = v45;
    [(ICSharedListeningQueue *)self _detectTrackGenerationSourceForTracklist:v9 detectedCompletion:v55];
    WeakRetained = objc_loadWeakRetained(&self->_liveLink);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke_2;
    v52[3] = &unk_1E7BF5378;
    v52[4] = self;
    v47 = WeakRetained;
    v53 = v47;
    v54 = v50;
    [v47 sendMessage:v45 completion:v52];

    goto LABEL_41;
  }

  v48 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v63 = self;
    _os_log_impl(&dword_1B4491000, v48, OS_LOG_TYPE_DEFAULT, "ILL %p: insertTracklist completing immediately [tracklist.totalItemCount = 0, hasRadioTrackGenerationSource = NO]", buf, 0xCu);
  }

  (*(v50 + 2))(v50, 0, 0);
LABEL_41:
  _Block_object_dispose(&v58, 8);
}

void __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke_606(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3 && (v5 = *(v3 + 16)) != 0)
  {
    v8 = v5;
    v6 = v5[1];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 5, a2);
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }
}

void __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!v5)
    {
      goto LABEL_34;
    }

    v11 = v5[3];
    if (v11)
    {
      v10 = v11;
      if (!*(a1 + 48))
      {
        goto LABEL_42;
      }

      v12 = MEMORY[0x1E696ABC0];
      if (v11[3])
      {
        v13 = *(v11 + 2);
      }

      else
      {
        v13 = 0;
      }

      v63 = *MEMORY[0x1E696A578];
      v42 = v11[2];
      v43 = v42;
      if (!v42)
      {
        if (v10[3])
        {
          v44 = *(v10 + 2);
        }

        else
        {
          v44 = 0;
        }

        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error [%ld]", v44];
      }

      v64 = v43;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v46 = [v12 msv_errorWithDomain:@"ICLiveLinkServerErrorDomain" code:v13 userInfo:v45 debugDescription:@"Failed to insert tracklist at position"];

      if (!v42)
      {
      }

      v47 = [*(a1 + 40) delegateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke_2_611;
      block[3] = &unk_1E7BF9EC8;
      v37 = &v59;
      v48 = *(a1 + 48);
      v49 = &v58;
      v58 = v46;
      v59 = v48;
      v24 = v46;
      dispatch_async(v47, block);
LABEL_41:

      goto LABEL_42;
    }

    v14 = v5[1];
    if (v14)
    {
      v15 = v14;
      v16 = v14[3];
      v17 = v16;
      if (v16)
      {
        v18 = *(v16 + 1);
        goto LABEL_13;
      }
    }

    else
    {
LABEL_34:
      v17 = 0;
      v15 = 0;
    }

    v18 = 0;
LABEL_13:
    v19 = v18;
    v20 = [v19 firstObject];
    v21 = v20;
    if (v20)
    {
      v22 = *(v20 + 24);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke_3;
    v53[3] = &unk_1E7BF80A8;
    v56 = *(a1 + 48);
    v54 = *(a1 + 40);
    v24 = v23;
    v55 = v24;
    v25 = MEMORY[0x1B8C781E0](v53);
    if (v5 && (v26 = v5[1]) != 0)
    {
      v27 = v26;
      v28 = v26[3];
      if (v28)
      {
        v29 = v28[3];

        if (v29)
        {
          v30 = v5[1];
          v31 = v30;
          if (v30)
          {
            v32 = v30[3];
            v33 = v32;
            if (v32)
            {
              v34 = *(v32 + 3);
LABEL_22:
              v35 = v34;

              v36 = *(a1 + 40);
              v37 = &v56;
              if (v35)
              {
                v38 = v35[2];
                v39 = v35[1];
                v40 = v35[3];
              }

              else
              {
                v39 = 0;
                v38 = 0;
                v40 = 0;
              }

              v41 = v40;
              [v36 _handleUpdatedQueue:v38 playbackControlSettings:v39 serverQueueContext:v41];

              v25[2](v25, 0);
              goto LABEL_40;
            }
          }

          else
          {
            v33 = 0;
          }

          v34 = 0;
          goto LABEL_22;
        }

LABEL_39:
        v50 = *(a1 + 40);
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke_5;
        v51[3] = &unk_1E7BF77C0;
        v52 = v25;
        [v50 _updateQueueWithReason:@"UpdateAfterAddItems" completion:v51];
        v35 = v52;
        v37 = &v56;
LABEL_40:

        v10 = 0;
        v47 = v55;
        v49 = &v54;
        goto LABEL_41;
      }
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_39;
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 134218242;
    v66 = v8;
    v67 = 2114;
    v68 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "ILL %p: [insertTracklist] Received requestError=%{public}@", buf, 0x16u);
  }

  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke_607;
  v60[3] = &unk_1E7BFA490;
  v9 = *(a1 + 40);
  v62 = *(a1 + 48);
  v61 = v6;
  [v9 _updateQueueWithReason:@"UpdateAfterRequestError" completion:v60];

  v10 = v62;
LABEL_42:
}

uint64_t __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke_607(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  if (a1[6])
  {
    v4 = [a1[4] delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__ICSharedListeningQueue_insertTracklist_atPosition_completionEx___block_invoke_4;
    block[3] = &unk_1E7BF9E28;
    v6 = v3;
    v7 = a1[5];
    v8 = a1[6];
    dispatch_async(v4, block);
  }
}

- (void)insertTracklist:(id)a3 atPosition:(id)a4 completion:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
LABEL_3:
      v14 = v16;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64__ICSharedListeningQueue_insertTracklist_atPosition_completion___block_invoke;
      v16[3] = &unk_1E7BF6908;
      v5 = &v17;
      v17 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:2041 description:{@"Invalid parameter not satisfying: %@", @"position"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = MEMORY[0x1B8C781E0](v14);
  [(ICSharedListeningQueue *)self insertTracklist:v10 atPosition:v11 completionEx:v15];

  if (v13)
  {
  }
}

- (void)insertTracklist:(id)a3 afterItemIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [ICSharedTracklistPosition specifiedPositionAfterItemIdentifier:a4];
  [(ICSharedListeningQueue *)self insertTracklist:v9 atPosition:v10 completion:v8];
}

- (void)addMediaIdentifiers:(id)a3 afterItemIdentifier:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = v6;
    if ([v8 count] >= 0x7D1)
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v25 = self;
        v26 = 2048;
        v27 = [v8 count];
        v28 = 1024;
        v29 = 2000;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "ILL %p: addMediaIdentifiers:afterItemIdentifier: trimming from %ld to %d items.", buf, 0x1Cu);
      }

      v10 = [v8 subarrayWithRange:{0, 2000}];

      v8 = v10;
    }

    v11 = objc_alloc_init(MEMORY[0x1E69B1458]);
    v12 = [ICSharedListeningContainer groupWithFeatureName:0];
    [v11 appendSection:v12];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [ICSharedListeningItem itemWithMediaIdentifier:*(*(&v19 + 1) + 8 * v17), v19];
          [v11 appendItem:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    [(ICSharedListeningQueue *)self insertTracklist:v11 afterItemIdentifier:v7 completion:0];
  }
}

- (void)replaceTracklist:(id)a3 preferredStartIndexPath:(id)a4 completion:(id)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v50 = a4;
  v49 = a5;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke;
  v57[3] = &unk_1E7BF5300;
  v57[4] = &v58;
  [(ICSharedListeningQueue *)self _detectTrackGenerationSourceForTracklist:v9 detectedCompletion:v57];
  if ([v9 totalItemCount] || (v59[3] & 1) != 0)
  {
    v10 = v50;
    if (v50)
    {
      v11 = [v50 msv_section];
      if (v11 >= [v9 numberOfSections])
      {
        v46 = [MEMORY[0x1E696AAA8] currentHandler];
        [v46 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:1927 description:{@"preferredStartIndexPath section out of bounds (%ld/%ld)", objc_msgSend(v50, "msv_section"), objc_msgSend(v9, "numberOfSections")}];

        v10 = v50;
      }

      v12 = [v10 msv_item];
      if (v12 >= [v9 numberOfItemsInSection:{objc_msgSend(v10, "msv_section")}])
      {
        v47 = [MEMORY[0x1E696AAA8] currentHandler];
        [v47 handleFailureInMethod:a2 object:self file:@"ICLiveLink.m" lineNumber:1928 description:{@"preferredStartIndexPath item out of bounds (%ld/%ld)", objc_msgSend(v10, "msv_item"), objc_msgSend(v9, "numberOfItemsInSection:", objc_msgSend(v10, "msv_section"))}];

        v10 = v50;
      }

      v13 = [v9 itemAtIndexPath:v10];
      obj = [v13 identifier];
    }

    else
    {
      obj = 0;
    }

    v14 = objc_opt_new();
    v15 = v14;
    if (v14)
    {
      *(v14 + 52) |= 1u;
      *(v14 + 48) = 1;
    }

    v16 = objc_opt_new();
    [(_ICLLProtocolMessage *)v15 setCommand:v16];

    if (v15)
    {
      v17 = v15[2];
      if (v17)
      {
        v17[104] |= 1u;
        *(v17 + 6) = 9;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = objc_opt_new();
    if (v15)
    {
      v19 = v15[2];
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v21 = v18;
    if (v20)
    {
      [(_ICLLCommandMessage *)v20 clearOneofValuesForCommand];
      *(v20 + 104) |= 1u;
      *(v20 + 6) = 9;
      objc_storeStrong(v20 + 12, v18);
    }

    if (v15 && (serverQueueContext = self->_serverQueueContext, (v23 = v15[2]) != 0))
    {
      v24 = v23;
      v25 = v23[12];
      v26 = v25;
      if (v25)
      {
        objc_storeStrong(v25 + 4, serverQueueContext);
      }
    }

    else if (!v15)
    {
      goto LABEL_45;
    }

    serverRevision = self->_serverRevision;
    v28 = v15[2];
    if (v28)
    {
      v29 = v28;
      v30 = v28[12];
      if (v30)
      {
        v30[56] |= 1u;
        *(v30 + 12) = serverRevision;
      }

LABEL_27:

      v31 = [(ICSharedListeningQueue *)self _playbackItemProtosForTracklist:v9 withPreferredStartItemIndexPath:v50];
      if (v15 && (v32 = v15[2]) != 0)
      {
        v33 = v32;
        v34 = v32[12];
        v35 = v34;
        if (v34)
        {
          objc_storeStrong(v34 + 2, v31);
        }
      }

      else
      {

        if (!v15)
        {
          goto LABEL_47;
        }
      }

      v36 = v15[2];
      if (v36)
      {
        v37 = v36;
        v38 = v36[12];
        v39 = v38;
        if (v38)
        {
          objc_storeStrong(v38 + 3, obj);
        }

        goto LABEL_35;
      }

LABEL_47:
      v39 = 0;
      v37 = 0;
LABEL_35:

      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke_587;
      v55[3] = &unk_1E7BF5328;
      v40 = v15;
      v56 = v40;
      [(ICSharedListeningQueue *)self _detectTrackGenerationSourceForTracklist:v9 detectedCompletion:v55];
      WeakRetained = objc_loadWeakRetained(&self->_liveLink);
      v42 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v63 = self;
        v64 = 2114;
        v65 = obj;
        v66 = 2114;
        v67 = v9;
        _os_log_impl(&dword_1B4491000, v42, OS_LOG_TYPE_DEFAULT, "ILL %p: [replaceTracklist] preferredStartItemID=%{public}@ tracklist=%{public}@", buf, 0x20u);
      }

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke_588;
      v51[3] = &unk_1E7BF5350;
      v51[4] = self;
      v43 = WeakRetained;
      v52 = v43;
      v54 = v49;
      v44 = obj;
      v53 = v44;
      [v43 sendMessage:v40 completion:v51];

      goto LABEL_38;
    }

LABEL_45:
    v30 = 0;
    v29 = 0;
    goto LABEL_27;
  }

  v45 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v63 = self;
    _os_log_impl(&dword_1B4491000, v45, OS_LOG_TYPE_DEFAULT, "ILL %p: replaceTracklist completing immediately [tracklist.totalItemCount = 0, hasRadioTrackGenerationSource = NO]", buf, 0xCu);
  }

  (*(v49 + 2))(v49, 0);
LABEL_38:
  _Block_object_dispose(&v58, 8);
}

void __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke_587(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v6 = a3;
  if (!v19)
  {
    goto LABEL_8;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v8 = *(v7 + 16);
  v9 = v8;
  if (!v8)
  {
LABEL_19:
    v10 = 0;
    goto LABEL_5;
  }

  v10 = *(v8 + 12);
LABEL_5:
  v11 = v10;
  v12 = v19;
  if (v11)
  {
    [(_ICLLReplaceQueueItemsCommand *)v11 clearOneofValuesForTrackGenerationSource];
    *(v11 + 56) |= 2u;
    *(v11 + 13) = 2;
    objc_storeStrong(v11 + 5, a2);
  }

LABEL_8:
  if (!v6)
  {
    goto LABEL_15;
  }

  v13 = *(a1 + 32);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v14 = *(v13 + 16);
  v15 = v14;
  if (!v14)
  {
LABEL_21:
    v16 = 0;
    goto LABEL_12;
  }

  v16 = *(v14 + 12);
LABEL_12:
  v17 = v16;
  v18 = v6;
  if (v17)
  {
    [(_ICLLReplaceQueueItemsCommand *)v17 clearOneofValuesForTrackGenerationSource];
    *(v17 + 56) |= 2u;
    *(v17 + 13) = 1;
    objc_storeStrong(v17 + 1, a3);
  }

LABEL_15:
}

void __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke_588(uint64_t a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5)
    {
      v11 = v5[3];
      if (v11)
      {
        v10 = v11;
        if (!*(a1 + 56))
        {
          goto LABEL_48;
        }

        v12 = MEMORY[0x1E696ABC0];
        if (v11[3])
        {
          v13 = *(v11 + 2);
        }

        else
        {
          v13 = 0;
        }

        v65 = *MEMORY[0x1E696A578];
        v16 = v11[2];
        v17 = v16;
        if (!v16)
        {
          if (v10[3])
          {
            v18 = *(v10 + 2);
          }

          else
          {
            v18 = 0;
          }

          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error [%ld]", v18];
        }

        v66 = v17;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v25 = [v12 msv_errorWithDomain:@"ICLiveLinkServerErrorDomain" code:v13 userInfo:v24 debugDescription:@"Failed to replace tracklist"];

        if (!v16)
        {
        }

        v26 = [*(a1 + 40) delegateQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke_2;
        block[3] = &unk_1E7BF9EC8;
        v27 = &v61;
        v28 = *(a1 + 56);
        v29 = &v60;
        v60 = v25;
        v61 = v28;
        v30 = v25;
        dispatch_async(v26, block);
LABEL_47:

        goto LABEL_48;
      }

      v14 = *(a1 + 48);
      if (v14)
      {
        v15 = v14;
LABEL_31:
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke_3;
        v55[3] = &unk_1E7BF80A8;
        v56 = *(a1 + 40);
        v30 = v15;
        v57 = v30;
        v58 = *(a1 + 56);
        v36 = MEMORY[0x1B8C781E0](v55);
        if (v5 && (v37 = v5[1]) != 0)
        {
          v38 = v37;
          v39 = v37[16];
          if (v39)
          {
            v40 = v39[4];

            if (v40)
            {
              v41 = v5[1];
              v42 = v41;
              if (v41)
              {
                v43 = v41[16];
                v44 = v43;
                if (v43)
                {
                  v45 = *(v43 + 4);
LABEL_38:
                  v46 = v45;

                  v47 = *(a1 + 40);
                  v27 = &v56;
                  if (v46)
                  {
                    v48 = v46[2];
                    v49 = v46[1];
                    v50 = v46[3];
                  }

                  else
                  {
                    v49 = 0;
                    v48 = 0;
                    v50 = 0;
                  }

                  v51 = v50;
                  [v47 _handleUpdatedQueue:v48 playbackControlSettings:v49 serverQueueContext:v51];

                  v36[2](v36, 0);
                  goto LABEL_46;
                }
              }

              else
              {
                v44 = 0;
              }

              v45 = 0;
              goto LABEL_38;
            }

LABEL_45:
            v52 = *(a1 + 40);
            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 3221225472;
            v53[2] = __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke_5;
            v53[3] = &unk_1E7BF77C0;
            v54 = v36;
            [v52 _updateQueueWithReason:@"UpdateAfterReplaceQueueItems" completion:v53];
            v46 = v54;
            v27 = &v56;
LABEL_46:

            v10 = 0;
            v26 = v58;
            v29 = &v57;
            goto LABEL_47;
          }
        }

        else
        {
          v38 = 0;
        }

        goto LABEL_45;
      }

      v19 = v5[1];
      v15 = v19;
      if (v19)
      {
        v20 = *(v19 + 16);
        goto LABEL_18;
      }
    }

    else
    {
      v15 = *(a1 + 48);
      if (v15)
      {
        goto LABEL_31;
      }
    }

    v20 = 0;
LABEL_18:
    v21 = v20;

    if (v21)
    {
      v22 = v21[3];
      if (v22)
      {
        v23 = v22;
        v15 = v23;
LABEL_30:

        goto LABEL_31;
      }

      v31 = v21[2];
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v33 = [v32 firstObject];
    v34 = v33;
    if (v33)
    {
      v35 = *(v33 + 24);
    }

    else
    {
      v35 = 0;
    }

    v15 = v35;

    v23 = 0;
    goto LABEL_30;
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 134218242;
    v68 = v8;
    v69 = 2114;
    v70 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "ILL %p: [replaceTracklist] Received requestError=%{public}@", buf, 0x16u);
  }

  v9 = *(a1 + 40);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke_592;
  v62[3] = &unk_1E7BFA490;
  v64 = *(a1 + 56);
  v63 = v6;
  [v9 _updateQueueWithReason:@"UpdateAfterRequestError" completion:v62];

  v10 = v64;
LABEL_48:
}

uint64_t __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke_592(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [v4 identity];
    [v4 receivedCurrentItemIdentifier:v5 fromParticipant:v6];
  }

  if (*(a1 + 48))
  {
    v7 = [*(a1 + 32) delegateQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__ICSharedListeningQueue_replaceTracklist_preferredStartIndexPath_completion___block_invoke_4;
    v8[3] = &unk_1E7BF9EC8;
    v10 = *(a1 + 48);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)setAutoPlayEnabled:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    *(v6 + 52) |= 1u;
    *(v6 + 48) = 1;
  }

  v8 = objc_opt_new();
  [(_ICLLProtocolMessage *)v7 setCommand:v8];

  v9 = objc_opt_new();
  if (v7)
  {
    v10 = v7[2];
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
    *(v11 + 6) = 6;
    objc_storeStrong(v11 + 8, v9);
  }

  v13 = objc_opt_new();
  if (v7 && (v14 = v7[2]) != 0)
  {
    v15 = v14;
    v16 = v14[8];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 1, v13);
    }
  }

  else
  {
    v17 = 0;
    v15 = 0;
  }

  if (v4)
  {
    v18 = objc_opt_new();
    if (v7 && (v19 = v7[2]) != 0)
    {
      v20 = v19;
      v21 = v19[8];
      v22 = v21;
      if (v21)
      {
        v23 = *(v21 + 1);
        goto LABEL_16;
      }
    }

    else
    {
      v22 = 0;
      v20 = 0;
    }

    v23 = 0;
LABEL_16:
    v24 = v23;
    v25 = v18;
    if (v24)
    {
      v26 = &OBJC_IVAR____ICLLPlaybackControlSettings__autoPlay;
      v27 = 1;
LABEL_24:
      [(_ICLLPlaybackControlSettings *)v24 clearOneofValuesForTrackGenerationSource];
      v24[52] |= 4u;
      *(v24 + 12) = v27;
      objc_storeStrong(&v24[*v26], v25);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v28 = objc_opt_new();
  if (v7 && (v29 = v7[2]) != 0)
  {
    v20 = v29;
    v30 = v29[8];
    v22 = v30;
    if (v30)
    {
      v31 = *(v30 + 1);
      goto LABEL_22;
    }
  }

  else
  {
    v22 = 0;
    v20 = 0;
  }

  v31 = 0;
LABEL_22:
  v24 = v31;
  v25 = v28;
  if (v24)
  {
    v26 = &OBJC_IVAR____ICLLPlaybackControlSettings__noGeneration;
    v27 = 3;
    goto LABEL_24;
  }

LABEL_25:

  WeakRetained = objc_loadWeakRetained(&self->_liveLink);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __56__ICSharedListeningQueue_setAutoPlayEnabled_completion___block_invoke;
  v36[3] = &unk_1E7BF52D8;
  v37 = WeakRetained;
  v38 = v5;
  v39 = v4;
  v33 = WeakRetained;
  v34 = v5;
  [v33 sendMessage:v7 completion:v36];
}

void __56__ICSharedListeningQueue_setAutoPlayEnabled_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5 && (v9 = v5[3]) != 0)
    {
      v8 = v9;
      if (!*(a1 + 40))
      {
        goto LABEL_26;
      }

      v10 = MEMORY[0x1E696ABC0];
      if (v9[3])
      {
        v11 = *(v9 + 2);
      }

      else
      {
        v11 = 0;
      }

      v37 = *MEMORY[0x1E696A578];
      v12 = v9[2];
      v13 = v12;
      if (!v12)
      {
        if (v8[3])
        {
          v14 = *(v8 + 2);
        }

        else
        {
          v14 = 0;
        }

        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error [%ld]", v14];
      }

      v38[0] = v13;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      if (*(a1 + 48))
      {
        v16 = @"ON";
      }

      else
      {
        v16 = @"OFF";
      }

      v17 = [v10 msv_errorWithDomain:@"ICLiveLinkServerErrorDomain" code:v11 userInfo:v15 debugDescription:{@"Failed to turn AutoPlay %@", v16}];

      if (!v12)
      {
      }

      v18 = [*(a1 + 32) delegateQueue];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __56__ICSharedListeningQueue_setAutoPlayEnabled_completion___block_invoke_3;
      v31[3] = &unk_1E7BF9EC8;
      v19 = *(a1 + 40);
      v32 = v17;
      v33 = v19;
      v20 = v17;
      dispatch_async(v18, v31);
    }

    else
    {
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __56__ICSharedListeningQueue_setAutoPlayEnabled_completion___block_invoke_4;
      v28 = &unk_1E7BFA490;
      v30 = *(a1 + 40);
      v29 = *(a1 + 32);
      v21 = MEMORY[0x1B8C781E0](&v25);
      v22 = *(a1 + 32);
      if (*(a1 + 48))
      {
        v23 = @"ON";
      }

      else
      {
        v23 = @"OFF";
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UpdateAfterAutoplayToggled%@", v23, v25, v26, v27, v28];
      [v22 _updateQueueWithReason:v24 completion:v21];

      v8 = 0;
      v20 = v30;
    }

    goto LABEL_26;
  }

  if (*(a1 + 40))
  {
    v7 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__ICSharedListeningQueue_setAutoPlayEnabled_completion___block_invoke_2;
    block[3] = &unk_1E7BF9EC8;
    v36 = *(a1 + 40);
    v35 = v6;
    dispatch_async(v7, block);

    v8 = v36;
LABEL_26:
  }
}

void __56__ICSharedListeningQueue_setAutoPlayEnabled_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) delegateQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__ICSharedListeningQueue_setAutoPlayEnabled_completion___block_invoke_5;
    v5[3] = &unk_1E7BF9EC8;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (BOOL)isAutoPlayEnabled
{
  if (![(ICSharedListeningQueue *)self isAutoPlayAvailable])
  {
    return 0;
  }

  v3 = [(ICSharedListeningQueue *)self playbackControlSettings];
  v4 = v3 && (*(v3 + 52) & 4) != 0 && *(v3 + 48) == 1;

  return v4;
}

- (BOOL)isAutoPlayAvailable
{
  v2 = [(ICSharedListeningQueue *)self playbackControlSettings];
  v3 = v2;
  if (!v2)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_4;
  }

  v5 = v4[56];
LABEL_4:

  return v5 & 1;
}

- (BOOL)hasActiveRadioStation
{
  v2 = [(ICSharedListeningQueue *)self playbackControlSettings];
  v3 = v2 && (*(v2 + 52) & 4) != 0 && *(v2 + 48) == 2;

  return v3;
}

- (id)containerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MSVSectionedCollection *)self->_tracklist allSections];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__ICSharedListeningQueue_containerForIdentifier___block_invoke;
  v9[3] = &unk_1E7BF52B0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 msv_firstWhere:v9];

  return v7;
}

uint64_t __49__ICSharedListeningQueue_containerForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (ICSharedListeningQueue)initWithProtobuf:(id)a3 serverQueueContext:(id)a4 liveLink:(id)a5 playbackControlSettings:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = ICSharedListeningQueue;
  v14 = [(ICSharedListeningQueue *)&v26 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  objc_storeWeak(&v14->_liveLink, v12);
  if (v10)
  {
    objc_storeStrong(&v15->_identifier, v10[7]);
    if ((*(v10 + 68) & 2) != 0)
    {
      v17 = *(v10 + 11);
      v18 = v17 == 1;
      v19 = v17 == 2;
      v16 = 2;
      if (!v19)
      {
        v16 = v18;
      }

      goto LABEL_7;
    }
  }

  else
  {
    objc_storeStrong(&v15->_identifier, 0);
  }

  v16 = 0;
LABEL_7:
  v15->_explicitContentState = v16;
  v20 = [v11 copy];
  serverQueueContext = v15->_serverQueueContext;
  v15->_serverQueueContext = v20;

  if (v10)
  {
    v22 = *(v10 + 16);
  }

  else
  {
    v22 = 0;
  }

  v15->_serverRevision = v22;
  v23 = [(ICSharedListeningQueue *)v15 _tracklistForQueueProto:v10];
  tracklist = v15->_tracklist;
  v15->_tracklist = v23;

  objc_storeStrong(&v15->_playbackControlSettings, a6);
LABEL_10:

  return v15;
}

@end