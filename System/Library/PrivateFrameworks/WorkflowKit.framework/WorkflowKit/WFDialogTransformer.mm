@interface WFDialogTransformer
- (BOOL)isRunningFromSpotlight;
- (BOOL)isRunningWithExternalUI;
- (BOOL)isRunningWithSiriUI;
- (BOOL)isRunningWithToolKitClient;
- (BOOL)performSiriRequest:(id)a3 completionHandler:(id)a4;
- (BOOL)shouldHandleAlertAsSiriDialog:(id)a3;
- (WFDialogTransformer)initWithWorkflow:(id)a3 userInterfacePresenter:(id)a4 runSource:(id)a5 runningContext:(id)a6;
- (WFDialogTransformerDelegate)delegate;
- (id)attributionAllowingAction:(BOOL)a3;
- (id)attributionIcon;
- (id)attributionTitle;
- (id)privacyAttribution;
- (id)shortcutsAppAttribution;
- (id)standaloneActionAttribution;
- (id)workflowName;
- (void)action:(id)a3 provideInputForParameters:(id)a4 withDefaultStates:(id)a5 prompts:(id)a6 completionHandler:(id)a7;
- (void)cleanupListDialogRequestIfNeeded:(id)a3;
- (void)configureIntent:(id)a3;
- (void)configureSmartPromptIntent:(id)a3 withConfiguration:(id)a4;
- (void)didFinishActionWithIdentifier:(id)a3;
- (void)didStartActionWithIdentifier:(id)a3;
- (void)dismissPresentedContentWithCompletionHandler:(id)a3;
- (void)executeSmartPromptIntentWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)handleAlertAsSiriDialog:(id)a3;
- (void)handleAlertWithDatePicker:(id)a3;
- (void)handleAlertWithMultipleButtons:(id)a3;
- (void)handleAlertWithTextField:(id)a3;
- (void)handleAppProtectionRequestWithBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)handleDialogRequest:(id)a3 completionHandler:(id)a4;
- (void)handleSimpleAlert:(id)a3;
- (void)handleUIRequestResponse:(id)a3 error:(id)a4 forRequest:(id)a5 shouldFailoverToLocalUI:(BOOL)a6 completionHandler:(id)a7;
- (void)openAppWithBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)openURL:(id)a3 withBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)prepareListDialogRequestIfNeeded:(id)a3 completionHandler:(id)a4;
- (void)presentAlert:(id)a3;
- (void)presentAlertWithSmartPromptConfiguration:(id)a3 completionHandler:(id)a4;
- (void)requestActionInterfacePresentationForActionClassName:(id)a3 classNamesByType:(id)a4 completionHandler:(id)a5;
- (void)requestAuthorizationWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)requestFileAccessForURLs:(id)a3 workflowName:(id)a4 workflowID:(id)a5 completionHandler:(id)a6;
- (void)resolveDescriptor:(id)a3 completionHandler:(id)a4;
- (void)sequentialParameterInputProvider:(id)a3 didAdvanceToParameter:(id)a4 action:(id)a5 defaultState:(id)a6 prompt:(id)a7 linkDialog:(id)a8 completion:(id)a9;
- (void)sequentialParameterInputProvider:(id)a3 didFinishWithInputtedStates:(id)a4 responseContext:(id)a5;
- (void)sequentialParameterInputProviderDidCancel:(id)a3 responseContext:(id)a4;
- (void)setWorkflow:(id)a3;
- (void)shouldRunFollowUpActionWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4 parameterValues:(id)a5 encodedToolInvocation:(id)a6 showOutputActionOptions:(unint64_t)a7 completionHandler:(id)a8;
- (void)showAskParameterDialogForParameter:(id)a3 action:(id)a4 defaultState:(id)a5 prompt:(id)a6 completion:(id)a7;
- (void)showChronoControlOfType:(unint64_t)a3 identity:(id)a4 completionHandler:(id)a5;
- (void)showConfirmInteraction:(id)a3 prompt:(id)a4 requireAuthentication:(BOOL)a5 completionHandler:(id)a6;
- (void)showDialogRequest:(id)a3 completionHandler:(id)a4;
- (void)showHandleInteraction:(id)a3 prompt:(id)a4 completionHandler:(id)a5;
- (void)showLinkActionConfirmationWithActionMetadata:(id)a3 showPrompt:(BOOL)a4 dialog:(id)a5 dialogString:(id)a6 viewSnippet:(id)a7 snippetAction:(id)a8 encodedSnippetActionToolInvocation:(id)a9 confirmationActionName:(id)a10 isContinueInAppRequest:(BOOL)a11 systemStyle:(id)a12 completionHandler:(id)a13;
- (void)showLinkChoice:(id)a3 dialog:(id)a4 completionHandler:(id)a5;
- (void)showLinkParameterConfirmationWithActionMetadata:(id)a3 dialog:(id)a4 dialogString:(id)a5 viewSnippet:(id)a6 parameterValue:(id)a7 completionHandler:(id)a8;
- (void)showLinkResult:(id)a3 dialog:(id)a4 encodedSnippetActionToolInvocation:(id)a5 completionHandler:(id)a6;
- (void)showPreviewForContentCollection:(id)a3 completionHandler:(id)a4;
- (void)showSnippetLinkAction:(id)a3 encodedSnippetActionToolInvocation:(id)a4 completionHandler:(id)a5;
- (void)stopWithError:(id)a3;
- (void)swapExternalUIPresenterWithPresenter:(id)a3;
- (void)updateSmartPromptsWithConfiguration:(id)a3 resultCode:(unint64_t)a4 error:(id *)a5;
- (void)willBeginExecutingShortcutStep:(id)a3;
- (void)workflowWillBegin;
@end

@implementation WFDialogTransformer

- (id)shortcutsAppAttribution
{
  v2 = [MEMORY[0x1E69E0A98] attributionWithAppBundleIdentifier:*MEMORY[0x1E69E0FB0]];
  if (!v2)
  {
    v3 = MEMORY[0x1E69E0B58];
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v3 imageNamed:@"Shortcuts" inBundle:v4];

    v6 = [objc_alloc(MEMORY[0x1E69E0B60]) initWithImage:v5];
    v7 = objc_alloc(MEMORY[0x1E69E0A98]);
    v8 = WFLocalizedString(@"Shortcuts");
    v2 = [v7 initWithTitle:v8 icon:v6];
  }

  return v2;
}

- (BOOL)isRunningWithExternalUI
{
  v2 = [(WFDialogTransformer *)self externalUIPresenter];
  v3 = v2 != 0;

  return v3;
}

- (void)workflowWillBegin
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(WFDialogTransformer *)self setWorkflowStartTime:v3];

  if ([(WFDialogTransformer *)self isRunningWithExternalUI])
  {
    v7 = [(WFDialogTransformer *)self externalUIPresenter];
    v4 = MEMORY[0x1E696AD98];
    v5 = [(WFWorkflow *)self->_workflow actions];
    v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    [v7 willBeginExecutingShortcutWithActionCount:v6];
  }
}

- (WFDialogTransformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)shouldRunFollowUpActionWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4 parameterValues:(id)a5 encodedToolInvocation:(id)a6 showOutputActionOptions:(unint64_t)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = MEMORY[0x1E69E0B00];
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[v15 alloc] initWithBundleIdentifier:v19 actionIdentifier:v18 parameterValues:v17 showOutputActionOptions:a7 encodedToolInvocation:v16];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __164__WFDialogTransformer_shouldRunFollowUpActionWithBundleIdentifier_actionIdentifier_parameterValues_encodedToolInvocation_showOutputActionOptions_completionHandler___block_invoke;
  v22[3] = &unk_1E8377410;
  v23 = v14;
  v21 = v14;
  [(WFDialogTransformer *)self handleDialogRequest:v20 completionHandler:v22];
}

void __164__WFDialogTransformer_shouldRunFollowUpActionWithBundleIdentifier_actionIdentifier_parameterValues_encodedToolInvocation_showOutputActionOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 shouldRunFollowUpAction]);
  }

  else
  {

    v8 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315394;
      v11 = "[WFDialogTransformer shouldRunFollowUpActionWithBundleIdentifier:actionIdentifier:parameterValues:encodedToolInvocation:showOutputActionOptions:completionHandler:]_block_invoke";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Error in presentation result action request: %@", &v10, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleAppProtectionRequestWithBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E69E0978];
  v8 = a3;
  v9 = [[v7 alloc] initWithAppBundleIdentifier:v8];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__WFDialogTransformer_handleAppProtectionRequestWithBundleIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_1E8377410;
  v12 = v6;
  v10 = v6;
  [(WFDialogTransformer *)self handleDialogRequest:v9 completionHandler:v11];
}

void __88__WFDialogTransformer_handleAppProtectionRequestWithBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 requestResponseCode];
    if (!v8)
    {
      v14 = *(a1 + 32);
      v15 = [MEMORY[0x1E696ABC0] wfCancelledStepError];
      (*(v14 + 16))(v14, 0, v15);

      goto LABEL_13;
    }

    if (v8 == 2)
    {
      v10 = *(*(a1 + 32) + 16);
      goto LABEL_11;
    }

    v9 = v7;
    if (v8 == 1)
    {
      v10 = *(*(a1 + 32) + 16);
LABEL_11:
      v10();
LABEL_13:
      v9 = v7;
    }
  }

  else
  {

    v11 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315394;
      v18 = "[WFDialogTransformer handleAppProtectionRequestWithBundleIdentifier:completionHandler:]_block_invoke";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Error in app protection request: %@", &v17, 0x16u);
    }

    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E696ABC0] wfCancelledStepError];
    (*(v12 + 16))(v12, 0, v13);

    v9 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)willBeginExecutingShortcutStep:(id)a3
{
  externalUIPresenter = self->_externalUIPresenter;
  if (externalUIPresenter)
  {
    [(WFExternalUIPresenter *)externalUIPresenter willBeginExecutingShortcutStep:a3];
  }
}

