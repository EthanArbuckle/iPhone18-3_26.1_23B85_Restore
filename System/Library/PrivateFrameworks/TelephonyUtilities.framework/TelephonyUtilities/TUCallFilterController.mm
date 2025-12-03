@interface TUCallFilterController
- (BOOL)containsRestrictedHandle:(id)handle forBundleIdentifier:(id)identifier;
- (BOOL)isRestrictedExclusivelyByScreenTimeForDialRequest:(id)request;
- (BOOL)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier;
- (BOOL)isUnknownHandle:(id)handle;
- (BOOL)shouldRestrictDialRequest:(id)request;
- (BOOL)shouldRestrictJoinConversationRequest:(id)request performSynchronously:(BOOL)synchronously;
- (BOOL)silenceUnknownCallersEnabled;
- (BOOL)silenceUnknownFaceTimeCallersEnabled;
- (BOOL)willRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier;
- (TUCallFilterController)initWithActionsDelegate:(id)delegate serialQueue:(id)queue;
- (TUCallFilterControllerActions)actionsDelegate;
- (id)addressesToCheckForRestrictionsInConversation:(id)conversation;
- (id)bundleIdentifierForCallProvider:(id)provider;
- (id)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier;
- (id)restrictedContacts:(id)contacts callProvider:(id)provider;
- (unint64_t)callFilterStatusForDialRequest:(id)request;
@end

@implementation TUCallFilterController

- (TUCallFilterControllerActions)actionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsDelegate);

  return WeakRetained;
}

- (TUCallFilterController)initWithActionsDelegate:(id)delegate serialQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = TUCallFilterController;
  v8 = [(TUCallFilterController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    objc_storeWeak(&v9->_actionsDelegate, delegateCopy);
  }

  return v9;
}

- (BOOL)silenceUnknownCallersEnabled
{
  tu_defaults = [MEMORY[0x1E695E000] tu_defaults];
  v3 = [tu_defaults BOOLForKey:@"allowContactsOnly"];

  return v3;
}

- (BOOL)silenceUnknownFaceTimeCallersEnabled
{
  tu_defaults = [MEMORY[0x1E695E000] tu_defaults];
  v3 = [tu_defaults BOOLForKey:@"silenceUnknownFaceTimeCallers"];

  return v3;
}

- (BOOL)isUnknownHandle:(id)handle
{
  if (!handle)
  {
    return 0;
  }

  value = [handle value];
  LOBYTE(self) = [(TUCallFilterController *)self isUnknownAddress:value normalizedAddress:value forBundleIdentifier:&stru_1F098C218];

  return self;
}

- (BOOL)shouldRestrictDialRequest:(id)request
{
  requestCopy = request;
  queue = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(queue);

  LOBYTE(self) = [(TUCallFilterController *)self shouldRestrictDialRequest:requestCopy performSynchronously:0];
  return self;
}

