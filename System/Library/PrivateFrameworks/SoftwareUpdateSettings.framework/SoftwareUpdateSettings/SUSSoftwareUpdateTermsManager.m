@interface SUSSoftwareUpdateTermsManager
- (SUSSoftwareUpdateTermsManager)init;
- (void)_acceptedTermsFromAsset;
- (void)_acceptedTermsVersion:(id)a3;
- (void)_finishTermsWithAcceptance:(BOOL)a3 error:(id)a4;
- (void)_handleAgreeFromObjectModel:(id)a3;
- (void)_handleDisagreeFromObjectModel:(id)a3;
- (void)_loadRemoteUITermsWithCloudAtURL:(id)a3;
- (void)_loadTermsFromUpdateAsset;
- (void)_loadTermsRemoteUIFailureWithError:(id)a3;
- (void)_presentModalController:(id)a3;
- (void)_reportTermsUserAction:(id)a3;
- (void)_reportTermsUserAction:(id)a3 agreeUrl:(id)a4;
- (void)cancelLoadingTerms:(id)a3;
- (void)presentTermsIfNecessaryForUpdate:(id)a3 overController:(id)a4 showLoadSpinner:(BOOL)a5 completion:(id)a6;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)remoteUIControllerDidDismiss:(id)a3;
- (void)showLoadingSpinnerViewController;
@end

@implementation SUSSoftwareUpdateTermsManager

- (SUSSoftwareUpdateTermsManager)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = SUSSoftwareUpdateTermsManager;
  v8 = [(SUSSoftwareUpdateTermsManager *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = objc_alloc_init(MEMORY[0x277D648B8]);
    termsAndConditionsClient = v8->termsAndConditionsClient;
    v8->termsAndConditionsClient = v2;
    MEMORY[0x277D82BD8](termsAndConditionsClient);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)_finishTermsWithAcceptance:(BOOL)a3 error:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v52 = self;
  v51 = a2;
  v50 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v48 = _SUSLoggingFacility();
  v47 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    if (v50)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_2_8_66_8_66(v54, v4, location);
    _os_log_impl(&dword_26AC65000, v48, v47, "[SU Terms] Terms accepted: %{public}@, error: %{public}@", v54, 0x16u);
  }

  objc_storeStrong(&v48, 0);
  v38 = MEMORY[0x277D85DD0];
  v39 = -1073741824;
  v40 = 0;
  v41 = __66__SUSSoftwareUpdateTermsManager__finishTermsWithAcceptance_error___block_invoke;
  v42 = &unk_279CB6B08;
  v43 = MEMORY[0x277D82BE0](v52);
  v45 = v50;
  v44 = MEMORY[0x277D82BE0](location);
  v46 = MEMORY[0x26D669A60](&v38);
  if (v52->_showProgressViewController)
  {
    showProgressViewController = v52->_showProgressViewController;
    v32 = MEMORY[0x277D85DD0];
    v33 = -1073741824;
    v34 = 0;
    v35 = __66__SUSSoftwareUpdateTermsManager__finishTermsWithAcceptance_error___block_invoke_2;
    v36 = &unk_279CB6B30;
    v37 = MEMORY[0x277D82BE0](v46);
    [(UINavigationController *)showProgressViewController dismissViewControllerAnimated:1 completion:&v32];
    objc_storeStrong(&v37, 0);
  }

  else if (v52->_termsRemoteUI)
  {
    termsRemoteUI = v52->_termsRemoteUI;
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __66__SUSSoftwareUpdateTermsManager__finishTermsWithAcceptance_error___block_invoke_3;
    v30 = &unk_279CB6B30;
    v31 = MEMORY[0x277D82BE0](v46);
    v5 = [(RemoteUIController *)termsRemoteUI dismissObjectModelsAnimated:1 completion:&v26];
    objc_storeStrong(&v31, 0);
  }

  else
  {
    v10 = [(UIViewController *)v52->_hostController presentedViewController];
    v24 = 0;
    v22 = 0;
    v11 = 0;
    if (v10)
    {
      v25 = [(UIViewController *)v52->_hostController presentedViewController];
      v24 = 1;
      WeakRetained = objc_loadWeakRetained(&v52->_presentedViewController);
      v22 = 1;
      v11 = v25 == WeakRetained;
    }

    if (v22)
    {
      MEMORY[0x277D82BD8](WeakRetained);
    }

    if (v24)
    {
      MEMORY[0x277D82BD8](v25);
    }

    v6 = MEMORY[0x277D82BD8](v10);
    if (v11)
    {
      hostController = v52->_hostController;
      v16 = MEMORY[0x277D85DD0];
      v17 = -1073741824;
      v18 = 0;
      v19 = __66__SUSSoftwareUpdateTermsManager__finishTermsWithAcceptance_error___block_invoke_4;
      v20 = &unk_279CB6B30;
      v21 = MEMORY[0x277D82BE0](v46);
      [(UIViewController *)hostController dismissViewControllerAnimated:1 completion:&v16];
      objc_storeStrong(&v21, 0);
    }

    else
    {
      (*(v46 + 2))(v6);
    }
  }

  v7 = objc_alloc(MEMORY[0x277D64868]);
  v15 = [v7 initWithEventName:*MEMORY[0x277D64958]];
  if (v50)
  {
    v8 = *MEMORY[0x277D64A78];
  }

  else
  {
    v8 = *MEMORY[0x277D64A80];
  }

  [v15 setEventPayloadEntry:*MEMORY[0x277D64960] stringValue:v8];
  oslog = _SUSLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v53, v15);
    _os_log_impl(&dword_26AC65000, oslog, OS_LOG_TYPE_DEFAULT, "[SU Terms] Submitting event for T&C interaction: %{public}@", v53, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUManagerClient *)v52->termsAndConditionsClient submitSUAnalyticsEvent:v15];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

