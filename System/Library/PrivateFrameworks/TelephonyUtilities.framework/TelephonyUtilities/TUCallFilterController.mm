@interface TUCallFilterController
- (BOOL)containsRestrictedHandle:(id)a3 forBundleIdentifier:(id)a4;
- (BOOL)isRestrictedExclusivelyByScreenTimeForDialRequest:(id)a3;
- (BOOL)isUnknownAddress:(id)a3 normalizedAddress:(id)a4 forBundleIdentifier:(id)a5;
- (BOOL)isUnknownHandle:(id)a3;
- (BOOL)shouldRestrictDialRequest:(id)a3;
- (BOOL)shouldRestrictJoinConversationRequest:(id)a3 performSynchronously:(BOOL)a4;
- (BOOL)silenceUnknownCallersEnabled;
- (BOOL)silenceUnknownFaceTimeCallersEnabled;
- (BOOL)willRestrictAddresses:(id)a3 forBundleIdentifier:(id)a4;
- (TUCallFilterController)initWithActionsDelegate:(id)a3 serialQueue:(id)a4;
- (TUCallFilterControllerActions)actionsDelegate;
- (id)addressesToCheckForRestrictionsInConversation:(id)a3;
- (id)bundleIdentifierForCallProvider:(id)a3;
- (id)policyForAddresses:(id)a3 forBundleIdentifier:(id)a4;
- (id)restrictedContacts:(id)a3 callProvider:(id)a4;
- (unint64_t)callFilterStatusForDialRequest:(id)a3;
@end

@implementation TUCallFilterController

- (TUCallFilterControllerActions)actionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsDelegate);

  return WeakRetained;
}

- (TUCallFilterController)initWithActionsDelegate:(id)a3 serialQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TUCallFilterController;
  v8 = [(TUCallFilterController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a4);
    objc_storeWeak(&v9->_actionsDelegate, v6);
  }

  return v9;
}

- (BOOL)silenceUnknownCallersEnabled
{
  v2 = [MEMORY[0x1E695E000] tu_defaults];
  v3 = [v2 BOOLForKey:@"allowContactsOnly"];

  return v3;
}

- (BOOL)silenceUnknownFaceTimeCallersEnabled
{
  v2 = [MEMORY[0x1E695E000] tu_defaults];
  v3 = [v2 BOOLForKey:@"silenceUnknownFaceTimeCallers"];

  return v3;
}

- (BOOL)isUnknownHandle:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 value];
  LOBYTE(self) = [(TUCallFilterController *)self isUnknownAddress:v4 normalizedAddress:v4 forBundleIdentifier:&stru_1F098C218];

  return self;
}

- (BOOL)shouldRestrictDialRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(v5);

  LOBYTE(self) = [(TUCallFilterController *)self shouldRestrictDialRequest:v4 performSynchronously:0];
  return self;
}

- (unint64_t)callFilterStatusForDialRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([v4 dialType] == 1 || (objc_msgSend(v4, "isSOS") & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 handle];
    v8 = [v7 value];
    if ([v8 length])
    {
      v9 = [v4 handle];
      v10 = [v9 value];
    }

    else
    {
      v10 = &stru_1F098C218;
    }

    v11 = [v4 provider];
    v12 = [(TUCallFilterController *)self bundleIdentifierForCallProvider:v11];

    if ([v12 length])
    {
      v13 = [(TUCallFilterController *)self actionsDelegate];
      v14 = [MEMORY[0x1E695DFD8] setWithObject:v10];
      v6 = [v13 filterStatusForAddresses:v14 forBundleIdentifier:v12];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)restrictedContacts:(id)a3 callProvider:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(v8);

  v29 = [MEMORY[0x1E695DF70] array];
  v9 = [(TUCallFilterController *)self bundleIdentifierForCallProvider:v7];
  if ([v9 length])
  {
    v26 = v7;
    v27 = v6;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v6;
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
        v15 = [v14 personHandle];
        v16 = [v15 value];
        if ([v16 length])
        {
          v17 = [v14 personHandle];
          v18 = [v17 value];
        }

        else
        {
          v18 = &stru_1F098C218;
        }

        v19 = [(TUCallFilterController *)self actionsDelegate];
        v20 = [MEMORY[0x1E695DFD8] setWithObject:v18];
        v21 = [v19 filterStatusForAddresses:v20 forBundleIdentifier:v9];

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

            [v29 addObject:v14];
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

        v7 = v26;
        v6 = v27;
        break;
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)policyForAddresses:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(TUCallFilterController *)self actionsDelegate];
  v10 = [v9 policyForAddresses:v7 forBundleIdentifier:v6];

  return v10;
}