- (unint64_t)callFilterStatusForDialRequest:(id)request
{
  requestCopy = request;
  queue = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([requestCopy dialType] == 1 || (objc_msgSend(requestCopy, "isSOS") & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    handle = [requestCopy handle];
    value = [handle value];
    if ([value length])
    {
      handle2 = [requestCopy handle];
      value2 = [handle2 value];
    }

    else
    {
      value2 = &stru_1F098C218;
    }

    provider = [requestCopy provider];
    v12 = [(TUCallFilterController *)self bundleIdentifierForCallProvider:provider];

    if ([v12 length])
    {
      actionsDelegate = [(TUCallFilterController *)self actionsDelegate];
      v14 = [MEMORY[0x1E695DFD8] setWithObject:value2];
      v6 = [actionsDelegate filterStatusForAddresses:v14 forBundleIdentifier:v12];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)restrictedContacts:(id)contacts callProvider:(id)provider
{
  v39 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  providerCopy = provider;
  queue = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(queue);

  array = [MEMORY[0x1E695DF70] array];
  v9 = [(TUCallFilterController *)self bundleIdentifierForCallProvider:providerCopy];
  if ([v9 length])
  {
    v26 = providerCopy;
    v27 = contactsCopy;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = contactsCopy;
    v10 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (!v10)
    {
      goto LABEL_25;
    }

    v11 = v10;
    v12 = *v31;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        personHandle = [v14 personHandle];
        value = [personHandle value];
        if ([value length])
        {
          personHandle2 = [v14 personHandle];
          value2 = [personHandle2 value];
        }

        else
        {
          value2 = &stru_1F098C218;
        }

        actionsDelegate = [(TUCallFilterController *)self actionsDelegate];
        v20 = [MEMORY[0x1E695DFD8] setWithObject:value2];
        v21 = [actionsDelegate filterStatusForAddresses:v20 forBundleIdentifier:v9];

        v22 = TUDefaultLog();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
        switch(v21)
        {
          case 1:
            if (v23)
            {
              [TUCallFilterController restrictedContacts:v35 callProvider:v14];
            }

            goto LABEL_19;
          case 2:
            if (v23)
            {
              [TUCallFilterController restrictedContacts:v36 callProvider:v14];
            }

            goto LABEL_19;
          case 3:
            if (v23)
            {
              [TUCallFilterController restrictedContacts:v37 callProvider:v14];
            }

LABEL_19:

            [array addObject:v14];
            goto LABEL_23;
        }

        if (v23)
        {
          [TUCallFilterController restrictedContacts:v34 callProvider:v14];
        }

LABEL_23:
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (!v11)
      {
LABEL_25:

        providerCopy = v26;
        contactsCopy = v27;
        break;
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  addressesCopy = addresses;
  queue = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(queue);

  actionsDelegate = [(TUCallFilterController *)self actionsDelegate];
  v10 = [actionsDelegate policyForAddresses:addressesCopy forBundleIdentifier:identifierCopy];

  return v10;
}

- (BOOL)containsRestrictedHandle:(id)handle forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  handleCopy = handle;
  queue = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(queue);

  actionsDelegate = [(TUCallFilterController *)self actionsDelegate];
  LOBYTE(queue) = [actionsDelegate containsRestrictedHandle:handleCopy forBundleIdentifier:identifierCopy performSynchronously:0];

  return queue;
}

- (id)addressesToCheckForRestrictionsInConversation:(id)conversation
{
  v43 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  queue = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = MEMORY[0x1E695DFA8];
  mergedActiveRemoteParticipants = [conversationCopy mergedActiveRemoteParticipants];
  v8 = [v6 setWithCapacity:{objc_msgSend(mergedActiveRemoteParticipants, "count")}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = conversationCopy;
  mergedActiveRemoteParticipants2 = [conversationCopy mergedActiveRemoteParticipants];
  v10 = [mergedActiveRemoteParticipants2 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(mergedActiveRemoteParticipants2);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        handle = [v14 handle];
        value = [handle value];
        if ([value length])
        {
          handle2 = [v14 handle];
          value2 = [handle2 value];
        }

        else
        {
          value2 = &stru_1F098C218;
        }

        [v8 addObject:value2];
      }

      v11 = [mergedActiveRemoteParticipants2 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v11);
  }

  if (![v8 count])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    mergedRemoteMembers = [v32 mergedRemoteMembers];
    v20 = [mergedRemoteMembers countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(mergedRemoteMembers);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          handle3 = [v24 handle];
          value3 = [handle3 value];
          if ([value3 length])
          {
            handle4 = [v24 handle];
            value4 = [handle4 value];
          }

          else
          {
            value4 = &stru_1F098C218;
          }

          [v8 addObject:value4];
        }

        v21 = [mergedRemoteMembers countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
    }
  }

  v29 = [v8 copy];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BOOL)shouldRestrictJoinConversationRequest:(id)request performSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  selfCopy = self;
  queue = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = MEMORY[0x1E695DFA8];
  remoteMembers = [requestCopy remoteMembers];
  v9 = [v7 setWithCapacity:{objc_msgSend(remoteMembers, "count")}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = requestCopy;
  remoteMembers2 = [requestCopy remoteMembers];
  v11 = [remoteMembers2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(remoteMembers2);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        handle = [v15 handle];
        value = [handle value];
        if ([value length])
        {
          handle2 = [v15 handle];
          value2 = [handle2 value];
        }

        else
        {
          value2 = &stru_1F098C218;
        }

        [v9 addObject:value2];
      }

      v12 = [remoteMembers2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  actionsDelegate = [(TUCallFilterController *)selfCopy actionsDelegate];
  v21 = [actionsDelegate shouldRestrictAddresses:v9 forBundleIdentifier:@"com.apple.facetime" performSynchronously:synchronouslyCopy];

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)willRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  addressesCopy = addresses;
  queue = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(queue);

  actionsDelegate = [(TUCallFilterController *)self actionsDelegate];
  LOBYTE(queue) = [actionsDelegate willRestrictAddresses:addressesCopy forBundleIdentifier:identifierCopy];

  return queue;
}

- (BOOL)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  normalizedAddressCopy = normalizedAddress;
  addressCopy = address;
  queue = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(queue);

  actionsDelegate = [(TUCallFilterController *)self actionsDelegate];
  LOBYTE(queue) = [actionsDelegate isUnknownAddress:addressCopy normalizedAddress:normalizedAddressCopy forBundleIdentifier:identifierCopy];

  return queue;
}

- (BOOL)isRestrictedExclusivelyByScreenTimeForDialRequest:(id)request
{
  requestCopy = request;
  queue = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(queue);

  provider = [requestCopy provider];
  v7 = [(TUCallFilterController *)self bundleIdentifierForCallProvider:provider];

  actionsDelegate = [(TUCallFilterController *)self actionsDelegate];
  handle = [requestCopy handle];

  LOBYTE(requestCopy) = [actionsDelegate isRestrictedExclusivelyByScreenTime:handle forBundleIdentifier:v7 performSynchronously:0];
  return requestCopy;
}

- (id)bundleIdentifierForCallProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy isTelephonyProvider])
  {
    v4 = TUBundleIdentifierMobilePhoneApplication;
LABEL_5:
    bundleIdentifier = *v4;
    goto LABEL_7;
  }

  if ([providerCopy isFaceTimeProvider])
  {
    v4 = TUBundleIdentifierFaceTimeApplication;
    goto LABEL_5;
  }

  bundleIdentifier = [providerCopy bundleIdentifier];