- (BOOL)isRunningWithSiriUI
{
  v3 = [(WFDialogTransformer *)self isRunningWithExternalUI];
  if (v3)
  {
    v4 = [(WFDialogTransformer *)self runningContext];
    v5 = [v4 shouldForwardSiriActionRequests];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isRunningWithToolKitClient
{
  v3 = [(WFDialogTransformer *)self isRunningWithExternalUI];
  if (v3)
  {
    v4 = [(WFDialogTransformer *)self runningContext];
    v5 = [v4 isStepwise];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)didFinishActionWithIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[WFDialogTransformer didFinishActionWithIdentifier:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Sending action identifier to Siri", &v9, 0xCu);
  }

  externalUIPresenter = self->_externalUIPresenter;
  if (externalUIPresenter)
  {
    [(WFExternalUIPresenter *)externalUIPresenter didFinishActionWithIdentifier:v4];
  }

  else
  {
    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[WFDialogTransformer didFinishActionWithIdentifier:]";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Siri UI presenter not set", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)didStartActionWithIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[WFDialogTransformer didStartActionWithIdentifier:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Sending action identifier to Siri", &v9, 0xCu);
  }

  externalUIPresenter = self->_externalUIPresenter;
  if (externalUIPresenter)
  {
    [(WFExternalUIPresenter *)externalUIPresenter didStartActionWithIdentifier:v4];
  }

  else
  {
    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[WFDialogTransformer didStartActionWithIdentifier:]";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Siri UI presenter not set", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)performSiriRequest:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[WFDialogTransformer performSiriRequest:completionHandler:]";
    v16 = 2112;
    v17 = objc_opt_class();
    v9 = v17;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Sending interaction of type %@ to Siri", &v14, 0x16u);
  }

  externalUIPresenter = self->_externalUIPresenter;
  if (externalUIPresenter)
  {
    [(WFExternalUIPresenter *)externalUIPresenter performSiriRequest:v6 completionHandler:v7];
  }

  else
  {
    v11 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315138;
      v15 = "[WFDialogTransformer performSiriRequest:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Siri UI presenter not set", &v14, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return externalUIPresenter != 0;
}

- (void)configureIntent:(id)a3
{
  v14 = a3;
  v4 = [(WFDialogTransformer *)self siriOptions];
  v5 = v4;
  if (v4)
  {
    [v14 _setExecutionContext:{objc_msgSend(v4, "executionContext")}];
    [v14 wf_updateIdiomIfNeeded:{objc_msgSend(v5, "currentDeviceIdiom")}];
    v6 = [v5 originatingDeviceIDSIdentifier];
    [v14 _setOriginatingDeviceIdsIdentifier:v6];

    v7 = [v5 originatingDeviceRapportEffectiveIdentifier];
    [v14 _setOriginatingDeviceRapportEffectiveIdentifier:v7];

    v8 = [v5 originatingDeviceRapportMediaSystemIdentifier];
    [v14 _setOriginatingDeviceRapportMediaSystemIdentifier:v8];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isOwnedByCurrentUser")}];
    [v14 _setIsOwnedByCurrentUser:v9];

    v10 = [(WFDialogTransformer *)self airPlayRouteIDs];
    if (![v10 count])
    {
LABEL_8:

      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v11 = [v14 launchId];
    if ([v11 hasPrefix:@"com.apple."])
    {

LABEL_6:
LABEL_7:
      v10 = [(WFDialogTransformer *)self airPlayRouteIDs];
      [v14 _setAirPlayRouteIds:v10];
      goto LABEL_8;
    }

    v12 = [v14 extensionBundleId];
    v13 = [v12 hasPrefix:@"com.apple."];

    if (v13)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (void)openURL:(id)a3 withBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    if (v9)
    {
      v13 = getWFDialogLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v21 = "[WFDialogTransformer openURL:withBundleIdentifier:completionHandler:]";
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v9;
        v14 = "%s Dialog transformer only supports showing web pages -- but it was asked to open a URL (%@) with an app (bundle ID %@)";
        v15 = v13;
        v16 = 32;
LABEL_11:
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

    else
    {
      if (WFURLIsWebPage())
      {
LABEL_13:
        (*(v10 + 2))(v10, 0, 0);
        goto LABEL_14;
      }

      v13 = getWFDialogLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[WFDialogTransformer openURL:withBundleIdentifier:completionHandler:]";
        v22 = 2112;
        v23 = v8;
        v14 = "%s Dialog transformer only supports opening web pages -- but it was asked to open a non-webpage URL %@";
        v15 = v13;
        v16 = 22;
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  v11 = getWFDialogLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[WFDialogTransformer openURL:withBundleIdentifier:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s Sending open URL interaction to Siri", buf, 0xCu);
  }

  v12 = [objc_alloc(MEMORY[0x1E69E0CF8]) initWithURL:v8 andBundleIdentifier:v9];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__WFDialogTransformer_openURL_withBundleIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E8377500;
  v19 = v10;
  [(WFDialogTransformer *)self performSiriRequest:v12 completionHandler:v18];

LABEL_14:
  v17 = *MEMORY[0x1E69E9840];
}

void __70__WFDialogTransformer_openURL_withBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 error];

    if (v4)
    {
      v5 = getWFDialogLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v3 error];
        v14 = 136315394;
        v15 = "[WFDialogTransformer openURL:withBundleIdentifier:completionHandler:]_block_invoke";
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Error handling open URL interaction in Siri: %@", &v14, 0x16u);
      }

      v7 = *(a1 + 32);
      v8 = [v3 error];
      (*(v7 + 16))(v7, 1, v8);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }

    v12 = v3;
  }

  else
  {

    v9 = getWFDialogLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315394;
      v15 = "[WFDialogTransformer openURL:withBundleIdentifier:completionHandler:]_block_invoke";
      v16 = 2112;
      v17 = objc_opt_class();
      v10 = v17;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", &v14, 0x16u);
    }

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1 userInfo:0];
    (*(v11 + 16))(v11, 1, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)openAppWithBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = *MEMORY[0x1E69E0F60];
  }

  v8 = [(WFDialogTransformer *)self currentAction];
  v9 = [v8 userInterface];
  [v9 applicationWillLaunchInForeground];

  v10 = objc_opt_new();
  [v10 setObject:&unk_1F4A9A498 forKey:*MEMORY[0x1E699F930]];
  v11 = [(WFDialogTransformer *)self currentAction];
  v12 = [v11 userInterface];
  v13 = [v12 progressIsPersistentInSystemAperture];

  if (v13)
  {
    [v10 setObject:*MEMORY[0x1E69D4428] forKey:*MEMORY[0x1E699F940]];
  }

  v14 = +[WFAssistantServicesWrapper isPersistentSiriAvailable];
  v15 = objc_alloc(MEMORY[0x1E6996CA0]);
  v16 = [v10 copy];
  v17 = [v15 initWithBundleIdentifier:v6 options:v16 URL:0 userActivity:0 retainsSiri:v14];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__WFDialogTransformer_openAppWithBundleIdentifier_completionHandler___block_invoke;
  v19[3] = &unk_1E837F0F0;
  v20 = v7;
  v18 = v7;
  [v17 performWithCompletionHandler:v19];
}

- (void)resolveDescriptor:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [WFAppPickerParameter alloc];
  v7 = [WFParameterDefinition alloc];
  v19 = @"AppSearchType";
  v20[0] = @"OpenApp";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v9 = [(WFParameterDefinition *)v7 initWithDictionary:v8];
  v10 = [(WFAppPickerParameter *)v6 initWithDefinition:v9];

  v11 = [(WFDialogTransformer *)self attribution];
  v12 = [(WFParameter *)v10 localizedPrompt];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__WFDialogTransformer_resolveDescriptor_completionHandler___block_invoke;
  v16[3] = &unk_1E83774D8;
  v16[4] = self;
  v17 = v10;
  v18 = v5;
  v13 = v5;
  v14 = v10;
  [(WFDynamicEnumerationParameter *)v14 createDialogRequestWithAttribution:v11 defaultState:0 prompt:v12 completionHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __59__WFDialogTransformer_resolveDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__WFDialogTransformer_resolveDescriptor_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8377340;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 handleDialogRequest:a2 completionHandler:v5];
}

void __59__WFDialogTransformer_resolveDescriptor_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) parameterStateFromDialogResponse:a2];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v7;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 40);
  v6 = [v4 value];

  (*(v5 + 16))(v5, v6);
}

- (void)dismissPresentedContentWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFDialogTransformer *)self userInterfacePresenter];

  if (v5)
  {
    v6 = [(WFDialogTransformer *)self userInterfacePresenter];
    v7 = [(WFDialogTransformer *)self runningContext];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__WFDialogTransformer_dismissPresentedContentWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E837BE38;
    v9 = v4;
    [v6 dismissPresentedContentForRunningContext:v7 completionHandler:v8];
  }

  else
  {
    v4[2](v4);
  }
}

- (void)requestActionInterfacePresentationForActionClassName:(id)a3 classNamesByType:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [WFShowActionInterfaceDialogRequest alloc];
  v12 = [(WFDialogTransformer *)self attribution];
  v13 = [(WFShowActionInterfaceDialogRequest *)v11 initWithActionClassName:v8 classNamesByType:v10 attribution:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke;
  v16[3] = &unk_1E83772C8;
  v18 = self;
  v19 = v9;
  v17 = v8;
  v14 = v8;
  v15 = v9;
  [(WFDialogTransformer *)self handleDialogRequest:v13 completionHandler:v16];
}

void __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v5 isCancelled])
  {
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x1E696ABC0] userCancelledError];
LABEL_10:
    v11 = v10;
    (*(v9 + 16))(v9, 0, v10);
    goto LABEL_11;
  }

  if ([v5 responseCode])
  {
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    goto LABEL_10;
  }

  if ([v8 isUnsupported])
  {
    v12 = *(a1 + 48);
    v13 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E69E0A90] currentDevice];
    v15 = [v13 wf_unsupportedActionErrorWithType:@"NotAvailableOnSpecifiedPlatform" platformIdiom:{objc_msgSend(v14, "idiom")}];
    (*(v12 + 16))(v12, 0, v15);

    goto LABEL_12;
  }

  if (v6 && !v8)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_12;
  }

  v11 = [v8 listenerEndpoint];
  v16 = [v8 userInterfaceType];
  v17 = [NSClassFromString(*(a1 + 32)) userInterfaceXPCInterface];
  v18 = [[WFRemoteActionUserInterface alloc] initWithUserInterfaceType:v16 listenerEndpoint:v11 interface:v17];
  v19 = [*(a1 + 40) currentAction];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke_2;
  v21[3] = &unk_1E837FA70;
  v22 = v19;
  v20 = v19;
  [(WFRemoteActionUserInterface *)v18 setOnInterfaceInterruption:v21];
  (*(*(a1 + 48) + 16))();

LABEL_11:
LABEL_12:
}

void __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isRunning])
  {
    v2 = [*(a1 + 32) workQueue];

    if (v2)
    {
      v3 = [*(a1 + 32) workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke_3;
      block[3] = &unk_1E837FA70;
      v5 = *(a1 + 32);
      dispatch_async(v3, block);
    }
  }
}

void __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke_3(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E69E11F8];
  v9 = *MEMORY[0x1E696A578];
  v4 = [v1 localizedName];
  v5 = WFRunnerFailureErrorMessage(v4);
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v2 errorWithDomain:v3 code:4 userInfo:v6];
  [v1 finishRunningWithError:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __79__WFDialogTransformer_getPreferredSizeForLinkViewSnippetWithDialog_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 environment];

  if (v8)
  {
    v9 = MEMORY[0x1E696B098];
    [v8 size];
    v10 = [v9 wf_valueWithCGSize:?];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __79__WFDialogTransformer_getPreferredSizeForLinkViewSnippetWithDialog_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 environment];

  if (v8)
  {
    v9 = MEMORY[0x1E696B098];
    [v8 size];
    v10 = [v9 wf_valueWithCGSize:?];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __77__WFDialogTransformer_getEnvironmentForLinkViewSnippetWithDialog_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 environment];

  (*(v4 + 16))(v4, v7);
}

void __77__WFDialogTransformer_getEnvironmentForLinkViewSnippetWithDialog_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 environment];

  (*(v4 + 16))(v4, v7);
}

- (void)presentAlertWithSmartPromptConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFDialogTransformer *)self privacyAttribution];
  v9 = [v7 authorizationDialogRequestWithAttribution:v8];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__WFDialogTransformer_presentAlertWithSmartPromptConfiguration_completionHandler___block_invoke;
  v11[3] = &unk_1E8377410;
  v12 = v6;
  v10 = v6;
  [(WFDialogTransformer *)self handleDialogRequest:v9 completionHandler:v11];
}

void __82__WFDialogTransformer_presentAlertWithSmartPromptConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v7;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 result];

  (*(v5 + 16))(v5, v6);
}

- (void)showChronoControlOfType:(unint64_t)a3 identity:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E69E09D8];
  v10 = a4;
  v11 = [v9 alloc];
  v12 = [(WFDialogTransformer *)self attribution];
  v13 = [v11 initWithControlType:a3 identity:v10 attribution:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__WFDialogTransformer_showChronoControlOfType_identity_completionHandler___block_invoke;
  v15[3] = &unk_1E8377410;
  v16 = v8;
  v14 = v8;
  [(WFDialogTransformer *)self handleDialogRequest:v13 completionHandler:v15];
}

- (void)showLinkChoice:(id)a3 dialog:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 dialog];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__WFDialogTransformer_showLinkChoice_dialog_completionHandler___block_invoke;
  v15[3] = &unk_1E8377488;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 getResultWithCompletionHandler:v15];
}

void __63__WFDialogTransformer_showLinkChoice_dialog_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E0BA0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  v7 = [v4 captionPrint];

  v8 = [v7 firstObject];
  v9 = [*(a1 + 40) attribution];
  v10 = [v5 initWithRequest:v6 title:v8 attribution:v9];

  [v10 setLinkDialog:*(a1 + 48)];
  v11 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__WFDialogTransformer_showLinkChoice_dialog_completionHandler___block_invoke_2;
  v12[3] = &unk_1E8377410;
  v13 = *(a1 + 56);
  [v11 handleDialogRequest:v10 completionHandler:v12];
}

void __63__WFDialogTransformer_showLinkChoice_dialog_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 selectedButtonIndex];
  v7 = [v4 context];

  v8 = [v7 linkResponseContext];
  (*(v5 + 16))(v5, v6, v8);
}

- (void)showSnippetLinkAction:(id)a3 encodedSnippetActionToolInvocation:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [WFLinkSnippetActionDialogRequest alloc];
  v12 = [(WFDialogTransformer *)self attribution];
  v13 = [(WFLinkSnippetActionDialogRequest *)v11 initWithSnippetAction:v10 attribution:v12 encodedSnippetActionToolInvocation:v9];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__WFDialogTransformer_showSnippetLinkAction_encodedSnippetActionToolInvocation_completionHandler___block_invoke;
  v15[3] = &unk_1E8377410;
  v16 = v8;
  v14 = v8;
  [(WFDialogTransformer *)self handleDialogRequest:v13 completionHandler:v15];
}

