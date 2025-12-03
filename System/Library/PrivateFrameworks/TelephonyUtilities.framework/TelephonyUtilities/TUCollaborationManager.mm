@interface TUCollaborationManager
- (BOOL)isCollaborationLocallyInitiatedForConversation:(id)conversation;
- (TUCollaborationManager)initWithCollaborationProvider:(id)provider;
- (TUCollaborationManager)initWithCollaborationProvider:(id)provider featureFlags:(id)flags deviceSupport:(id)support;
- (TUCollaborationManagerDelegate)delegate;
- (id)collaborationForConversation:(id)conversation;
- (int64_t)collaborationStateForConversation:(id)conversation;
- (void)associateCollaborationWithNewConversation:(id)conversation;
- (void)collaborationsDidChange:(id)change;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)notifyDelegateOfHighlightChanged:(id)changed onConversation:(id)conversation;
- (void)participant:(id)participant addedHighlightToConversation:(id)conversation highlightIdentifier:(id)identifier oldHighlightIdentifier:(id)highlightIdentifier isFirstAdd:(BOOL)add;
- (void)participant:(id)participant reAddedHighlightToConversation:(id)conversation highlightIdentifier:(id)identifier;
- (void)participant:(id)participant removedHighlightFromConversation:(id)conversation highlightIdentifier:(id)identifier;
- (void)queueCollaborationIdentifierForCollaboration:(id)collaboration toConversation:(id)conversation;
- (void)setCollaborationState:(int64_t)state forCollaborationIdentifier:(id)identifier;
- (void)startTrackingCollaborationIfNecessaryAndNotifyDelegate:(id)delegate forConversation:(id)conversation;
- (void)stopTrackingHighlightForConversation:(id)conversation;
- (void)vendNoticeForCollaboration:(id)collaboration participant:(id)participant forConversation:(id)conversation type:(int64_t)type;
@end

@implementation TUCollaborationManager

- (TUCollaborationManager)initWithCollaborationProvider:(id)provider
{
  providerCopy = provider;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getFTDeviceSupportClass_softClass;
  v15 = getFTDeviceSupportClass_softClass;
  if (!getFTDeviceSupportClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getFTDeviceSupportClass_block_invoke;
    v11[3] = &unk_1E7424CD8;
    v11[4] = &v12;
    __getFTDeviceSupportClass_block_invoke(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  sharedInstance = [v5 sharedInstance];
  v8 = objc_alloc_init(TUFeatureFlags);
  v9 = [(TUCollaborationManager *)self initWithCollaborationProvider:providerCopy featureFlags:v8 deviceSupport:sharedInstance];

  return v9;
}

- (TUCollaborationManager)initWithCollaborationProvider:(id)provider featureFlags:(id)flags deviceSupport:(id)support
{
  providerCopy = provider;
  flagsCopy = flags;
  supportCopy = support;
  v26.receiver = self;
  v26.super_class = TUCollaborationManager;
  v12 = [(TUCollaborationManager *)&v26 init];
  if (v12)
  {
    v13 = dispatch_queue_create("com.apple.telephonyutilities.collaborationmanager", 0);
    queue = v12->_queue;
    v12->_queue = v13;

    objc_storeStrong(&v12->_featureFlags, flags);
    v15 = [MEMORY[0x1E695DFA8] set];
    pendingHighlightIdentifiers = v12->_pendingHighlightIdentifiers;
    v12->_pendingHighlightIdentifiers = v15;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    originatingParticipantByHighlightIdentifier = v12->_originatingParticipantByHighlightIdentifier;
    v12->_originatingParticipantByHighlightIdentifier = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    highlightsByIdentifier = v12->_highlightsByIdentifier;
    v12->_highlightsByIdentifier = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    conversationsByHighlightIdentifier = v12->_conversationsByHighlightIdentifier;
    v12->_conversationsByHighlightIdentifier = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    collaborationStateByIdentifier = v12->_collaborationStateByIdentifier;
    v12->_collaborationStateByIdentifier = dictionary4;

    objc_storeStrong(&v12->_collaborationProvider, provider);
    v12->_isIpad = [supportCopy deviceType] == 4;
    [providerCopy setDelegate:v12];
  }

  return v12;
}

- (void)queueCollaborationIdentifierForCollaboration:(id)collaboration toConversation:(id)conversation
{
  collaborationCopy = collaboration;
  conversationCopy = conversation;
  queue = [(TUCollaborationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__TUCollaborationManager_queueCollaborationIdentifierForCollaboration_toConversation___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = collaborationCopy;
  v13 = conversationCopy;
  v9 = conversationCopy;
  v10 = collaborationCopy;
  dispatch_async(queue, block);
}

void __86__TUCollaborationManager_queueCollaborationIdentifierForCollaboration_toConversation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 gelatoEnabled];

  if (v3)
  {
    [*(a1 + 32) setPendingCollaborationToAdd:*(a1 + 40)];
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);

    [v5 setPendingConversationToAdd:v4];
  }
}

- (BOOL)isCollaborationLocallyInitiatedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(TUCollaborationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__TUCollaborationManager_isCollaborationLocallyInitiatedForConversation___block_invoke;
  block[3] = &unk_1E7425390;
  v9 = conversationCopy;
  v10 = &v11;
  block[4] = self;
  v6 = conversationCopy;
  dispatch_sync(queue, block);

  LOBYTE(conversationCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return conversationCopy;
}

void __73__TUCollaborationManager_isCollaborationLocallyInitiatedForConversation___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) originatingParticipantByHighlightIdentifier];
  v2 = [*(a1 + 40) highlightIdentifiers];
  v3 = [v2 anyObject];
  v4 = [v8 objectForKeyedSubscript:v3];
  v5 = [v4 handle];
  v6 = [*(a1 + 40) localMember];
  v7 = [v6 handle];
  *(*(*(a1 + 48) + 8) + 24) = [v5 isEquivalentToHandle:v7];
}