- (BOOL)containsRestrictedHandle:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(TUCallFilterController *)self actionsDelegate];
  LOBYTE(v8) = [v9 containsRestrictedHandle:v7 forBundleIdentifier:v6 performSynchronously:0];

  return v8;
}

- (id)addressesToCheckForRestrictionsInConversation:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = MEMORY[0x1E695DFA8];
  v7 = [v4 mergedActiveRemoteParticipants];
  v8 = [v6 setWithCapacity:{objc_msgSend(v7, "count")}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = v4;
  v9 = [v4 mergedActiveRemoteParticipants];
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        v15 = [v14 handle];
        v16 = [v15 value];
        if ([v16 length])
        {
          v17 = [v14 handle];
          v18 = [v17 value];
        }

        else
        {
          v18 = &stru_1F098C218;
        }

        [v8 addObject:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v11);
  }

  if (![v8 count])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = [v32 mergedRemoteMembers];
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          v25 = [v24 handle];
          v26 = [v25 value];
          if ([v26 length])
          {
            v27 = [v24 handle];
            v28 = [v27 value];
          }

          else
          {
            v28 = &stru_1F098C218;
          }

          [v8 addObject:v28];
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
    }
  }

  v29 = [v8 copy];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BOOL)shouldRestrictJoinConversationRequest:(id)a3 performSynchronously:(BOOL)a4
{
  v25 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = self;
  v6 = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = MEMORY[0x1E695DFA8];
  v8 = [v5 remoteMembers];
  v9 = [v7 setWithCapacity:{objc_msgSend(v8, "count")}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = v5;
  v10 = [v5 remoteMembers];
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [v15 handle];
        v17 = [v16 value];
        if ([v17 length])
        {
          v18 = [v15 handle];
          v19 = [v18 value];
        }

        else
        {
          v19 = &stru_1F098C218;
        }

        [v9 addObject:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  v20 = [(TUCallFilterController *)v24 actionsDelegate];
  v21 = [v20 shouldRestrictAddresses:v9 forBundleIdentifier:@"com.apple.facetime" performSynchronously:v25];

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)willRestrictAddresses:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(TUCallFilterController *)self actionsDelegate];
  LOBYTE(v8) = [v9 willRestrictAddresses:v7 forBundleIdentifier:v6];

  return v8;
}

- (BOOL)isUnknownAddress:(id)a3 normalizedAddress:(id)a4 forBundleIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(TUCallFilterController *)self actionsDelegate];
  LOBYTE(v11) = [v12 isUnknownAddress:v10 normalizedAddress:v9 forBundleIdentifier:v8];

  return v11;
}

- (BOOL)isRestrictedExclusivelyByScreenTimeForDialRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallFilterController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 provider];
  v7 = [(TUCallFilterController *)self bundleIdentifierForCallProvider:v6];

  v8 = [(TUCallFilterController *)self actionsDelegate];
  v9 = [v4 handle];

  LOBYTE(v4) = [v8 isRestrictedExclusivelyByScreenTime:v9 forBundleIdentifier:v7 performSynchronously:0];
  return v4;
}

- (id)bundleIdentifierForCallProvider:(id)a3
{
  v3 = a3;
  if ([v3 isTelephonyProvider])
  {
    v4 = TUBundleIdentifierMobilePhoneApplication;
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([v3 isFaceTimeProvider])
  {
    v4 = TUBundleIdentifierFaceTimeApplication;
    goto LABEL_5;
  }

  v5 = [v3 bundleIdentifier];
LABEL_7:
  v6 = v5;

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