id __66__SUSSoftwareUpdateTermsManager__finishTermsWithAcceptance_error___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    v1 = *(a1 + 40);
    v2 = *(a1 + 48) & 1;
    (*(*(*(a1 + 32) + 24) + 16))();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong((*(a1 + 32) + 48), 0);
  objc_storeStrong((*(a1 + 32) + 56), 0);
  objc_storeStrong((*(a1 + 32) + 16), 0);
  return objc_storeWeak((*(a1 + 32) + 64), 0);
}

- (void)_presentModalController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_presentedViewController, location[0]);
  [(UIViewController *)v4->_hostController presentViewController:location[0] animated:1 completion:0];
  objc_storeStrong(location, 0);
}

- (void)showLoadingSpinnerViewController
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = self;
  v12[1] = a2;
  v12[0] = objc_opt_new();
  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:? target:? action:?];
  v6 = v12[0];
  v14[0] = v11;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v6 setToolbarItems:?];
  MEMORY[0x277D82BD8](v7);
  v8 = v12[0];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v10 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_287B74428 table:@"Software Update"];
  [v8 setTitle:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v2 = [_PSSpinnerHandlingNavigationController alloc];
  v3 = [(_PSSpinnerHandlingNavigationController *)v2 initWithRootViewController:v12[0]];
  showProgressViewController = v13->_showProgressViewController;
  v13->_showProgressViewController = v3;
  *&v5 = MEMORY[0x277D82BD8](showProgressViewController).n128_u64[0];
  [(UINavigationController *)v13->_showProgressViewController setModalPresentationStyle:2, v5];
  [(UINavigationController *)v13->_showProgressViewController setToolbarHidden:0];
  [(SUSSoftwareUpdateTermsManager *)v13 _presentModalController:v13->_showProgressViewController];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);
  *MEMORY[0x277D85DE8];
}

