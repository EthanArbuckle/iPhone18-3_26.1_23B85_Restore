@interface SFAirDropClassroomTransferManager
- (SFAirDropClassroomTransferDelegate)delegate;
- (void)activate;
- (void)invalidate;
- (void)transferWithIdentifierWasAccepted:(id)accepted;
- (void)transferWithIdentifierWasDeclined:(id)declined withFailureReason:(unint64_t)reason;
- (void)updateTransferWithIdentifier:(id)identifier withState:(int64_t)state information:(id)information completionHandler:(id)handler;
@end

@implementation SFAirDropClassroomTransferManager

- (void)activate
{
  v2.receiver = self;
  v2.super_class = SFAirDropClassroomTransferManager;
  [(SFXPCClient *)&v2 _activate];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SFAirDropClassroomTransferManager;
  [(SFXPCClient *)&v2 _invalidate];
}

- (void)updateTransferWithIdentifier:(id)identifier withState:(int64_t)state information:(id)information completionHandler:(id)handler
{
  identifierCopy = identifier;
  informationCopy = information;
  handlerCopy = handler;
  v13 = _os_activity_create(&dword_1A9662000, "Sharing/SFAirDropClassroomTransferManager/updateTransferWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __106__SFAirDropClassroomTransferManager_updateTransferWithIdentifier_withState_information_completionHandler___block_invoke;
  v17[3] = &unk_1E788D5B0;
  v17[4] = self;
  v14 = identifierCopy;
  v18 = v14;
  stateCopy = state;
  v15 = informationCopy;
  v19 = v15;
  v16 = handlerCopy;
  v20 = v16;
  [(SFAirDropClassroomTransferManager *)self _getRemoteObjectProxyOnQueue:v17];

  os_activity_scope_leave(&state);
}

void __106__SFAirDropClassroomTransferManager_updateTransferWithIdentifier_withState_information_completionHandler___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[5];
    v8 = a1[8];
    *buf = 138412546;
    v21 = v7;
    v22 = 1024;
    v23 = v8;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "updating daemon with transfer %@ with state %d", buf, 0x12u);
  }

  v9 = a1[8];
  v10 = a1[5];
  v11 = a1[6];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __106__SFAirDropClassroomTransferManager_updateTransferWithIdentifier_withState_information_completionHandler___block_invoke_123;
  v16[3] = &unk_1E788D588;
  v12 = v10;
  v14 = a1[7];
  v13 = a1[8];
  v17 = v12;
  v19 = v13;
  v18 = v14;
  [v4 updateTransferWithIdentifier:v12 withState:v9 information:v11 completionHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __106__SFAirDropClassroomTransferManager_updateTransferWithIdentifier_withState_information_completionHandler___block_invoke_123(void *a1, int a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = airdrop_log();
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v12 = a1[6];
      v14 = 138412546;
      v15 = v11;
      v16 = 1024;
      v17 = v12;
      _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "updated daemon with transfer %@ with state %d", &v14, 0x12u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __106__SFAirDropClassroomTransferManager_updateTransferWithIdentifier_withState_information_completionHandler___block_invoke_123_cold_1(a1, v7, v10);
  }

  (*(a1[5] + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (void)transferWithIdentifierWasAccepted:(id)accepted
{
  v10 = *MEMORY[0x1E69E9840];
  acceptedCopy = accepted;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = acceptedCopy;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "transferWithIdentifierWasAccepted %@", &v8, 0xCu);
  }

  delegate = [(SFAirDropClassroomTransferManager *)self delegate];
  [delegate transferWithIdentifierWasAccepted:acceptedCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)transferWithIdentifierWasDeclined:(id)declined withFailureReason:(unint64_t)reason
{
  v18 = *MEMORY[0x1E69E9840];
  declinedCopy = declined;
  v7 = airdrop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = declinedCopy;
    v16 = 1024;
    reasonCopy = reason;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "transferWithIdentifierWasDeclined %@, withFailureReason: %d", &v14, 0x12u);
  }

  delegate = [(SFAirDropClassroomTransferManager *)self delegate];
  v9 = objc_opt_respondsToSelector();

  delegate2 = [(SFAirDropClassroomTransferManager *)self delegate];
  delegate3 = delegate2;
  if (v9)
  {
    [delegate2 transferWithIdentifierWasDeclined:declinedCopy withFailureReason:reason];
LABEL_7:

    goto LABEL_8;
  }

  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate3 = [(SFAirDropClassroomTransferManager *)self delegate];
    [delegate3 transferWithIdentifierWasDeclined:declinedCopy];
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (SFAirDropClassroomTransferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __106__SFAirDropClassroomTransferManager_updateTransferWithIdentifier_withState_information_completionHandler___block_invoke_123_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1A9662000, log, OS_LOG_TYPE_ERROR, "Failed to update daemon with transfer %@ (%@)", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end