- (void)collaborationsDidChange:(id)change
{
  changeCopy = change;
  queue = [(TUCollaborationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__TUCollaborationManager_collaborationsDidChange___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

void __50__TUCollaborationManager_collaborationsDidChange___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 gelatoEnabled];

  if (v3)
  {
    v4 = [*(a1 + 32) pendingCollaborationToAdd];

    if (v4)
    {
      v5 = [*(a1 + 32) collaborationProvider];
      v6 = [*(a1 + 32) pendingCollaborationToAdd];
      v7 = [v5 collaborationHighlightForIdentifier:v6];

      if (v7)
      {
        v8 = TUDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v7;
          _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Pending collaboration fulfilled: %@", buf, 0xCu);
        }

        v9 = [*(a1 + 32) delegate];
        v10 = [*(a1 + 32) pendingConversationToAdd];
        [v9 addCollaboration:v7 forConversation:v10];

        [*(a1 + 32) setPendingCollaborationToAdd:0];
        [*(a1 + 32) setPendingConversationToAdd:0];
      }
    }

    v11 = [*(a1 + 32) highlightsByIdentifier];
    v12 = [v11 copy];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = *v66;
      *&v14 = 138412290;
      v59 = v14;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v66 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v65 + 1) + 8 * i);
          v19 = [*(a1 + 40) collaborationHighlightForIdentifier:{v18, v59}];
          v20 = [obj objectForKeyedSubscript:v18];
          v21 = TUDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v71 = v19;
            v72 = 2112;
            v73 = v20;
            _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "highlight: %@ oldHighlight: %@", buf, 0x16u);
          }

          v22 = [*(a1 + 32) conversationsByHighlightIdentifier];
          v23 = [v22 objectForKeyedSubscript:v18];

          v24 = [*(a1 + 32) originatingParticipantByHighlightIdentifier];
          v25 = [v24 objectForKeyedSubscript:v18];

          if (!v19)
          {
            v29 = TUDefaultLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v59;
              v71 = v18;
              _os_log_impl(&dword_1956FD000, v29, OS_LOG_TYPE_DEFAULT, "highlight with identifier: %@ removed from SWY", buf, 0xCu);
            }

            v30 = [*(a1 + 32) originatingParticipantByHighlightIdentifier];
            [v30 setObject:0 forKeyedSubscript:v18];

            v31 = [*(a1 + 32) highlightsByIdentifier];
            [v31 setObject:0 forKeyedSubscript:v18];

            v32 = [*(a1 + 32) pendingHighlightIdentifiers];
            [v32 addObject:v18];

            [*(a1 + 32) notifyDelegateOfHighlightChanged:0 onConversation:v23];
            v33 = *(a1 + 32);
            v34 = v20;
            v35 = v25;
            v36 = v23;
            v37 = 16;
            goto LABEL_27;
          }

          if (!v20)
          {
            v38 = TUDefaultLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
            {
              *buf = v59;
              v71 = v18;
              _os_log_fault_impl(&dword_1956FD000, v38, OS_LOG_TYPE_FAULT, "highlight with identifier: %@ added to SWY - should not be possible to hit this case", buf, 0xCu);
            }

            v39 = [*(a1 + 32) highlightsByIdentifier];
            [v39 setObject:v19 forKeyedSubscript:v18];

            v40 = [*(a1 + 32) pendingHighlightIdentifiers];
            [v40 removeObject:v18];

            [*(a1 + 32) notifyDelegateOfHighlightChanged:v19 onConversation:v23];
            v33 = *(a1 + 32);
            v34 = v19;
            v35 = v25;
            v36 = v23;
            v37 = 15;
LABEL_27:
            [v33 vendNoticeForCollaboration:v34 participant:v35 forConversation:v36 type:v37];
            goto LABEL_28;
          }

          if (([v19 isEqual:v20] & 1) == 0)
          {
            v26 = TUDefaultLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v71 = v19;
              v72 = 2112;
              v73 = v18;
              _os_log_impl(&dword_1956FD000, v26, OS_LOG_TYPE_DEFAULT, "highlight: %@ with identifier: %@ changed", buf, 0x16u);
            }

            v27 = [*(a1 + 32) highlightsByIdentifier];
            [v27 setObject:v19 forKeyedSubscript:v18];

            v28 = [*(a1 + 32) pendingHighlightIdentifiers];
            [v28 removeObject:v18];
          }

