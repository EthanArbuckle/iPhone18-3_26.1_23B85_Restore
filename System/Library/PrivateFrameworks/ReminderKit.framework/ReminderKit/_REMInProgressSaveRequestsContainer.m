@interface _REMInProgressSaveRequestsContainer
- (_REMInProgressSaveRequestsContainer)init;
- (id)_firstMatchInSaveRequests:(id)a3;
- (id)_latestSaveInProgressAccountForObjectID:(id)a3 saveRequest:(id)a4;
- (id)_latestSaveInProgressListForObjectID:(id)a3 fallbackAccount:(id)a4 fallbackParentList:(id)a5 saveRequest:(id)a6;
- (id)_latestSaveInProgressReminderForObjectID:(id)a3 fallbackAccount:(id)a4 fallbackList:(id)a5 fallbackParentList:(id)a6 fallbackParentReminder:(id)a7 saveRequest:(id)a8;
- (id)latestSaveInProgressAccount:(id)a3;
- (id)latestSaveInProgressList:(id)a3;
- (id)latestSaveInProgressReminder:(id)a3;
- (id)latestSaveInProgressReminderForReminderChangeItem:(id)a3;
- (void)saveRequestSaveDidFinish:(id)a3;
- (void)saveRequestSaveDidStart:(id)a3;
@end

@implementation _REMInProgressSaveRequestsContainer

- (_REMInProgressSaveRequestsContainer)init
{
  v6.receiver = self;
  v6.super_class = _REMInProgressSaveRequestsContainer;
  v2 = [(_REMInProgressSaveRequestsContainer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    inProgressSaveRequests = v2->_inProgressSaveRequests;
    v2->_inProgressSaveRequests = v3;
  }

  return v2;
}

- (void)saveRequestSaveDidStart:(id)a3
{
  v4 = a3;
  v5 = [(_REMInProgressSaveRequestsContainer *)self inProgressSaveRequests];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    [(_REMInProgressSaveRequestsContainer *)v4 saveRequestSaveDidStart:?];
  }

  if (([v4 isSaved] & 1) == 0)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be TRUE", v9, 2u);
    }
  }

  v8 = [(_REMInProgressSaveRequestsContainer *)self inProgressSaveRequests];
  [v8 addObject:v4];
}

- (void)saveRequestSaveDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(_REMInProgressSaveRequestsContainer *)self inProgressSaveRequests];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [_REMInProgressSaveRequestsContainer saveRequestSaveDidFinish:];
    }
  }

  else
  {
    v8 = [(_REMInProgressSaveRequestsContainer *)self inProgressSaveRequests];
    [v8 removeObjectAtIndex:v6];
  }
}

- (id)latestSaveInProgressAccount:(id)a3
{
  v4 = [a3 objectID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___REMInProgressSaveRequestsContainer_latestSaveInProgressAccount___block_invoke;
  v8[3] = &unk_1E7509008;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(_REMInProgressSaveRequestsContainer *)self _firstMatchInSaveRequests:v8];

  return v6;
}

- (id)latestSaveInProgressList:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  v6 = [v4 account];
  v7 = [v4 parentList];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64___REMInProgressSaveRequestsContainer_latestSaveInProgressList___block_invoke;
  v13[3] = &unk_1E7509030;
  v13[4] = self;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = [(_REMInProgressSaveRequestsContainer *)self _firstMatchInSaveRequests:v13];

  return v11;
}

- (id)latestSaveInProgressReminder:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  v6 = [v4 account];
  v7 = [v4 list];
  v8 = [v7 parentList];
  v9 = [v4 parentReminder];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68___REMInProgressSaveRequestsContainer_latestSaveInProgressReminder___block_invoke;
  v17[3] = &unk_1E7509058;
  v17[4] = self;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  v14 = v5;
  v15 = [(_REMInProgressSaveRequestsContainer *)self _firstMatchInSaveRequests:v17];

  return v15;
}

