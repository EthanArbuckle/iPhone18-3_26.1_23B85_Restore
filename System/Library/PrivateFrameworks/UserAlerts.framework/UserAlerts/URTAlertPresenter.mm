@interface URTAlertPresenter
- (URTAlertPresenter)init;
- (URTUserNotificationPresentation)userNotificationPresentation;
- (void)_addDefaultDestinationAlertFromUserNotificationContents:(id)a3 flags:(unint64_t)a4;
- (void)_addFromUserNotificationContents:(id)a3 toServiceDestination:(int64_t)a4;
- (void)_handleUserNotificationResponse:(unint64_t)a3;
- (void)_invokeCallbackForResponseFlags:(unint64_t)a3;
- (void)_presentationQueue_dismiss;
- (void)_presentationQueue_invalidate;
- (void)_presentationQueue_invokeAction:(id)a3 forPresentation:(id)a4;
- (void)_presentationQueue_removePresentation:(id)a3 forDestination:(int64_t)a4;
- (void)addAlert:(id)a3 forDestination:(int64_t)a4 preferringStyle:(int64_t)a5;
- (void)dismiss;
- (void)handleCancelActionForAlertPresentation:(id)a3;
- (void)handleDefaultActionForAlertPresentation:(id)a3;
- (void)handleOtherActionForAlertPresentation:(id)a3;
- (void)invalidate;
- (void)present;
@end

@implementation URTAlertPresenter

- (URTAlertPresenter)init
{
  v9.receiver = self;
  v9.super_class = URTAlertPresenter;
  v2 = [(URTAlertPresenter *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    presentationsForDestinations = v2->_presentationsForDestinations;
    v2->_presentationsForDestinations = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.internal.UserAlerts.presentationQueue", v5);
    presentationsQueue = v2->_presentationsQueue;
    v2->_presentationsQueue = v6;

    objc_storeWeak(&v2->_userNotificationPresentation, 0);
    v2->_compatibilityCallback = 0;
    *&v2->_compatibilityResponse = 0;
  }

  return v2;
}

- (void)invalidate
{
  v3 = [(URTAlertPresenter *)self presentationsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__URTAlertPresenter_invalidate__block_invoke;
  block[3] = &unk_279E0BEC0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)addAlert:(id)a3 forDestination:(int64_t)a4 preferringStyle:(int64_t)a5
{
  v8 = a3;
  v9 = [(URTAlertPresenter *)self presentationsQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__URTAlertPresenter_addAlert_forDestination_preferringStyle___block_invoke;
  v11[3] = &unk_279E0BEE8;
  v14 = a4;
  v15 = a5;
  v12 = v8;
  v13 = self;
  v10 = v8;
  dispatch_sync(v9, v11);
}

void __61__URTAlertPresenter_addAlert_forDestination_preferringStyle___block_invoke(uint64_t a1)
{
  v2 = off_279E0BC58;
  if (*(a1 + 48))
  {
    v2 = &off_279E0BC60;
  }

  v5 = [objc_alloc(*v2) initWithAlert:*(a1 + 32) forDestination:*(a1 + 48) preferredPresentationStyle:*(a1 + 56)];
  [v5 setDelegate:*(a1 + 40)];
  v3 = [*(a1 + 40) presentationsForDestinations];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  [v3 setObject:v5 forKey:v4];
}

- (void)_addDefaultDestinationAlertFromUserNotificationContents:(id)a3 flags:(unint64_t)a4
{
  v6 = a3;
  v7 = [(URTAlertPresenter *)self presentationsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__URTAlertPresenter__addDefaultDestinationAlertFromUserNotificationContents_flags___block_invoke;
  block[3] = &unk_279E0BF10;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, block);
}

void __83__URTAlertPresenter__addDefaultDestinationAlertFromUserNotificationContents_flags___block_invoke(uint64_t a1)
{
  v3 = [[URTUserNotificationPresentation alloc] initWithContents:*(a1 + 32) flags:*(a1 + 48)];
  objc_storeWeak((*(a1 + 40) + 40), v3);
  v2 = [*(a1 + 40) presentationsForDestinations];
  [v2 setObject:v3 forKey:&unk_288088BB8];
}

- (void)_addFromUserNotificationContents:(id)a3 toServiceDestination:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBF188]];
  v8 = URTVerifyString(v7);

  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBF198]];
  v10 = URTVerifyString(v9);

  if (v8 | v10)
  {
    v24 = a4;
    objc_initWeak(&location, self);
    v11 = [URTAlert alertWithTitle:v8 message:v10];
    v12 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBF1E8]];
    v13 = URTVerifyString(v12);

    if (v13)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __75__URTAlertPresenter__addFromUserNotificationContents_toServiceDestination___block_invoke;
      v29[3] = &unk_279E0BF38;
      objc_copyWeak(&v30, &location);
      v14 = [URTAlertAction actionWithTitle:v13 handler:v29];
      [v11 setDefaultAction:v14];

      objc_destroyWeak(&v30);
    }

    v15 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBF218]];
    v16 = URTVerifyString(v15);

    if (v16)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __75__URTAlertPresenter__addFromUserNotificationContents_toServiceDestination___block_invoke_2;
      v27[3] = &unk_279E0BF38;
      objc_copyWeak(&v28, &location);
      v17 = [URTAlertAction actionWithTitle:v16 handler:v27];
      [v11 setOtherAction:v17];

      objc_destroyWeak(&v28);
    }

    v18 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBF1C0]];
    v19 = URTVerifyString(v18);

    if (v19)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __75__URTAlertPresenter__addFromUserNotificationContents_toServiceDestination___block_invoke_3;
      v25[3] = &unk_279E0BF38;
      objc_copyWeak(&v26, &location);
      v20 = [URTAlertAction actionWithTitle:v16 handler:v25];
      [v11 setCancelAction:v20];

      objc_destroyWeak(&v26);
    }

    v21 = [v6 objectForKeyedSubscript:@"SBUserNotificationAllowedApplications"];
    v22 = objc_opt_class();
    v23 = URTVerifyClass(v21, v22);

    [v11 setAllowedApplicationBundleIDs:v23];
    [(URTAlertPresenter *)self addAlert:v11 forDestination:v24];

    objc_destroyWeak(&location);
  }
}