LABEL_28:
        }

        v15 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v15);
    }

    v41 = [*(a1 + 32) pendingHighlightIdentifiers];
    v42 = [v41 copy];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v43 = v42;
    v44 = [v43 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v62;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v62 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v61 + 1) + 8 * j);
          v49 = [*(a1 + 40) collaborationHighlightForIdentifier:v48];
          v50 = [*(a1 + 32) conversationsByHighlightIdentifier];
          v51 = [v50 objectForKeyedSubscript:v48];

          v52 = [*(a1 + 32) originatingParticipantByHighlightIdentifier];
          v53 = [v52 objectForKeyedSubscript:v48];

          if (v49)
          {
            v54 = v51 == 0;
          }

          else
          {
            v54 = 1;
          }

          if (!v54)
          {
            v55 = TUDefaultLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v71 = v49;
              v72 = 2112;
              v73 = v48;
              _os_log_impl(&dword_1956FD000, v55, OS_LOG_TYPE_DEFAULT, "highlight: %@ with identifier: %@ added to SWY from pending", buf, 0x16u);
            }

            v56 = [*(a1 + 32) highlightsByIdentifier];
            [v56 setObject:v49 forKeyedSubscript:v48];

            v57 = [*(a1 + 32) pendingHighlightIdentifiers];
            [v57 removeObject:v48];

            [*(a1 + 32) startTrackingCollaborationIfNecessaryAndNotifyDelegate:v49 forConversation:v51];
            [*(a1 + 32) vendNoticeForCollaboration:v49 participant:v53 forConversation:v51 type:15];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v45);
    }
  }

  v58 = *MEMORY[0x1E69E9840];
}

- (void)vendNoticeForCollaboration:(id)collaboration participant:(id)participant forConversation:(id)conversation type:(int64_t)type
{
  v29 = *MEMORY[0x1E69E9840];
  collaborationCopy = collaboration;
  participantCopy = participant;
  conversationCopy = conversation;
  queue = [(TUCollaborationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(TUCollaborationManager *)self featureFlags];
  gelatoEnabled = [featureFlags gelatoEnabled];

  if (gelatoEnabled)
  {
    if ([conversationCopy avMode] == 1)
    {
      v16 = TUDefaultLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        goto LABEL_10;
      }

      identifier = [collaborationCopy identifier];
      v23 = 138412290;
      v24 = identifier;
      _os_log_impl(&dword_1956FD000, v16, OS_LOG_TYPE_DEFAULT, "Not posting a notice for collaboration: %@ since the conversation is avModeAudio", &v23, 0xCu);
    }

    else
    {
      v18 = [TUCollaborationNotice alloc];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v16 = [(TUCollaborationNotice *)v18 initWithUUID:uUID];

      [v16 setSessionEventType:type];
      [v16 setCollaboration:collaborationCopy];
      v20 = TUDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        collaborationIdentifier = [collaborationCopy collaborationIdentifier];
        v23 = 138412802;
        v24 = v16;
        v25 = 2112;
        v26 = collaborationIdentifier;
        v27 = 2112;
        v28 = participantCopy;
        _os_log_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEFAULT, "Vending notice: %@ for collaboration: %@, for participant: %@", &v23, 0x20u);
      }

      identifier = [(TUCollaborationManager *)self delegate];
      [identifier conversation:conversationCopy participant:participantCopy addedCollaborationNotice:v16];
    }

    goto LABEL_9;
  }

