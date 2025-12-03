@interface SLTranscriptController
- (BOOL)deviceIsiPad;
- (void)dealloc;
- (void)presentTranscriptForMessageGUID:(id)d attachmentGUID:(id)iD presentingViewController:(id)controller;
@end

@implementation SLTranscriptController

- (void)dealloc
{
  sIsPresenting = 0;
  if (self->_requestUUID)
  {
    [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:?];
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [SLTranscriptController dealloc];
    }
  }

  v4.receiver = self;
  v4.super_class = SLTranscriptController;
  [(SLTranscriptController *)&v4 dealloc];
}

- (BOOL)deviceIsiPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (void)presentTranscriptForMessageGUID:(id)d attachmentGUID:(id)iD presentingViewController:(id)controller
{
  v46[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  controllerCopy = controller;
  if (sIsPresenting == 1)
  {
    dCopy = SLFrameworkLogHandle();
    if (os_log_type_enabled(dCopy, OS_LOG_TYPE_DEBUG))
    {
      [SLTranscriptController presentTranscriptForMessageGUID:attachmentGUID:presentingViewController:];
    }
  }

  else
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    HasPublicEntitlement = SLAppHasPublicEntitlement();

    sIsPresenting = 1;
    if (![(SLTranscriptController *)self deviceIsiPad]|| (HasPublicEntitlement & 1) != 0)
    {
      v41 = 0;
      v21 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.MobileSMS.MessagesTranscriptExtension" error:&v41];
      dCopy = v41;
      [(SLTranscriptController *)self setExtension:v21];
      if (v21)
      {
        objc_initWeak(&location, self);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_27;
        v37[3] = &unk_278925C28;
        objc_copyWeak(&v39, &location);
        v22 = dCopy;
        v38 = v22;
        [v21 setRequestInterruptionBlock:v37];
        v23 = objc_alloc_init(MEMORY[0x277CCA9D8]);
        if (v22)
        {
          v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v24 setObject:v22 forKey:@"messageGUID"];
          if (iDCopy)
          {
            [v24 setObject:iDCopy forKey:@"attachmentGUID"];
          }

          [v23 setUserInfo:v24];
        }

        objc_initWeak(&from, controllerCopy);
        objc_initWeak(&v35, v21);
        v33[0] = 0;
        v33[1] = v33;
        v33[2] = 0x3032000000;
        v33[3] = __Block_byref_object_copy_;
        v33[4] = __Block_byref_object_dispose_;
        selfCopy = self;
        v44 = v23;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_33;
        v28[3] = &unk_278925CA0;
        objc_copyWeak(&v31, &from);
        objc_copyWeak(&v32, &v35);
        v30 = v33;
        v29 = v22;
        [v21 instantiateViewControllerWithInputItems:v25 connectionHandler:v28];

        objc_destroyWeak(&v32);
        objc_destroyWeak(&v31);
        _Block_object_dispose(v33, 8);

        objc_destroyWeak(&v35);
        objc_destroyWeak(&from);

        objc_destroyWeak(&v39);
        objc_destroyWeak(&location);
      }

      else
      {
        v26 = SLFrameworkLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [SLTranscriptController presentTranscriptForMessageGUID:attachmentGUID:presentingViewController:];
        }

        sIsPresenting = 0;
      }
    }

    else
    {
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"messages://open?message-guid=%@&overlay=1", dCopy];
      v14 = [MEMORY[0x277CBEBC0] URLWithString:dCopy];
      serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
      v16 = MEMORY[0x277D0AD60];
      v17 = *MEMORY[0x277D0AC40];
      v45[0] = *MEMORY[0x277D67120];
      v45[1] = v17;
      v46[0] = *MEMORY[0x277D67090];
      v46[1] = v14;
      v45[2] = *MEMORY[0x277D0AC80];
      v46[2] = MEMORY[0x277CBEC38];
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
      v19 = [v16 optionsWithDictionary:v18];

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke;
      v42[3] = &unk_278925BD8;
      v43 = v14;
      v20 = v14;
      [serviceWithDefaultShellEndpoint openApplication:@"com.apple.MobileSMS" withOptions:v19 completion:v42];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_cold_1();
    }

    v6 = [MEMORY[0x277D75128] sharedApplication];
    [v6 openURL:*(a1 + 32) options:MEMORY[0x277CBEC10] completionHandler:0];

    sIsPresenting = 0;
  }
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_27(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2;
  v2[3] = &unk_278925C00;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:0 completion:0];

  v3 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_cold_1();
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"messages://open?message-guid=%@&overlay=1", *(a1 + 32)];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  v6 = [MEMORY[0x277D75128] sharedApplication];
  [v6 openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];

  sIsPresenting = 0;
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_33(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34;
  block[3] = &unk_278925C78;
  v16 = v9;
  v10 = v9;
  objc_copyWeak(&v20, (a1 + 48));
  objc_copyWeak(&v21, (a1 + 56));
  v17 = v7;
  v18 = v8;
  v14 = *(a1 + 32);
  v11 = v14;
  v19 = v14;
  v12 = v8;
  v13 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    WeakRetained = SLFrameworkLogHandle();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34_cold_1(v1);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (WeakRetained)
    {
      [*(*(*(a1 + 64) + 8) + 40) setRequestUUID:*(a1 + 40)];
      [*(*(*(a1 + 64) + 8) + 40) setRemoteViewController:*(a1 + 48)];
      v4 = [*(a1 + 48) view];
      [v4 setAutoresizingMask:18];

      v5 = [*(*(*(a1 + 64) + 8) + 40) view];
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = [*(a1 + 48) view];
      [v14 setFrame:{v7, v9, v11, v13}];

      [*(*(*(a1 + 64) + 8) + 40) addChildViewController:*(a1 + 48)];
      v15 = [*(*(*(a1 + 64) + 8) + 40) view];
      v16 = [*(a1 + 48) view];
      [v15 addSubview:v16];

      [*(a1 + 48) didMoveToParentViewController:*(*(*(a1 + 64) + 8) + 40)];
      v17 = objc_loadWeakRetained((a1 + 80));
      v18 = [*(*(*(a1 + 64) + 8) + 40) requestUUID];
      v19 = [v17 _extensionContextForUUID:v18];

      [v19 setMessageGUID:*(a1 + 56)];
      objc_initWeak(&location, *(*(*(a1 + 64) + 8) + 40));
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_35;
      v28 = &unk_278925C50;
      objc_copyWeak(&v29, &location);
      [v19 setDismissalRequestHandler:&v25];
      v20 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34_cold_2();
      }

      v21 = objc_loadWeakRetained(&location);
      [WeakRetained presentViewController:v21 animated:1 completion:0, v25, v26, v27, v28];

      v22 = *(*(a1 + 64) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = 0;

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      v24 = objc_loadWeakRetained((a1 + 80));
      [v24 cancelExtensionRequestWithIdentifier:*(a1 + 40)];

      sIsPresenting = 0;
      v19 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34_cold_3();
      }
    }
  }
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_35(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_35_cold_1();
    }
  }
}

- (void)presentTranscriptForMessageGUID:attachmentGUID:presentingViewController:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_35_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end