void __75__URTAlertPresenter__addFromUserNotificationContents_toServiceDestination___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeCallbackForResponseFlags:0];
}

void __75__URTAlertPresenter__addFromUserNotificationContents_toServiceDestination___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeCallbackForResponseFlags:2];
}

void __75__URTAlertPresenter__addFromUserNotificationContents_toServiceDestination___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeCallbackForResponseFlags:1];
}

- (void)present
{
  v3 = [(URTAlertPresenter *)self presentationsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__URTAlertPresenter_present__block_invoke;
  block[3] = &unk_279E0BEC0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __28__URTAlertPresenter_present__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) presentationsForDestinations];
  v2 = [v1 allValues];

  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) present];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dismiss
{
  v3 = [(URTAlertPresenter *)self presentationsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__URTAlertPresenter_dismiss__block_invoke;
  block[3] = &unk_279E0BEC0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)handleCancelActionForAlertPresentation:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = URTLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_270835000, v5, OS_LOG_TYPE_DEFAULT, "cancel button pressed for presentation %@", buf, 0xCu);
  }

  v6 = [(URTAlertPresenter *)self presentationsQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__URTAlertPresenter_handleCancelActionForAlertPresentation___block_invoke;
  v9[3] = &unk_279E0BE00;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_sync(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __60__URTAlertPresenter_handleCancelActionForAlertPresentation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) alert];
  v3 = [v4 cancelAction];
  [v2 _presentationQueue_invokeAction:v3 forPresentation:*(a1 + 40)];
}

