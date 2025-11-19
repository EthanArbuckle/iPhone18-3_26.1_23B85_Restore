@interface SUUITermsConditionsInterop
+ (id)sharedInstance;
- (SUUITermsConditionsInterop)init;
- (id)createTermsAndConditionsAgreementConfirmationMessage:(id)a3 bundle:(id)a4;
- (id)currentPresentedSceneViewController;
- (id)getTopViewControllerFrom:(id)a3;
- (void)completePresentationWithResponse:(int64_t)a3 error:(id)a4;
- (void)handleAgreeResponseFromRemoteUIObjectModel:(id)a3;
- (void)handleDisagreeResponseFromRemoteUIObjectModel:(id)a3;
- (void)handleTermsAndConditionsAgreementConfirmationAgreeResponse:(id)a3;
- (void)presentRemoteUITermsAndConditionsWithContents:(id)a3 fromRemoteUICloudUrl:(id)a4;
- (void)presentUpdateTermsAndConditions:(id)a3 forAccount:(id)a4 presentedBy:(id)a5 completionHandler:(id)a6;
- (void)presentUpdateTermsAndConditions:(id)a3 fromRemoteUICloudUrl:(id)a4;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)remoteUIControllerDidDismiss:(id)a3;
- (void)reportUserAction:(int64_t)a3 agreeUrl:(id)a4;
@end

@implementation SUUITermsConditionsInterop

+ (id)sharedInstance
{
  v11 = a1;
  v10 = a2;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __44__SUUITermsConditionsInterop_sharedInstance__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  v13 = &sharedInstance__suui_once_t1;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = MEMORY[0x277D82BE0](sharedInstance__suui_once_v2);

  return v2;
}

uint64_t __44__SUUITermsConditionsInterop_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance__suui_once_v2;
  sharedInstance__suui_once_v2 = v1;
  return MEMORY[0x277D82BD8](v2);
}

- (SUUITermsConditionsInterop)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = SUUITermsConditionsInterop;
  v8 = [(SUUITermsConditionsInterop *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.reactive-ui.terms-interop.work-queue", *MEMORY[0x277D64C30]];
    v2 = v7;
    v3 = dispatch_queue_create([v7 UTF8String], 0);
    workQueue = v11->_workQueue;
    v11->_workQueue = v3;
    MEMORY[0x277D82BD8](workQueue);
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)presentUpdateTermsAndConditions:(id)a3 forAccount:(id)a4 presentedBy:(id)a5 completionHandler:(id)a6
{
  v26 = self;
  v25 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = 0;
  objc_storeStrong(&v21, a6);
  objc_initWeak(&v20, v26);
  queue = v26->_workQueue;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke;
  v14 = &unk_279CC95F0;
  objc_copyWeak(v19, &v20);
  v19[1] = v25;
  v18 = MEMORY[0x277D82BE0](v21);
  v15 = MEMORY[0x277D82BE0](v23);
  v16 = MEMORY[0x277D82BE0](v22);
  v17 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v10);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_destroyWeak(v19);
  objc_destroyWeak(&v20);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&location, 0);
}

void __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v44[2] = a1;
  v44[1] = a1;
  v44[0] = objc_loadWeakRetained((a1 + 64));
  v13 = 0;
  if (!v44[0])
  {
    v12 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v43 = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v42 = 16;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      log = v43;
      type = v42;
      v9 = NSStringFromSelector(*(a1 + 72));
      location = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v46, "[SUUITermsConditionsInterop presentUpdateTermsAndConditions:forAccount:presentedBy:completionHandler:]_block_invoke", location);
      _os_log_error_impl(&dword_26AE88000, log, type, "%s: Self is nil in %{public}@. Stopping.", v46, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v43, 0);
    v40 = 1;
    v13 = 1;
  }

  if (v13)
  {
    v1 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke_36;
    v38 = &unk_279CC9578;
    v39 = MEMORY[0x277D82BE0](*(a1 + 56));
    dispatch_async(queue, &v34);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v39, 0);
    v33 = 1;
  }

  else if (*(v44[0] + 5))
  {
    v7 = [MEMORY[0x277D64B58] reactiveUILogger];
    v32 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v31 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_1_8_32(v45, "[SUUITermsConditionsInterop presentUpdateTermsAndConditions:forAccount:presentedBy:completionHandler:]_block_invoke_2");
      _os_log_fault_impl(&dword_26AE88000, v32, v31, "%s: A presentation callback already exists. Could not display the Apple Account Terms and Conditions twice in parallel. This is a bug.", v45, 0xCu);
    }

    objc_storeStrong(&v32, 0);
    v2 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v25 = MEMORY[0x277D85DD0];
    v26 = -1073741824;
    v27 = 0;
    v28 = __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke_39;
    v29 = &unk_279CC9578;
    v30 = MEMORY[0x277D82BE0](*(a1 + 56));
    dispatch_async(v6, &v25);
    MEMORY[0x277D82BD8](v6);
    v33 = 1;
    objc_storeStrong(&v30, 0);
  }

  else
  {
    v5 = _Block_copy(*(a1 + 56));
    v3 = *(v44[0] + 5);
    *(v44[0] + 5) = v5;
    MEMORY[0x277D82BD8](v3);
    objc_storeStrong(v44[0] + 4, *(a1 + 32));
    objc_storeStrong(v44[0] + 2, *(a1 + 40));
    v24 = [objc_alloc(MEMORY[0x277CEC848]) initWithAccount:*(a1 + 32)];
    v4 = v24;
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke_2;
    v19 = &unk_279CC95C8;
    v20 = MEMORY[0x277D82BE0](v44[0]);
    objc_copyWeak(v23, (a1 + 64));
    v23[1] = *(a1 + 72);
    v22 = MEMORY[0x277D82BE0](*(a1 + 56));
    v21 = MEMORY[0x277D82BE0](*(a1 + 48));
    [v4 downloadURLConfiguration:&v15];
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_destroyWeak(v23);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v24, 0);
    v33 = 0;
  }

  objc_storeStrong(v44, 0);
}

void __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke_36(const void **a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _Block_copy(a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:11 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], 2);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

uint64_t __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke_39(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:11 userInfo:0];
  (*(v2 + 16))(v2, 2);
  return MEMORY[0x277D82BD8](v3);
}