LABEL_10:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfHighlightChanged:(id)changed onConversation:(id)conversation
{
  changedCopy = changed;
  conversationCopy = conversation;
  queue = [(TUCollaborationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(TUCollaborationManager *)self featureFlags];
  gelatoEnabled = [featureFlags gelatoEnabled];

  if (gelatoEnabled)
  {
    delegate = [(TUCollaborationManager *)self delegate];
    [delegate collaborationChanged:changedCopy forConversation:conversationCopy collaborationState:-1];
  }
}

- (void)stopTrackingHighlightForConversation:(id)conversation
{
  v17 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  queue = [(TUCollaborationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  highlightIdentifiers = [conversationCopy highlightIdentifiers];

  anyObject = [highlightIdentifiers anyObject];

  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = anyObject;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to stop tracking highlight for conversation with collaboration Identifier: %@", &v15, 0xCu);
  }

  if (anyObject)
  {
    pendingHighlightIdentifiers = [(TUCollaborationManager *)self pendingHighlightIdentifiers];
    [pendingHighlightIdentifiers removeObject:anyObject];

    originatingParticipantByHighlightIdentifier = [(TUCollaborationManager *)self originatingParticipantByHighlightIdentifier];
    [originatingParticipantByHighlightIdentifier removeObjectForKey:anyObject];

    highlightsByIdentifier = [(TUCollaborationManager *)self highlightsByIdentifier];
    [highlightsByIdentifier removeObjectForKey:anyObject];

    conversationsByHighlightIdentifier = [(TUCollaborationManager *)self conversationsByHighlightIdentifier];
    [conversationsByHighlightIdentifier removeObjectForKey:anyObject];

    collaborationStateByIdentifier = [(TUCollaborationManager *)self collaborationStateByIdentifier];
    [collaborationStateByIdentifier removeObjectForKey:anyObject];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)collaborationForConversation:(id)conversation
{
  conversationCopy = conversation;
  featureFlags = [(TUCollaborationManager *)self featureFlags];
  gelatoEnabled = [featureFlags gelatoEnabled];

  if (gelatoEnabled)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__8;
    v18 = __Block_byref_object_dispose__8;
    v19 = 0;
    queue = [(TUCollaborationManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__TUCollaborationManager_collaborationForConversation___block_invoke;
    block[3] = &unk_1E7426328;
    selfCopy = self;
    v13 = &v14;
    v11 = conversationCopy;
    dispatch_sync(queue, block);

    v8 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __55__TUCollaborationManager_collaborationForConversation___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) highlightIdentifiers];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) highlightIdentifiers];
    v5 = [v4 anyObject];

    v6 = [*(a1 + 40) pendingHighlightIdentifiers];
    v7 = [v6 containsObject:v5];

    if (v7)
    {
      v8 = TUDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v20 = 138412546;
        v21 = v5;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Highlight identifier: %@ is currently pending for conversation: %@", &v20, 0x16u);
      }

      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;
    }

    else
    {
      v15 = [*(a1 + 40) collaborationProvider];
      v16 = [v15 collaborationHighlightForIdentifier:v5];
      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    v19 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
    v14 = *MEMORY[0x1E69E9840];
  }
}