- (void)presentTermsIfNecessaryForUpdate:(id)a3 overController:(id)a4 showLoadSpinner:(BOOL)a5 completion:(id)a6
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  v44 = a5;
  v43 = 0;
  objc_storeStrong(&v43, a6);
  objc_storeStrong(&v47->_hostController, v45);
  objc_storeStrong(&v47->_update, location[0]);
  v42 = objc_opt_new();
  v41 = [v42 aa_primaryAppleAccount];
  v40 = [v41 aa_personID];
  v6 = [v43 copy];
  termsCompletion = v47->_termsCompletion;
  v47->_termsCompletion = v6;
  if ([v40 length])
  {
    v39 = _SUSLoggingFacility();
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      log = v39;
      type = v38;
      __os_log_helper_16_0_0(v37);
      _os_log_impl(&dword_26AC65000, log, type, "[SU Terms] Downloading URL configuration for combined terms", v37, 2u);
    }

    objc_storeStrong(&v39, 0);
    if (v44)
    {
      [(SUSSoftwareUpdateTermsManager *)v47 showLoadingSpinnerViewController];
    }

    v8 = objc_alloc(getAASetupAssistantServiceClass());
    v36 = [v8 initWithAccount:v41];
    v18 = v36;
    v30 = MEMORY[0x277D85DD0];
    v31 = -1073741824;
    v32 = 0;
    v33 = __108__SUSSoftwareUpdateTermsManager_presentTermsIfNecessaryForUpdate_overController_showLoadSpinner_completion___block_invoke;
    v34 = &unk_279CB6B80;
    v35 = MEMORY[0x277D82BE0](v47);
    [v18 downloadURLConfiguration:&v30];
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  else
  {
    v16 = [(SUDescriptor *)v47->_update documentation];
    v15 = [v16 licenseAgreement];
    v17 = [v15 length];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    if (v17)
    {
      v29 = _SUSLoggingFacility();
      v28 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v29;
        v14 = v28;
        __os_log_helper_16_0_0(v27);
        _os_log_impl(&dword_26AC65000, v13, v14, "[SU Terms] Using terms from the update asset", v27, 2u);
      }

      objc_storeStrong(&v29, 0);
      [(SUSSoftwareUpdateTermsManager *)v47 _loadTermsFromUpdateAsset];
    }

    else if (v43)
    {
      v26 = _SUSLoggingFacility();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v26;
        v12 = v25;
        __os_log_helper_16_0_0(v24);
        _os_log_impl(&dword_26AC65000, v11, v12, "[SU Terms] No terms on update asset", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      v9 = v43;
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdatesettings.errors" code:1 userInfo:0];
      v9[2](v9, 1);
      MEMORY[0x277D82BD8](v10);
    }
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

void __108__SUSSoftwareUpdateTermsManager_presentTermsIfNecessaryForUpdate_overController_showLoadSpinner_completion___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[1] = a1;
  v14[0] = _SUSLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v16, location[0]);
    _os_log_impl(&dword_26AC65000, v14[0], v13, "[SU Terms] Response = %{public}@", v16, 0xCu);
  }

  objc_storeStrong(v14, 0);
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __108__SUSSoftwareUpdateTermsManager_presentTermsIfNecessaryForUpdate_overController_showLoadSpinner_completion___block_invoke_443;
  v10 = &unk_279CB6B58;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](a1[4]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __108__SUSSoftwareUpdateTermsManager_presentTermsIfNecessaryForUpdate_overController_showLoadSpinner_completion___block_invoke_443(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v9[0] = [a1[4] genericTermsURL];
  if (v9[0])
  {
    v3 = a1[5];
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v9[0]];
    [v3 _loadRemoteUITermsWithCloudAtURL:?];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    location = _SUSLoggingFacility();
    v7 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_error_impl(&dword_26AC65000, log, type, "[SU Terms] Terms config response does not contain the generic terms url", v6, 2u);
    }

    objc_storeStrong(&location, 0);
    [a1[5] _loadTermsRemoteUIFailureWithError:0];
  }

  objc_storeStrong(v9, 0);
}