void __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22[1] = a1;
  v6 = [MEMORY[0x277D64B58] reactiveUILogger];
  v22[0] = [v6 oslog];
  MEMORY[0x277D82BD8](v6);
  v21 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v22[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_8_66(v25, "[SUUITermsConditionsInterop presentUpdateTermsAndConditions:forAccount:presentedBy:completionHandler:]_block_invoke_2", location[0]);
    _os_log_debug_impl(&dword_26AE88000, v22[0], v21, "%s: Apple Account Terms and Conditions configurations: %{public}@", v25, 0x16u);
  }

  objc_storeStrong(v22, 0);
  v20 = [location[0] genericTermsURL];
  if (v20)
  {
    queue = *(*(a1 + 32) + 8);
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke_41;
    v12 = &unk_279CC95A0;
    objc_copyWeak(v16, (a1 + 56));
    v16[1] = *(a1 + 64);
    v15 = MEMORY[0x277D82BE0](*(a1 + 48));
    v13 = MEMORY[0x277D82BE0](*(a1 + 40));
    v14 = MEMORY[0x277D82BE0](v20);
    dispatch_async(queue, &v8);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v15, 0);
    objc_destroyWeak(v16);
    v17 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D64B58] reactiveUILogger];
    v19 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v24, "[SUUITermsConditionsInterop presentUpdateTermsAndConditions:forAccount:presentedBy:completionHandler:]_block_invoke");
      _os_log_error_impl(&dword_26AE88000, v19, v18, "%s: Apple Account Terms and Conditions doesn't have the genericTermsURL key. Can't display RemoteUI T&C.", v24, 0xCu);
    }

    objc_storeStrong(&v19, 0);
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:11 userInfo:0];
    [v3 completePresentationWithResponse:2 error:?];
    MEMORY[0x277D82BD8](v4);
    v17 = 1;
  }

  objc_storeStrong(&v20, 0);
  if (!v17)
  {
    v17 = 0;
  }

  objc_storeStrong(location, 0);
}

void __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke_41(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v29[2] = a1;
  v29[1] = a1;
  v29[0] = objc_loadWeakRetained((a1 + 56));
  v15 = 0;
  if (!v29[0])
  {
    v14 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v28 = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v27 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      log = v28;
      type = v27;
      v13 = NSStringFromSelector(*(a1 + 64));
      v26 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_2_8_32_8_66(v31, "[SUUITermsConditionsInterop presentUpdateTermsAndConditions:forAccount:presentedBy:completionHandler:]_block_invoke", v26);
      _os_log_error_impl(&dword_26AE88000, log, type, "%s: Self is nil in %{public}@. Stopping.", v31, 0x16u);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v28, 0);
    v25 = 1;
    v15 = 1;
  }

  if (v15)
  {
    v9 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v9;
    v19 = MEMORY[0x277D85DD0];
    v20 = -1073741824;
    v21 = 0;
    v22 = __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke_42;
    v23 = &unk_279CC9578;
    v24 = MEMORY[0x277D82BE0](*(a1 + 48));
    dispatch_async(queue, &v19);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v24, 0);
    v18 = 1;
  }

  else if (*(v29[0] + 5) && *(v29[0] + 4) && *(v29[0] + 2))
  {
    v3 = v29[0];
    v2 = *(a1 + 32);
    v4 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 40)];
    [v3 presentUpdateTermsAndConditions:v2 fromRemoteUICloudUrl:?];
    MEMORY[0x277D82BD8](v4);
    v18 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277D64B58] reactiveUILogger];
    oslog = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      v7 = _Block_copy(*(v29[0] + 5));
      __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v30, "[SUUITermsConditionsInterop presentUpdateTermsAndConditions:forAccount:presentedBy:completionHandler:]_block_invoke_2", v7, *(v29[0] + 4), *(v29[0] + 2));
      _os_log_fault_impl(&dword_26AE88000, oslog, OS_LOG_TYPE_FAULT, "%s: Could not display the Apple Account Terms and Conditions as its state got invalidated during an async call.\n\t- callback: %p\n\t- account: %p\n\t- callback: %p", v30, 0x2Au);
      MEMORY[0x277D82BD8](v7);
    }

    objc_storeStrong(&oslog, 0);
    v5 = v29[0];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:11 userInfo:0];
    [v5 completePresentationWithResponse:2 error:?];
    MEMORY[0x277D82BD8](v6);
    v18 = 1;
  }

  objc_storeStrong(v29, 0);
}

