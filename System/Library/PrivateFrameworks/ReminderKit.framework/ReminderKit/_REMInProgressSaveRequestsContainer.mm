@interface _REMInProgressSaveRequestsContainer
- (_REMInProgressSaveRequestsContainer)init;
- (id)_firstMatchInSaveRequests:(id)requests;
- (id)_latestSaveInProgressAccountForObjectID:(id)d saveRequest:(id)request;
- (id)_latestSaveInProgressListForObjectID:(id)d fallbackAccount:(id)account fallbackParentList:(id)list saveRequest:(id)request;
- (id)_latestSaveInProgressReminderForObjectID:(id)d fallbackAccount:(id)account fallbackList:(id)list fallbackParentList:(id)parentList fallbackParentReminder:(id)reminder saveRequest:(id)request;
- (id)latestSaveInProgressAccount:(id)account;
- (id)latestSaveInProgressList:(id)list;
- (id)latestSaveInProgressReminder:(id)reminder;
- (id)latestSaveInProgressReminderForReminderChangeItem:(id)item;
- (void)saveRequestSaveDidFinish:(id)finish;
- (void)saveRequestSaveDidStart:(id)start;
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

- (void)saveRequestSaveDidStart:(id)start
{
  startCopy = start;
  inProgressSaveRequests = [(_REMInProgressSaveRequestsContainer *)self inProgressSaveRequests];
  v6 = [inProgressSaveRequests containsObject:startCopy];

  if (v6)
  {
    [(_REMInProgressSaveRequestsContainer *)startCopy saveRequestSaveDidStart:?];
  }

  if (([startCopy isSaved] & 1) == 0)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be TRUE", v9, 2u);
    }
  }

  inProgressSaveRequests2 = [(_REMInProgressSaveRequestsContainer *)self inProgressSaveRequests];
  [inProgressSaveRequests2 addObject:startCopy];
}

- (void)saveRequestSaveDidFinish:(id)finish
{
  finishCopy = finish;
  inProgressSaveRequests = [(_REMInProgressSaveRequestsContainer *)self inProgressSaveRequests];
  v6 = [inProgressSaveRequests indexOfObject:finishCopy];

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
    inProgressSaveRequests2 = [(_REMInProgressSaveRequestsContainer *)self inProgressSaveRequests];
    [inProgressSaveRequests2 removeObjectAtIndex:v6];
  }
}

- (id)latestSaveInProgressAccount:(id)account
{
  objectID = [account objectID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___REMInProgressSaveRequestsContainer_latestSaveInProgressAccount___block_invoke;
  v8[3] = &unk_1E7509008;
  v8[4] = self;
  v9 = objectID;
  v5 = objectID;
  v6 = [(_REMInProgressSaveRequestsContainer *)self _firstMatchInSaveRequests:v8];

  return v6;
}

- (id)latestSaveInProgressList:(id)list
{
  listCopy = list;
  objectID = [listCopy objectID];
  account = [listCopy account];
  parentList = [listCopy parentList];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64___REMInProgressSaveRequestsContainer_latestSaveInProgressList___block_invoke;
  v13[3] = &unk_1E7509030;
  v13[4] = self;
  v14 = objectID;
  v15 = account;
  v16 = parentList;
  v8 = parentList;
  v9 = account;
  v10 = objectID;
  v11 = [(_REMInProgressSaveRequestsContainer *)self _firstMatchInSaveRequests:v13];

  return v11;
}

- (id)latestSaveInProgressReminder:(id)reminder
{
  reminderCopy = reminder;
  objectID = [reminderCopy objectID];
  account = [reminderCopy account];
  list = [reminderCopy list];
  parentList = [list parentList];
  parentReminder = [reminderCopy parentReminder];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68___REMInProgressSaveRequestsContainer_latestSaveInProgressReminder___block_invoke;
  v17[3] = &unk_1E7509058;
  v17[4] = self;
  v18 = objectID;
  v19 = account;
  v20 = list;
  v21 = parentList;
  v22 = parentReminder;
  v10 = parentReminder;
  v11 = parentList;
  v12 = list;
  v13 = account;
  v14 = objectID;
  v15 = [(_REMInProgressSaveRequestsContainer *)self _firstMatchInSaveRequests:v17];

  return v15;
}

- (id)latestSaveInProgressReminderForReminderChangeItem:(id)item
{
  itemCopy = item;
  saveRequest = [itemCopy saveRequest];
  isSaved = [saveRequest isSaved];

  if ((isSaved & 1) == 0)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be TRUE", buf, 2u);
    }
  }

  objectID = [itemCopy objectID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89___REMInProgressSaveRequestsContainer_latestSaveInProgressReminderForReminderChangeItem___block_invoke;
  v12[3] = &unk_1E7509080;
  v12[4] = self;
  v13 = objectID;
  v9 = objectID;
  v10 = [(_REMInProgressSaveRequestsContainer *)self _firstMatchInSaveRequests:v12];

  return v10;
}