- (void)cancelLoadingTerms:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSSoftwareUpdateTermsManager *)v8 _reportTermsUserAction:@"Dismiss"];
  v4 = [(RemoteUIController *)v8->_termsRemoteUI loader];
  [v4 cancel];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v5 = v8;
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdatesettings.errors" code:7 userInfo:{0, v3}];
  [(SUSSoftwareUpdateTermsManager *)v5 _finishTermsWithAcceptance:0 error:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (void)_loadTermsFromUpdateAsset
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = self;
  v45[1] = a2;
  v29 = [(RemoteUIController *)self->_termsRemoteUI loader];
  [v29 cancel];
  [(RemoteUIController *)v46->_termsRemoteUI setNavigationController:MEMORY[0x277D82BD8](v29).n128_f64[0]];
  objc_storeStrong(&v46->_termsRemoteUI, 0);
  v45[0] = [(SUDescriptor *)v46->_update documentation];
  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  v31 = [v45[0] licenseAgreement];
  v44 = [v30 initWithData:? encoding:?];
  MEMORY[0x277D82BD8](v31);
  location = _SUSLoggingFacility();
  v42 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(SUDescriptor *)v46->_update documentation];
    v27 = [v28 slaVersion];
    __os_log_helper_16_2_2_8_66_8_0(v48, v27, [v44 length]);
    _os_log_impl(&dword_26AC65000, location, v42, "[SU Terms] Update asset license agreement has version: %{public}@, length %llu", v48, 0x16u);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
  }

  objc_storeStrong(&location, 0);
  v40 = [getBYLicenseAgreementClass() versionOfAcceptedAgreement];
  v25 = [v45[0] slaVersion];
  v26 = [v25 unsignedIntegerValue];
  *&v2 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  v39 = v26;
  v41 = v40 != v26;
  if (v40 == v26)
  {
    [getBYLicenseAgreementClass() recordUserAcceptedAgreementVersion:v39];
    v38 = _SUSLoggingFacility();
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(getBYLicenseAgreementClass(), "versionOfAcceptedAgreement")}];
      v23 = [v45[0] slaVersion];
      __os_log_helper_16_2_2_8_66_8_66(v47, v24, v23);
      _os_log_impl(&dword_26AC65000, v38, v37, "[SU Terms] Not showing terms because accepted version %{public}@ >= asset version: %{public}@", v47, 0x16u);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
    }

    objc_storeStrong(&v38, 0);
  }

  if ([v44 length] && v41)
  {
    v3 = [SUSSoftwareUpdateLicenseViewController alloc];
    v36 = [(SUSSoftwareUpdateLicenseViewController *)v3 initWithLicense:v44];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v22 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_287B74428 table:@"Software Update"];
    [v36 setTitle:?];
    MEMORY[0x277D82BD8](v21);
    [v36 setModalInPresentation:{1, MEMORY[0x277D82BD8](v22).n128_f64[0]}];
    v35 = 0;
    if (!v46->_showProgressViewController)
    {
      v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v36];
      v5 = v35;
      v35 = v4;
      MEMORY[0x277D82BD8](v5);
    }

    v13 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v15 localizedStringForKey:@"DISAGREE" value:? table:?];
    v34 = [v13 initWithTitle:? style:? target:? action:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    v16 = objc_alloc(MEMORY[0x277D751E0]);
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v18 localizedStringForKey:@"AGREE" value:&stru_287B74428 table:@"Software Update"];
    v33 = [v16 initWithTitle:? style:? target:? action:?];
    MEMORY[0x277D82BD8](v17);
    [v33 setAccessibilityIdentifier:{@"SUSSoftwareUpdateTermsManagerAgreeButton", MEMORY[0x277D82BD8](v18).n128_f64[0]}];
    [v34 setAccessibilityIdentifier:@"SUSSoftwareUpdateTermsManagerDisagreeButton"];
    v19 = [MEMORY[0x277D75418] currentDevice];
    v20 = [v19 sf_isiPad];
    *&v6 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    if (v20)
    {
      [v35 setModalPresentationStyle:{2, v6}];
      v11 = [v36 navigationItem];
      [v11 setRightBarButtonItem:v33];
      v12 = [v36 navigationItem];
      [v12 setLeftBarButtonItem:v34];
      *&v7 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    }

    else
    {
      [v35 setModalPresentationStyle:{0, v6}];
      v32 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:?];
      v9 = v36;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:{v34, v32, v33, 0}];
      [v9 setToolbarItems:? animated:?];
      *&v8 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      [v35 setToolbarHidden:{0, v8}];
      objc_storeStrong(&v32, 0);
    }

    if (v46->_showProgressViewController)
    {
      [(UINavigationController *)v46->_showProgressViewController pushViewController:v36 animated:0, v7];
    }

    else
    {
      [(SUSSoftwareUpdateTermsManager *)v46 _presentModalController:v35, v7];
    }

    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  else
  {
    [(SUSSoftwareUpdateTermsManager *)v46 _finishTermsWithAcceptance:1 error:0];
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(v45, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_loadRemoteUITermsWithCloudAtURL:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = _SUSLoggingFacility();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v50, location[0]);
    _os_log_impl(&dword_26AC65000, v39, v38, "[SU Terms] Loading combined terms from %{public}@", v50, 0xCu);
  }

  objc_storeStrong(&v39, 0);
  v12 = MEMORY[0x277CCACA8];
  v11 = [(SUDescriptor *)v41->_update productVersion];
  v10 = [(SUDescriptor *)v41->_update productBuildVersion];
  v37 = [v12 stringWithFormat:@"%@:%@", v11, v10];
  MEMORY[0x277D82BD8](v10);
  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v48[0] = @"name";
  v49[0] = *MEMORY[0x277CEC720];
  v48[1] = @"version";
  v49[1] = v37;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:{2, v3}];
  v35 = MEMORY[0x277D82BE0](&unk_287B77C88);
  v34 = MEMORY[0x277D82BE0](&unk_287B77CB0);
  v33 = MEMORY[0x277D82BE0](&unk_287B77CD8);
  v47[0] = v36;
  v47[1] = v35;
  v47[2] = v34;
  v47[3] = v33;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
  v45[0] = @"terms";
  v46[0] = v32;
  v45[1] = @"format";
  v9 = getkAAProtocolGenericTermsUIBuddyMLKey();
  v46[1] = v9;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  MEMORY[0x277D82BD8](v9);
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = objc_opt_new();
  v23 = [v25[5] aa_primaryAppleAccount];
  v8 = objc_alloc(getAAGenericTermsUIRequestClass());
  v22 = [v8 initWithAccount:v23 parameters:v31];
  v43 = @"X-Apple-iOS-SLA-Version";
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(getBYLicenseAgreementClass(), "versionOfAcceptedAgreement")];
  v44 = v7;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  [v22 setCustomHeaders:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  oslog = _SUSLoggingFacility();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v22 customHeaders];
    __os_log_helper_16_2_1_8_66(v42, v5);
    _os_log_impl(&dword_26AC65000, oslog, v20, "[SU Terms] Adding headers: %{public}@", v42, 0xCu);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&oslog, 0);
  v4 = v22;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __66__SUSSoftwareUpdateTermsManager__loadRemoteUITermsWithCloudAtURL___block_invoke;
  v17 = &unk_279CB6BF8;
  v18 = MEMORY[0x277D82BE0](v41);
  v19[0] = MEMORY[0x277D82BE0](location[0]);
  v19[1] = &v24;
  [v4 performRequestWithHandler:&v13];
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(&v24, 8);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __66__SUSSoftwareUpdateTermsManager__loadRemoteUITermsWithCloudAtURL___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v37 = 0;
  objc_storeStrong(&v37, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35[1] = a1;
  v35[0] = MEMORY[0x277D82BE0](v37);
  v34 = _SUSLoggingFacility();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    log = v34;
    type = v33;
    v12 = [v35[0] termsDictionary];
    v32 = MEMORY[0x277D82BE0](v12);
    __os_log_helper_16_2_1_8_66(v39, v32);
    _os_log_impl(&dword_26AC65000, log, type, "[SU Terms] terms dict = %{public}@", v39, 0xCu);
    MEMORY[0x277D82BD8](v12);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v34, 0);
  v31 = [v35[0] responseData];
  if (!v36 && [v31 length])
  {
    v6 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    v7 = v6;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __66__SUSSoftwareUpdateTermsManager__loadRemoteUITermsWithCloudAtURL___block_invoke_2;
    v20 = &unk_279CB6BD0;
    v21 = MEMORY[0x277D82BE0](a1[4]);
    v22 = MEMORY[0x277D82BE0](v31);
    v23 = MEMORY[0x277D82BE0](a1[5]);
    dispatch_async(v7, &v16);
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
  }

  else
  {
    v8 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v8;
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __66__SUSSoftwareUpdateTermsManager__loadRemoteUITermsWithCloudAtURL___block_invoke_499;
    v28 = &unk_279CB6B58;
    v29 = MEMORY[0x277D82BE0](a1[4]);
    v30 = MEMORY[0x277D82BE0](v36);
    dispatch_async(queue, &v24);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong((*(a1[6] + 8) + 40), 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __66__SUSSoftwareUpdateTermsManager__loadRemoteUITermsWithCloudAtURL___block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = 0;
  if (*(*(a1 + 32) + 48))
  {
    objc_storeStrong(location, *(*(a1 + 32) + 48));
  }

  else
  {
    v7 = [*(*(a1 + 32) + 56) navigationController];
    if (v7)
    {
      objc_storeStrong(location, v7);
    }

    else
    {
      objc_storeStrong(location, *(*(a1 + 32) + 56));
    }

    MEMORY[0x277D82BD8](v7);
  }

  objc_initWeak(&from, *(a1 + 32));
  getRemoteUIControllerClass();
  v6 = objc_opt_new();
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = v6;
  [*(*(a1 + 32) + 16) setStyle:{*(*(a1 + 32) + 72), MEMORY[0x277D82BD8](v2).n128_f64[0]}];
  *(*(a1 + 32) + 40) = 1;
  [*(*(a1 + 32) + 16) setHostViewController:location[0]];
  [*(*(a1 + 32) + 16) setDelegate:*(a1 + 32)];
  v5 = *(*(a1 + 32) + 16);
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __66__SUSSoftwareUpdateTermsManager__loadRemoteUITermsWithCloudAtURL___block_invoke_3;
  v19 = &unk_279CB6BA8;
  objc_copyWeak(v20, &from);
  [v5 setHandlerForElementName:@"agree" handler:&v15];
  v4 = *(*(a1 + 32) + 16);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __66__SUSSoftwareUpdateTermsManager__loadRemoteUITermsWithCloudAtURL___block_invoke_4;
  v13 = &unk_279CB6BA8;
  objc_copyWeak(&v14, &from);
  [v4 setHandlerForElementName:@"disagree" handler:&v9];
  [*(*(a1 + 32) + 16) loadData:*(a1 + 40) baseURL:*(a1 + 48)];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 setStatusBarShowsProgress:1];
  MEMORY[0x277D82BD8](v3);
  objc_destroyWeak(&v14);
  objc_destroyWeak(v20);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

void __66__SUSSoftwareUpdateTermsManager__loadRemoteUITermsWithCloudAtURL___block_invoke_3(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _handleAgreeFromObjectModel:location[0]];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __66__SUSSoftwareUpdateTermsManager__loadRemoteUITermsWithCloudAtURL___block_invoke_4(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _handleDisagreeFromObjectModel:location[0]];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_loadTermsRemoteUIFailureWithError:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 setStatusBarShowsProgress:0];
  MEMORY[0x277D82BD8](v3);
  oslog = _SUSLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v7, location[0]);
    _os_log_impl(&dword_26AC65000, oslog, OS_LOG_TYPE_DEFAULT, "[SU Terms] Error loading RemoteUI terms: %{public}@", v7, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSSoftwareUpdateTermsManager *)v6 _loadTermsFromUpdateAsset];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)remoteUIControllerDidDismiss:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [MEMORY[0x277D75128] sharedApplication];
  [v5 setStatusBarShowsProgress:0];
  MEMORY[0x277D82BD8](v5);
  v8 = _SUSLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_26AC65000, log, type, "[SU Terms] iCloud Terms Dismissed via server", v6, 2u);
  }

  objc_storeStrong(&v8, 0);
  [(SUSSoftwareUpdateTermsManager *)v10 _reportTermsUserAction:@"Dismiss"];
  [(SUSSoftwareUpdateTermsManager *)v10 _finishTermsWithAcceptance:1 error:0];
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v8 = [MEMORY[0x277D75128] sharedApplication];
  [v8 setStatusBarShowsProgress:0];
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v10)
  {
    [(SUSSoftwareUpdateTermsManager *)v12 _loadTermsRemoteUIFailureWithError:v10, v5];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [MEMORY[0x277D75128] sharedApplication];
  [v6 setStatusBarShowsProgress:0];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v10 = 0;
  overrideNextRUIAction = 0;
  if (location[0] == v14->_termsRemoteUI)
  {
    overrideNextRUIAction = 0;
    if (a5)
    {
      v11 = [v12 defaultPages];
      v10 = 1;
      overrideNextRUIAction = 0;
      if ([v11 count])
      {
        overrideNextRUIAction = v14->_overrideNextRUIAction;
      }
    }
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (overrideNextRUIAction)
  {
    if (v14->_showProgressViewController)
    {
      v5 = [(UINavigationController *)v14->_showProgressViewController topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      MEMORY[0x277D82BD8](v5);
      if (isKindOfClass)
      {
        *a5 = 3;
      }
    }

    else
    {
      *a5 = 5;
    }
  }

  v14->_overrideNextRUIAction = 0;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleAgreeFromObjectModel:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v62 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v62->_agreeToCombinedTOSInProgress)
  {
    v60 = 1;
  }

  else
  {
    v59 = [location[0] clientInfo];
    v58 = [v59 objectForKey:@"agreeUrl"];
    v33 = objc_alloc(MEMORY[0x277CBEB18]);
    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"OS_PLATFORM"];
    v34 = [v36 localizedStringForKey:? value:? table:?];
    v57 = [v33 initWithObjects:0];
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    v56 = 0;
    memset(__b, 0, sizeof(__b));
    obj = [location[0] namedPages];
    v38 = [obj countByEnumeratingWithState:__b objects:v63 count:16];
    if (v38)
    {
      v30 = *__b[2];
      v31 = 0;
      v32 = v38;
      while (1)
      {
        v29 = v31;
        if (*__b[2] != v30)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(__b[1] + 8 * v31);
        if ([v55 isEqualToString:@"iCloud"])
        {
          [v57 addObject:@"iCloud"];
        }

        if ([v55 isEqualToString:@"GameCenter"])
        {
          [v57 addObject:@"Game Center"];
        }

        if ([v55 isEqualToString:@"AMS"])
        {
          [v57 addObject:@"Apple Media Services"];
        }

        if ([v55 isEqualToString:@"Privacy"])
        {
          v56 = 1;
        }

        ++v31;
        if (v29 + 1 >= v32)
        {
          v31 = 0;
          v32 = [obj countByEnumeratingWithState:__b objects:v63 count:16];
          if (!v32)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v53 = MEMORY[0x277D82BE0](&unk_287B77DA0);
    v51 = 3;
    v50 = [v57 count] - 1;
    if (v50 <= 3)
    {
      v28 = v50;
    }

    else
    {
      v28 = v51;
    }

    v49[1] = v28;
    v52 = v28;
    if (v56)
    {
      v52 += 4;
    }

    while ([v57 count] < 4)
    {
      v26 = v57;
      v27 = [MEMORY[0x277CBEB68] null];
      [v26 addObject:?];
      MEMORY[0x277D82BD8](v27);
    }

    v4 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v53 objectAtIndexedSubscript:v52];
    v9 = [v11 localizedStringForKey:? value:? table:?];
    v8 = [v57 objectAtIndexedSubscript:?];
    v7 = [v57 objectAtIndexedSubscript:?];
    v6 = [v57 objectAtIndexedSubscript:2];
    v5 = [v57 objectAtIndexedSubscript:3];
    v49[0] = [v4 stringWithFormat:v9, v8, v7, v6, v5];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v12 = MEMORY[0x277D75110];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v14 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_287B74428 table:@"Software Update"];
    v48 = [v12 alertControllerWithTitle:? message:? preferredStyle:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    v16 = v48;
    v15 = MEMORY[0x277D750F8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v19 localizedStringForKey:@"CANCEL" value:&stru_287B74428 table:@"Software Update"];
    v17 = [v15 actionWithTitle:? style:? handler:?];
    [v16 addAction:?];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v21 = v48;
    v20 = MEMORY[0x277D750F8];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v24 localizedStringForKey:@"AGREE" value:&stru_287B74428 table:@"Software Update"];
    v39 = MEMORY[0x277D85DD0];
    v40 = -1073741824;
    v41 = 0;
    v42 = __61__SUSSoftwareUpdateTermsManager__handleAgreeFromObjectModel___block_invoke;
    v43 = &unk_279CB6C48;
    v44 = MEMORY[0x277D82BE0](v62);
    v45 = MEMORY[0x277D82BE0](v58);
    v46 = MEMORY[0x277D82BE0](location[0]);
    v47 = MEMORY[0x277D82BE0](v59);
    v22 = [v20 actionWithTitle:v23 style:0 handler:&v39];
    [v21 addAction:?];
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    *&v3 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    v25 = [(UIViewController *)v62->_hostController presentedViewController];
    [(UIViewController *)v25 presentViewController:v48 animated:1 completion:0];
    MEMORY[0x277D82BD8](v25);
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v48, 0);
    objc_storeStrong(v49, 0);
    objc_storeStrong(&v53, 0);
    objc_storeStrong(&v57, 0);
    objc_storeStrong(&v58, 0);
    objc_storeStrong(&v59, 0);
    v60 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __61__SUSSoftwareUpdateTermsManager__handleAgreeFromObjectModel___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17[1] = a1;
  *(*(a1 + 32) + 41) = 1;
  v17[0] = objc_opt_new();
  v16 = [v17[0] aa_primaryAppleAccount];
  v15 = [objc_alloc(getAAiCloudTermsAgreeRequestClass()) initWithURLString:*(a1 + 40) account:v16];
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 48) serverInfo];
    v14 = [v4 objectForKeyedSubscript:@"serverInfoKey"];
    *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    [v15 setServerInfo:{v14, v2}];
    objc_storeStrong(&v14, 0);
  }

  v3 = v15;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __61__SUSSoftwareUpdateTermsManager__handleAgreeFromObjectModel___block_invoke_2;
  v10 = &unk_279CB6C20;
  v11 = MEMORY[0x277D82BE0](*(a1 + 32));
  v12 = MEMORY[0x277D82BE0](*(a1 + 40));
  v13 = MEMORY[0x277D82BE0](*(a1 + 56));
  [v3 performRequestWithHandler:&v6];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);
  objc_storeStrong(location, 0);
}