LABEL_7:
  v6 = bundleIdentifier;

  return v6;
}

- (void)restrictedContacts:(uint64_t)a1 callProvider:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  v3 = [v2 value];
  OUTLINED_FUNCTION_2_1(v3, 5.7779e-34);
  OUTLINED_FUNCTION_1_5(&dword_1956FD000, v4, v5, "Member with handle (%@) has a status limited by screentime");
}

- (void)restrictedContacts:(uint64_t)a1 callProvider:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  v3 = [v2 value];
  OUTLINED_FUNCTION_2_1(v3, 5.7779e-34);
  OUTLINED_FUNCTION_1_5(&dword_1956FD000, v4, v5, "Member with handle (%@) has a status limited by downtime");
}

- (void)restrictedContacts:(uint64_t)a1 callProvider:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  v3 = [v2 value];
  OUTLINED_FUNCTION_2_1(v3, 5.7779e-34);
  OUTLINED_FUNCTION_1_5(&dword_1956FD000, v4, v5, "Member with handle (%@) has a restricted status");
}

- (void)restrictedContacts:(uint64_t)a1 callProvider:(uint64_t)a2 .cold.4(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  v3 = [v2 value];
  OUTLINED_FUNCTION_2_1(v3, 5.7779e-34);
  OUTLINED_FUNCTION_1_5(&dword_1956FD000, v4, v5, "Member with handle (%@) doesn't have a restricted status");
}

@end