void __98__WFDialogTransformer_showSnippetLinkAction_encodedSnippetActionToolInvocation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 result];
  v7 = [v4 context];

  v8 = [v7 linkResponseContext];
  (*(v5 + 16))(v5, v6, v8);
}

- (void)showLinkResult:(id)a3 dialog:(id)a4 encodedSnippetActionToolInvocation:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [WFLinkResultDialogRequest alloc];
  v15 = [(WFDialogTransformer *)self attribution];
  v16 = [(WFLinkResultDialogRequest *)v14 initWithSuccessResult:v13 attribution:v15 encodedSnippetActionToolInvocation:v11];

  [(WFDialogRequest *)v16 setLinkDialog:v12];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__WFDialogTransformer_showLinkResult_dialog_encodedSnippetActionToolInvocation_completionHandler___block_invoke;
  v18[3] = &unk_1E8377410;
  v19 = v10;
  v17 = v10;
  [(WFDialogTransformer *)self handleDialogRequest:v16 completionHandler:v18];
}

void __98__WFDialogTransformer_showLinkResult_dialog_encodedSnippetActionToolInvocation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 snippetResponseCode];
  v7 = [v4 context];

  v8 = [v7 linkResponseContext];
  (*(v5 + 16))(v5, v6, v8);
}

- (void)showLinkParameterConfirmationWithActionMetadata:(id)a3 dialog:(id)a4 dialogString:(id)a5 viewSnippet:(id)a6 parameterValue:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke;
  block[3] = &unk_1E8377460;
  v27 = v18;
  v28 = v14;
  v29 = v16;
  v30 = v17;
  v31 = self;
  v32 = v15;
  v33 = v19;
  v20 = v19;
  v21 = v15;
  v22 = v17;
  v23 = v16;
  v24 = v14;
  v25 = v18;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke_2;
  v8[3] = &unk_1E8377438;
  v2 = (a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  [v3 encodedTypedValueWithCompletion:v8];
}

void __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E0C28];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) name];
  v7 = [v5 initWithParameterKey:v6 parameterValue:v4];

  v8 = objc_alloc(MEMORY[0x1E69E0BB0]);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = [*(a1 + 56) attribution];
  v13 = [v8 initWithActionParameterMetadata:v9 dialogString:v10 viewSnippet:v11 snippetAction:0 encodedSnippetActionToolInvocation:0 attribution:v12 parameterInfo:v7];

  [v13 setLinkDialog:*(a1 + 64)];
  v14 = *(a1 + 56);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke_3;
  v15[3] = &unk_1E8377410;
  v16 = *(a1 + 72);
  [v14 handleDialogRequest:v13 completionHandler:v15];
}

void __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 requestResponseCode];
  v7 = [v4 context];

  v8 = [v7 linkResponseContext];
  (*(v5 + 16))(v5, v6, v8);
}

- (void)showLinkActionConfirmationWithActionMetadata:(id)a3 showPrompt:(BOOL)a4 dialog:(id)a5 dialogString:(id)a6 viewSnippet:(id)a7 snippetAction:(id)a8 encodedSnippetActionToolInvocation:(id)a9 confirmationActionName:(id)a10 isContinueInAppRequest:(BOOL)a11 systemStyle:(id)a12 completionHandler:(id)a13
{
  v36 = a4;
  v37 = a13;
  v33 = a12;
  v18 = a10;
  v34 = a9;
  v32 = a8;
  v19 = a7;
  v20 = a6;
  v35 = a5;
  v21 = a3;
  v22 = [v18 acceptLabel];
  v23 = [v22 localizedStringForLocaleIdentifier:0];

  v24 = [v18 denyLabel];
  v25 = [v24 localizedStringForLocaleIdentifier:0];

  v26 = objc_alloc(MEMORY[0x1E69E0BB0]);
  v27 = [(WFDialogTransformer *)self attribution];
  LOBYTE(a6) = [v18 destructive];

  LOBYTE(v31) = a6;
  LOBYTE(v30) = a11;
  v28 = [v26 initWithActionMetadata:v21 showPrompt:v36 dialogString:v20 viewSnippet:v19 snippetAction:v32 encodedSnippetActionToolInvocation:v34 yesText:v23 noText:v25 attribution:v27 parameterInfo:0 isContinueInAppRequest:v30 systemStyle:v33 destructive:v31];

  [v28 setLinkDialog:v35];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __236__WFDialogTransformer_showLinkActionConfirmationWithActionMetadata_showPrompt_dialog_dialogString_viewSnippet_snippetAction_encodedSnippetActionToolInvocation_confirmationActionName_isContinueInAppRequest_systemStyle_completionHandler___block_invoke;
  v39[3] = &unk_1E8377410;
  v40 = v37;
  v29 = v37;
  [(WFDialogTransformer *)self handleDialogRequest:v28 completionHandler:v39];
}

void __236__WFDialogTransformer_showLinkActionConfirmationWithActionMetadata_showPrompt_dialog_dialogString_viewSnippet_snippetAction_encodedSnippetActionToolInvocation_confirmationActionName_isContinueInAppRequest_systemStyle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v10;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 requestResponseCode];
  v7 = [v4 value];
  v8 = [v4 context];

  v9 = [v8 linkResponseContext];
  (*(v5 + 16))(v5, v6, v7, v9);
}

- (void)showPreviewForContentCollection:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [WFShowContentDialogRequest alloc];
  v9 = [(WFDialogTransformer *)self attribution];
  v10 = [(WFShowContentDialogRequest *)v8 initWithContentCollection:v7 attribution:v9 prompt:0];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__WFDialogTransformer_showPreviewForContentCollection_completionHandler___block_invoke;
  v12[3] = &unk_1E8377410;
  v13 = v6;
  v11 = v6;
  [(WFDialogTransformer *)self handleDialogRequest:v10 completionHandler:v12];
}

uint64_t __73__WFDialogTransformer_showPreviewForContentCollection_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)showHandleInteraction:(id)a3 prompt:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E69E0B20];
  v10 = a4;
  v11 = a3;
  v12 = [[v9 alloc] initWithInteraction:v11 prompt:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__WFDialogTransformer_showHandleInteraction_prompt_completionHandler___block_invoke;
  v14[3] = &unk_1E8377410;
  v15 = v8;
  v13 = v8;
  [(WFDialogTransformer *)self handleDialogRequest:v12 completionHandler:v14];
}

void __70__WFDialogTransformer_showHandleInteraction_prompt_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 interactionResponseCode]);
  }

  else
  {

    (*(*(a1 + 32) + 16))();
  }
}

- (void)showConfirmInteraction:(id)a3 prompt:(id)a4 requireAuthentication:(BOOL)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = MEMORY[0x1E69E0A18];
  v11 = a4;
  v12 = a3;
  v13 = [[v10 alloc] initWithInteraction:v12 prompt:v11];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__WFDialogTransformer_showConfirmInteraction_prompt_requireAuthentication_completionHandler___block_invoke;
  v15[3] = &unk_1E8377410;
  v16 = v9;
  v14 = v9;
  [(WFDialogTransformer *)self handleDialogRequest:v13 completionHandler:v15];
}

void __93__WFDialogTransformer_showConfirmInteraction_prompt_requireAuthentication_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 interactionResponseCode]);
  }

  else
  {

    [v7 responseCode];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)sequentialParameterInputProviderDidCancel:(id)a3 responseContext:(id)a4
{
  v10 = a4;
  v5 = [(WFDialogTransformer *)self parameterInputCompletionHandler];

  if (v5)
  {
    v6 = [(WFDialogTransformer *)self parameterInputCompletionHandler];
    v7 = [MEMORY[0x1E696ABC0] userCancelledError];
    (v6)[2](v6, 0, v7, v10);

    parameterInputProvider = self->_parameterInputProvider;
    self->_parameterInputProvider = 0;

    parameterInputCompletionHandler = self->_parameterInputCompletionHandler;
    self->_parameterInputCompletionHandler = 0;
  }
}

- (void)sequentialParameterInputProvider:(id)a3 didFinishWithInputtedStates:(id)a4 responseContext:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(WFDialogTransformer *)self parameterInputCompletionHandler];

  if (v8)
  {
    v9 = [(WFDialogTransformer *)self parameterInputCompletionHandler];
    (v9)[2](v9, v12, 0, v7);

    parameterInputProvider = self->_parameterInputProvider;
    self->_parameterInputProvider = 0;

    parameterInputCompletionHandler = self->_parameterInputCompletionHandler;
    self->_parameterInputCompletionHandler = 0;
  }
}

- (void)showAskParameterDialogForParameter:(id)a3 action:(id)a4 defaultState:(id)a5 prompt:(id)a6 completion:(id)a7
{
  v77 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(WFDialogTransformer *)self allowedParameterClasses];
  if ([v17 count])
  {
    v18 = [(WFDialogTransformer *)self allowedParameterClasses];
    v19 = [v18 containsObject:objc_opt_class()];

    if ((v19 & 1) == 0)
    {
      v20 = [(WFDialogTransformer *)self parameterInputCompletionHandler];
      [(WFDialogTransformer *)self setParameterInputCompletionHandler:0];
      if (v20)
      {
        v21 = v15;
        v22 = v13;
        v23 = MEMORY[0x1E696ABC0];
        v24 = [v12 localizedLabel];
        v25 = [MEMORY[0x1E69E0A90] currentDevice];
        v26 = [v23 wf_unsupportedParameterErrorWithParameterName:v24 errorType:@"NotAvailableOnSpecifiedPlatform" platformIdiom:{objc_msgSend(v25, "idiom")}];

        (v20)[2](v20, 0, v26, 0);
        v13 = v22;
        v15 = v21;
      }

      (*(v16 + 2))(v16, 1, 0, 0);

      goto LABEL_23;
    }
  }

  else
  {
  }

  v60 = self;
  v57 = v16;
  v58 = v15;
  v27 = objc_opt_new();
  v59 = v14;
  v28 = [v14 serializedRepresentation];
  v29 = [v12 key];
  v61 = v27;
  [v27 if_setObjectIfNonNil:v28 forKey:v29];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v30 = v13;
  v31 = [v13 parameters];
  v32 = [v31 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v67;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v67 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v66 + 1) + 8 * i);
        v37 = [v36 key];
        v38 = [v12 key];
        v39 = [v37 isEqualToString:v38];

        if ((v39 & 1) == 0)
        {
          v40 = [v36 key];
          v41 = [v30 parameterStateForKey:v40 fallingBackToDefaultValue:0];

          v42 = [v41 serializedRepresentation];
          v43 = [v36 key];
          [v61 if_setObjectIfNonNil:v42 forKey:v43];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v33);
  }

  v44 = [MEMORY[0x1E69E09A0] dialogComponentStyleForParameter:v12];
  v45 = [MEMORY[0x1E69E0AA0] doneButton];
  v13 = v30;
  v46 = [v30 identifier];
  if (![v46 isEqualToString:@"is.workflow.actions.timer.start"])
  {
    goto LABEL_19;
  }

  v47 = [(WFDialogTransformer *)v60 runningContext];
  v48 = [v47 workflowIdentifier];

  if (!v48)
  {
    [MEMORY[0x1E69E0AA0] startButton];
    v45 = v46 = v45;
LABEL_19:
  }

  v49 = objc_alloc(MEMORY[0x1E69E09A0]);
  v50 = [v30 identifier];
  v51 = [v12 key];
  v52 = [(WFDialogTransformer *)v60 attribution];
  LOBYTE(v56) = 1;
  v15 = v58;
  v53 = [v49 initWithActionIdentifier:v50 parameterKey:v51 serializedParameterStates:v61 style:v44 attribution:v52 prompt:v58 doneButton:v45 focusImmediatelyWhenPresented:v56];

  v54 = getWFDialogLogObject();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v71 = "[WFDialogTransformer showAskParameterDialogForParameter:action:defaultState:prompt:completion:]";
    v72 = 2112;
    v73 = v12;
    v74 = 2112;
    v75 = v53;
    _os_log_impl(&dword_1CA256000, v54, OS_LOG_TYPE_DEFAULT, "%s %@ created %@", buf, 0x20u);
  }

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __96__WFDialogTransformer_showAskParameterDialogForParameter_action_defaultState_prompt_completion___block_invoke;
  v62[3] = &unk_1E83773E8;
  v16 = v57;
  v65 = v57;
  v63 = v30;
  v64 = v12;
  [(WFDialogTransformer *)v60 handleDialogRequest:v53 completionHandler:v62];

  v14 = v59;
