@interface ICDirectSharedListeningConnectionController
- (ICDirectSharedListeningConnectionController)initWithSessionIdentifier:(id)identifier identity:(id)identity bundleID:(id)d;
- (void)_handleQRDataSourceError:(id)error;
- (void)connection:(id)connection didEndWithError:(id)error;
- (void)connection:(id)connection didReceiveMessage:(id)message;
- (void)connectionDidStart:(id)start;
- (void)dealloc;
- (void)sendMessage:(id)message;
- (void)start;
- (void)stop;
@end

@implementation ICDirectSharedListeningConnectionController

- (void)connectionDidStart:(id)start
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  [(ICDirectSharedListeningConnectionController *)self setState:4];
  os_unfair_lock_unlock(&self->_lock);
  report = [(ICDirectSharedListeningConnectionController *)self report];

  if (report)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay_Oversize");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      report2 = [(ICDirectSharedListeningConnectionController *)self report];
      formattedReport = [report2 formattedReport];
      *buf = 138412290;
      v14 = formattedReport;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] %@", buf, 0xCu);
    }

    [(ICDirectSharedListeningConnectionController *)self setReport:0];
  }

  delegate = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(ICDirectSharedListeningConnectionController *)self delegateQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__ICDirectSharedListeningConnectionController_connectionDidStart___block_invoke;
    v10[3] = &unk_1E7BFA078;
    v11 = delegate;
    selfCopy = self;
    dispatch_async(delegateQueue, v10);
  }
}

- (void)connection:(id)connection didReceiveMessage:(id)message
{
  messageCopy = message;
  delegate = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(ICDirectSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__ICDirectSharedListeningConnectionController_connection_didReceiveMessage___block_invoke;
    block[3] = &unk_1E7BFA178;
    v9 = delegate;
    selfCopy = self;
    v11 = messageCopy;
    dispatch_async(delegateQueue, block);
  }
}

- (void)connection:(id)connection didEndWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  if ([(ICDirectSharedListeningConnectionController *)self state]>= 3)
  {
    [(ICDirectSharedListeningConnectionController *)self setState:2];
  }

  os_unfair_lock_unlock(&self->_lock);
  report = [(ICDirectSharedListeningConnectionController *)self report];

  if (report)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay_Oversize");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      report2 = [(ICDirectSharedListeningConnectionController *)self report];
      formattedReport = [report2 formattedReport];
      *buf = 138412290;
      v17 = formattedReport;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] %@", buf, 0xCu);
    }

    [(ICDirectSharedListeningConnectionController *)self setReport:0];
  }

  delegate = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(ICDirectSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__ICDirectSharedListeningConnectionController_connection_didEndWithError___block_invoke;
    block[3] = &unk_1E7BFA178;
    v13 = delegate;
    selfCopy = self;
    v15 = errorCopy;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_handleQRDataSourceError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  [(ICDirectSharedListeningConnectionController *)self setState:-1];
  os_unfair_lock_unlock(&self->_lock);
  report = [(ICDirectSharedListeningConnectionController *)self report];

  if (report)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay_Oversize");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      report2 = [(ICDirectSharedListeningConnectionController *)self report];
      formattedReport = [report2 formattedReport];
      *buf = 138412290;
      v16 = formattedReport;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] %@", buf, 0xCu);
    }

    [(ICDirectSharedListeningConnectionController *)self setReport:0];
  }

  [(ICDirectSharedListeningConnectionController *)self stop];
  delegate = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(ICDirectSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ICDirectSharedListeningConnectionController__handleQRDataSourceError___block_invoke;
    block[3] = &unk_1E7BFA178;
    v12 = delegate;
    selfCopy = self;
    v14 = errorCopy;
    dispatch_async(delegateQueue, block);
  }
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  connection = [(ICDirectSharedListeningConnectionController *)self connection];
  [connection sendMessage:messageCopy];
}

