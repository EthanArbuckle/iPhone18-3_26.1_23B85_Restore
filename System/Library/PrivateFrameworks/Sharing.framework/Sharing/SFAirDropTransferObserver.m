@interface SFAirDropTransferObserver
- (SFAirDropTransferObserver)init;
- (SFAirDropTransferObserverDelegate)delegate;
- (void)activate;
- (void)invalidate;
- (void)removedTransfer:(id)a3;
- (void)updatedTransfer:(id)a3;
@end

@implementation SFAirDropTransferObserver

void __61___SFAirDropTransferObserver_updateActionHandlersOnTransfer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transferIdentifierToTransfer];
  v5 = [v3 transferIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61___SFAirDropTransferObserver_updateActionHandlersOnTransfer___block_invoke_2;
    v9[3] = &unk_1E788A680;
    v10 = v6;
    v11 = v3;
    [v7 _getRemoteObjectProxyOnQueue:v9];

    v8 = v10;
  }

  else
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61___SFAirDropTransferObserver_updateActionHandlersOnTransfer___block_invoke_cold_1(v3, a1, v8);
    }
  }
}

- (SFAirDropTransferObserver)init
{
  v7.receiver = self;
  v7.super_class = SFAirDropTransferObserver;
  v2 = [(SFAirDropTransferObserver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_isModern = 0;
    v4 = objc_alloc_init(_SFAirDropTransferObserver);
    legacyObserver = v3->_legacyObserver;
    v3->_legacyObserver = v4;

    [(_SFAirDropTransferObserver *)v3->_legacyObserver setDelegate:v3];
  }

  return v3;
}

- (void)activate
{
  if ([(SFAirDropTransferObserver *)self isModern])
  {
    [(SFAirDropTransferObserver *)self modernObserver];
  }

  else
  {
    [(SFAirDropTransferObserver *)self legacyObserver];
  }
  v3 = ;
  [v3 activate];
}

- (void)invalidate
{
  if ([(SFAirDropTransferObserver *)self isModern])
  {
    [(SFAirDropTransferObserver *)self modernObserver];
  }

  else
  {
    [(SFAirDropTransferObserver *)self legacyObserver];
  }
  v3 = ;
  [v3 activate];
}

- (void)updatedTransfer:(id)a3
{
  v4 = a3;
  v5 = [(SFAirDropTransferObserver *)self delegate];
  [v5 updatedTransfer:v4];
}

- (void)removedTransfer:(id)a3
{
  v7 = a3;
  v4 = [(SFAirDropTransferObserver *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SFAirDropTransferObserver *)self delegate];
    [v6 removedTransfer:v7];
  }
}

- (SFAirDropTransferObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61___SFAirDropTransferObserver_updateActionHandlersOnTransfer___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a2 + 40));
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = WeakRetained;
  _os_log_error_impl(&dword_1A9662000, a3, OS_LOG_TYPE_ERROR, "Unable to trigger action %@ for unknown transfer: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end