- (int64_t)collaborationStateForConversation:(id)conversation
{
  conversationCopy = conversation;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  queue = [(TUCollaborationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__TUCollaborationManager_collaborationStateForConversation___block_invoke;
  block[3] = &unk_1E7426350;
  block[4] = self;
  v10 = conversationCopy;
  v11 = &v12;
  v6 = conversationCopy;
  dispatch_sync(queue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __60__TUCollaborationManager_collaborationStateForConversation___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 gelatoEnabled];

  if (v3)
  {
    v4 = [*(a1 + 40) highlightIdentifiers];
    v5 = [v4 anyObject];

    if (v5)
    {
      v6 = [*(a1 + 32) collaborationStateByIdentifier];
      v7 = [v6 objectForKeyedSubscript:v5];

      if (v7)
      {
        v8 = [*(a1 + 32) collaborationStateByIdentifier];
        v9 = [v8 objectForKeyedSubscript:v5];
        *(*(*(a1 + 48) + 8) + 24) = [v9 intValue];
      }
    }

    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(*(a1 + 48) + 8) + 24);
      v13 = 134217984;
      v14 = v11;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Collaboration state for conversation is %ld", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)associateCollaborationWithNewConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(TUCollaborationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__TUCollaborationManager_associateCollaborationWithNewConversation___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = conversationCopy;
  selfCopy = self;
  v6 = conversationCopy;
  dispatch_async(queue, v7);
}

void __68__TUCollaborationManager_associateCollaborationWithNewConversation___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) highlightIdentifiers];
    v4 = [v3 anyObject];
    v5 = *(a1 + 32);
    *buf = 138412546;
    v36 = v4;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Conversation created with collaboration identifier: %@ conversation: %@", buf, 0x16u);
  }

  v6 = [*(a1 + 40) featureFlags];
  v7 = [v6 gelatoEnabled];

  if (v7)
  {
    v8 = [*(a1 + 32) highlightIdentifiers];
    v9 = [v8 anyObject];

    v10 = [*(a1 + 40) collaborationProvider];
    v11 = [v10 collaborationHighlightForIdentifier:v9];

    if (v11)
    {
      v12 = TUDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v9;
        _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "collaboration found: %@ ", buf, 0xCu);
      }

      v13 = [*(a1 + 40) highlightsByIdentifier];
      [v13 setObject:v11 forKeyedSubscript:v9];

      v14 = *(a1 + 32);
      v15 = [*(a1 + 40) conversationsByHighlightIdentifier];
      [v15 setObject:v14 forKeyedSubscript:v9];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = [*(a1 + 32) activeRemoteParticipants];
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        v29 = v9;
        v18 = *v31;
        while (2)
        {
          for (i = 0; i != v17; i = (i + 1))
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v30 + 1) + 8 * i);
            v21 = [v20 handle];
            v22 = [*(a1 + 32) initiator];
            v23 = [v21 isEqualToHandle:v22];

            if (v23)
            {
              v17 = v20;
              goto LABEL_17;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

LABEL_17:
        v9 = v29;
      }

      if ([*(a1 + 32) state] == 3 && objc_msgSend(*(a1 + 40), "isIpad"))
      {
        [*(a1 + 40) vendNoticeForCollaboration:v11 participant:v17 forConversation:*(a1 + 32) type:15];
      }

      [*(a1 + 40) notifyDelegateOfHighlightChanged:v11 onConversation:*(a1 + 32)];
    }

    else
    {
      v24 = [*(a1 + 40) pendingHighlightIdentifiers];
      [v24 addObject:v9];

      v25 = *(a1 + 32);
      v26 = [*(a1 + 40) conversationsByHighlightIdentifier];
      [v26 setObject:v25 forKeyedSubscript:v9];

      v17 = TUDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [*(a1 + 40) pendingHighlightIdentifiers];
        *buf = 138412290;
        v36 = v27;
        _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, "Highlight not found: %@ ", buf, 0xCu);
      }
    }

    [*(a1 + 40) startTrackingCollaborationIfNecessaryAndNotifyDelegate:v11 forConversation:*(a1 + 32)];
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)participant:(id)participant addedHighlightToConversation:(id)conversation highlightIdentifier:(id)identifier oldHighlightIdentifier:(id)highlightIdentifier isFirstAdd:(BOOL)add
{
  participantCopy = participant;
  conversationCopy = conversation;
  identifierCopy = identifier;
  highlightIdentifierCopy = highlightIdentifier;
  queue = [(TUCollaborationManager *)self queue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __121__TUCollaborationManager_participant_addedHighlightToConversation_highlightIdentifier_oldHighlightIdentifier_isFirstAdd___block_invoke;
  v21[3] = &unk_1E7426378;
  v22 = participantCopy;
  v23 = identifierCopy;
  v24 = conversationCopy;
  selfCopy = self;
  addCopy = add;
  v26 = highlightIdentifierCopy;
  v17 = highlightIdentifierCopy;
  v18 = conversationCopy;
  v19 = identifierCopy;
  v20 = participantCopy;
  dispatch_async(queue, v21);
}

void __121__TUCollaborationManager_participant_addedHighlightToConversation_highlightIdentifier_oldHighlightIdentifier_isFirstAdd___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v40 = 138412802;
    v41 = v3;
    v42 = 2112;
    v43 = v4;
    v44 = 2112;
    v45 = v5;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Participant: %@ added highlightIdentifier: %@ to conversation: %@", &v40, 0x20u);
  }

  v6 = [*(a1 + 56) featureFlags];
  v7 = [v6 gelatoEnabled];

  if (v7)
  {
    if (*(a1 + 72))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 56) originatingParticipantByHighlightIdentifier];
      [v9 setObject:v8 forKeyedSubscript:*(a1 + 40)];

      if (!*(a1 + 64))
      {
        v26 = [*(a1 + 56) collaborationProvider];
        v20 = [v26 collaborationHighlightForIdentifier:*(a1 + 40)];

        if (v20)
        {
          v27 = TUDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 40);
            v40 = 138412290;
            v41 = v28;
            _os_log_impl(&dword_1956FD000, v27, OS_LOG_TYPE_DEFAULT, "Highlight found: %@ ", &v40, 0xCu);
          }

          v29 = [*(a1 + 56) highlightsByIdentifier];
          [v29 setObject:v20 forKeyedSubscript:*(a1 + 40)];

          v30 = *(a1 + 48);
          v31 = [*(a1 + 56) conversationsByHighlightIdentifier];
          [v31 setObject:v30 forKeyedSubscript:*(a1 + 40)];

          v32 = *(a1 + 56);
          v33 = [v32 originatingParticipantByHighlightIdentifier];
          v34 = [v33 objectForKeyedSubscript:*(a1 + 40)];
          [v32 vendNoticeForCollaboration:v20 participant:v34 forConversation:*(a1 + 48) type:15];

          [*(a1 + 56) notifyDelegateOfHighlightChanged:v20 onConversation:*(a1 + 48)];
          goto LABEL_20;
        }

        v35 = [*(a1 + 56) pendingHighlightIdentifiers];
        [v35 addObject:*(a1 + 40)];

        v36 = *(a1 + 48);
        v37 = [*(a1 + 56) conversationsByHighlightIdentifier];
        [v37 setObject:v36 forKeyedSubscript:*(a1 + 40)];

        v24 = TUDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [*(a1 + 56) pendingHighlightIdentifiers];
          v40 = 138412290;
          v41 = v38;
          _os_log_impl(&dword_1956FD000, v24, OS_LOG_TYPE_DEFAULT, "Highlight not found: %@ ", &v40, 0xCu);
        }