void __61__SUSSoftwareUpdateTermsManager__handleAgreeFromObjectModel___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19[1] = a1;
  if (v20)
  {
    v19[0] = _SUSLoggingFacility();
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v19[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v23, v20);
      _os_log_error_impl(&dword_26AC65000, v19[0], v18, "[SU Terms] Failed to mark terms as agreed in iCloud: %{public}@", v23, 0xCu);
    }

    objc_storeStrong(v19, 0);
  }

  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __61__SUSSoftwareUpdateTermsManager__handleAgreeFromObjectModel___block_invoke_558;
  v14 = &unk_279CB6BD0;
  v15 = MEMORY[0x277D82BE0](a1[4]);
  v16 = MEMORY[0x277D82BE0](a1[5]);
  v17 = MEMORY[0x277D82BE0](a1[6]);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __61__SUSSoftwareUpdateTermsManager__handleAgreeFromObjectModel___block_invoke_558(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[2] = a1;
  v7[1] = a1;
  [*(a1 + 32) _reportTermsUserAction:@"Accept" agreeUrl:*(a1 + 40)];
  v7[0] = [*(a1 + 48) objectForKey:@"SLAVersion"];
  location = _SUSLoggingFacility();
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v8, v7[0]);
    _os_log_impl(&dword_26AC65000, location, OS_LOG_TYPE_DEFAULT, "[SU Terms] SLA version in combined terms: %{public}@", v8, 0xCu);
  }

  objc_storeStrong(&location, 0);
  if ([v7[0] hasPrefix:@"EA"])
  {
    v1 = [v7[0] substringFromIndex:2];
    v2 = v7[0];
    v7[0] = v1;
    MEMORY[0x277D82BD8](v2);
  }

  if (v7[0] && [v7[0] integerValue] > 0)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7[0], "integerValue")}];
    [v3 _acceptedTermsVersion:?];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    [*(a1 + 32) _acceptedTermsVersion:0];
  }

  *(*(a1 + 32) + 41) = 0;
  objc_storeStrong(v7, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_acceptedTermsFromAsset
{
  v4 = [(SUDescriptor *)self->_update documentation];
  v3 = [v4 slaVersion];
  [(SUSSoftwareUpdateTermsManager *)self _acceptedTermsVersion:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
}

- (void)_acceptedTermsVersion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    [getBYLicenseAgreementClass() recordUserAcceptedAgreementVersion:{objc_msgSend(location[0], "unsignedIntegerValue")}];
  }

  [(SUSSoftwareUpdateTermsManager *)v5 _finishTermsWithAcceptance:1 error:0];
  objc_storeStrong(location, obj);
}