void __103__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_forAccount_presentedBy_completionHandler___block_invoke_42(const void **a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _Block_copy(a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:11 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], 2);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)reportUserAction:(int64_t)a3 agreeUrl:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = self;
  v29 = a2;
  v28 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (_os_feature_enabled_impl())
  {
    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    v32 = *MEMORY[0x277CEC890];
    v12 = SUUITermsConditionsActionToString(v28);
    v33 = v12;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v22 = [v10 initWithDictionary:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    if (location)
    {
      [v22 setObject:location forKeyedSubscript:@"agreeUrl"];
    }

    v9 = [MEMORY[0x277D64B58] uiKitLogger];
    v21 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v20 = 1;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v6 = v21;
      v7 = v20;
      v8 = SUUITermsConditionsActionToString(v28);
      v19 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v31, "[SUUITermsConditionsInterop reportUserAction:agreeUrl:]", v19);
      _os_log_impl(&dword_26AE88000, v6, v7, "%s: Terms & Conditions Reporting action: %{public}@.", v31, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v21, 0);
    v5 = objc_opt_new();
    v18 = [v5 aa_primaryAppleAccount];
    MEMORY[0x277D82BD8](v5);
    v4 = objc_alloc(MEMORY[0x277CEC850]);
    v17 = [v4 initWithAccount:v18 parameters:v22];
    [v17 reportEvent];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v22, 0);
    v23 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277D64B58] uiKitLogger];
    v26 = [v16 oslog];
    MEMORY[0x277D82BD8](v16);
    v25 = 1;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      log = v26;
      type = v25;
      v15 = SUUITermsConditionsActionToString(v28);
      v24 = MEMORY[0x277D82BE0](v15);
      __os_log_helper_16_2_2_8_32_8_66(v34, "[SUUITermsConditionsInterop reportUserAction:agreeUrl:]", v24);
      _os_log_impl(&dword_26AE88000, log, type, "%s: Terms & Conditions Reporting QFA feature flag disabled. Skipping on reporting terms %{public}@ action.", v34, 0x16u);
      MEMORY[0x277D82BD8](v15);
      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v26, 0);
    v23 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (void)remoteUIControllerDidDismiss:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x277D64B58] reactiveUILogger];
  oslog = [v3 oslog];
  MEMORY[0x277D82BD8](v3);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_32(v7, "[SUUITermsConditionsInterop remoteUIControllerDidDismiss:]");
    _os_log_debug_impl(&dword_26AE88000, oslog, OS_LOG_TYPE_DEBUG, "%s: Apple Account Terms and Conditions iCloud Terms Dismissed via server", v7, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUUITermsConditionsInterop *)v6 completePresentationWithResponse:0 error:?];
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  if (v12)
  {
    v7 = [MEMORY[0x277D64B58] reactiveUILogger];
    v10 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_32_8_66(v15, "[SUUITermsConditionsInterop remoteUIController:didFinishLoadWithError:forRequest:]", v12);
      _os_log_debug_impl(&dword_26AE88000, v10, OS_LOG_TYPE_DEBUG, "%s: Apple Account Terms and Conditions iCloud Terms finished to load from server with error: %{public}@", v15, 0x16u);
    }

    objc_storeStrong(&v10, 0);
    v5 = v14;
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:11 userInfo:0];
    [(SUUITermsConditionsInterop *)v5 completePresentationWithResponse:2 error:?];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)presentUpdateTermsAndConditions:(id)a3 fromRemoteUICloudUrl:(id)a4
{
  v39[5] = *MEMORY[0x277D85DE8];
  v31 = self;
  v30 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  dispatch_assert_queue_V2(v31[1]);
  if (!v31[5])
  {
    _suui_precondition_failure_with_format();
    __break(1u);
  }

  if (!v31[4])
  {
    _suui_precondition_failure_with_format();
    __break(1u);
  }

  if (!v31[2])
  {
    _suui_precondition_failure_with_format();
    __break(1u);
  }

  v37[0] = @"name";
  v38[0] = *MEMORY[0x277CEC720];
  v37[1] = @"version";
  v13 = MEMORY[0x277CCACA8];
  v12 = [location productVersion];
  v11 = [location productBuildVersion];
  v10 = [v13 stringWithFormat:@"%@:%@", v12, v11];
  v38[1] = v10;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v39[0] = v9;
  v39[1] = &unk_287BAE270;
  v39[2] = &unk_287BAE298;
  v39[3] = &unk_287BAE2C0;
  v39[4] = &unk_287BAE2E8;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:5];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v35[0] = @"terms";
  v36[0] = v27;
  v35[1] = @"format";
  v36[1] = *MEMORY[0x277CEC948];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v25 = [objc_alloc(MEMORY[0x277CEC800]) initWithAccount:v31[4] parameters:v26];
  v33 = @"X-Apple-iOS-SLA-Version";
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(MEMORY[0x277D4DA38], "versionOfAcceptedAgreement")];
  v34 = v8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  [v25 setCustomHeaders:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v6 = [MEMORY[0x277D64B58] reactiveUILogger];
  v24 = [v6 oslog];
  MEMORY[0x277D82BD8](v6);
  v23 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v25 customHeaders];
    __os_log_helper_16_2_2_8_32_8_66(v32, "[SUUITermsConditionsInterop presentUpdateTermsAndConditions:fromRemoteUICloudUrl:]", v5);
    _os_log_debug_impl(&dword_26AE88000, v24, v23, "%s: Adding custom headers to Apple Account Terms and Conditions URL request: %{public}@", v32, 0x16u);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v24, 0);
  objc_initWeak(&from, v31);
  v4 = v25;
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __83__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_fromRemoteUICloudUrl___block_invoke;
  v19 = &unk_279CC9640;
  objc_copyWeak(v21, &from);
  v21[1] = v30;
  v20 = MEMORY[0x277D82BE0](v28);
  [v4 performRequestWithHandler:&v15];
  objc_storeStrong(&v20, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&location, 0);
}

void __83__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_fromRemoteUICloudUrl___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v40 = 0;
  objc_storeStrong(&v40, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v38[1] = a1;
  v38[0] = objc_loadWeakRetained((a1 + 40));
  v15 = 0;
  if (!v38[0])
  {
    v14 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v37 = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v36 = 16;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      log = v37;
      type = v36;
      v13 = NSStringFromSelector(*(a1 + 48));
      v35 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_2_8_32_8_66(v43, "[SUUITermsConditionsInterop presentUpdateTermsAndConditions:fromRemoteUICloudUrl:]_block_invoke", v35);
      _os_log_error_impl(&dword_26AE88000, log, type, "%s: Self is nil in %{public}@. Stopping.", v43, 0x16u);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v35, 0);
    }

    objc_storeStrong(&v37, 0);
    v34 = 1;
    v15 = 1;
  }

  if (v15)
  {
    v33 = 1;
  }

  else
  {
    v32 = MEMORY[0x277D82BE0](v40);
    v10 = [MEMORY[0x277D64B58] reactiveUILogger];
    v31 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v31;
      v8 = v30;
      v9 = [v32 termsDictionary];
      v29 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v42, "[SUUITermsConditionsInterop presentUpdateTermsAndConditions:fromRemoteUICloudUrl:]_block_invoke", v29, v39);
      _os_log_impl(&dword_26AE88000, v7, v8, "%s: Apple Account Terms and Conditions Response: %{public}@; Error: %{public}@", v42, 0x20u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&v31, 0);
    v28 = [v32 responseData];
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v5;
    v19 = MEMORY[0x277D85DD0];
    v20 = -1073741824;
    v21 = 0;
    v22 = __83__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_fromRemoteUICloudUrl___block_invoke_109;
    v23 = &unk_279CC9618;
    objc_copyWeak(v27, (a1 + 40));
    v27[1] = *(a1 + 48);
    v24 = MEMORY[0x277D82BE0](v39);
    v25 = MEMORY[0x277D82BE0](v28);
    v26 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v19);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_destroyWeak(v27);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v32, 0);
    v33 = 0;
  }

  objc_storeStrong(v38, 0);
  if (!v33)
  {
    v33 = 0;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

void __83__SUUITermsConditionsInterop_presentUpdateTermsAndConditions_fromRemoteUICloudUrl___block_invoke_109(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_loadWeakRetained((a1 + 56));
  v11 = 0;
  if (!v19[0])
  {
    v10 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v18 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      v9 = NSStringFromSelector(*(a1 + 64));
      v16 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v21, "[SUUITermsConditionsInterop presentUpdateTermsAndConditions:fromRemoteUICloudUrl:]_block_invoke", v16);
      _os_log_error_impl(&dword_26AE88000, log, type, "%s: Self is nil in %{public}@. Stopping.", v21, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v14 = 1;
  }

  else if (!*(a1 + 32) && *(a1 + 40) && [*(a1 + 40) length])
  {
    if (*(v19[0] + 5) && *(v19[0] + 4) && *(v19[0] + 2))
    {
      [v19[0] presentRemoteUITermsAndConditionsWithContents:*(a1 + 40) fromRemoteUICloudUrl:*(a1 + 48)];
      v14 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277D64B58] reactiveUILogger];
      oslog = [v4 oslog];
      MEMORY[0x277D82BD8](v4);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        v3 = _Block_copy(*(v19[0] + 5));
        __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v20, "[SUUITermsConditionsInterop presentUpdateTermsAndConditions:fromRemoteUICloudUrl:]_block_invoke", v3, *(v19[0] + 4), *(v19[0] + 2));
        _os_log_fault_impl(&dword_26AE88000, oslog, OS_LOG_TYPE_FAULT, "%s: Could not display the Apple Account Terms and Conditions as its state got invalidated during an async call.\n\t- callback: %p\n\t- account: %p\n\t- callback: %p", v20, 0x2Au);
        MEMORY[0x277D82BD8](v3);
      }

      objc_storeStrong(&oslog, 0);
      v1 = v19[0];
      v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:11 userInfo:0];
      [v1 completePresentationWithResponse:2 error:?];
      MEMORY[0x277D82BD8](v2);
      v14 = 1;
    }
  }

  else
  {
    v5 = v19[0];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:11 userInfo:0];
    [v5 completePresentationWithResponse:2 error:?];
    MEMORY[0x277D82BD8](v6);
    v14 = 1;
  }

  objc_storeStrong(v19, 0);
}