LABEL_19:

LABEL_20:
        [*(a1 + 56) startTrackingCollaborationIfNecessaryAndNotifyDelegate:v20 forConversation:*(a1 + 48)];

        goto LABEL_21;
      }

      if (([*(a1 + 40) isEqualToString:?] & 1) == 0)
      {
        v10 = TUDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 64);
          v12 = *(a1 + 40);
          v40 = 138412546;
          v41 = v11;
          v42 = 2112;
          v43 = v12;
          _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Changed collaborations from oldIdentifier: %@ to %@", &v40, 0x16u);
        }

        v13 = [*(a1 + 56) originatingParticipantByHighlightIdentifier];
        [v13 removeObjectForKey:*(a1 + 64)];

        v14 = [*(a1 + 56) conversationsByHighlightIdentifier];
        [v14 removeObjectForKey:*(a1 + 64)];

        v15 = [*(a1 + 56) highlightsByIdentifier];
        [v15 removeObjectForKey:*(a1 + 64)];

        v16 = [*(a1 + 56) pendingHighlightIdentifiers];
        [v16 removeObject:*(a1 + 64)];

        v17 = *(a1 + 48);
        v18 = [*(a1 + 56) conversationsByHighlightIdentifier];
        [v18 setObject:v17 forKeyedSubscript:*(a1 + 40)];

        v19 = [*(a1 + 56) collaborationProvider];
        v20 = [v19 collaborationHighlightForIdentifier:*(a1 + 40)];

        v21 = *(a1 + 56);
        if (v20)
        {
          v22 = [v21 highlightsByIdentifier];
          [v22 setObject:v20 forKeyedSubscript:*(a1 + 40)];

          v23 = *(a1 + 56);
          v24 = [v23 originatingParticipantByHighlightIdentifier];
          v25 = [v24 objectForKeyedSubscript:*(a1 + 40)];
          [v23 vendNoticeForCollaboration:v20 participant:v25 forConversation:*(a1 + 48) type:15];
        }

        else
        {
          v24 = [v21 pendingHighlightIdentifiers];
          [v24 addObject:*(a1 + 40)];
        }

        goto LABEL_19;
      }
    }

    else
    {
      [*(a1 + 56) participant:*(a1 + 32) reAddedHighlightToConversation:*(a1 + 48) highlightIdentifier:*(a1 + 40)];
    }
  }