- (void)stop
{
  v11 = *MEMORY[0x1E69E9840];
  connection = [(ICDirectSharedListeningConnectionController *)self connection];
  [connection stop];

  os_unfair_lock_lock(&self->_lock);
  assertion = [(ICDirectSharedListeningConnectionController *)self assertion];

  if (assertion)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      assertion2 = [(ICDirectSharedListeningConnectionController *)self assertion];
      v7 = 134218242;
      selfCopy = self;
      v9 = 2112;
      v10 = assertion2;
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
  assertion = [(ICDirectSharedListeningConnectionController *)self assertion];

  if (!assertion)
  {
    v4 = objc_alloc(MEMORY[0x1E69B14D0]);
    bundleID = [(ICSharedListeningConnectionController *)self bundleID];
    v6 = [v4 initWithName:@"SharedListeningAssertion" bundleID:bundleID subsystem:@"QuickRelay" reason:1 flags:3];
    [(ICDirectSharedListeningConnectionController *)self setAssertion:v6];

    v7 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      assertion2 = [(ICDirectSharedListeningConnectionController *)self assertion];
      *buf = 134218242;
      selfCopy2 = self;
      v30 = 2112;
      v31 = assertion2;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] <%p> Taking out assertion %@.", buf, 0x16u);
    }
  }

  if (![(ICDirectSharedListeningConnectionController *)self state])
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] <%p> Begin session discovery and connection.", buf, 0xCu);
    }

    [(ICDirectSharedListeningConnectionController *)self setState:1];
    v12 = objc_opt_new();
    [(ICDirectSharedListeningConnectionController *)self setReport:v12];

    sessionIdentifier = [(ICSharedListeningConnectionController *)self sessionIdentifier];
    if (sessionIdentifier)
    {
      sessionIdentifier2 = [(ICSharedListeningConnectionController *)self sessionIdentifier];
      identity = [(ICSharedListeningConnectionController *)self identity];
      v16 = [ICLiveLinkQRConnectionDataSource dataSourceForExistingSharedListeningSession:sessionIdentifier2 identity:identity];
    }

    else
    {
      sessionIdentifier2 = [(ICSharedListeningConnectionController *)self identity];
      v16 = [ICLiveLinkQRConnectionDataSource dataSourceForNewSharedListeningSessionWithIdentity:sessionIdentifier2];
    }

    objc_initWeak(buf, self);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __52__ICDirectSharedListeningConnectionController_start__block_invoke;
    v26[3] = &unk_1E7BF92B8;
    objc_copyWeak(&v27, buf);
    [v16 setDataSourceErrorHandler:v26];
    report = [(ICDirectSharedListeningConnectionController *)self report];
    [v16 setReport:report];

    v18 = MEMORY[0x1E69B1480];
    v19 = objc_opt_new();
    v20 = [v18 connectionWithDataSource:v16 messageCoder:v19];
    [(ICDirectSharedListeningConnectionController *)self setConnection:v20];

    connection = [(ICDirectSharedListeningConnectionController *)self connection];
    [connection setDelegate:self];

    report2 = [(ICDirectSharedListeningConnectionController *)self report];
    connection2 = [(ICDirectSharedListeningConnectionController *)self connection];
    [connection2 setReport:report2];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __52__ICDirectSharedListeningConnectionController_start__block_invoke_2;
    v24[3] = &unk_1E7BF92E0;
    v24[4] = self;
    connection3 = v16;
    v25 = connection3;
    [connection3 populateWithCompletion:v24];

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

    connection3 = [(ICDirectSharedListeningConnectionController *)self connection];
    [connection3 start];
LABEL_22:

    goto LABEL_23;
  }

  if ([(ICDirectSharedListeningConnectionController *)self state]!= 1 && [(ICDirectSharedListeningConnectionController *)self state]!= 3 && [(ICDirectSharedListeningConnectionController *)self state]!= 4 && [(ICDirectSharedListeningConnectionController *)self state]== -1)
  {
    connection3 = _ICLogCategoryQuickRelay();
    if (os_log_type_enabled(connection3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, connection3, OS_LOG_TYPE_ERROR, "[ICSharedListeningConnectionController][D] Client trying to start controller in invalidated state.", buf, 2u);
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
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][D] <%p> Deallocating.", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = ICDirectSharedListeningConnectionController;
  [(ICDirectSharedListeningConnectionController *)&v4 dealloc];
}

- (ICDirectSharedListeningConnectionController)initWithSessionIdentifier:(id)identifier identity:(id)identity bundleID:(id)d
{
  v10.receiver = self;
  v10.super_class = ICDirectSharedListeningConnectionController;
  v5 = [(ICSharedListeningConnectionController *)&v10 initWithSessionIdentifier:identifier identity:identity bundleID:d];
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