- (void)presentRemoteUITermsAndConditionsWithContents:(id)a3 fromRemoteUICloudUrl:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v48 = self;
  v47 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  v4 = MEMORY[0x277D85CD0];
  v19 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_V2(v19);
  MEMORY[0x277D82BD8](v19);
  if (!v48->_hostViewController)
  {
    v18 = [MEMORY[0x277D64B58] reactiveUILogger];
    v44 = [v18 oslog];
    MEMORY[0x277D82BD8](v18);
    v43 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v51, "[SUUITermsConditionsInterop presentRemoteUITermsAndConditionsWithContents:fromRemoteUICloudUrl:]");
      _os_log_error_impl(&dword_26AE88000, v44, v43, "%s: Apple Account Terms and Conditions - _hostViewController is nil.Falling back to UIApplication's top view controller.", v51, 0xCu);
    }

    objc_storeStrong(&v44, 0);
  }

  v42 = _Block_copy(v48->_presentationCompletion);
  v41 = MEMORY[0x277D82BE0](v48->_presentationAccount);
  hostViewController = v48->_hostViewController;
  v38 = 0;
  if (hostViewController)
  {
    v5 = MEMORY[0x277D82BE0](hostViewController);
  }

  else
  {
    v39 = [(SUUITermsConditionsInterop *)v48 currentPresentedSceneViewController];
    v38 = 1;
    v5 = MEMORY[0x277D82BE0](v39);
  }

  v40 = v5;
  if (v38)
  {
    MEMORY[0x277D82BD8](v39);
  }

  if (v42 && v41 && v40)
  {
    objc_initWeak(&from, v48);
    v12 = objc_alloc_init(MEMORY[0x277D46220]);
    remoteUIController = v48->_remoteUIController;
    v48->_remoteUIController = v12;
    MEMORY[0x277D82BD8](remoteUIController);
    v11 = v48->_remoteUIController;
    v10 = [MEMORY[0x277D46210] defaultStyle];
    [(RemoteUIController *)v11 setStyle:?];
    MEMORY[0x277D82BD8](v10);
    [(RemoteUIController *)v48->_remoteUIController setHostViewController:v40];
    [(RemoteUIController *)v48->_remoteUIController setDelegate:v48];
    v9 = v48->_remoteUIController;
    v28 = MEMORY[0x277D85DD0];
    v29 = -1073741824;
    v30 = 0;
    v31 = __97__SUUITermsConditionsInterop_presentRemoteUITermsAndConditionsWithContents_fromRemoteUICloudUrl___block_invoke;
    v32 = &unk_279CC9668;
    objc_copyWeak(v33, &from);
    v33[1] = v47;
    [(RemoteUIController *)v9 setHandlerForElementName:@"agree" handler:&v28];
    v8 = v48->_remoteUIController;
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __97__SUUITermsConditionsInterop_presentRemoteUITermsAndConditionsWithContents_fromRemoteUICloudUrl___block_invoke_120;
    v26 = &unk_279CC9668;
    objc_copyWeak(v27, &from);
    v27[1] = v47;
    [(RemoteUIController *)v8 setHandlerForElementName:@"disagree" handler:&v22];
    v7 = [MEMORY[0x277D64B58] reactiveUILogger];
    oslog = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v49, "[SUUITermsConditionsInterop presentRemoteUITermsAndConditionsWithContents:fromRemoteUICloudUrl:]");
      _os_log_impl(&dword_26AE88000, oslog, OS_LOG_TYPE_DEFAULT, "%s: Apple Account Terms and Conditions - Presenting the T&C dialog.", v49, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(RemoteUIController *)v48->_remoteUIController loadData:location baseURL:v45];
    objc_destroyWeak(v27);
    objc_destroyWeak(v33);
    objc_destroyWeak(&from);
    v35 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277D64B58] reactiveUILogger];
    v37 = [v16 oslog];
    MEMORY[0x277D82BD8](v16);
    v36 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      v15 = _Block_copy(v48->_presentationCompletion);
      __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v50, "[SUUITermsConditionsInterop presentRemoteUITermsAndConditionsWithContents:fromRemoteUICloudUrl:]", v15, v48->_presentationAccount, v48->_hostViewController);
      _os_log_fault_impl(&dword_26AE88000, v37, v36, "%s: Could not render the Apple Account Terms and Conditions as its state got invalidated during an async call, before reaching the main thread.\n\t- callback: %p\n\t- account: %p\n\t- callback: %p", v50, 0x2Au);
      MEMORY[0x277D82BD8](v15);
    }

    objc_storeStrong(&v37, 0);
    v14 = v48;
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:11 userInfo:0];
    [(SUUITermsConditionsInterop *)v14 completePresentationWithResponse:2 error:?];
    MEMORY[0x277D82BD8](v13);
    v35 = 1;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&location, 0);
}