LABEL_23:

  v55 = *MEMORY[0x1E69E9840];
}

void __96__WFDialogTransformer_showAskParameterDialogForParameter_action_defaultState_prompt_completion___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isCancelled])
  {
    v4 = a1[6];
    v5 = [v3 context];
    (*(v4 + 16))(v4, 1, 0, v5);
  }

  else
  {
    v6 = v3;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v5 = v7;

    v8 = [v5 serializedParameterState];

    if (v8)
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = [v6 serializedParameterState];
      v12 = [v9 createStateForParameter:v10 fromSerializedRepresentation:v11];

      v13 = getWFDialogLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315650;
        v20 = "[WFDialogTransformer showAskParameterDialogForParameter:action:defaultState:prompt:completion:]_block_invoke";
        v21 = 2112;
        v22 = v6;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s %@ created %@", &v19, 0x20u);
      }

      v14 = a1[6];
      v15 = [v6 context];
      (*(v14 + 16))(v14, 0, v12, v15);
    }

    else
    {
      v16 = a1[6];
      v17 = [v6 context];
      (*(v16 + 16))(v16, 0, 0, v17);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)sequentialParameterInputProvider:(id)a3 didAdvanceToParameter:(id)a4 action:(id)a5 defaultState:(id)a6 prompt:(id)a7 linkDialog:(id)a8 completion:(id)a9
{
  v63 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = [(WFDialogTransformer *)self runningContext];
  v21 = [v20 workflowIdentifier];
  v43 = v17;
  if (v21)
  {

    goto LABEL_3;
  }

  v24 = [v15 identifier];
  if ([v24 isEqualToString:@"com.apple.mobiletimer-framework.MobileTimerIntents.MTCreateAlarmIntent"])
  {
  }

  else
  {
    [v15 identifier];
    v26 = v25 = self;
    v27 = [v26 isEqualToString:@"is.workflow.actions.timer.start"];

    self = v25;
    v17 = v43;
    if ((v27 & 1) == 0)
    {
LABEL_3:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !v17)
      {
        v22 = [v14 localizedPrompt];
      }

      else
      {
        v22 = v17;
      }

      v23 = v22;
      goto LABEL_11;
    }
  }

  v23 = 0;
LABEL_11:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke;
  aBlock[3] = &unk_1E8377460;
  v42 = self;
  aBlock[4] = self;
  v28 = v14;
  v51 = v28;
  v29 = v23;
  v52 = v29;
  v30 = v18;
  v53 = v30;
  v31 = v19;
  v56 = v31;
  v32 = v15;
  v54 = v32;
  v33 = v16;
  v55 = v33;
  v34 = _Block_copy(aBlock);
  v35 = [v28 key];
  v36 = [v32 canOfferSuggestionsForParameterWithKey:v35];

  if (v36)
  {
    v37 = getWFDialogLogObject();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v32 identifier];
      v39 = [v28 key];
      *buf = 136315650;
      v58 = "[WFDialogTransformer sequentialParameterInputProvider:didAdvanceToParameter:action:defaultState:prompt:linkDialog:completion:]";
      v59 = 2112;
      v60 = v38;
      v61 = 2112;
      v62 = v39;
      _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_DEFAULT, "%s Consulting top hits for entity items for action: %@, parameter: %@", buf, 0x20u);
    }

    v40 = [v28 key];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_389;
    v44[3] = &unk_1E83773B8;
    v45 = v32;
    v46 = v28;
    v47 = v42;
    v48 = v34;
    v49 = v31;
    [v45 fetchSuggestedEntitiesForParameterWithKey:v40 completionHandler:v44];
  }

  else
  {
    v34[2](v34);
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isRunningWithToolKitClient] && (objc_msgSend(*(a1 + 32), "isRunningFromSpotlight") & 1) == 0)
  {
    v18 = objc_alloc(MEMORY[0x1E69E0DA8]);
    v19 = [*(a1 + 40) key];
    v20 = [*(a1 + 32) attribution];
    v21 = [v18 initWithParameterKey:v19 attribution:v20 prompt:*(a1 + 48)];

    [v21 setLinkDialog:*(a1 + 56)];
    v22 = *(a1 + 32);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2;
    v30[3] = &unk_1E83772C8;
    v33 = *(a1 + 80);
    v31 = *(a1 + 64);
    v32 = *(a1 + 40);
    [v22 handleDialogRequest:v21 completionHandler:v30];
  }

  else if ([*(a1 + 40) conformsToProtocol:&unk_1F4A9DDC8])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) attribution];
    v4 = *(a1 + 72);
    v5 = *(a1 + 48);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_4;
    v24[3] = &unk_1E8377368;
    v23 = *(a1 + 32);
    v6 = *(&v23 + 1);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v25 = v23;
    v26 = v9;
    v27 = *(a1 + 48);
    v10 = *(a1 + 80);
    v28 = v2;
    v29 = v10;
    v11 = v2;
    [v11 createDialogRequestWithAttribution:v3 defaultState:v4 prompt:v5 completionHandler:v24];
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = *(a1 + 48);
    v17 = *(a1 + 80);

    [v12 showAskParameterDialogForParameter:v13 action:v14 defaultState:v15 prompt:v16 completion:v17];
  }
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_389(id *a1, void *a2)
{
  v3 = a2;
  v4 = [WFEntityPickerDialogRequest alloc];
  v5 = [a1[4] identifier];
  v6 = [a1[5] key];
  v7 = [a1[6] attribution];
  v8 = [(WFEntityPickerDialogRequest *)v4 initWithActionIdentifier:v5 parameterKey:v6 items:v3 attribution:v7 prompt:0];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2_391;
  v15[3] = &unk_1E8377390;
  v9 = a1[6];
  v10 = a1[7];
  v14 = a1[6];
  v18 = a1[8];
  v11 = a1[4];
  *&v12 = a1[5];
  *(&v12 + 1) = v10;
  *&v13 = v14;
  *(&v13 + 1) = v11;
  v16 = v13;
  v17 = v12;
  [v9 handleDialogRequest:v8 completionHandler:v15];
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2_391(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v8 userRequestedAllOptions])
  {
    (*(*(a1 + 56) + 16))();
  }

  else if ([v8 userRequestedOpenApp])
  {
    v9 = *(a1 + 32);
    v10 = [v9 attribution];
    v11 = [v10 appBundleIdentifier];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_3_393;
    v24[3] = &unk_1E837EE10;
    v26 = *(a1 + 64);
    v25 = v5;
    [v9 openAppWithBundleIdentifier:v11 completionHandler:v24];
  }

  else
  {
    v12 = getWFDialogLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 selectedEntry];
      v14 = [*(a1 + 40) identifier];
      v15 = [*(a1 + 48) key];
      *buf = 136315906;
      v28 = "[WFDialogTransformer sequentialParameterInputProvider:didAdvanceToParameter:action:defaultState:prompt:linkDialog:completion:]_block_invoke_2";
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s User selected entry: %@ for action: %@, parameter: %@; going through default ask path", buf, 0x2Au);
    }

    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = [v8 selectedEntry];
    v19 = [v18 serializedParameterState];
    v20 = [v16 createStateForParameter:v17 fromSerializedRepresentation:v19];

    v21 = *(a1 + 64);
    v22 = [v5 context];
    (*(v21 + 16))(v21, 0, v20, v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_3_393(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) context];
  (*(v1 + 16))(v1, 1, 0, v2);
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (![v5 isCancelled] || v8)
  {
    v11 = *(a1 + 32);
    v12 = [v8 encodedTypedValue];
    v13 = [*(a1 + 32) toolInvocation];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_3;
    v15[3] = &unk_1E83772A0;
    v14 = *(a1 + 40);
    v17 = *(a1 + 48);
    v16 = v5;
    [v11 processEncodedValue:v12 withToolKitInvocation:v13 forParameter:v14 completionHandler:v15];
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = [v5 context];
    (*(v9 + 16))(v9, 1, 0, v10);
  }
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) showAskParameterDialogForParameter:*(a1 + 40) action:*(a1 + 48) defaultState:*(a1 + 56) prompt:*(a1 + 64) completion:*(a1 + 80)];
    goto LABEL_14;
  }

  v4 = [*(a1 + 48) identifier];
  if (![v4 isEqualToString:@"com.apple.mobiletimer-framework.MobileTimerIntents.MTCreateAlarmIntent"])
  {
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) runningContext];
  v6 = [v5 workflowIdentifier];

  if (!v6)
  {
    v7 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v4 = v9;

    if (isKindOfClass)
    {
      v10 = WFLocalizedString(@"Add");
      [v7 overrideDoneButtonTitle:v10];
    }

LABEL_9:
  }

  v11 = getWFDialogLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 72);
    *buf = 136315650;
    v19 = "[WFDialogTransformer sequentialParameterInputProvider:didAdvanceToParameter:action:defaultState:prompt:linkDialog:completion:]_block_invoke_4";
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s %@ created %@", buf, 0x20u);
  }

  v13 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_382;
  v15[3] = &unk_1E8377340;
  v17 = *(a1 + 80);
  v16 = *(a1 + 72);
  [v13 handleDialogRequest:v3 completionHandler:v15];

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_382(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCancelled])
  {
    v4 = *(a1 + 40);
    v5 = [v3 context];
    (*(v4 + 16))(v4, 1, 0, v5);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2_383;
    aBlock[3] = &unk_1E83772F0;
    v17 = *(a1 + 32);
    v6 = v3;
    v18 = v6;
    v19 = *(a1 + 40);
    v7 = _Block_copy(aBlock);
    v8 = *(a1 + 32);
    if (objc_opt_respondsToSelector() & 1) != 0 && (v9 = v6) != 0 && (v10 = v9, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass))
    {
      v12 = *(a1 + 32);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_388;
      v14[3] = &unk_1E8377318;
      v15 = v7;
      [v12 createParameterStateFromDialogResponse:v10 completionHandler:v14];
      v13 = v15;
    }

    else
    {
      v13 = [*(a1 + 32) parameterStateFromDialogResponse:v6];
      (*(v7 + 2))(v7, v13);
    }
  }
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2_383(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) stateClass];
  if (v4 != objc_opt_class())
  {
    v5 = getWFDialogLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 stateClass];
      v11 = v10;
      v18 = 136315906;
      v19 = "[WFDialogTransformer sequentialParameterInputProvider:didAdvanceToParameter:action:defaultState:prompt:linkDialog:completion:]_block_invoke_2";
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = objc_opt_class();
      v12 = v25;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s %@ expected a parameter state of class: %@, but received a different parameter state class: %@", &v18, 0x2Au);
    }
  }

  v13 = getWFDialogLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v18 = 136315650;
    v19 = "[WFDialogTransformer sequentialParameterInputProvider:didAdvanceToParameter:action:defaultState:prompt:linkDialog:completion:]_block_invoke";
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s %@ created %@", &v18, 0x20u);
  }

  v15 = *(a1 + 48);
  v16 = [*(a1 + 40) context];
  (*(v15 + 16))(v15, 0, v3, v16);

  v17 = *MEMORY[0x1E69E9840];
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [[WFToolKitProcessedValueParameterState alloc] initWithProcessedValue:v7];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) context];
    (*(v4 + 16))(v4, 0, v3, v5);
  }

  else
  {
    v6 = *(a1 + 40);
    v3 = [*(a1 + 32) context];
    (*(v6 + 16))(v6, 1, 0, v3);
  }
}