- (void)_handleDisagreeFromObjectModel:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [location[0] clientInfo];
  v10 = [v11 objectForKey:@"disagreeUrl"];
  v9 = objc_opt_new();
  v8 = [v9 aa_primaryAppleAccount];
  v3 = objc_alloc(getAAiCloudTermsDisagreeRequestClass());
  v7 = [v3 initWithURLString:v10 account:v8];
  v5 = [location[0] serverInfo];
  v6 = [v5 objectForKeyedSubscript:@"serverInfoKey"];
  *&v4 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  [v7 setServerInfo:{v6, v4}];
  [v7 performRequestWithHandler:&__block_literal_global_0];
  [(SUSSoftwareUpdateTermsManager *)v13 _termsDisagree];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __64__SUSSoftwareUpdateTermsManager__handleDisagreeFromObjectModel___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11[1] = a1;
  if (v12)
  {
    v11[0] = _SUSLoggingFacility();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_66(v17, "[SUSSoftwareUpdateTermsManager _handleDisagreeFromObjectModel:]_block_invoke", v12);
      _os_log_error_impl(&dword_26AC65000, v11[0], v10, "[SU Terms] %s: Failed to mark terms as disagreed in iCloud with error %{public}@", v17, 0x16u);
    }

    objc_storeStrong(v11, 0);
  }

  else if ([v13 statusCode] == 200)
  {
    v7 = _SUSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v15, "[SUSSoftwareUpdateTermsManager _handleDisagreeFromObjectModel:]_block_invoke");
      _os_log_impl(&dword_26AC65000, v7, OS_LOG_TYPE_DEFAULT, "[SU Terms] %s: Marked terms as disagreed in iCloud", v15, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  else
  {
    oslog = _SUSLoggingFacility();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_0(v16, "-[SUSSoftwareUpdateTermsManager _handleDisagreeFromObjectModel:]_block_invoke", [v13 statusCode]);
      _os_log_error_impl(&dword_26AC65000, oslog, v8, "[SU Terms] %s: Failed to mark terms as disagreed in iCloud with HTTP status %ld", v16, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_reportTermsUserAction:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSSoftwareUpdateTermsManager *)v4 _reportTermsUserAction:location[0] agreeUrl:0];
  objc_storeStrong(location, 0);
}