void __97__SUUITermsConditionsInterop_presentRemoteUITermsAndConditionsWithContents_fromRemoteUICloudUrl___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained((a1 + 32));
  v8 = 0;
  if (!v15[0])
  {
    v7 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v14 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v14;
      type = v13;
      v6 = NSStringFromSelector(*(a1 + 40));
      v12 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v19, "[SUUITermsConditionsInterop presentRemoteUITermsAndConditionsWithContents:fromRemoteUICloudUrl:]_block_invoke", v12);
      _os_log_error_impl(&dword_26AE88000, log, type, "%s: Self is nil in %{public}@. Stopping.", v19, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&v14, 0);
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    [v15[0] handleAgreeResponseFromRemoteUIObjectModel:location[0]];
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __97__SUUITermsConditionsInterop_presentRemoteUITermsAndConditionsWithContents_fromRemoteUICloudUrl___block_invoke_120(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained((a1 + 32));
  v8 = 0;
  if (!v15[0])
  {
    v7 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v14 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v14;
      type = v13;
      v6 = NSStringFromSelector(*(a1 + 40));
      v12 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v19, "[SUUITermsConditionsInterop presentRemoteUITermsAndConditionsWithContents:fromRemoteUICloudUrl:]_block_invoke", v12);
      _os_log_error_impl(&dword_26AE88000, log, type, "%s: Self is nil in %{public}@. Stopping.", v19, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&v14, 0);
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    [v15[0] handleDisagreeResponseFromRemoteUIObjectModel:location[0]];
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)handleAgreeResponseFromRemoteUIObjectModel:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [MEMORY[0x277D64B58] reactiveUILogger];
  v32 = [v14 oslog];
  MEMORY[0x277D82BD8](v14);
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v36, "[SUUITermsConditionsInterop handleAgreeResponseFromRemoteUIObjectModel:]");
    _os_log_impl(&dword_26AE88000, v32, v31, "%s: Apple Account Terms and Conditions - RemoteUI reported Agree.", v36, 0xCu);
  }

  objc_storeStrong(&v32, 0);
  if (!v34->_hostViewController)
  {
    v13 = [MEMORY[0x277D64B58] reactiveUILogger];
    v30 = [v13 oslog];
    MEMORY[0x277D82BD8](v13);
    v29 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v35, "[SUUITermsConditionsInterop handleAgreeResponseFromRemoteUIObjectModel:]");
      _os_log_error_impl(&dword_26AE88000, v30, v29, "%s: Apple Account Terms and Conditions - _hostViewController is nil.Falling back to UIApplication's top view controller.", v35, 0xCu);
    }

    objc_storeStrong(&v30, 0);
  }

  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [v28 localizedStringForKey:@"Terms and Conditions" value:? table:?];
  v26 = [(SUUITermsConditionsInterop *)v34 createTermsAndConditionsAgreementConfirmationMessage:location[0] bundle:v28];
  v25 = [MEMORY[0x277D75110] alertControllerWithTitle:v27 message:v26 preferredStyle:?];
  v5 = MEMORY[0x277D750F8];
  v7 = [v28 localizedStringForKey:@"Cancel" value:&stru_287BA1850 table:@"Localizable"];
  v6 = [v5 actionWithTitle:? style:? handler:?];
  [v25 addAction:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v9 = v25;
  v8 = MEMORY[0x277D750F8];
  v11 = [v28 localizedStringForKey:@"Agree" value:&stru_287BA1850 table:@"Localizable"];
  v18 = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __73__SUUITermsConditionsInterop_handleAgreeResponseFromRemoteUIObjectModel___block_invoke;
  v22 = &unk_279CC9690;
  v23 = MEMORY[0x277D82BE0](v34);
  v24 = MEMORY[0x277D82BE0](location[0]);
  v10 = [v8 actionWithTitle:v11 style:0 handler:&v18];
  [v9 addAction:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = [(UIViewController *)v34->_hostViewController presentedViewController];
  v15 = 0;
  if (v12)
  {
    v3 = MEMORY[0x277D82BE0](v12);
  }

  else
  {
    if (v34->_hostViewController)
    {
      hostViewController = v34->_hostViewController;
    }

    else
    {
      v16 = [(SUUITermsConditionsInterop *)v34 currentPresentedSceneViewController];
      v15 = 1;
      hostViewController = v16;
    }

    v3 = MEMORY[0x277D82BE0](hostViewController);
  }

  v17 = v3;
  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  MEMORY[0x277D82BD8](v12);
  [v17 presentViewController:v25 animated:1 completion:?];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void __73__SUUITermsConditionsInterop_handleAgreeResponseFromRemoteUIObjectModel___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) handleTermsAndConditionsAgreementConfirmationAgreeResponse:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

- (void)handleDisagreeResponseFromRemoteUIObjectModel:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [MEMORY[0x277D64B58] reactiveUILogger];
  v12 = [v8 oslog];
  MEMORY[0x277D82BD8](v8);
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v15, "[SUUITermsConditionsInterop handleDisagreeResponseFromRemoteUIObjectModel:]");
    _os_log_impl(&dword_26AE88000, v12, v11, "%s: Apple Account Terms and Conditions - RemoteUI reported Disagree.", v15, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  v10 = [location[0] clientInfo];
  v3 = objc_alloc(MEMORY[0x277CEC880]);
  v4 = [v10 objectForKey:@"disagreeUrl"];
  v9 = [v3 initWithURLString:? account:?];
  MEMORY[0x277D82BD8](v4);
  v5 = v9;
  v7 = [location[0] serverInfo];
  v6 = [v7 objectForKeyedSubscript:@"serverInfoKey"];
  [v5 setServerInfo:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  [v9 performRequestWithHandler:&__block_literal_global];
  [(SUUITermsConditionsInterop *)v14 completePresentationWithResponse:1 error:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void __76__SUUITermsConditionsInterop_handleDisagreeResponseFromRemoteUIObjectModel___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15[1] = a1;
  if (v16)
  {
    v6 = [MEMORY[0x277D64B58] reactiveUILogger];
    v15[0] = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_66(v21, "[SUUITermsConditionsInterop handleDisagreeResponseFromRemoteUIObjectModel:]_block_invoke", v16);
      _os_log_error_impl(&dword_26AE88000, v15[0], v14, "%s: Apple Account Terms and Conditions Failed to mark terms as disagreed in iCloud with error: %{public}@", v21, 0x16u);
    }

    objc_storeStrong(v15, 0);
    v13 = 1;
  }

  else if ([v17 statusCode] == 200)
  {
    v4 = [MEMORY[0x277D64B58] reactiveUILogger];
    oslog = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v19, "[SUUITermsConditionsInterop handleDisagreeResponseFromRemoteUIObjectModel:]_block_invoke");
      _os_log_error_impl(&dword_26AE88000, oslog, OS_LOG_TYPE_ERROR, "%s: Apple Account Terms and Conditions Failed to mark terms as disagreed in in iCloud", v19, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v13 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D64B58] reactiveUILogger];
    v12 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_0(v20, "-[SUUITermsConditionsInterop handleDisagreeResponseFromRemoteUIObjectModel:]_block_invoke", [v17 statusCode]);
      _os_log_error_impl(&dword_26AE88000, v12, v11, "%s: Apple Account Terms and Conditions Failed to mark terms as disagreed in in iCloud with HTTP status %ld", v20, 0x16u);
    }

    objc_storeStrong(&v12, 0);
    v13 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)handleTermsAndConditionsAgreementConfirmationAgreeResponse:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [location[0] clientInfo];
  v14 = [v15 objectForKey:@"agreeUrl"];
  v3 = objc_alloc(MEMORY[0x277CEC878]);
  v13 = [v3 initWithURLString:v14 account:v17->_presentationAccount];
  if (objc_opt_respondsToSelector())
  {
    v5 = [location[0] serverInfo];
    v12 = [v5 objectForKeyedSubscript:@"serverInfoKey"];
    MEMORY[0x277D82BD8](v5);
    [v13 setServerInfo:v12];
    objc_storeStrong(&v12, 0);
  }

  v4 = v13;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __89__SUUITermsConditionsInterop_handleTermsAndConditionsAgreementConfirmationAgreeResponse___block_invoke;
  v10 = &unk_279CC96D8;
  v11 = MEMORY[0x277D82BE0](v17);
  [v4 performRequestWithHandler:&v6];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __89__SUUITermsConditionsInterop_handleTermsAndConditionsAgreementConfirmationAgreeResponse___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8[1] = a1;
  if (v9)
  {
    v4 = [MEMORY[0x277D64B58] reactiveUILogger];
    v8[0] = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    if (os_log_type_enabled(v8[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUITermsConditionsInterop handleTermsAndConditionsAgreementConfirmationAgreeResponse:]_block_invoke", v9);
      _os_log_error_impl(&dword_26AE88000, v8[0], OS_LOG_TYPE_ERROR, "%s: Apple Account Terms and Conditions Failed to mark terms as agreed in iCloud with error: %{public}@", v12, 0x16u);
    }

    objc_storeStrong(v8, 0);
  }

  [a1[4] completePresentationWithResponse:0 error:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)createTermsAndConditionsAgreementConfirmationMessage:(id)a3 bundle:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v75 = 0;
  objc_storeStrong(&v75, a4);
  v41 = objc_alloc(MEMORY[0x277CBEB18]);
  v42 = [v75 localizedStringForKey:@"OSName" value:&stru_287BA1850 table:@"Localizable"];
  v74 = [v41 initWithObjects:0];
  MEMORY[0x277D82BD8](v42);
  v73 = 0;
  memset(__b, 0, sizeof(__b));
  v43 = [location[0] namedPages];
  v44 = [v43 countByEnumeratingWithState:__b objects:v79 count:16];
  if (v44)
  {
    v37 = *__b[2];
    v38 = 0;
    v39 = v44;
    while (1)
    {
      v36 = v38;
      if (*__b[2] != v37)
      {
        objc_enumerationMutation(v43);
      }

      v72 = *(__b[1] + 8 * v38);
      if ([v72 isEqualToString:@"iCloud"])
      {
        v34 = v74;
        v35 = [v75 localizedStringForKey:@"iCloud" value:&stru_287BA1850 table:@"Localizable"];
        [v34 addObject:?];
        MEMORY[0x277D82BD8](v35);
      }

      if ([v72 isEqualToString:@"GameCenter"])
      {
        v32 = v74;
        v33 = [v75 localizedStringForKey:@"Game Center" value:&stru_287BA1850 table:@"Localizable"];
        [v32 addObject:?];
        MEMORY[0x277D82BD8](v33);
      }

      if ([v72 isEqualToString:@"AMS"])
      {
        v30 = v74;
        v31 = [v75 localizedStringForKey:@"Apple Media Services" value:&stru_287BA1850 table:@"Localizable"];
        [v30 addObject:?];
        MEMORY[0x277D82BD8](v31);
      }

      if ([v72 isEqualToString:@"Privacy"])
      {
        v73 = 1;
      }

      ++v38;
      if (v36 + 1 >= v39)
      {
        v38 = 0;
        v39 = [v43 countByEnumeratingWithState:__b objects:v79 count:16];
        if (!v39)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v43);
  v29 = [v74 count];
  switch(v29)
  {
    case 1:
      v28 = MEMORY[0x277CCACA8];
      v69 = 0;
      v67 = 0;
      if (v73)
      {
        v4 = [v75 localizedStringForKey:@"I agree to the %@ Terms and Conditions and the Apple Privacy Policy" value:&stru_287BA1850 table:@"Localizable"];
        v70 = v4;
        v69 = 1;
      }

      else
      {
        v4 = [v75 localizedStringForKey:@"I agree to the %@ Terms and Conditions" value:&stru_287BA1850 table:@"Localizable"];
        v68 = v4;
        v67 = 1;
      }

      v26 = v4;
      v27 = [v74 objectAtIndexedSubscript:0];
      v77 = [v28 stringWithFormat:v26, v27];
      MEMORY[0x277D82BD8](v27);
      if (v67)
      {
        MEMORY[0x277D82BD8](v68);
      }

      if (v69)
      {
        MEMORY[0x277D82BD8](v70);
      }

      v66 = 1;
      break;
    case 2:
      v25 = MEMORY[0x277CCACA8];
      v64 = 0;
      v62 = 0;
      if (v73)
      {
        v5 = [v75 localizedStringForKey:@"I agree to the %@ and %@ Terms and Conditions and the Apple Privacy Policy" value:&stru_287BA1850 table:@"Localizable"];
        v65 = v5;
        v64 = 1;
      }

      else
      {
        v5 = [v75 localizedStringForKey:@"I agree to the %@ and %@ Terms and Conditions" value:&stru_287BA1850 table:@"Localizable"];
        v63 = v5;
        v62 = 1;
      }

      v22 = v5;
      v24 = [v74 objectAtIndexedSubscript:0];
      v23 = [v74 objectAtIndexedSubscript:1];
      v77 = [v25 stringWithFormat:v22, v24, v23];
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      if (v62)
      {
        MEMORY[0x277D82BD8](v63);
      }

      if (v64)
      {
        MEMORY[0x277D82BD8](v65);
      }

      v66 = 1;
      break;
    case 3:
      v21 = MEMORY[0x277CCACA8];
      v60 = 0;
      v58 = 0;
      if (v73)
      {
        v61 = [v75 localizedStringForKey:@"I agree to the %@ value:%@ table:{and %@ Terms and Conditions and the Apple Privacy Policy", &stru_287BA1850, @"Localizable"}];
        v60 = 1;
        v20 = v61;
      }

      else
      {
        v59 = [v75 localizedStringForKey:@"I agree to the %@ value:%@ table:{and %@ Terms and Conditions", &stru_287BA1850, @"Localizable"}];
        v58 = 1;
        v20 = v59;
      }

      v19 = [v74 objectAtIndexedSubscript:0];
      v18 = [v74 objectAtIndexedSubscript:1];
      v17 = [v74 objectAtIndexedSubscript:2];
      v77 = [v21 stringWithFormat:v20, v19, v18, v17];
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      if (v58)
      {
        MEMORY[0x277D82BD8](v59);
      }

      if (v60)
      {
        MEMORY[0x277D82BD8](v61);
      }

      v66 = 1;
      break;
    case 4:
      v16 = MEMORY[0x277CCACA8];
      v56 = 0;
      v54 = 0;
      if (v73)
      {
        v57 = [v75 localizedStringForKey:@"I agree to the %@ value:%@ table:{%@, and %@ Terms and Conditions and the Apple Privacy Policy", &stru_287BA1850, @"Localizable"}];
        v56 = 1;
        v15 = v57;
      }

      else
      {
        v55 = [v75 localizedStringForKey:@"I agree to the %@ value:%@ table:{%@, and %@ Terms and Conditions", &stru_287BA1850, @"Localizable"}];
        v54 = 1;
        v15 = v55;
      }

      v14 = [v74 objectAtIndexedSubscript:0];
      v13 = [v74 objectAtIndexedSubscript:1];
      v12 = [v74 objectAtIndexedSubscript:2];
      v11 = [v74 objectAtIndexedSubscript:3];
      v77 = [v16 stringWithFormat:v15, v14, v13, v12, v11];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      if (v54)
      {
        MEMORY[0x277D82BD8](v55);
      }

      if (v56)
      {
        MEMORY[0x277D82BD8](v57);
      }

      v66 = 1;
      break;
    default:
      v10 = [MEMORY[0x277D64B58] reactiveUILogger];
      oslog = [v10 oslog];
      MEMORY[0x277D82BD8](v10);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_2_3_8_32_8_0_8_66(v78, "-[SUUITermsConditionsInterop createTermsAndConditionsAgreementConfirmationMessage:bundle:]", [v74 count], v74);
        _os_log_fault_impl(&dword_26AE88000, oslog, OS_LOG_TYPE_FAULT, "%s: Apple Account Terms and Conditions - Invalid number of accepted terms and conditions %lu (%{public}@)", v78, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      v9 = MEMORY[0x277CCACA8];
      v51 = 0;
      v49 = 0;
      v47 = 0;
      v45 = 0;
      if (v73)
      {
        v52 = [MEMORY[0x277CCA8D8] mainBundle];
        v51 = 1;
        v50 = [v52 localizedStringForKey:@"I agree to the Terms and Conditions and the Apple Privacy Policy" value:&stru_287BA1850 table:0];
        v49 = 1;
        v8 = v50;
      }

      else
      {
        v48 = [MEMORY[0x277CCA8D8] mainBundle];
        v47 = 1;
        v46 = [v48 localizedStringForKey:@"I agree to the Terms and Conditions" value:&stru_287BA1850 table:0];
        v45 = 1;
        v8 = v46;
      }

      v77 = [v9 stringWithFormat:v8];
      if (v45)
      {
        MEMORY[0x277D82BD8](v46);
      }

      if (v47)
      {
        MEMORY[0x277D82BD8](v48);
      }

      if (v49)
      {
        MEMORY[0x277D82BD8](v50);
      }

      if (v51)
      {
        MEMORY[0x277D82BD8](v52);
      }

      v66 = 1;
      break;
  }

  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(location, 0);
  v6 = v77;

  return v6;
}

