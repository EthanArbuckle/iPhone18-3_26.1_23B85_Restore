@interface ICDirectSharedListeningConnectionController
- (ICDirectSharedListeningConnectionController)initWithSessionIdentifier:(id)a3 identity:(id)a4 bundleID:(id)a5;
- (void)_handleQRDataSourceError:(id)a3;
- (void)connection:(id)a3 didEndWithError:(id)a4;
- (void)connection:(id)a3 didReceiveMessage:(id)a4;
- (void)connectionDidStart:(id)a3;
- (void)dealloc;
- (void)sendMessage:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation ICDirectSharedListeningConnectionController

- (void)connectionDidStart:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  [(ICDirectSharedListeningConnectionController *)self setState:4];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [(ICDirectSharedListeningConnectionController *)self report];

  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay_Oversize");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(ICDirectSharedListeningConnectionController *)self report];
      v7 = [v6 formattedReport];
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] %@", buf, 0xCu);
    }

    [(ICDirectSharedListeningConnectionController *)self setReport:0];
  }

  v8 = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(ICDirectSharedListeningConnectionController *)self delegateQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__ICDirectSharedListeningConnectionController_connectionDidStart___block_invoke;
    v10[3] = &unk_1E7BFA078;
    v11 = v8;
    v12 = self;
    dispatch_async(v9, v10);
  }
}

- (void)connection:(id)a3 didReceiveMessage:(id)a4
{
  v5 = a4;
  v6 = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(ICDirectSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__ICDirectSharedListeningConnectionController_connection_didReceiveMessage___block_invoke;
    block[3] = &unk_1E7BFA178;
    v9 = v6;
    v10 = self;
    v11 = v5;
    dispatch_async(v7, block);
  }
}

- (void)connection:(id)a3 didEndWithError:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  if ([(ICDirectSharedListeningConnectionController *)self state]>= 3)
  {
    [(ICDirectSharedListeningConnectionController *)self setState:2];
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = [(ICDirectSharedListeningConnectionController *)self report];

  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay_Oversize");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(ICDirectSharedListeningConnectionController *)self report];
      v9 = [v8 formattedReport];
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] %@", buf, 0xCu);
    }

    [(ICDirectSharedListeningConnectionController *)self setReport:0];
  }

  v10 = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(ICDirectSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__ICDirectSharedListeningConnectionController_connection_didEndWithError___block_invoke;
    block[3] = &unk_1E7BFA178;
    v13 = v10;
    v14 = self;
    v15 = v5;
    dispatch_async(v11, block);
  }
}

- (void)_handleQRDataSourceError:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(ICDirectSharedListeningConnectionController *)self setState:-1];
  os_unfair_lock_unlock(&self->_lock);
  v5 = [(ICDirectSharedListeningConnectionController *)self report];

  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay_Oversize");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(ICDirectSharedListeningConnectionController *)self report];
      v8 = [v7 formattedReport];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] %@", buf, 0xCu);
    }

    [(ICDirectSharedListeningConnectionController *)self setReport:0];
  }

  [(ICDirectSharedListeningConnectionController *)self stop];
  v9 = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(ICDirectSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ICDirectSharedListeningConnectionController__handleQRDataSourceError___block_invoke;
    block[3] = &unk_1E7BFA178;
    v12 = v9;
    v13 = self;
    v14 = v4;
    dispatch_async(v10, block);
  }
}

- (void)sendMessage:(id)a3
{
  v4 = a3;
  v5 = [(ICDirectSharedListeningConnectionController *)self connection];
  [v5 sendMessage:v4];
}

