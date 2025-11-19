@interface _SFAirDropTransferObserver
- (SFAirDropTransferObserverDelegate)delegate;
- (_SFAirDropTransferObserver)init;
- (void)activate;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removedTransfer:(id)a3;
- (void)updateActionHandlersOnTransfer:(id)a3;
- (void)updatedTransfer:(id)a3;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  if (SFAirDropTransferObserverContext == a6)
  {
    v11 = [(SFXPCClient *)self dispatchQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77___SFAirDropTransferObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v12[3] = &unk_1E788A658;
    v12[4] = self;
    v13 = v10;
    dispatch_async(v11, v12);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _SFAirDropTransferObserver;
    [(_SFAirDropTransferObserver *)&v14 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
  }
}

- (void)updateActionHandlersOnTransfer:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFAirDropTransferObserver/updateActionHandlersOnTransfer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  objc_initWeak(&location, v4);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61___SFAirDropTransferObserver_updateActionHandlersOnTransfer___block_invoke;
  aBlock[3] = &unk_1E788A6A8;
  aBlock[4] = self;
  objc_copyWeak(&v19, &location);
  v6 = _Block_copy(aBlock);
  v7 = [v4 selectedAction];
  [v7 setActionHandler:v6];

  v8 = [v4 cancelAction];
  [v8 setActionHandler:v6];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [v4 possibleActions];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v12++) setActionHandler:v6];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updatedTransfer:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFAirDropTransferObserver *)self transferIdentifierToTransfer];
  v6 = [v4 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 updateWithTransfer:v4];
    [(_SFAirDropTransferObserver *)self updateActionHandlersOnTransfer:v7];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = v4;
    [v7 setUpProgress];
    [(_SFAirDropTransferObserver *)self observeForLocalOnlyPropertiesOnTransfer:v7];
    v9 = [(_SFAirDropTransferObserver *)self transferIdentifierToTransfer];
    v10 = [v7 identifier];
    [v9 setObject:v7 forKeyedSubscript:v10];

    [(_SFAirDropTransferObserver *)self updateActionHandlersOnTransfer:v7];
  }

  v11 = airdrop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v7 identifier];
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Updated transfer %@", &v15, 0xCu);
  }

  v13 = [(_SFAirDropTransferObserver *)self delegate];
  [v13 updatedTransfer:v7];

LABEL_8:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)removedTransfer:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_SFAirDropTransferObserver *)self updatedTransfer:v4];
  v5 = [(_SFAirDropTransferObserver *)self transferIdentifierToTransfer];
  v6 = [v4 identifier];

  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 identifier];
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Removed transfer %@", &v15, 0xCu);
    }

    [(_SFAirDropTransferObserver *)self removeObserverForLocalOnlyPropertiesOnTransfer:v7];
    v10 = [(_SFAirDropTransferObserver *)self transferIdentifierToTransfer];
    v11 = [v7 identifier];
    [v10 removeObjectForKey:v11];

    v12 = [(_SFAirDropTransferObserver *)self delegate];
    LOBYTE(v11) = objc_opt_respondsToSelector();

    if (v11)
    {
      v13 = [(_SFAirDropTransferObserver *)self delegate];
      [v13 removedTransfer:v7];
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