- (void)completePresentationWithResponse:(int64_t)a3 error:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  objc_initWeak(&v13, v17);
  queue = v17->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __69__SUUITermsConditionsInterop_completePresentationWithResponse_error___block_invoke;
  v9 = &unk_279CC9750;
  v10 = MEMORY[0x277D82BE0](v17);
  objc_copyWeak(v12, &v13);
  v12[1] = v16;
  v12[2] = v15;
  v11 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v5);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(v12);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&v13);
  objc_storeStrong(&location, 0);
}

void __69__SUUITermsConditionsInterop_completePresentationWithResponse_error___block_invoke(uint64_t a1)
{
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = _Block_copy(*(*(a1 + 32) + 40));
  v16 = MEMORY[0x277D82BE0](*(*(a1 + 32) + 24));
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong((*(a1 + 32) + 32), 0);
  objc_storeStrong((*(a1 + 32) + 16), 0);
  objc_storeStrong((*(a1 + 32) + 24), 0);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __69__SUUITermsConditionsInterop_completePresentationWithResponse_error___block_invoke_2;
  v11 = &unk_279CC9728;
  objc_copyWeak(v15, (a1 + 48));
  v15[1] = *(a1 + 56);
  v12 = MEMORY[0x277D82BE0](v16);
  v14 = MEMORY[0x277D82BE0](v17[0]);
  v15[2] = *(a1 + 64);
  v13 = MEMORY[0x277D82BE0](*(a1 + 40));
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v15);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);
}