LABEL_21:
  v39 = *MEMORY[0x1E69E9840];
}

- (void)participant:(id)participant reAddedHighlightToConversation:(id)conversation highlightIdentifier:(id)identifier
{
  participantCopy = participant;
  conversationCopy = conversation;
  identifierCopy = identifier;
  queue = [(TUCollaborationManager *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__TUCollaborationManager_participant_reAddedHighlightToConversation_highlightIdentifier___block_invoke;
  v15[3] = &unk_1E7425188;
  v16 = participantCopy;
  v17 = identifierCopy;
  v18 = conversationCopy;
  selfCopy = self;
  v12 = conversationCopy;
  v13 = identifierCopy;
  v14 = participantCopy;
  dispatch_async(queue, v15);
}

void __89__TUCollaborationManager_participant_reAddedHighlightToConversation_highlightIdentifier___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v16 = 138412802;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Participant: %@ readded highlightIdentifier: %@ to conversation: %@", &v16, 0x20u);
  }

  v6 = [*(a1 + 56) featureFlags];
  v7 = [v6 gelatoEnabled];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 56) originatingParticipantByHighlightIdentifier];
    [v9 setObject:v8 forKeyedSubscript:*(a1 + 40)];

    v10 = [*(a1 + 56) collaborationProvider];
    v11 = [v10 collaborationHighlightForIdentifier:*(a1 + 40)];

    v12 = *(a1 + 56);
    v13 = [v12 originatingParticipantByHighlightIdentifier];
    v14 = [v13 objectForKeyedSubscript:*(a1 + 40)];
    [v12 vendNoticeForCollaboration:v11 participant:v14 forConversation:*(a1 + 48) type:15];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)participant:(id)participant removedHighlightFromConversation:(id)conversation highlightIdentifier:(id)identifier
{
  participantCopy = participant;
  conversationCopy = conversation;
  identifierCopy = identifier;
  queue = [(TUCollaborationManager *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__TUCollaborationManager_participant_removedHighlightFromConversation_highlightIdentifier___block_invoke;
  v15[3] = &unk_1E7425188;
  v16 = participantCopy;
  v17 = identifierCopy;
  v18 = conversationCopy;
  selfCopy = self;
  v12 = conversationCopy;
  v13 = identifierCopy;
  v14 = participantCopy;
  dispatch_async(queue, v15);
}

void __91__TUCollaborationManager_participant_removedHighlightFromConversation_highlightIdentifier___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v17 = 138412802;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Participant: %@ removed highlightIdentifier: %@ from conversation: %@", &v17, 0x20u);
  }

  v6 = [*(a1 + 56) featureFlags];
  v7 = [v6 gelatoEnabled];

  if (v7)
  {
    v8 = [*(a1 + 56) highlightsByIdentifier];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 40)];

    v10 = [*(a1 + 56) originatingParticipantByHighlightIdentifier];
    [v10 removeObjectForKey:*(a1 + 40)];

    v11 = [*(a1 + 56) pendingHighlightIdentifiers];
    [v11 removeObject:*(a1 + 40)];

    v12 = [*(a1 + 56) highlightsByIdentifier];
    [v12 removeObjectForKey:*(a1 + 40)];

    v13 = [*(a1 + 56) conversationsByHighlightIdentifier];
    [v13 removeObjectForKey:*(a1 + 40)];

    v14 = [*(a1 + 56) collaborationStateByIdentifier];
    [v14 removeObjectForKey:*(a1 + 40)];

    v15 = [*(a1 + 56) delegate];
    [v15 collaborationChanged:0 forConversation:*(a1 + 48) collaborationState:0];

    if (v9)
    {
      [*(a1 + 56) vendNoticeForCollaboration:v9 participant:*(a1 + 32) forConversation:*(a1 + 48) type:16];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setCollaborationState:(int64_t)state forCollaborationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(TUCollaborationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__TUCollaborationManager_setCollaborationState_forCollaborationIdentifier___block_invoke;
  block[3] = &unk_1E7425028;
  v10 = identifierCopy;
  stateCopy = state;
  block[4] = self;
  v8 = identifierCopy;
  dispatch_async(queue, block);
}

void __75__TUCollaborationManager_setCollaborationState_forCollaborationIdentifier___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) featureFlags];
  v5 = [v4 gelatoEnabled];

  if (!v5)
  {
    return;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v6 = [*(a1 + 32) collaborationStateByIdentifier];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  if (!v7 || ([*(a1 + 32) collaborationStateByIdentifier], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "objectForKeyedSubscript:", *(a1 + 40)), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "isEqualToNumber:", v2)))
  {
    v8 = [*(a1 + 32) collaborationStateByIdentifier];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 40)];

    if (v7)
    {
    }

    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = [*(a1 + 32) collaborationStateByIdentifier];
  [v10 setObject:v18 forKeyedSubscript:*(a1 + 40)];

  v11 = [*(a1 + 32) conversationsByHighlightIdentifier];
  v12 = [v11 objectForKeyedSubscript:*(a1 + 40)];

  if (v12)
  {
    v13 = [*(a1 + 32) delegate];
    v14 = [*(a1 + 32) highlightsByIdentifier];
    v15 = [v14 objectForKeyedSubscript:*(a1 + 40)];
    v16 = [*(a1 + 32) conversationsByHighlightIdentifier];
    v17 = [v16 objectForKeyedSubscript:*(a1 + 40)];
    [v13 collaborationChanged:v15 forConversation:v17 collaborationState:*(a1 + 48)];
  }

