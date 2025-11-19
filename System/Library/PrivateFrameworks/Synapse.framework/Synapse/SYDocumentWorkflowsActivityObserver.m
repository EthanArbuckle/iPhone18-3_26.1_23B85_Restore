@interface SYDocumentWorkflowsActivityObserver
- (SYDocumentWorkflowsActivityObserver)init;
- (void)_handleActiveUserActivityChange:(id)a3;
- (void)_handleActiveUserActivityChangeAfterDelay:(id)a3;
- (void)_handleAppBecomeActive:(id)a3;
- (void)_handleAppResignActive:(id)a3;
- (void)_updateLinkedDocuments;
- (void)dealloc;
- (void)registerForAppStateNotifications;
- (void)userActivityDidBecomeCurrent:(id)a3 current:(BOOL)a4;
- (void)userActivityPersistentIdentifierWasChanged:(id)a3 persistentIdentifier:(id)a4 previousValue:(id)a5;
@end

@implementation SYDocumentWorkflowsActivityObserver

- (void)registerForAppStateNotifications
{
  if (!self->_appStateObserver)
  {
    objc_initWeak(&location, self);
    v3 = [SYApplicationStateObserver alloc];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__SYDocumentWorkflowsActivityObserver_registerForAppStateNotifications__block_invoke;
    v8[3] = &unk_27856BC18;
    objc_copyWeak(&v9, &location);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__SYDocumentWorkflowsActivityObserver_registerForAppStateNotifications__block_invoke_2;
    v6[3] = &unk_27856BC18;
    objc_copyWeak(&v7, &location);
    v4 = [(SYApplicationStateObserver *)v3 initWithBecomeActiveHandler:v8 resignActiveHandler:v6];
    appStateObserver = self->_appStateObserver;
    self->_appStateObserver = v4;

    [(SYApplicationStateObserver *)self->_appStateObserver registerForAppStateNotifications];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (SYDocumentWorkflowsActivityObserver)init
{
  v9.receiver = self;
  v9.super_class = SYDocumentWorkflowsActivityObserver;
  v2 = [(SYDocumentWorkflowsActivityObserver *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.synapse.DocumentWorkflowActivityObserver", v3);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v4;

    v6 = objc_alloc_init(SYDocumentWorkflowsActivityChangeHandler);
    handler = v2->_handler;
    v2->_handler = v6;
  }

  return v2;
}

void __71__SYDocumentWorkflowsActivityObserver_registerForAppStateNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAppBecomeActive:v3];
}

void __71__SYDocumentWorkflowsActivityObserver_registerForAppStateNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAppResignActive:v3];
}

- (void)_updateLinkedDocuments
{
  if (SYIsMailApp())
  {
    v2 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "Updating linked documents started...", v4, 2u);
    }

    v3 = objc_alloc_init(SYDocumentWorkflowsClient);
    [(SYDocumentWorkflowsClient *)v3 updateLinkedDocumentsWithCompletion:&__block_literal_global_17];
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_DEFAULT, "deallocating: %p", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = SYDocumentWorkflowsActivityObserver;
  [(SYDocumentWorkflowsActivityObserver *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleAppBecomeActive:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "application did become active: %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SYDocumentWorkflowsActivityObserver__handleAppBecomeActive___block_invoke;
  v7[3] = &unk_27856BC40;
  v7[4] = self;
  [MEMORY[0x277CC1EF0] _syFetchCurrentUserActivityWithCompletion:v7];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __62__SYDocumentWorkflowsActivityObserver__handleAppBecomeActive___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _handleActiveUserActivityChange:a2];
  }

  return result;
}

- (void)_handleAppResignActive:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "application did resign active: %@", &v7, 0xCu);
  }

  [(SYDocumentWorkflowsActivityObserver *)self _updateLinkedDocuments];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)userActivityDidBecomeCurrent:(id)a3 current:(BOOL)a4
{
  v5 = a3;
  v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "user activity did become current", v7, 2u);
  }

  [(SYDocumentWorkflowsActivityObserver *)self _handleActiveUserActivityChange:v5];
}

- (void)userActivityPersistentIdentifierWasChanged:(id)a3 persistentIdentifier:(id)a4 previousValue:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_DEFAULT, "user activity persistent identifier was changed from %@ to %@", &v13, 0x16u);
  }

  [(SYDocumentWorkflowsActivityObserver *)self _handleActiveUserActivityChange:v10];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleActiveUserActivityChange:(id)a3
{
  v4 = MEMORY[0x277D82BB8];
  v5 = a3;
  [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel__handleActiveUserActivityChangeAfterDelay_ object:v5];
  [(SYDocumentWorkflowsActivityObserver *)self performSelector:sel__handleActiveUserActivityChangeAfterDelay_ withObject:v5 afterDelay:0.1];
}

- (void)_handleActiveUserActivityChangeAfterDelay:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_appStateObserver);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SYDocumentWorkflowsActivityObserver__handleActiveUserActivityChangeAfterDelay___block_invoke;
  block[3] = &unk_27856BC88;
  objc_copyWeak(&v9, &location);
  objc_copyWeak(&v10, &from);
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __81__SYDocumentWorkflowsActivityObserver__handleActiveUserActivityChangeAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((a1 + 48));

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 40));
      v6 = [v5 handler];
      v7 = *(a1 + 32);
      v8 = objc_loadWeakRetained((a1 + 48));
      LOBYTE(v7) = [v6 canHandleUserActivityChange:v7 appStateObserver:v8];

      if (v7)
      {
        v11 = objc_loadWeakRetained((a1 + 40));
        v9 = [v11 handler];
        [v9 handleActiveUserActivityChange:*(a1 + 32) withCompletion:&__block_literal_global_7];
      }

      else
      {
        v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_DEFAULT, "Can't handle user activity change", buf, 2u);
        }
      }
    }
  }
}

void __81__SYDocumentWorkflowsActivityObserver__handleActiveUserActivityChangeAfterDelay___block_invoke_12(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __81__SYDocumentWorkflowsActivityObserver__handleActiveUserActivityChangeAfterDelay___block_invoke_12_cold_1(v4, v5);
    }
  }
}

void __61__SYDocumentWorkflowsActivityObserver__updateLinkedDocuments__block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__SYDocumentWorkflowsActivityObserver__updateLinkedDocuments__block_invoke_cold_1(v4, v5);
    }
  }

  v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "Updating linked documents finished, success: %d", v8, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __81__SYDocumentWorkflowsActivityObserver__handleActiveUserActivityChangeAfterDelay___block_invoke_12_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Handling user activity change failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __61__SYDocumentWorkflowsActivityObserver__updateLinkedDocuments__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Unable to update linked documents, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end