void __69__SUUITermsConditionsInterop_completePresentationWithResponse_error___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v28[2] = a1;
  v28[1] = a1;
  v28[0] = objc_loadWeakRetained((a1 + 56));
  v9 = 0;
  if (!v28[0])
  {
    v8 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v27 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      v7 = NSStringFromSelector(*(a1 + 64));
      v25 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v31, "[SUUITermsConditionsInterop completePresentationWithResponse:error:]_block_invoke_2", v25);
      _os_log_error_impl(&dword_26AE88000, log, type, "%s: Self is nil in %{public}@. Stopping.", v31, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v24 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v23 = 1;
  }

  else
  {
    if (*(a1 + 32))
    {
      v4 = [MEMORY[0x277D64B58] reactiveUILogger];
      v22 = [v4 oslog];
      MEMORY[0x277D82BD8](v4);
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_32(v30, "[SUUITermsConditionsInterop completePresentationWithResponse:error:]_block_invoke");
        _os_log_impl(&dword_26AE88000, v22, v21, "%s: Apple Account Terms and Conditions - dismissing the RemoteUI controller.", v30, 0xCu);
      }

      objc_storeStrong(&v22, 0);
      v3 = *(a1 + 32);
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __69__SUUITermsConditionsInterop_completePresentationWithResponse_error___block_invoke_189;
      v18 = &unk_279CC9700;
      v20[0] = MEMORY[0x277D82BE0](*(a1 + 48));
      v20[1] = *(a1 + 72);
      v19 = MEMORY[0x277D82BE0](*(a1 + 40));
      v1 = [v3 dismissObjectModelsAnimated:1 completion:&v14];
      objc_storeStrong(&v19, 0);
      objc_storeStrong(v20, 0);
    }

    else
    {
      v2 = [MEMORY[0x277D64B58] reactiveUILogger];
      oslog = [v2 oslog];
      MEMORY[0x277D82BD8](v2);
      v12 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_32(v29, "[SUUITermsConditionsInterop completePresentationWithResponse:error:]_block_invoke_2");
        _os_log_error_impl(&dword_26AE88000, oslog, v12, "%s: Apple Account Terms and Conditions - there's no RemoteUI controller available. Skipping on the dismissal request.", v29, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v11 = _Block_copy(*(a1 + 48));
      if (v11)
      {
        (*(v11 + 2))(v11, *(a1 + 72), *(a1 + 40));
      }

      objc_storeStrong(&v11, 0);
    }

    v23 = 0;
  }

  objc_storeStrong(v28, 0);
}