- (void)handleDefaultActionForAlertPresentation:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = URTLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_270835000, v5, OS_LOG_TYPE_DEFAULT, "default button pressed for presentation %@", buf, 0xCu);
  }

  v6 = [(URTAlertPresenter *)self presentationsQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__URTAlertPresenter_handleDefaultActionForAlertPresentation___block_invoke;
  v9[3] = &unk_279E0BE00;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_sync(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __61__URTAlertPresenter_handleDefaultActionForAlertPresentation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) alert];
  v3 = [v4 defaultAction];
  [v2 _presentationQueue_invokeAction:v3 forPresentation:*(a1 + 40)];
}

- (void)handleOtherActionForAlertPresentation:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = URTLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_270835000, v5, OS_LOG_TYPE_DEFAULT, "other button pressed for presentation %@", buf, 0xCu);
  }

  v6 = [(URTAlertPresenter *)self presentationsQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__URTAlertPresenter_handleOtherActionForAlertPresentation___block_invoke;
  v9[3] = &unk_279E0BE00;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_sync(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __59__URTAlertPresenter_handleOtherActionForAlertPresentation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) alert];
  v3 = [v4 otherAction];
  [v2 _presentationQueue_invokeAction:v3 forPresentation:*(a1 + 40)];
}

- (void)_presentationQueue_invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(URTAlertPresenter *)self presentationsForDestinations];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(URTAlertPresenter *)self presentationsForDestinations];
  [v9 removeAllObjects];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_presentationQueue_dismiss
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(URTAlertPresenter *)self presentationsForDestinations];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) dismiss];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(URTAlertPresenter *)self _presentationQueue_invalidate];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_presentationQueue_removePresentation:(id)a3 forDestination:(int64_t)a4
{
  [a3 invalidate];
  v7 = [(URTAlertPresenter *)self presentationsForDestinations];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v7 removeObjectForKey:v6];
}

- (void)_presentationQueue_invokeAction:(id)a3 forPresentation:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 handler];

  if (v7)
  {
    v8 = [v9 handler];
    (v8)[2](v8, v9);
  }

  -[URTAlertPresenter _presentationQueue_removePresentation:forDestination:](self, "_presentationQueue_removePresentation:forDestination:", v6, [v6 destination]);

  [(URTAlertPresenter *)self _presentationQueue_dismiss];
}

- (void)_invokeCallbackForResponseFlags:(unint64_t)a3
{
  v5 = [(URTAlertPresenter *)self compatibilityCallback];
  Main = CFRunLoopGetMain();
  v7 = *MEMORY[0x277CBF058];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__URTAlertPresenter__invokeCallbackForResponseFlags___block_invoke;
  block[3] = &unk_279E0BF68;
  block[4] = self;
  block[5] = v5;
  block[6] = a3;
  CFRunLoopPerformBlock(Main, v7, block);
  v8 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v8);
}

void *__53__URTAlertPresenter__invokeCallbackForResponseFlags___block_invoke(void *result)
{
  v1 = result[5];
  if (v1)
  {
    return v1(result[4], result[6]);
  }

  return result;
}

- (void)_handleUserNotificationResponse:(unint64_t)a3
{
  v5 = [(URTAlertPresenter *)self compatibilityCallback];
  if (v5)
  {
    v5(self, a3);
  }

  v6 = [(URTAlertPresenter *)self presentationsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__URTAlertPresenter__handleUserNotificationResponse___block_invoke;
  block[3] = &unk_279E0BEC0;
  block[4] = self;
  dispatch_sync(v6, block);
}

uint64_t __53__URTAlertPresenter__handleUserNotificationResponse___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userNotificationPresentation];
  [v2 _presentationQueue_removePresentation:v3 forDestination:0];

  v4 = *(a1 + 32);

  return [v4 _presentationQueue_dismiss];
}

- (URTUserNotificationPresentation)userNotificationPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_userNotificationPresentation);

  return WeakRetained;
}

@end