- (void)action:(id)a3 provideInputForParameters:(id)a4 withDefaultStates:(id)a5 prompts:(id)a6 completionHandler:(id)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (![(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    goto LABEL_15;
  }

  v17 = v12;
  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v17 = 0;
    goto LABEL_14;
  }

  if (![v17 isHandledBySiri])
  {
LABEL_14:

LABEL_15:
    [(WFDialogTransformer *)self setParameterInputCompletionHandler:v16];
    v27 = [[WFSequentialParameterInputProvider alloc] initWithDelegate:self];
    [(WFSequentialParameterInputProvider *)v27 startWithAction:v12 parameters:v13 defaultStates:v14 prompts:v15];
    parameterInputProvider = self->_parameterInputProvider;
    self->_parameterInputProvider = v27;

    goto LABEL_16;
  }

  v30 = v14;
  v32 = v12;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = v13;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v33 + 1) + 8 * i);
        v25 = objc_alloc_init(WFSiriAskEachTimeParameterState);
        v26 = [v24 key];
        [v18 setObject:v25 forKeyedSubscript:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v21);
  }

  (*(v16 + 2))(v16, v18, 0, 0);
  v13 = v31;
  v12 = v32;
  v14 = v30;
LABEL_16:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)handleAlertAsSiriDialog:(id)a3
{
  v5 = a3;
  v6 = [v5 title];
  v7 = [v5 message];
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n%@", v6, v7];
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  if ([v6 length])
  {
    v8 = v6;
    goto LABEL_8;
  }

  if ([v7 length])
  {
    v8 = v7;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:
  if (!self->_externalUIPresenter)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFDialogTransformer.m" lineNumber:916 description:@"Siri UI presenter must be non-nil"];
  }

  v10 = [objc_alloc(MEMORY[0x1E69E0D18]) initWithUtterance:v9];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__WFDialogTransformer_handleAlertAsSiriDialog___block_invoke;
  v13[3] = &unk_1E8377278;
  v14 = v5;
  v11 = v5;
  [(WFDialogTransformer *)self performSiriRequest:v10 completionHandler:v13];
}

void __47__WFDialogTransformer_handleAlertAsSiriDialog___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) buttons];
  v4 = [v1 firstObject];

  v2 = [v4 handler];

  if (v2)
  {
    v3 = [v4 handler];
    v3[2](v3, 0);
  }
}

- (BOOL)shouldHandleAlertAsSiriDialog:(id)a3
{
  v4 = a3;
  if ([(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    v5 = [v4 buttons];
    if ([v5 count] == 1)
    {
      objc_opt_class();
      v6 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)handleAlertWithMultipleButtons:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = MEMORY[0x1E6996D28];
  v47 = v3;
  v6 = [v3 buttons];
  [v5 processContentAlertButtonSubtitles:v6];

  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__24935;
  v71 = __Block_byref_object_dispose__24936;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__24935;
  v65 = __Block_byref_object_dispose__24936;
  v66 = 0;
  group = dispatch_group_create();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v7 = [v3 buttons];
  v8 = [v7 countByEnumeratingWithState:&v57 objects:v77 count:16];
  if (v8)
  {
    v9 = *v58;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v58 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v57 + 1) + 8 * i);
        if ([v11 style] == 1)
        {
          v12 = v68;
          v13 = v11;
          v14 = v12[5];
          v12[5] = v13;
        }

        else
        {
          v15 = v11;
          if (v15)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v17 = v15;
            v14 = v17;
            if (isKindOfClass)
            {
              v18 = [v17 contentItem];
              if ([v14 stickySelection])
              {
                *(v74 + 24) = 1;
              }

              v19 = [WFDialogContentListItem alloc];
              v20 = [v18 blockingEncodedTypedValue];
              v21 = -[WFDialogContentListItem initWithContentItem:encodedTypedValue:selected:hideSubtitle:](v19, "initWithContentItem:encodedTypedValue:selected:hideSubtitle:", v18, v20, [v14 isSelected], objc_msgSend(v14, "hideSubtitle"));

              [v4 addObject:v21];
              [v48 setObject:v14 forKey:v21];

              goto LABEL_22;
            }

            objc_opt_class();
            v22 = objc_opt_isKindOfClass();

            if (v22)
            {
              v14 = v14;
              if ([v14 stickySelection])
              {
                *(v74 + 24) = 1;
              }

              v23 = objc_alloc(MEMORY[0x1E6996E88]);
              v24 = [v14 title];
              v25 = [v14 subtitle];
              v26 = [v14 image];
              v27 = [v23 initWithTitle:v24 subtitle:v25 image:v26];

              v28 = [MEMORY[0x1E6996E80] itemWithObject:v27];
              v29 = [WFDialogContentListItem alloc];
              v30 = [v28 blockingEncodedTypedValue];
              v31 = -[WFDialogContentListItem initWithContentItem:encodedTypedValue:selected:serializedPossibleState:](v29, "initWithContentItem:encodedTypedValue:selected:serializedPossibleState:", v28, v30, [v14 isSelected], 0);

              [v4 addObject:v31];
              [v48 setObject:v14 forKey:v31];

              goto LABEL_22;
            }
          }

          if ([v15 style])
          {
            continue;
          }

          if ([v15 isPreferred])
          {
            v32 = v62;
            v33 = v15;
            v14 = v32[5];
            v32[5] = v33;
          }

          else
          {
            v34 = objc_alloc(MEMORY[0x1E6996E88]);
            v35 = [v15 title];
            v14 = [v34 initWithTitle:v35 subtitle:0 image:0];

            v36 = [MEMORY[0x1E6996E80] itemWithObject:v14];
            v37 = [WFDialogContentListItem alloc];
            v38 = [v36 blockingEncodedTypedValue];
            v39 = [(WFDialogContentListItem *)v37 initWithContentItem:v36 encodedTypedValue:v38 selected:0 hideSubtitle:0];

            [v4 addObject:v39];
            [v48 setObject:v15 forKey:v39];
          }
        }

LABEL_22:
      }

      v8 = [v7 countByEnumeratingWithState:&v57 objects:v77 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WFDialogTransformer_handleAlertWithMultipleButtons___block_invoke;
  block[3] = &unk_1E8377250;
  v40 = v4;
  v50 = v4;
  v51 = v47;
  v54 = &v73;
  v55 = &v67;
  v52 = self;
  v53 = v48;
  v56 = &v61;
  v41 = v48;
  v42 = v47;
  v43 = v40;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  v44 = *MEMORY[0x1E69E9840];
}

void __54__WFDialogTransformer_handleAlertWithMultipleButtons___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69E09C8]);
  v3 = *(*(*(a1 + 64) + 8) + 24);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) message];
  v6 = [*(a1 + 48) attribution];
  v7 = [*(a1 + 40) title];
  v8 = [*(a1 + 40) associatedParameterKey];
  v9 = [v2 initWithItems:v4 allowsMultipleSelection:v3 message:v5 attribution:v6 prompt:v7 done:0 parameterKey:v8];

  v10 = [*(a1 + 40) linkDialog];
  [v9 setLinkDialog:v10];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__WFDialogTransformer_handleAlertWithMultipleButtons___block_invoke_2;
  v15[3] = &unk_1E8377228;
  v14 = *(a1 + 48);
  v13 = *(a1 + 72);
  v11 = *(&v14 + 1);
  *&v12 = v13;
  *(&v12 + 1) = *(a1 + 64);
  v16 = v14;
  v17 = v12;
  v18 = *(a1 + 80);
  [v14 handleDialogRequest:v9 completionHandler:v15];
}

void __54__WFDialogTransformer_handleAlertWithMultipleButtons___block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isCancelled])
  {
    v4 = [*(*(*(a1 + 48) + 8) + 40) handler];

    if (!v4)
    {
      [*(a1 + 32) cancel];
      goto LABEL_31;
    }

    v5 = [*(*(*(a1 + 48) + 8) + 40) handler];
    v6 = [v3 context];
    v5[2](v5, v6);
    goto LABEL_4;
  }

  v5 = v3;
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v27 = *(a1 + 32);
    v28 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    [v27 stopWithError:v28];

    v5 = 0;
    goto LABEL_30;
  }

  v30 = v3;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [v5 selectedItems];
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(a1 + 40) objectForKey:*(*(&v35 + 1) + 8 * i)];
        v13 = [v12 handler];

        if (v13)
        {
          v14 = [v12 handler];
          v15 = [v5 context];
          (v14)[2](v14, v15);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v9);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = [*(a1 + 40) allKeys];
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * j);
        v22 = [*(a1 + 40) objectForKey:v21];
        if (v22)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v5 selectedItems];
            v24 = [v23 containsObject:v21];

            [v22 setSelected:v24];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v18);
  }

  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    v3 = v30;
    goto LABEL_30;
  }

  v25 = *(*(*(a1 + 64) + 8) + 40);
  v3 = v30;
  if (v25)
  {
    v6 = [v25 handler];
    v26 = [v5 context];
    (v6)[2](v6, v26);

LABEL_4:
  }

LABEL_30:

LABEL_31:
  v29 = *MEMORY[0x1E69E9840];
}

- (void)handleAlertWithDatePicker:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [v3 buttons];
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v32;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        if ([v11 style] == 1)
        {
          v12 = v11;
          v13 = v8;
          if (v7)
          {
            continue;
          }
        }

        else
        {
          v12 = v7;
          v13 = v11;
          if (v8)
          {
            continue;
          }
        }

        v14 = v11;
        v7 = v12;
        v8 = v13;
      }

      v6 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_15:

  v15 = objc_alloc(MEMORY[0x1E69E0B70]);
  v16 = [v3 datePickerConfiguration];
  v17 = [v3 message];
  v18 = [(WFDialogTransformer *)self attribution];
  v19 = [v3 title];
  v20 = [v15 initWithDatePickerConfiguration:v16 message:v17 attribution:v18 prompt:v19];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __49__WFDialogTransformer_handleAlertWithDatePicker___block_invoke;
  v26[3] = &unk_1E8377200;
  v27 = v7;
  v28 = self;
  v29 = v3;
  v30 = v8;
  v21 = v8;
  v22 = v3;
  v23 = v7;
  [(WFDialogTransformer *)self handleDialogRequest:v20 completionHandler:v26];

  v24 = *MEMORY[0x1E69E9840];
}

void __49__WFDialogTransformer_handleAlertWithDatePicker___block_invoke(id *a1, void *a2)
{
  v10 = a2;
  if ([v10 isCancelled])
  {
    v3 = [a1[4] handler];

    if (v3)
    {
      v4 = a1[4];
LABEL_8:
      v8 = [v4 handler];
      v9 = [v10 context];
      (v8)[2](v8, v9);

      goto LABEL_10;
    }

    [a1[5] cancel];
  }

  else
  {
    v5 = [v10 inputtedDate];

    if (v5)
    {
      v6 = [v10 inputtedDate];
      [a1[6] setDatePickerResult:v6];
    }

    v7 = [a1[7] handler];

    if (v7)
    {
      v4 = a1[7];
      goto LABEL_8;
    }
  }

LABEL_10:
}

- (void)handleAlertWithTextField:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [v3 buttons];
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v33;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        if ([v11 style] == 1)
        {
          v12 = v11;
          v13 = v8;
          if (v7)
          {
            continue;
          }
        }

        else
        {
          v12 = v7;
          v13 = v11;
          if (v8)
          {
            continue;
          }
        }

        v14 = v11;
        v7 = v12;
        v8 = v13;
      }

      v6 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_15:

  v15 = objc_alloc(MEMORY[0x1E69E0B80]);
  v16 = [v3 textFieldConfiguration];
  v17 = [v3 message];
  v18 = [(WFDialogTransformer *)self attribution];
  v19 = [v3 title];
  v20 = [v3 associatedParameterKey];
  v21 = [v15 initWithTextFieldConfiguration:v16 message:v17 attribution:v18 prompt:v19 parameterKey:v20];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __48__WFDialogTransformer_handleAlertWithTextField___block_invoke;
  v27[3] = &unk_1E83771D8;
  v28 = v7;
  v29 = self;
  v30 = v3;
  v31 = v8;
  v22 = v8;
  v23 = v3;
  v24 = v7;
  [(WFDialogTransformer *)self handleDialogRequest:v21 completionHandler:v27];

  v25 = *MEMORY[0x1E69E9840];
}