- (id)_latestSaveInProgressAccountForObjectID:(id)d saveRequest:(id)request
{
  requestCopy = request;
  v6 = [requestCopy _trackedAccountChangeItemForObjectID:d];
  if (v6)
  {
    v7 = [REMAccount alloc];
    store = [requestCopy store];
    storage = [v6 storage];
    v10 = [(REMAccount *)v7 initWithStore:store storage:storage];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_latestSaveInProgressListForObjectID:(id)d fallbackAccount:(id)account fallbackParentList:(id)list saveRequest:(id)request
{
  dCopy = d;
  accountCopy = account;
  listCopy = list;
  requestCopy = request;
  v14 = [requestCopy _trackedListChangeItemForObjectID:dCopy];
  v15 = v14;
  if (!v14)
  {
    v27 = 0;
    goto LABEL_21;
  }

  accountID = [v14 accountID];
  v17 = [(_REMInProgressSaveRequestsContainer *)self _latestSaveInProgressAccountForObjectID:accountID saveRequest:requestCopy];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = accountCopy;
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

  parentListID = [v15 parentListID];

  if (!parentListID)
  {
    v26 = 0;
    goto LABEL_18;
  }

  parentListID2 = [v15 parentListID];
  v23 = [(_REMInProgressSaveRequestsContainer *)self _latestSaveInProgressListForObjectID:parentListID2 fallbackAccount:v20 fallbackParentList:0 saveRequest:requestCopy];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = listCopy;
  }

  v26 = v25;

  if (v26)
  {
LABEL_18:
    v28 = [REMList alloc];
    store = [requestCopy store];
    storage = [v15 storage];
    v27 = [(REMList *)v28 initWithStore:store account:v20 storage:storage];

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

- (id)_latestSaveInProgressReminderForObjectID:(id)d fallbackAccount:(id)account fallbackList:(id)list fallbackParentList:(id)parentList fallbackParentReminder:(id)reminder saveRequest:(id)request
{
  dCopy = d;
  accountCopy = account;
  listCopy = list;
  parentListCopy = parentList;
  reminderCopy = reminder;
  requestCopy = request;
  v20 = [requestCopy _trackedReminderChangeItemForObjectID:dCopy];
  v21 = v20;
  if (!v20)
  {
    v31 = 0;
    goto LABEL_26;
  }

  listID = [v20 listID];

  if (listID)
  {
    v43 = reminderCopy;
    listID2 = [v21 listID];
    v24 = [(_REMInProgressSaveRequestsContainer *)self _latestSaveInProgressListForObjectID:listID2 fallbackAccount:accountCopy fallbackParentList:parentListCopy saveRequest:requestCopy];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = listCopy;
    }

    v27 = v26;

    if (v27)
    {
      v28 = [REMReminder alloc];
      store = [requestCopy store];
      storage = [v21 storage];
      v31 = [(REMReminder *)v28 initWithStore:store list:v27 storage:storage];
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

    reminderCopy = v43;
    goto LABEL_25;
  }

  parentReminderID = [v21 parentReminderID];

  if (!parentReminderID)
  {
    v27 = +[REMLogStore write];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [_REMInProgressSaveRequestsContainer _latestSaveInProgressReminderForObjectID:dCopy fallbackAccount:v27 fallbackList:? fallbackParentList:? fallbackParentReminder:? saveRequest:?];
    }

    goto LABEL_24;
  }

  parentReminderID2 = [v21 parentReminderID];
  v34 = [(_REMInProgressSaveRequestsContainer *)self _latestSaveInProgressReminderForObjectID:parentReminderID2 fallbackAccount:accountCopy fallbackList:listCopy fallbackParentList:parentListCopy fallbackParentReminder:0 saveRequest:requestCopy];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = reminderCopy;
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
  [requestCopy store];
  v38 = v44 = reminderCopy;
  storage2 = [v21 storage];
  v31 = [(REMReminder *)v37 initWithStore:v38 storage:storage2];

  reminderCopy = v44;
  [(REMReminder *)v31 setParentReminder:v27];
LABEL_25:

LABEL_26:

  return v31;
}

- (id)_firstMatchInSaveRequests:(id)requests
{
  v23 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  inProgressSaveRequests = [(_REMInProgressSaveRequestsContainer *)self inProgressSaveRequests];
  reverseObjectEnumerator = [inProgressSaveRequests reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
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

        v13 = requestsCopy[2](requestsCopy, v11);
        if (v13)
        {
          v14 = v13;
          goto LABEL_15;
        }
      }

      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
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