LABEL_11:
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(TUCollaborationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__TUCollaborationManager_conversationManager_stateChangedForConversation___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = conversationCopy;
  v7 = conversationCopy;
  dispatch_async(queue, v8);
}

void __74__TUCollaborationManager_conversationManager_stateChangedForConversation___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 gelatoEnabled];

  if (v3 && [*(a1 + 32) isIpad] && objc_msgSend(*(a1 + 40), "state") == 3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [*(a1 + 40) activeRemoteParticipants];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = *v18;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 handle];
          v10 = [*(a1 + 40) initiator];
          v11 = [v9 isEqualToHandle:v10];

          if (v11)
          {
            v5 = v8;
            goto LABEL_14;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v12 = [*(a1 + 32) collaborationProvider];
    v13 = [*(a1 + 40) highlightIdentifiers];
    v14 = [v13 anyObject];
    v15 = [v12 collaborationHighlightForIdentifier:v14];

    [*(a1 + 32) vendNoticeForCollaboration:v15 participant:v5 forConversation:*(a1 + 40) type:15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)startTrackingCollaborationIfNecessaryAndNotifyDelegate:(id)delegate forConversation:(id)conversation
{
  delegateCopy = delegate;
  conversationCopy = conversation;
  queue = [(TUCollaborationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(TUCollaborationManager *)self featureFlags];
  gelatoEnabled = [featureFlags gelatoEnabled];

  if (gelatoEnabled)
  {
    delegate = [(TUCollaborationManager *)self delegate];
    v12 = delegate;
    if (delegateCopy)
    {
      objc_initWeak(&location, self);
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __97__TUCollaborationManager_startTrackingCollaborationIfNecessaryAndNotifyDelegate_forConversation___block_invoke;
      v20 = &unk_1E74263A0;
      objc_copyWeak(&v25, &location);
      selfCopy = self;
      v13 = delegateCopy;
      v22 = v13;
      v14 = v12;
      v23 = v14;
      v15 = conversationCopy;
      v24 = v15;
      v16 = _Block_copy(&v17);
      [v14 startTrackingCollaboration:v13 forConversation:v15 completionHandler:{v16, v17, v18, v19, v20, selfCopy}];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    else
    {
      [delegate collaborationChanged:0 forConversation:conversationCopy collaborationState:-1];
    }
  }
}

void __97__TUCollaborationManager_startTrackingCollaborationIfNecessaryAndNotifyDelegate_forConversation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = a2;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Collaboration state for conversation document state %ld", &v11, 0xCu);
  }

  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (WeakRetained)
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) collaborationIdentifier];
      [v8 setCollaborationState:a2 forCollaborationIdentifier:v9];

      [*(a1 + 48) collaborationChanged:*(a1 + 40) forConversation:*(a1 + 56) collaborationState:a2];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (TUCollaborationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end