void __48__WFDialogTransformer_handleAlertWithTextField___block_invoke(id *a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v5 isCancelled])
  {
    v9 = [a1[4] handler];

    if (!v9)
    {
      [a1[5] cancel];
      goto LABEL_15;
    }

    v10 = a1[4];
    goto LABEL_13;
  }

  v11 = [v8 inputtedText];

  if (v11)
  {
    v12 = [v8 inputtedText];
    v18[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [a1[6] setTextFieldResults:v13];
  }

  v14 = [a1[7] handler];

  if (v14)
  {
    v10 = a1[7];
LABEL_13:
    v15 = [v10 handler];
    v16 = [v5 context];
    (v15)[2](v15, v16);
  }

LABEL_15:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleSimpleAlert:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v5 = [v4 buttons];
  v6 = [v5 countByEnumeratingWithState:&v47 objects:v51 count:16];
  v7 = 0x1E69E0000;
  if (!v6)
  {
    v42 = 0;
    v10 = 0;
    v11 = 0;
LABEL_16:

    goto LABEL_18;
  }

  v8 = v6;
  v40 = v4;
  v9 = self;
  v10 = 0;
  v11 = 0;
  v12 = *v48;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v48 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v14 = *(*(&v47 + 1) + 8 * i);
      if ([v14 style] == 1)
      {
        v15 = v14;
        v16 = v11;
        if (v10)
        {
          continue;
        }
      }

      else
      {
        v15 = v10;
        v16 = v14;
        if (v11)
        {
          continue;
        }
      }

      v17 = v14;
      v10 = v15;
      v11 = v16;
    }

    v8 = [v5 countByEnumeratingWithState:&v47 objects:v51 count:16];
  }

  while (v8);

  if (v10)
  {
    v7 = 0x1E69E0000uLL;
    v18 = objc_alloc(MEMORY[0x1E69E0AA0]);
    v5 = [v10 title];
    v42 = [v18 initWithTitle:v5 style:1];
    self = v9;
    v4 = v40;
    goto LABEL_16;
  }

  v42 = 0;
  self = v9;
  v4 = v40;
  v7 = 0x1E69E0000uLL;
LABEL_18:
  v19 = *(v7 + 2720);
  if (v11)
  {
    v20 = [v19 alloc];
    [v11 title];
    v22 = v21 = self;
    v23 = [v20 initWithTitle:v22 style:{2 * (objc_msgSend(v11, "style") != 0)}];

    self = v21;
  }

  else
  {
    v23 = [(objc_class *)v19 okButton];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v25 = 0x1E69E0C88;
  if ((isKindOfClass & 1) == 0)
  {
    v25 = 0x1E69E0C80;
  }

  v26 = *v25;
  v27 = objc_opt_class();
  v28 = v4;
  if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v30 = 0;
    goto LABEL_28;
  }

  v29 = [v28 attribution];
  v30 = v28;
  if (!v29)
  {
LABEL_28:
    v41 = v30;
    v32 = [(WFDialogTransformer *)self attribution];
    goto LABEL_29;
  }

  v31 = v29;
  v32 = [v28 attribution];

  v41 = v28;
LABEL_29:
  v33 = [v27 alloc];
  v34 = [v28 title];
  v35 = [v28 message];
  v36 = [v33 initWithPrompt:v34 message:v35 okButton:v23 cancelButton:v42 attribution:v32];

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __41__WFDialogTransformer_handleSimpleAlert___block_invoke;
  v43[3] = &unk_1E83771B0;
  v44 = v10;
  v45 = self;
  v46 = v11;
  v37 = v11;
  v38 = v10;
  [(WFDialogTransformer *)self handleDialogRequest:v36 completionHandler:v43];

  v39 = *MEMORY[0x1E69E9840];
}

void __41__WFDialogTransformer_handleSimpleAlert___block_invoke(id *a1, void *a2)
{
  v9 = a2;
  if ([v9 isCancelled])
  {
    v3 = [a1[4] handler];

    if (!v3)
    {
      [a1[5] cancel];
      goto LABEL_8;
    }

    v4 = a1[4];
  }

  else
  {
    v5 = [a1[6] handler];

    v6 = v9;
    if (!v5)
    {
      goto LABEL_9;
    }

    v4 = a1[6];
  }

  v7 = [v4 handler];
  v8 = [v9 context];
  (v7)[2](v7, v8);

LABEL_8:
  v6 = v9;
LABEL_9:
}

- (void)presentAlert:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFDialogLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[WFDialogTransformer presentAlert:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Transforming alert %@ into WFDialogRequest", &v13, 0x16u);
  }

  v6 = [v4 textFieldConfiguration];

  if (v6)
  {
    [(WFDialogTransformer *)self handleAlertWithTextField:v4];
    goto LABEL_12;
  }

  v7 = [v4 datePickerConfiguration];

  if (v7)
  {
    [(WFDialogTransformer *)self handleAlertWithDatePicker:v4];
    goto LABEL_12;
  }

  v8 = [v4 buttons];
  if ([v8 count] > 2)
  {
    goto LABEL_10;
  }

  v9 = [v4 buttons];
  v10 = [v9 if_objectsOfClass:objc_opt_class()];
  if ([v10 count])
  {

LABEL_10:
LABEL_11:
    [(WFDialogTransformer *)self handleAlertWithMultipleButtons:v4];
    goto LABEL_12;
  }

  if ([(WFDialogTransformer *)self isRunningWithToolKitClient])
  {
    v12 = [(WFDialogTransformer *)self isRunningFromSpotlight];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  if ([(WFDialogTransformer *)self shouldHandleAlertAsSiriDialog:v4])
  {
    [(WFDialogTransformer *)self handleAlertAsSiriDialog:v4];
  }

  else
  {
    [(WFDialogTransformer *)self handleSimpleAlert:v4];
  }

LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)swapExternalUIPresenterWithPresenter:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    v6 = [(WFDialogTransformer *)self parameterInputProvider];

    if (v6)
    {
      v7 = [(WFDialogTransformer *)self parameterInputProvider];
      [v7 persistInFlightParameters];
    }

    externalUIPresenter = self->_externalUIPresenter;
    self->_externalUIPresenter = 0;

    objc_storeStrong(&self->_userInterfacePresenter, a3);
  }

  else
  {
    v9 = getWFRunningLifecycleLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "[WFDialogTransformer swapExternalUIPresenterWithPresenter:]";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Attempted to perform handoff when not running in Siri", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setWorkflow:(id)a3
{
  objc_storeStrong(&self->_workflow, a3);
  v6 = [(WFDialogTransformer *)self userInterfacePresenter];
  v4 = [(WFDialogTransformer *)self attribution];
  v5 = [(WFDialogTransformer *)self runningContext];
  [v6 updateAttribution:v4 runningContext:v5];
}

- (void)requestFileAccessForURLs:(id)a3 workflowName:(id)a4 workflowID:(id)a5 completionHandler:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v30 = a6;
  v11 = a5;
  v12 = getWFFilesLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v35 = "[WFDialogTransformer requestFileAccessForURLs:workflowName:workflowID:completionHandler:]";
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEBUG, "%s Requesting File access for urls: %@", buf, 0x16u);
  }

  v13 = [v9 if_map:&__block_literal_global_24952];
  if ([v9 count] == 1)
  {
    v14 = [v9 firstObject];
    v15 = [v14 hasDirectoryPath];

    v16 = MEMORY[0x1E696AEC0];
    if (v15)
    {
      v17 = @"Allow “%1$@” to access your “%2$@” folder?";
    }

    else
    {
      v17 = @"Allow “%1$@” to access your file “%2$@”?";
    }

    v18 = WFLocalizedString(v17);
    v19 = [v13 firstObject];
    v22 = [v16 stringWithFormat:v18, v10, v19];
  }

  else
  {
    v18 = [v13 if_map:&__block_literal_global_275];
    v19 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v18];
    v20 = MEMORY[0x1E696AEC0];
    v21 = WFLocalizedString(@"Allow “%1$@” to access %2$@?");
    v22 = [v20 stringWithFormat:v21, v10, v19];
  }

  v23 = [WFFileAccessDialogRequest alloc];
  v24 = [MEMORY[0x1E69E0AA0] okButton];
  v25 = [MEMORY[0x1E69E0AA0] cancelButton];
  v26 = [(WFDialogTransformer *)self privacyAttribution];
  v27 = [(WFFileAccessDialogRequest *)v23 initWithPrompt:v22 message:0 okButton:v24 cancelButton:v25 attribution:v26 workflowID:v11 URLs:v9];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __90__WFDialogTransformer_requestFileAccessForURLs_workflowName_workflowID_completionHandler___block_invoke_3;
  v32[3] = &unk_1E8377188;
  v33 = v30;
  v28 = v30;
  [(WFDialogTransformer *)self handleDialogRequest:v27 completionHandler:v32];

  v29 = *MEMORY[0x1E69E9840];
}

void __90__WFDialogTransformer_requestFileAccessForURLs_workflowName_workflowID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    if ([v4 fileResponseCode] == 1)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      if (([v8 isCancelled] & 1) != 0 || !objc_msgSend(v4, "fileResponseCode"))
      {
        v5 = *(a1 + 32);
        v6 = [MEMORY[0x1E696ABC0] userCancelledError];
      }

      else
      {
        v5 = *(a1 + 32);
        v6 = [v8 error];
      }

      v7 = v6;
      (*(v5 + 16))(v5, 0, v6);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id __90__WFDialogTransformer_requestFileAccessForURLs_workflowName_workflowID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = WFLocalizedString(@"“%@”");
  v5 = [v2 stringWithFormat:v4, v3];

  return v5;
}

id __90__WFDialogTransformer_requestFileAccessForURLs_workflowName_workflowID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 wf_localizedDisplayName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 lastPathComponent];
  }

  v6 = v5;

  return v6;
}

- (void)configureSmartPromptIntent:(id)a3 withConfiguration:(id)a4
{
  v31 = a3;
  v5 = *MEMORY[0x1E69E0F30];
  v6 = a4;
  [v31 _setLaunchId:v5];
  [v31 _setExtensionBundleId:v5];
  v7 = [WFSmartPromptDialogRequest alloc];
  v8 = [MEMORY[0x1E69E0A98] attributionWithAppBundleIdentifier:*MEMORY[0x1E69E0FB0]];
  v9 = [(WFSmartPromptDialogRequest *)v7 initWithConfiguration:v6 attribution:v8];

  v10 = [v6 localizedPrompt];

  [v31 setPromptMessage:v10];
  v11 = WFLocalizedString(@"Privacy");
  [v31 setPrivacyTitle:v11];

  v12 = MEMORY[0x1E69E0B58];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v12 imageNamed:@"Privacy" inBundle:v13];

  v15 = MEMORY[0x1E696E840];
  v16 = [v14 PNGRepresentation];
  v17 = [v15 fileWithData:v16 filename:@"PrivacyIcon" typeIdentifier:@"public.png"];

  [v31 setPrivacyIcon:v17];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [(WFSmartPromptDialogRequest *)v9 previewButton];

  if (v19)
  {
    v20 = [(WFSmartPromptDialogRequest *)v9 previewButton];
    v21 = [v20 smartPromptIntentButton];
    [v18 addObject:v21];
  }

  v22 = [(WFSmartPromptDialogRequest *)v9 allowOnceButton];

  if (v22)
  {
    v23 = [(WFSmartPromptDialogRequest *)v9 allowOnceButton];
    v24 = [v23 smartPromptIntentButton];
    [v18 addObject:v24];
  }

  v25 = [(WFSmartPromptDialogRequest *)v9 allowAlwaysButton];

  if (v25)
  {
    v26 = [(WFSmartPromptDialogRequest *)v9 allowAlwaysButton];
    v27 = [v26 smartPromptIntentButton];
    [v18 addObject:v27];
  }

  v28 = [(WFSmartPromptDialogRequest *)v9 denyButton];

  if (v28)
  {
    v29 = [(WFSmartPromptDialogRequest *)v9 denyButton];
    v30 = [v29 smartPromptIntentButton];
    [v18 addObject:v30];
  }

  [v31 setButtons:v18];
}

- (void)updateSmartPromptsWithConfiguration:(id)a3 resultCode:(unint64_t)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v24 = a4;
  obj = [WFSmartPromptDialogResponse prepareSmartPromptsDatabaseDataFromConfiguration:v7 resultCode:a4 error:a5];
  if (obj)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        v11 = 0;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * v11);
          v13 = +[WFDatabaseProxy defaultDatabase];
          v14 = [v7 actionUUID];
          v15 = [(WFDialogTransformer *)self workflow];
          v16 = [v15 reference];
          [v13 saveSmartPromptStateData:v12 actionUUID:v14 reference:v16 error:a5];

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v9);
    }
  }

  v17 = [WFSmartPromptDialogResponse prepareDeletionAuthorizationDatabaseDataFromConfiguration:v7 resultCode:v24 error:a5];
  if (v17)
  {
    v18 = +[WFDatabaseProxy defaultDatabase];
    [v7 actionUUID];
    v20 = v19 = a5;
    v21 = [(WFDialogTransformer *)self workflow];
    v22 = [v21 reference];
    [v18 saveSmartPromptStateData:v17 actionUUID:v20 reference:v22 error:v19];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)executeSmartPromptIntentWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69E0D48]);
  [(WFDialogTransformer *)self configureSmartPromptIntent:v8 withConfiguration:v6];
  [(WFDialogTransformer *)self configureIntent:v8];
  v9 = [objc_alloc(MEMORY[0x1E69E0CC0]) initWithIntent:v8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__WFDialogTransformer_executeSmartPromptIntentWithConfiguration_completionHandler___block_invoke;
  v12[3] = &unk_1E8377140;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
  [(WFDialogTransformer *)self performSiriRequest:v9 completionHandler:v12];
}

