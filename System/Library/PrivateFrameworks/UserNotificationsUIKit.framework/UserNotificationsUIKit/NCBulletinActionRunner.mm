@interface NCBulletinActionRunner
- (NCBulletinActionRunner)initWithAction:(id)a3 bulletin:(id)a4 observer:(id)a5;
- (void)executeAction:(id)a3 fromOrigin:(id)a4 endpoint:(id)a5 withParameters:(id)a6 completion:(id)a7;
- (void)executeSiriAction:(id)a3 completion:(id)a4;
@end

@implementation NCBulletinActionRunner

- (NCBulletinActionRunner)initWithAction:(id)a3 bulletin:(id)a4 observer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NCBulletinActionRunner;
  v12 = [(NCBulletinActionRunner *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_observer, a5);
    objc_storeStrong(&v13->_bulletin, a4);
    objc_storeStrong(&v13->_action, a3);
    *&v13->_shouldForwardAction = 1;
  }

  return v13;
}

- (void)executeAction:(id)a3 fromOrigin:(id)a4 endpoint:(id)a5 withParameters:(id)a6 completion:(id)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = self;
  objc_sync_enter(v17);
  if ([v12 isSiriAction])
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __86__NCBulletinActionRunner_executeAction_fromOrigin_endpoint_withParameters_completion___block_invoke;
    v40[3] = &unk_27836FF88;
    v41 = v16;
    [(NCBulletinActionRunner *)v17 executeSiriAction:v12 completion:v40];
    v18 = v41;
  }

  else
  {
    v19 = MEMORY[0x277D77DB0];
    if (v17->_responseWasSent)
    {
      v18 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = [v12 identifier];
        [NCBulletinActionRunner executeAction:v20 fromOrigin:v13 endpoint:buf withParameters:v18 completion:?];
      }
    }

    else
    {
      v17->_responseWasSent = 1;
      v21 = *v19;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v12 identifier];
        v23 = [(__CFString *)v15 count];
        v24 = @"{}";
        *buf = 138543875;
        v45 = v22;
        if (v23)
        {
          v24 = v15;
        }

        v46 = 2114;
        v47 = v13;
        v48 = 2113;
        v49 = v24;
        _os_log_impl(&dword_21E77E000, v21, OS_LOG_TYPE_DEFAULT, "Sending response for action %{public}@ from origin %{public}@ with parameters %{private}@", buf, 0x20u);
      }

      v18 = [MEMORY[0x277CBEB98] setWithObject:v17->_bulletin];
      v30 = [(BBBulletin *)v17->_bulletin sectionID];
      v25 = [(NCBulletinActionRunner *)v17 bulletin];
      v26 = [(NCBulletinActionRunner *)v17 action];
      v27 = [v25 responseForAction:v26];

      if (v27 && v17->_shouldForwardAction)
      {
        if (v15)
        {
          v42 = *MEMORY[0x277CF35D8];
          v43 = v15;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          [v27 setContext:v28];
          [v27 setOriginID:v13];
          [v27 setEndpoint:v14];
        }

        objc_initWeak(buf, v17->_observer);
        objc_initWeak(&location, v17);
        observer = v17->_observer;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __86__NCBulletinActionRunner_executeAction_fromOrigin_endpoint_withParameters_completion___block_invoke_6;
        v31[3] = &unk_27836FFB0;
        v32 = v15;
        v33 = v12;
        objc_copyWeak(&v37, buf);
        v34 = v18;
        v35 = v30;
        objc_copyWeak(&v38, &location);
        v36 = v16;
        [(BBObserver *)observer sendResponse:v27 withCompletion:v31];

        objc_destroyWeak(&v38);
        objc_destroyWeak(&v37);

        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }

      else if ([v12 shouldDismissNotification])
      {
        [(BBObserver *)v17->_observer clearBulletins:v18 inSection:v30];
        if (v16)
        {
          (*(v16 + 2))(v16, 1);
        }
      }

      else
      {
        [(NCBulletinActionRunner *)v17 setResponseWasSent:0];
      }
    }
  }

  objc_sync_exit(v17);
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

- (void)executeSiriAction:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277D551E8]);
  v7 = objc_alloc(MEMORY[0x277D551E0]);
  v8 = [(NCBulletinActionRunner *)self bulletin];
  v9 = [v7 initWithBBBulletin:v8];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__NCBulletinActionRunner_executeSiriAction_completion___block_invoke;
  v11[3] = &unk_27836FF88;
  v12 = v5;
  v10 = v5;
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