- (void)_reportTermsUserAction:(id)a3 agreeUrl:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 1;
  v17 = _os_feature_enabled_impl();
  if (v17)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB38]);
    v23 = *MEMORY[0x277CEC890];
    v24[0] = location[0];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v16 = [v9 initWithDictionary:?];
    *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v19)
    {
      [v16 setObject:v19 forKeyedSubscript:{@"agreeUrl", v4}];
    }

    v15 = _SUSLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_66(v22, "[SUSSoftwareUpdateTermsManager _reportTermsUserAction:agreeUrl:]", location[0]);
      _os_log_impl(&dword_26AC65000, v15, v14, "[SU Terms] %s: Reporting TOS action: %{public}@", v22, 0x16u);
    }

    objc_storeStrong(&v15, 0);
    v6 = objc_alloc(MEMORY[0x277CEC850]);
    v8 = objc_opt_new();
    v7 = [v8 aa_primaryAppleAccount];
    v13 = [v6 initWithAccount:? parameters:?];
    MEMORY[0x277D82BD8](v7);
    *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    [v13 reportEvent];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v12 = _SUSLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_66(v21, "[SUSSoftwareUpdateTermsManager _reportTermsUserAction:agreeUrl:]", location[0]);
      _os_log_impl(&dword_26AC65000, v12, OS_LOG_TYPE_DEFAULT, "[SU Terms] %s: Terms QFA feature flag disabled. Not reporting terms '%{public}@' action.", v21, 0x16u);
    }

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end