- (id)latestSaveInProgressReminderForReminderChangeItem:(id)a3
{
  v4 = a3;
  v5 = [v4 saveRequest];
  v6 = [v5 isSaved];

  if ((v6 & 1) == 0)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be TRUE", buf, 2u);
    }
  }

  v8 = [v4 objectID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89___REMInProgressSaveRequestsContainer_latestSaveInProgressReminderForReminderChangeItem___block_invoke;
  v12[3] = &unk_1E7509080;
  v12[4] = self;
  v13 = v8;
  v9 = v8;
  v10 = [(_REMInProgressSaveRequestsContainer *)self _firstMatchInSaveRequests:v12];

  return v10;
}

- (id)_latestSaveInProgressAccountForObjectID:(id)a3 saveRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 _trackedAccountChangeItemForObjectID:a3];
  if (v6)
  {
    v7 = [REMAccount alloc];
    v8 = [v5 store];
    v9 = [v6 storage];
    v10 = [(REMAccount *)v7 initWithStore:v8 storage:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_latestSaveInProgressListForObjectID:(id)a3 fallbackAccount:(id)a4 fallbackParentList:(id)a5 saveRequest:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 _trackedListChangeItemForObjectID:v10];
  v15 = v14;
  if (!v14)
  {
    v27 = 0;
    goto LABEL_21;
  }

  v16 = [v14 accountID];
  v17 = [(_REMInProgressSaveRequestsContainer *)self _latestSaveInProgressAccountForObjectID:v16 saveRequest:v13];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v11;
  }

  v20 = v19;

  if (!v20)
  {
    v26 = +[REMLogStore write];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [_REMInProgressSaveRequestsContainer _latestSaveInProgressListForObjectID:fallbackAccount:fallbackParentList:saveRequest:];
    }

    goto LABEL_16;
  }

  v21 = [v15 parentListID];

  if (!v21)
  {
    v26 = 0;
    goto LABEL_18;
  }

  v22 = [v15 parentListID];
  v23 = [(_REMInProgressSaveRequestsContainer *)self _latestSaveInProgressListForObjectID:v22 fallbackAccount:v20 fallbackParentList:0 saveRequest:v13];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v12;
  }

  v26 = v25;

  if (v26)
  {
LABEL_18:
    v28 = [REMList alloc];
    v29 = [v13 store];
    v30 = [v15 storage];
    v27 = [(REMList *)v28 initWithStore:v29 account:v20 storage:v30];

    if (v26)
    {
      [(REMList *)v27 setParentList:v26];
    }

    goto LABEL_20;
  }

  v26 = +[REMLogStore write];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [_REMInProgressSaveRequestsContainer _latestSaveInProgressListForObjectID:fallbackAccount:fallbackParentList:saveRequest:];
  }

LABEL_16:
  v27 = 0;
LABEL_20:

LABEL_21:

  return v27;
}

- (id)_latestSaveInProgressReminderForObjectID:(id)a3 fallbackAccount:(id)a4 fallbackList:(id)a5 fallbackParentList:(id)a6 fallbackParentReminder:(id)a7 saveRequest:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v19 _trackedReminderChangeItemForObjectID:v14];
  v21 = v20;
  if (!v20)
  {
    v31 = 0;
    goto LABEL_26;
  }

  v22 = [v20 listID];

  if (v22)
  {
    v43 = v18;
    v23 = [v21 listID];
    v24 = [(_REMInProgressSaveRequestsContainer *)self _latestSaveInProgressListForObjectID:v23 fallbackAccount:v15 fallbackParentList:v17 saveRequest:v19];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26;

    if (v27)
    {
      v28 = [REMReminder alloc];
      v29 = [v19 store];
      v30 = [v21 storage];
      v31 = [(REMReminder *)v28 initWithStore:v29 list:v27 storage:v30];
    }

    else
    {
      v40 = +[REMLogStore write];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [_REMInProgressSaveRequestsContainer _latestSaveInProgressReminderForObjectID:fallbackAccount:fallbackList:fallbackParentList:fallbackParentReminder:saveRequest:];
      }

      v31 = 0;
    }

    v18 = v43;
    goto LABEL_25;
  }

  v32 = [v21 parentReminderID];

  if (!v32)
  {
    v27 = +[REMLogStore write];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [_REMInProgressSaveRequestsContainer _latestSaveInProgressReminderForObjectID:v14 fallbackAccount:v27 fallbackList:? fallbackParentList:? fallbackParentReminder:? saveRequest:?];
    }

    goto LABEL_24;
  }

  v33 = [v21 parentReminderID];
  v34 = [(_REMInProgressSaveRequestsContainer *)self _latestSaveInProgressReminderForObjectID:v33 fallbackAccount:v15 fallbackList:v16 fallbackParentList:v17 fallbackParentReminder:0 saveRequest:v19];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v18;
  }

  v27 = v36;

  if (!v27)
  {
    v41 = +[REMLogStore write];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [_REMInProgressSaveRequestsContainer _latestSaveInProgressReminderForObjectID:fallbackAccount:fallbackList:fallbackParentList:fallbackParentReminder:saveRequest:];
    }

