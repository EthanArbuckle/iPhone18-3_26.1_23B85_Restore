@interface _SFAirDropTransferObserver
- (SFAirDropTransferObserverDelegate)delegate;
- (_SFAirDropTransferObserver)init;
- (void)activate;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removedTransfer:(id)transfer;
- (void)updateActionHandlersOnTransfer:(id)transfer;
- (void)updatedTransfer:(id)transfer;
@end

@implementation _SFAirDropTransferObserver

- (_SFAirDropTransferObserver)init
{
  v6.receiver = self;
  v6.super_class = _SFAirDropTransferObserver;
  v2 = [(SFXPCClient *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    transferIdentifierToTransfer = v2->_transferIdentifierToTransfer;
    v2->_transferIdentifierToTransfer = v3;
  }

  return v2;
}

- (void)activate
{
  v2.receiver = self;
  v2.super_class = _SFAirDropTransferObserver;
  [(SFXPCClient *)&v2 _activate];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = _SFAirDropTransferObserver;
  [(SFXPCClient *)&v2 _invalidate];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (SFAirDropTransferObserverContext == context)
  {
    dispatchQueue = [(SFXPCClient *)self dispatchQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77___SFAirDropTransferObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v12[3] = &unk_1E788A658;
    v12[4] = self;
    v13 = objectCopy;
    dispatch_async(dispatchQueue, v12);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _SFAirDropTransferObserver;
    [(_SFAirDropTransferObserver *)&v14 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

- (void)updateActionHandlersOnTransfer:(id)transfer
{
  v23 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFAirDropTransferObserver/updateActionHandlersOnTransfer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  objc_initWeak(&location, transferCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61___SFAirDropTransferObserver_updateActionHandlersOnTransfer___block_invoke;
  aBlock[3] = &unk_1E788A6A8;
  aBlock[4] = self;
  objc_copyWeak(&v19, &location);
  v6 = _Block_copy(aBlock);
  selectedAction = [transferCopy selectedAction];
  [selectedAction setActionHandler:v6];

  cancelAction = [transferCopy cancelAction];
  [cancelAction setActionHandler:v6];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  possibleActions = [transferCopy possibleActions];
  v10 = [possibleActions countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(possibleActions);
        }

        [*(*(&v14 + 1) + 8 * v12++) setActionHandler:v6];
      }

      while (v10 != v12);
      v10 = [possibleActions countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updatedTransfer:(id)transfer
{
  v17 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  transferIdentifierToTransfer = [(_SFAirDropTransferObserver *)self transferIdentifierToTransfer];
  identifier = [transferCopy identifier];
  v7 = [transferIdentifierToTransfer objectForKeyedSubscript:identifier];

  if (v7)
  {
    v8 = [v7 updateWithTransfer:transferCopy];
    [(_SFAirDropTransferObserver *)self updateActionHandlersOnTransfer:v7];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = transferCopy;
    [v7 setUpProgress];
    [(_SFAirDropTransferObserver *)self observeForLocalOnlyPropertiesOnTransfer:v7];
    transferIdentifierToTransfer2 = [(_SFAirDropTransferObserver *)self transferIdentifierToTransfer];
    identifier2 = [v7 identifier];
    [transferIdentifierToTransfer2 setObject:v7 forKeyedSubscript:identifier2];

    [(_SFAirDropTransferObserver *)self updateActionHandlersOnTransfer:v7];
  }

  v11 = airdrop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier3 = [v7 identifier];
    v15 = 138412290;
    v16 = identifier3;
    _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Updated transfer %@", &v15, 0xCu);
  }

  delegate = [(_SFAirDropTransferObserver *)self delegate];
  [delegate updatedTransfer:v7];

LABEL_8:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)removedTransfer:(id)transfer
{
  v17 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  [(_SFAirDropTransferObserver *)self updatedTransfer:transferCopy];
  transferIdentifierToTransfer = [(_SFAirDropTransferObserver *)self transferIdentifierToTransfer];
  identifier = [transferCopy identifier];

  v7 = [transferIdentifierToTransfer objectForKeyedSubscript:identifier];

  if (v7)
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [v7 identifier];
      v15 = 138412290;
      v16 = identifier2;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Removed transfer %@", &v15, 0xCu);
    }

    [(_SFAirDropTransferObserver *)self removeObserverForLocalOnlyPropertiesOnTransfer:v7];
    transferIdentifierToTransfer2 = [(_SFAirDropTransferObserver *)self transferIdentifierToTransfer];
    identifier3 = [v7 identifier];
    [transferIdentifierToTransfer2 removeObjectForKey:identifier3];

    delegate = [(_SFAirDropTransferObserver *)self delegate];
    LOBYTE(identifier3) = objc_opt_respondsToSelector();

    if (identifier3)
    {
      delegate2 = [(_SFAirDropTransferObserver *)self delegate];
      [delegate2 removedTransfer:v7];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (SFAirDropTransferObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end