- (void)stop
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(ICDirectSharedListeningConnectionController *)self connection];
  [v3 stop];

  os_unfair_lock_lock(&self->_lock);
  v4 = [(ICDirectSharedListeningConnectionController *)self assertion];

  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(ICDirectSharedListeningConnectionController *)self assertion];
      v7 = 134218242;
      v8 = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] <%p> Releasing assertion %@.", &v7, 0x16u);
    }

    [(ICDirectSharedListeningConnectionController *)self setAssertion:0];
  }

  [(ICDirectSharedListeningConnectionController *)self setConnection:0];
  [(ICDirectSharedListeningConnectionController *)self setState:0];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)start
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(ICDirectSharedListeningConnectionController *)self assertion];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69B14D0]);
    v5 = [(ICSharedListeningConnectionController *)self bundleID];
    v6 = [v4 initWithName:@"SharedListeningAssertion" bundleID:v5 subsystem:@"QuickRelay" reason:1 flags:3];
    [(ICDirectSharedListeningConnectionController *)self setAssertion:v6];

    v7 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(ICDirectSharedListeningConnectionController *)self assertion];
      *buf = 134218242;
      v29 = self;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] <%p> Taking out assertion %@.", buf, 0x16u);
    }
  }

  if (![(ICDirectSharedListeningConnectionController *)self state])
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v29 = self;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] <%p> Begin session discovery and connection.", buf, 0xCu);
    }

    [(ICDirectSharedListeningConnectionController *)self setState:1];
    v12 = objc_opt_new();
    [(ICDirectSharedListeningConnectionController *)self setReport:v12];

    v13 = [(ICSharedListeningConnectionController *)self sessionIdentifier];
    if (v13)
    {
      v14 = [(ICSharedListeningConnectionController *)self sessionIdentifier];
      v15 = [(ICSharedListeningConnectionController *)self identity];
      v16 = [ICLiveLinkQRConnectionDataSource dataSourceForExistingSharedListeningSession:v14 identity:v15];
    }

    else
    {
      v14 = [(ICSharedListeningConnectionController *)self identity];
      v16 = [ICLiveLinkQRConnectionDataSource dataSourceForNewSharedListeningSessionWithIdentity:v14];
    }

    objc_initWeak(buf, self);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __52__ICDirectSharedListeningConnectionController_start__block_invoke;
    v26[3] = &unk_1E7BF92B8;
    objc_copyWeak(&v27, buf);
    [v16 setDataSourceErrorHandler:v26];
    v17 = [(ICDirectSharedListeningConnectionController *)self report];
    [v16 setReport:v17];

    v18 = MEMORY[0x1E69B1480];
    v19 = objc_opt_new();
    v20 = [v18 connectionWithDataSource:v16 messageCoder:v19];
    [(ICDirectSharedListeningConnectionController *)self setConnection:v20];

    v21 = [(ICDirectSharedListeningConnectionController *)self connection];
    [v21 setDelegate:self];

    v22 = [(ICDirectSharedListeningConnectionController *)self report];
    v23 = [(ICDirectSharedListeningConnectionController *)self connection];
    [v23 setReport:v22];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __52__ICDirectSharedListeningConnectionController_start__block_invoke_2;
    v24[3] = &unk_1E7BF92E0;
    v24[4] = self;
    v10 = v16;
    v25 = v10;
    [v10 populateWithCompletion:v24];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
    goto LABEL_22;
  }

  if ([(ICDirectSharedListeningConnectionController *)self state]== 2)
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] Start connection for populated controller.", buf, 2u);
    }

    v10 = [(ICDirectSharedListeningConnectionController *)self connection];
    [v10 start];
LABEL_22:

    goto LABEL_23;
  }

  if ([(ICDirectSharedListeningConnectionController *)self state]!= 1 && [(ICDirectSharedListeningConnectionController *)self state]!= 3 && [(ICDirectSharedListeningConnectionController *)self state]!= 4 && [(ICDirectSharedListeningConnectionController *)self state]== -1)
  {
    v10 = _ICLogCategoryQuickRelay();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "[ICSharedListeningConnectionController][D] Client trying to start controller in invalidated state.", buf, 2u);
    }

    goto LABEL_22;
  }

LABEL_23:
  os_unfair_lock_unlock(&self->_lock);
}

void __52__ICDirectSharedListeningConnectionController_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleQRDataSourceError:v3];
}

void __52__ICDirectSharedListeningConnectionController_start__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    [(os_unfair_lock_s *)v3 _handleQRDataSourceError:a2];
  }

  else
  {
    os_unfair_lock_lock(v3 + 14);
    [*(a1 + 32) setState:2];
    v4 = [*(a1 + 40) sharedListeningSessionIdentifier];
    [*(a1 + 32) setSessionIdentifier:v4];

    v5 = [*(a1 + 40) sharedSessionToken];
    [*(a1 + 32) setSessionToken:v5];

    v6 = [*(a1 + 40) sharedListeningSessionInviteURL];
    [*(a1 + 32) setInviteURL:v6];

    [*(a1 + 32) setState:3];
    v7 = [*(a1 + 32) connection];
    [v7 start];

    v8 = (*(a1 + 32) + 56);

    os_unfair_lock_unlock(v8);
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] <%p> Deallocating.", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = ICDirectSharedListeningConnectionController;
  [(ICDirectSharedListeningConnectionController *)&v4 dealloc];
}

- (ICDirectSharedListeningConnectionController)initWithSessionIdentifier:(id)a3 identity:(id)a4 bundleID:(id)a5
{
  v10.receiver = self;
  v10.super_class = ICDirectSharedListeningConnectionController;
  v5 = [(ICSharedListeningConnectionController *)&v10 initWithSessionIdentifier:a3 identity:a4 bundleID:a5];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.iTunesCloud.ICDirectSharedListeningConnectionController.delegateQueue", v6);
    delegateQueue = v5->_delegateQueue;
    v5->_delegateQueue = v7;

    v5->_state = 0;
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

@end