LABEL_24:
    v31 = 0;
    goto LABEL_25;
  }

  v37 = [REMReminder alloc];
  [v19 store];
  v38 = v44 = v18;
  v39 = [v21 storage];
  v31 = [(REMReminder *)v37 initWithStore:v38 storage:v39];

  v18 = v44;
  [(REMReminder *)v31 setParentReminder:v27];
LABEL_25:

LABEL_26:

  return v31;
}

- (id)_firstMatchInSaveRequests:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(_REMInProgressSaveRequestsContainer *)self inProgressSaveRequests];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (([v11 isSaved] & 1) == 0)
        {
          v12 = +[REMLogStore write];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *v17 = 0;
            _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be TRUE", v17, 2u);
          }
        }

        v13 = v4[2](v4, v11);
        if (v13)
        {
          v14 = v13;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)saveRequestSaveDidStart:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v5 = [a2 inProgressSaveRequests];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_19A0DB000, v6, v7, "rem_log_fault_if ([self.inProgressSaveRequests containsObject:saveRequest]) -- SaveRequest save already in progress {saveRequest: %@, inProgressSaveRequests: %@}", v8, v9, v10, v11, v12);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)saveRequestSaveDidFinish:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_4_3(v1 v2)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_19A0DB000, v4, v5, "SaveRequest is not in progress. Ignoring. {saveRequest: %@, inProgressSaveRequests: %@}", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_latestSaveInProgressListForObjectID:fallbackAccount:fallbackParentList:saveRequest:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_4_3(v1 v2)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3(&dword_19A0DB000, v4, v5, "Failed to get parentlist for inProgressList. Returning nil {listObjectID: %@, trackedListChangeItem.parentListID: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_latestSaveInProgressListForObjectID:fallbackAccount:fallbackParentList:saveRequest:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_4_3(v1 v2)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3(&dword_19A0DB000, v4, v5, "Failed to get account for inProgressList. Returning nil {listObjectID: %@, accountID: %@}", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_latestSaveInProgressReminderForObjectID:fallbackAccount:fallbackList:fallbackParentList:fallbackParentReminder:saveRequest:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_4_3(v1 v2)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3(&dword_19A0DB000, v4, v5, "Failed to get list for inProgressReminder. Returning nil {reminderObjectID: %@, listID: %@}", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_latestSaveInProgressReminderForObjectID:fallbackAccount:fallbackList:fallbackParentList:fallbackParentReminder:saveRequest:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_4_3(v1 v2)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3(&dword_19A0DB000, v4, v5, "Failed to get parent reminder for inProgressReminder. Returning nil {reminderObjectID: %@, parentReminderID: %@}", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_latestSaveInProgressReminderForObjectID:(uint64_t)a1 fallbackAccount:(NSObject *)a2 fallbackList:fallbackParentList:fallbackParentReminder:saveRequest:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "ReminderChangeItem missing both listID and parentReminderID. Returning nil {reminderObjectID: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end