void __83__WFDialogTransformer_executeSmartPromptIntentWithConfiguration_completionHandler___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 error];

      if (!v4)
      {
        v5 = [v3 interaction];
        v6 = [v5 intentResponse];
        v7 = INTypedIntentResponseWithIntentResponse();

        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 authorizationResult];
            v9 = [v8 unsignedIntegerValue];

            if (v9 == 3)
            {
              v10 = getWFSecurityLogObject();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v20 = "[WFDialogTransformer executeSmartPromptIntentWithConfiguration:completionHandler:]_block_invoke";
                _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s User selected Preview in Siri, handing off to Shortcuts", buf, 0xCu);
              }

              (*(a1[6] + 16))();
            }

            else
            {
              v14 = a1[4];
              v15 = a1[5];
              v18 = 0;
              [v14 updateSmartPromptsWithConfiguration:v15 resultCode:v9 error:&v18];
              v16 = v18;
              if (v16)
              {
                v17 = getWFSecurityLogObject();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v20 = "[WFDialogTransformer executeSmartPromptIntentWithConfiguration:completionHandler:]_block_invoke";
                  v21 = 2112;
                  v22 = v16;
                  _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Failed to update smart prompts state in Siri: %@", buf, 0x16u);
                }
              }

              (*(a1[6] + 16))();
            }

            goto LABEL_15;
          }
        }
      }

      (*(a1[6] + 16))();
LABEL_15:

      goto LABEL_16;
    }
  }

  v11 = getWFDialogLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v20 = "[WFDialogTransformer executeSmartPromptIntentWithConfiguration:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = objc_opt_class();
    v12 = v22;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", buf, 0x16u);
  }

  (*(a1[6] + 16))();
LABEL_16:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)requestAuthorizationWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WFDialogTransformer *)self isRunningWithSiriUI]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v6;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;

    [(WFDialogTransformer *)self executeSmartPromptIntentWithConfiguration:v11 completionHandler:v7];
  }

  else
  {
    v10 = [(WFDialogTransformer *)self privacyAttribution];
    v11 = [v6 authorizationDialogRequestWithAttribution:v10];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__WFDialogTransformer_requestAuthorizationWithConfiguration_completionHandler___block_invoke;
    v12[3] = &unk_1E8377340;
    v12[4] = self;
    v13 = v7;
    [(WFDialogTransformer *)self handleDialogRequest:v11 completionHandler:v12];
  }
}

void __79__WFDialogTransformer_requestAuthorizationWithConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if ([v7 isCancelled])
  {
    [*(a1 + 32) cancel];
  }

  else
  {
    v8 = v11;
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if ([v10 result] == 5)
    {
      [*(a1 + 32) cancel];
    }

    else
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), [v7 result]);
    }
  }
}

- (void)cleanupListDialogRequestIfNeeded:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFDialogTransformer *)self isRunningWithSiriUI];
    v6 = v4;
    if (v5)
    {
      v7 = [v4 items];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__WFDialogTransformer_cleanupListDialogRequestIfNeeded___block_invoke;
      v8[3] = &unk_1E8377118;
      v8[4] = self;
      [v7 enumerateObjectsUsingBlock:v8];

      v6 = v4;
    }
  }

  else
  {

    v6 = 0;
  }
}

void __56__WFDialogTransformer_cleanupListDialogRequestIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 chooseFromListDataStore];
  v4 = [v3 identifier];

  [v5 removeContentItemWithIdentifier:v4];
}

- (void)prepareListDialogRequestIfNeeded:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (!v8)
  {
    v10 = 0;
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    v10 = v8;
    goto LABEL_8;
  }

  if ([(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    v9 = v8;
    if (![(WFDialogTransformer *)self isRunningFromSpotlight])
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v10 = [(WFDialogTransformer *)self runningContext];
  if (![v10 shouldForwardDialogRequests])
  {
    v9 = v8;
    goto LABEL_8;
  }

  v11 = [(WFDialogTransformer *)self isRunningFromSpotlight];

  v9 = v8;
  if (!v11)
  {
LABEL_13:
    v12 = [v8 items];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke;
    v17[3] = &unk_1E83770F0;
    v17[4] = self;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke_3;
    v13[3] = &unk_1E837E9D0;
    v9 = v8;
    v14 = v9;
    v15 = self;
    v16 = v7;
    [v12 if_mapAsynchronously:v17 completionHandler:v13];

    goto LABEL_10;
  }

LABEL_9:
  (*(v7 + 2))(v7, v8);
LABEL_10:
}

void __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 contentItem];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke_2;
    v10[3] = &unk_1E83770C8;
    v10[4] = *(a1 + 32);
    v11 = v8;
    v12 = v11;
    v13 = v7;
    [v9 encodedTypedValueWithCompletion:v10];
  }

  else
  {

    (*(v7 + 2))(v7, v8, 0);
  }
}

void __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E09C8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) allowsMultipleSelection];
  v7 = [*(a1 + 32) message];
  v8 = [*(a1 + 32) attribution];
  v9 = [*(a1 + 32) prompt];
  v10 = [*(a1 + 32) doneButton];
  v11 = [*(a1 + 32) parameterKey];
  v15 = [v5 initWithItems:v4 allowsMultipleSelection:v6 message:v7 attribution:v8 prompt:v9 done:v10 parameterKey:v11];

  v12 = [*(a1 + 32) linkDialog];
  [v15 setLinkDialog:v12];

  v13 = [*(a1 + 40) chooseFromListDataStore];
  v14 = [v13 endpoint];
  [v15 setDataStoreEndpoint:v14];

  (*(*(a1 + 48) + 16))();
}

void __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chooseFromListDataStore];
  v6 = [*(a1 + 40) contentItem];
  v7 = [*(a1 + 48) identifier];
  [v5 addContentItem:v6 withIdentifier:v7];

  v8 = objc_alloc(MEMORY[0x1E69E0AA8]);
  v9 = [*(a1 + 40) title];
  v10 = [*(a1 + 40) subtitle];
  v11 = [*(a1 + 40) identifier];
  v12 = [*(a1 + 40) image];
  v13 = [*(a1 + 40) selected];
  v14 = [*(a1 + 40) hideSubtitle];
  v15 = [*(a1 + 40) serializedPossibleState];
  v16 = [v8 initWithTitle:v9 subtitle:v10 identifier:v11 image:v12 selected:v13 hideSubtitle:v14 encodedTypedValue:v4 serializedPossibleState:v15];

  (*(*(a1 + 56) + 16))();
}

- (void)handleUIRequestResponse:(id)a3 error:(id)a4 forRequest:(id)a5 shouldFailoverToLocalUI:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v32[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = v15;
  if (v12)
  {
    v17 = [v12 responseCode];
    if (v17 > 3)
    {
      if (v17 != 4)
      {
        if (v17 != 6)
        {
LABEL_27:
          (v16)[2](v16, v12, 0);
          v29 = [(WFDialogTransformer *)self delegate];
          [v29 dialogTransformerDidDisplayDialog:self];

          goto LABEL_28;
        }

        if (v8)
        {
          goto LABEL_14;
        }

LABEL_21:
        v23 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E69E12F8];
        v31 = *MEMORY[0x1E696A578];
        v32[0] = @"ToolKit client implementation did not implement a ToolDialogHandler and dropped an incoming dialog request on the floor. This is not a ToolKit bug and should be resolved on the client side.";
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v26 = [v23 errorWithDomain:v24 code:1 userInfo:v25];
        [(WFDialogTransformer *)self stopWithError:v26];

        goto LABEL_22;
      }
    }

    else
    {
      if (v17 != 1)
      {
        if (v17 != 2)
        {
          goto LABEL_27;
        }

LABEL_22:
        if ([(WFDialogTransformer *)self isRunningWithToolKitClient]&& ![(WFDialogTransformer *)self isRunningFromSpotlight])
        {
          v27 = [MEMORY[0x1E696ABC0] wfCancelledStepError];
        }

        else
        {
          v27 = [MEMORY[0x1E696ABC0] userCancelledError];
        }

        v28 = v27;
        [(WFDialogTransformer *)self stopWithError:v27];

        goto LABEL_27;
      }

      if (!v13)
      {
        v18 = [(WFDialogTransformer *)self currentAction];
        v19 = [v18 localizedName];
        v20 = v19;
        if (!v19)
        {
          v20 = [(WFDialogTransformer *)self workflowName];
        }

        v21 = WFRunnerFailureErrorMessage(v20);
        [(WFDialogTransformer *)self stopWithError:v21];

        if (!v19)
        {
        }

        if (v8)
        {
          goto LABEL_14;
        }

LABEL_20:
        v22 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
        [(WFDialogTransformer *)self stopWithError:v22];

        goto LABEL_21;
      }

      [(WFDialogTransformer *)self stopWithError:v13];
    }

    if (v8)
    {
LABEL_14:
      [(WFDialogTransformer *)self showDialogRequest:v14 completionHandler:v16];
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  (*(v15 + 2))(v15, 0, v13);
LABEL_28:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)showDialogRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFDialogTransformer *)self userInterfacePresenter];

  if (v8)
  {
    v9 = [(WFDialogTransformer *)self runViewSource];
    [v6 setRunViewSource:v9];

    v10 = [(WFDialogTransformer *)self currentAction];
    [v6 setIsLastAction:{objc_msgSend(v10, "isLastAction")}];

    v11 = [(WFDialogTransformer *)self userInterfacePresenter];
    v12 = [(WFDialogTransformer *)self runningContext];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__WFDialogTransformer_showDialogRequest_completionHandler___block_invoke;
    v15[3] = &unk_1E83772C8;
    v15[4] = self;
    v16 = v6;
    v17 = v7;
    [v11 showDialogRequest:v16 runningContext:v12 completionHandler:v15];
  }

  else
  {
    if ([(WFDialogTransformer *)self allowsHandoff]|| [(WFDialogTransformer *)self presentationMode]!= 3)
    {
      v13 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] userCancelledError];
    }

    v14 = v13;
    [(WFDialogTransformer *)self stopWithError:v13];
  }
}

- (void)handleDialogRequest:(id)a3 completionHandler:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(WFDialogTransformer *)self setNumberOfDialogsPresented:[(WFDialogTransformer *)self numberOfDialogsPresented]+ 1];
  if (![(WFDialogTransformer *)self hasPresentedFirstDialog])
  {
    [(WFDialogTransformer *)self setHasPresentedFirstDialog:1];
    v8 = [(WFDialogTransformer *)self workflowStartTime];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 < -15.0)
    {
      v6 = v6;
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v6 textFieldConfiguration];
          v12 = [v11 copy];

          [v12 setFocusImmediatelyWhenPresented:0];
          v13 = objc_alloc(MEMORY[0x1E69E0B80]);
          v14 = [v6 message];
          v15 = [v6 attribution];
          v16 = [v6 prompt];
          v17 = [v6 parameterKey];
          v18 = [v13 initWithTextFieldConfiguration:v12 message:v14 attribution:v15 prompt:v16 parameterKey:v17];

          v19 = v18;
          v20 = v19;
          v21 = v20;
          if (!v20)
          {
            v6 = 0;
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {

          v20 = v6;
          v21 = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [v20 requestBySettingFocusImmediatelyWhenPresented:0];
        }

        else
        {
          v6 = v20;
        }

        goto LABEL_12;
      }

      v20 = 0;
      v21 = 0;
      goto LABEL_12;
    }
  }

