@interface NCBulletinActionRunner
- (NCBulletinActionRunner)initWithAction:(id)action bulletin:(id)bulletin observer:(id)observer;
- (void)executeAction:(id)action fromOrigin:(id)origin endpoint:(id)endpoint withParameters:(id)parameters completion:(id)completion;
- (void)executeSiriAction:(id)action completion:(id)completion;
@end

@implementation NCBulletinActionRunner

- (NCBulletinActionRunner)initWithAction:(id)action bulletin:(id)bulletin observer:(id)observer
{
  actionCopy = action;
  bulletinCopy = bulletin;
  observerCopy = observer;
  v15.receiver = self;
  v15.super_class = NCBulletinActionRunner;
  v12 = [(NCBulletinActionRunner *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_observer, observer);
    objc_storeStrong(&v13->_bulletin, bulletin);
    objc_storeStrong(&v13->_action, action);
    *&v13->_shouldForwardAction = 1;
  }

  return v13;
}

- (void)executeAction:(id)action fromOrigin:(id)origin endpoint:(id)endpoint withParameters:(id)parameters completion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  originCopy = origin;
  endpointCopy = endpoint;
  parametersCopy = parameters;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([actionCopy isSiriAction])
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __86__NCBulletinActionRunner_executeAction_fromOrigin_endpoint_withParameters_completion___block_invoke;
    v40[3] = &unk_27836FF88;
    v41 = completionCopy;
    [(NCBulletinActionRunner *)selfCopy executeSiriAction:actionCopy completion:v40];
    v18 = v41;
  }

  else
  {
    v19 = MEMORY[0x277D77DB0];
    if (selfCopy->_responseWasSent)
    {
      v18 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        identifier = [actionCopy identifier];
        [NCBulletinActionRunner executeAction:identifier fromOrigin:originCopy endpoint:buf withParameters:v18 completion:?];
      }
    }

    else
    {
      selfCopy->_responseWasSent = 1;
      v21 = *v19;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [actionCopy identifier];
        v23 = [(__CFString *)parametersCopy count];
        v24 = @"{}";
        *buf = 138543875;
        v45 = identifier2;
        if (v23)
        {
          v24 = parametersCopy;
        }

        v46 = 2114;
        v47 = originCopy;
        v48 = 2113;
        v49 = v24;
        _os_log_impl(&dword_21E77E000, v21, OS_LOG_TYPE_DEFAULT, "Sending response for action %{public}@ from origin %{public}@ with parameters %{private}@", buf, 0x20u);
      }

      v18 = [MEMORY[0x277CBEB98] setWithObject:selfCopy->_bulletin];
      sectionID = [(BBBulletin *)selfCopy->_bulletin sectionID];
      bulletin = [(NCBulletinActionRunner *)selfCopy bulletin];
      action = [(NCBulletinActionRunner *)selfCopy action];
      v27 = [bulletin responseForAction:action];

      if (v27 && selfCopy->_shouldForwardAction)
      {
        if (parametersCopy)
        {
          v42 = *MEMORY[0x277CF35D8];
          v43 = parametersCopy;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          [v27 setContext:v28];
          [v27 setOriginID:originCopy];
          [v27 setEndpoint:endpointCopy];
        }

        objc_initWeak(buf, selfCopy->_observer);
        objc_initWeak(&location, selfCopy);
        observer = selfCopy->_observer;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __86__NCBulletinActionRunner_executeAction_fromOrigin_endpoint_withParameters_completion___block_invoke_6;
        v31[3] = &unk_27836FFB0;
        v32 = parametersCopy;
        v33 = actionCopy;
        objc_copyWeak(&v37, buf);
        v34 = v18;
        v35 = sectionID;
        objc_copyWeak(&v38, &location);
        v36 = completionCopy;
        [(BBObserver *)observer sendResponse:v27 withCompletion:v31];

        objc_destroyWeak(&v38);
        objc_destroyWeak(&v37);

        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }

      else if ([actionCopy shouldDismissNotification])
      {
        [(BBObserver *)selfCopy->_observer clearBulletins:v18 inSection:sectionID];
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 1);
        }
      }

      else
      {
        [(NCBulletinActionRunner *)selfCopy setResponseWasSent:0];
      }
    }
  }

  objc_sync_exit(selfCopy);
}

void __86__NCBulletinActionRunner_executeAction_fromOrigin_endpoint_withParameters_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) objectForKey:@"NCNotificationActionDeferClearForNotificationSummaryKey"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = [v8 identifier];
    v14 = 138543874;
    v15 = v10;
    v16 = 1024;
    v17 = a2;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Running completion block for sendResponse for action %{public}@ with success=%d \t deferClearForNotificationSummary=%{BOOL}d", &v14, 0x18u);
  }

  if (a2 && !(v6 & 1 | (([*(a1 + 40) shouldDismissNotification] & 1) == 0)))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained clearBulletins:*(a1 + 48) inSection:*(a1 + 56)];
  }

  v12 = objc_loadWeakRetained((a1 + 80));
  [v12 setResponseWasSent:0];

  v13 = *(a1 + 64);
  if (v13)
  {
    (*(v13 + 16))(v13, a2);
  }
}

- (void)executeSiriAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  v6 = objc_alloc_init(MEMORY[0x277D551E8]);
  v7 = objc_alloc(MEMORY[0x277D551E0]);
  bulletin = [(NCBulletinActionRunner *)self bulletin];
  v9 = [v7 initWithBBBulletin:bulletin];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__NCBulletinActionRunner_executeSiriAction_completion___block_invoke;
  v11[3] = &unk_27836FF88;
  v12 = completionCopy;
  v10 = completionCopy;
  [v6 activateWithContext:v9 completion:v11];
}

- (void)executeAction:(uint8_t *)buf fromOrigin:(os_log_t)log endpoint:withParameters:completion:.cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_21E77E000, log, OS_LOG_TYPE_ERROR, "Tried to send response for action %{public}@ more than once. origin: %{public}@", buf, 0x16u);
}

@end