void __69__SUUITermsConditionsInterop_completePresentationWithResponse_error___block_invoke_189(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _Block_copy(*(a1 + 40));
  if (location[0])
  {
    (*(location[0] + 2))(location[0], *(a1 + 48), *(a1 + 32));
  }

  objc_storeStrong(location, 0);
}

- (id)currentPresentedSceneViewController
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = self;
  v31[1] = a2;
  v18 = [MEMORY[0x277D75128] sharedApplication];
  v31[0] = [v18 connectedScenes];
  MEMORY[0x277D82BD8](v18);
  location = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v31[0]);
  v20 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
  if (v20)
  {
    v15 = *__b[2];
    v16 = 0;
    v17 = v20;
    while (1)
    {
      v14 = v16;
      if (*__b[2] != v15)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(__b[1] + 8 * v16);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![v29 activationState])
      {
        break;
      }

      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v17)
        {
          goto LABEL_10;
        }
      }
    }

    objc_storeStrong(&location, v29);
    v27 = 2;
  }

  else
  {
LABEL_10:
    v27 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (location)
  {
    v24 = 0;
    memset(v22, 0, sizeof(v22));
    v11 = [location windows];
    v12 = [v11 countByEnumeratingWithState:v22 objects:v35 count:16];
    if (v12)
    {
      v8 = *v22[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*v22[2] != v8)
        {
          objc_enumerationMutation(v11);
        }

        v23 = *(v22[1] + 8 * v9);
        if ([v23 isKeyWindow])
        {
          break;
        }

        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [v11 countByEnumeratingWithState:v22 objects:v35 count:16];
          if (!v10)
          {
            goto LABEL_23;
          }
        }
      }

      objc_storeStrong(&v24, v23);
      v27 = 6;
    }

    else
    {
LABEL_23:
      v27 = 0;
    }

    MEMORY[0x277D82BD8](v11);
    if (v24)
    {
      v4 = v32;
      v5 = [v24 rootViewController];
      v33 = [(SUUITermsConditionsInterop *)v4 getTopViewControllerFrom:?];
      MEMORY[0x277D82BD8](v5);
      v27 = 1;
    }

    else
    {
      v6 = [MEMORY[0x277D64B58] reactiveUILogger];
      v21 = [v6 oslog];
      MEMORY[0x277D82BD8](v6);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_32(v34, "[SUUITermsConditionsInterop currentPresentedSceneViewController]");
        _os_log_error_impl(&dword_26AE88000, v21, OS_LOG_TYPE_ERROR, "%s: Apple Account Terms and Conditions - couldn't find the active keyWindow.", v34, 0xCu);
      }

      objc_storeStrong(&v21, 0);
      v33 = 0;
      v27 = 1;
    }

    objc_storeStrong(&v24, 0);
  }

  else
  {
    v13 = [MEMORY[0x277D64B58] reactiveUILogger];
    oslog = [v13 oslog];
    MEMORY[0x277D82BD8](v13);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v36, "[SUUITermsConditionsInterop currentPresentedSceneViewController]");
      _os_log_error_impl(&dword_26AE88000, oslog, type, "%s: Apple Account Terms and Conditions - couldn't find the active windowScene.", v36, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v33 = 0;
    v27 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v31, 0);
  v2 = v33;

  return v2;
}

- (id)getTopViewControllerFrom:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [location[0] presentedViewController];
  MEMORY[0x277D82BD8](v11);
  if (v11)
  {
    v9 = v16;
    v10 = [location[0] presentedViewController];
    v17 = [(SUUITermsConditionsInterop *)v9 getTopViewControllerFrom:?];
    MEMORY[0x277D82BD8](v10);
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x277D82BE0](location[0]);
      v7 = v16;
      v8 = [v13 visibleViewController];
      v17 = [(SUUITermsConditionsInterop *)v7 getTopViewControllerFrom:?];
      MEMORY[0x277D82BD8](v8);
      v14 = 1;
      objc_storeStrong(&v13, 0);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = MEMORY[0x277D82BE0](location[0]);
        v5 = v16;
        v6 = [v12 selectedViewController];
        v17 = [(SUUITermsConditionsInterop *)v5 getTopViewControllerFrom:?];
        MEMORY[0x277D82BD8](v6);
        v14 = 1;
        objc_storeStrong(&v12, 0);
      }

      else
      {
        v17 = MEMORY[0x277D82BE0](location[0]);
        v14 = 1;
      }
    }
  }

  objc_storeStrong(location, 0);
  v3 = v17;

  return v3;
}

@end