LABEL_13:
  v22 = [(WFDialogTransformer *)self delegate];
  [v22 dialogTransformerWillDisplayDialog:self];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v24 = [(WFDialogTransformer *)self runningContext];
  if ([v24 shouldForwardDialogRequests])
  {

LABEL_16:
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke;
    v41[3] = &unk_1E8377078;
    v41[4] = self;
    v42 = v7;
    [(WFDialogTransformer *)self prepareListDialogRequestIfNeeded:v6 completionHandler:v41];
    v26 = v42;
LABEL_17:

    goto LABEL_18;
  }

  v25 = [(WFDialogTransformer *)self isRunningWithToolKitClient];

  if (v25)
  {
    goto LABEL_16;
  }

  if (isKindOfClass)
  {
    v28 = [objc_alloc(MEMORY[0x1E69E0AB8]) initWithCancelled:0];
    (*(v7 + 2))(v7, v28, 0);

    goto LABEL_18;
  }

  if (![(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    [(WFDialogTransformer *)self showDialogRequest:v6 completionHandler:v7];
    goto LABEL_18;
  }

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = [v29 setWithObjects:{v30, v31, v32, v33, v34, objc_opt_class(), 0}];
  LOBYTE(v30) = [v35 containsObject:objc_opt_class()];

  if (v30)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke_227;
    v39[3] = &unk_1E8377078;
    v39[4] = self;
    v40 = v7;
    [(WFDialogTransformer *)self prepareListDialogRequestIfNeeded:v6 completionHandler:v39];
    v26 = v40;
    goto LABEL_17;
  }

  v36 = getWFDialogLogObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v44 = "[WFDialogTransformer handleDialogRequest:completionHandler:]";
    v45 = 2112;
    v46 = objc_opt_class();
    v37 = v46;
    _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_ERROR, "%s Unsupported dialog request of type %@ sent to Siri, punching to Shortcuts Jr", buf, 0x16u);
  }

  v38 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
  [(WFDialogTransformer *)self stopWithError:v38];

LABEL_18:
  v27 = *MEMORY[0x1E69E9840];
}

void __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) externalUIPresenter];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke_2;
  v7[3] = &unk_1E8377050;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performDialogRequest:v6 completionHandler:v7];
}

void __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke_227(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E69E0CA8]) initWithDialogRequest:v3];
  v5 = [*(a1 + 32) externalUIPresenter];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke_2_229;
  v9[3] = &unk_1E83770A0;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v12 = v6;
  v7 = v4;
  v8 = v3;
  [v5 performSiriRequest:v7 completionHandler:v9];
}

void __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke_2_229(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) cleanupListDialogRequestIfNeeded:*(a1 + 40)];
  v4 = v3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = *(a1 + 32);
    v6 = [v4 dialogResponse];
    v7 = [*(a1 + 48) dialogRequest];
    [v5 handleUIRequestResponse:v6 error:0 forRequest:v7 shouldFailoverToLocalUI:1 completionHandler:*(a1 + 56)];

    v8 = v4;
  }

  else
  {

    v9 = getWFDialogLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315394;
      v14 = "[WFDialogTransformer handleDialogRequest:completionHandler:]_block_invoke_2";
      v15 = 2112;
      v16 = objc_opt_class();
      v10 = v16;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", &v13, 0x16u);
    }

    v11 = *(a1 + 32);
    v8 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    [v11 stopWithError:v8];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRunningFromSpotlight
{
  if ([MEMORY[0x1E695E000] forceSpotlightRunSource])
  {
    return 1;
  }

  v4 = [(WFDialogTransformer *)self runSource];
  v5 = *MEMORY[0x1E69E1410];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    if (v6 && v7)
    {
      v3 = [v6 isEqualToString:v7];
    }
  }

  return v3;
}

- (id)attributionIcon
{
  v2 = [(WFDialogTransformer *)self workflow];
  v3 = [v2 attributionIcon];

  return v3;
}

- (id)attributionTitle
{
  v2 = [(WFDialogTransformer *)self workflow];
  v3 = [v2 attributionTitle];

  return v3;
}

- (id)workflowName
{
  v2 = [(WFDialogTransformer *)self workflow];
  v3 = [v2 name];

  return v3;
}

- (id)privacyAttribution
{
  v2 = WFLocalizedString(@"Privacy");
  v3 = MEMORY[0x1E69E0B58];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v3 imageNamed:@"Privacy" inBundle:v4];

  v6 = MEMORY[0x1E69E0A98];
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E69E0B60]) initWithImage:v5];
    v8 = [v6 attributionWithTitle:v2 icon:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E69E0A98] attributionWithTitle:v2 icon:0];
  }

  return v8;
}

- (id)standaloneActionAttribution
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(WFDialogTransformer *)self workflow];
  v4 = [(WFDialogTransformer *)self currentAction];
  v5 = [v3 icon];
  v6 = *MEMORY[0x1E69E0FB0];
  if (v4)
  {
    v7 = [v4 localizedAppName];
    v8 = [v4 icon];
    v9 = [v4 appBundleIdentifier];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    v12 = v11;

    v6 = v12;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v13 = [(WFDialogTransformer *)self currentAction];
  v14 = [v13 identifier];

  if (v14)
  {
    v15 = [MEMORY[0x1E69E0D70] symbolIconForActionIdentifier:v14 bundleIdentifier:v6];
    v16 = v15;
    if (v15)
    {
      v17 = v15;

      v8 = v17;
    }

    v18 = v14;
    if (v18 == @"is.workflow.actions.runworkflow" || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"is.workflow.actions.runworkflow"], v19, v20))
    {
      v21 = [(WFDialogTransformer *)self currentAction];
      v36 = v5;
      if (v21)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      v37 = 0;
      v24 = [v23 getWorkflowWithError:&v37];

      v25 = v37;
      v35 = v25;
      if (v24)
      {
        v26 = [v3 attributionTitle];

        v27 = [v3 attributionIcon];

        [v3 resolvedAssociatedAppBundleIdentifier];
        v6 = v28 = v6;
        v8 = v27;
        v7 = v26;
      }

      else
      {
        v29 = v25;
        v28 = getWFDialogLogObject();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v39 = "[WFDialogTransformer standaloneActionAttribution]";
          v40 = 2112;
          v41 = v29;
          _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_ERROR, "%s Failed to get attribution for run workflowaction %@", buf, 0x16u);
        }
      }

      v5 = v36;
    }
  }

  if (v8)
  {
    if (v7)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v33 = [(WFDialogTransformer *)self shortcutsAppAttribution];
    v8 = [v33 icon];

    if (v7)
    {
      goto LABEL_24;
    }
  }

  v34 = [(WFDialogTransformer *)self shortcutsAppAttribution];
  v7 = [v34 title];

LABEL_24:
  v30 = [objc_alloc(MEMORY[0x1E69E0A98]) initWithTitle:v7 icon:v8 workflowIcon:v5 appBundleIdentifier:v6];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)attributionAllowingAction:(BOOL)a3
{
  v4 = a3;
  v6 = [(WFDialogTransformer *)self workflow];
  v7 = [v6 icon];
  v8 = *MEMORY[0x1E69E0FB0];
  v9 = [(WFDialogTransformer *)self currentAction];
  v10 = v9;
  if (v4 && v9 && [v9 prefersActionAttribution])
  {
    v11 = [v10 localizedAppName];
    v12 = [v10 icon];
    v13 = [v10 appBundleIdentifier];
LABEL_7:
    v52 = v13;

    goto LABEL_9;
  }

  if (v6)
  {
    v11 = [v6 attributionTitle];
    v12 = [v6 attributionIcon];
    v13 = [v6 resolvedAssociatedAppBundleIdentifier];
    goto LABEL_7;
  }

  v12 = 0;
  v11 = 0;
  v52 = v8;
LABEL_9:
  v14 = [v6 name];
  v51 = v10;
  if ([v14 length])
  {
    goto LABEL_15;
  }

  v15 = [v6 actions];
  if ([v15 count] != 1)
  {
LABEL_14:

    goto LABEL_15;
  }

  v3 = [v6 associatedAppBundleIdentifier];
  v16 = [v3 length];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69635F8]);
    v18 = [v6 associatedAppBundleIdentifier];
    v14 = [v17 initWithBundleIdentifier:v18 allowPlaceholder:0 error:0];

    if (v14)
    {
      [v14 localizedName];
      v11 = v15 = v11;
      goto LABEL_14;
    }

LABEL_15:
  }

  v19 = [(WFDialogTransformer *)self runSource];
  v20 = [v19 isEqualToString:*MEMORY[0x1E69E1398]];

  if (v20)
  {
    v21 = [MEMORY[0x1E69E0A90] currentDevice];
    v22 = [v21 hasSystemAperture];

    if ((v22 & 1) == 0)
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = WFLocalizedString(@"%@ │ Shortcuts");
      v25 = [v23 localizedStringWithFormat:v24, v11];

      v11 = v25;
    }
  }

  if ([v6 hiddenFromLibraryAndSync])
  {
    v26 = WFLocalizedString(@"Shortcuts");

    v11 = v26;
  }

  if (!v52)
  {
    v52 = v8;
  }

  v27 = [v6 workflowID];
  if (v27 || ([v6 actions], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "count") != 1))
  {
    v31 = [(WFDialogTransformer *)self currentAction];
    v30 = [v31 identifier];

    if (v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v28 = [v6 actions];
    v29 = [v28 firstObject];
    v30 = [v29 identifier];
  }

LABEL_28:
  v32 = [MEMORY[0x1E69E0D70] symbolIconForActionIdentifier:v30 bundleIdentifier:v52];
  v33 = v32;
  if (v32)
  {
    v34 = v32;

    v12 = v34;
  }

  v35 = [(WFDialogTransformer *)self runningContext];
  v36 = [v35 runSource];
  if ([v36 isEqualToString:*MEMORY[0x1E69E1368]])
  {
    v50 = v7;
    v37 = [v6 icon];
    v38 = [v37 symbolOverride];

    if (!v38)
    {
      v7 = v50;
      v42 = v51;
      if (v12)
      {
        goto LABEL_39;
      }

LABEL_43:
      v48 = [(WFDialogTransformer *)self shortcutsAppAttribution];
      v12 = [v48 icon];

      if (v11)
      {
        goto LABEL_40;
      }

      goto LABEL_44;
    }

    v39 = [MEMORY[0x1E69E09E0] tintColorForBundleIdentifier:v52];
    v40 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = [MEMORY[0x1E69E09E0] whiteColor];
    }

    v35 = v41;

    v43 = objc_alloc(MEMORY[0x1E69E0D70]);
    v36 = [v6 icon];
    v44 = [v36 symbolOverride];
    v45 = [v43 initWithSymbolName:v44 symbolColor:v35];

    v12 = v45;
    v7 = v50;
  }

  v42 = v51;

  if (!v12)
  {
    goto LABEL_43;
  }

LABEL_39:
  if (v11)
  {
    goto LABEL_40;
  }

LABEL_44:
  v49 = [(WFDialogTransformer *)self shortcutsAppAttribution];
  v11 = [v49 title];

LABEL_40:
  v46 = [objc_alloc(MEMORY[0x1E69E0A98]) initWithTitle:v11 icon:v12 workflowIcon:v7 appBundleIdentifier:v52];

  return v46;
}

- (void)stopWithError:(id)a3
{
  v7 = a3;
  if ([v7 wf_isUnsupportedUserInterfaceError] && (-[WFDialogTransformer currentAction](self, "currentAction"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isRunning"), v4, v5))
  {
    v6 = [(WFDialogTransformer *)self currentAction];
    [v6 finishRunningWithError:v7];
  }

  else
  {
    v6 = [(WFDialogTransformer *)self delegate];
    [v6 dialogTransformer:self stopRunningWithError:v7];
  }
}

- (WFDialogTransformer)initWithWorkflow:(id)a3 userInterfacePresenter:(id)a4 runSource:(id)a5 runningContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = WFDialogTransformer;
  v15 = [(WFDialogTransformer *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workflow, a3);
    objc_storeStrong(&v16->_userInterfacePresenter, a4);
    objc_storeStrong(&v16->_runSource, a5);
    objc_storeStrong(&v16->_runningContext, a6);
    v16->_allowsHandoff = 0;
    v16->_presentationMode = 0;
    v16->_numberOfDialogsPresented = 0;
    v17 = objc_alloc_init(WFChooseFromListDataStore);
    chooseFromListDataStore = v16->_chooseFromListDataStore;
    v16->_chooseFromListDataStore = v17;

    v16->_hasPresentedFirstDialog = 0;
    v19 = v16;
  }

  return v16;
}

@end