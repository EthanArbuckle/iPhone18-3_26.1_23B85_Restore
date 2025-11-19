@interface WFBackgroundShortcutRunner
- (BOOL)allowIncomingRunRequest:(id)a3 withDescriptor:(id)a4 accessSpecifier:(id)a5 record:(id)a6;
- (BOOL)forcePersistentModeWhileStepping;
- (BOOL)initializeSharedTemporaryDirectoryLock;
- (BOOL)isRunningWithExternalUI;
- (BOOL)isRunningWithSiriUI;
- (BOOL)isRunningWithToolKitClient;
- (BOOL)isStepwiseExecution;
- (BOOL)isTesting;
- (BOOL)launchAppToContinueFromState:(id)a3 runSource:(id)a4 withCompletion:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)performSiriRequest:(id)a3 completionHandler:(id)a4;
- (BOOL)progressIsPersistentInSystemAperture;
- (BOOL)runRequestIsContextualAction;
- (BOOL)runRequestOriginatedFromLocalSiri;
- (BOOL)shortcutShouldShowRunningProgress;
- (BOOL)shouldNotHandoff;
- (BOOL)workflowController:(id)a3 handleUnsupportedEnvironmentForAction:(id)a4 currentState:(id)a5 completionHandler:(id)a6;
- (BOOL)workflowController:(id)a3 handleUnsupportedUserInterfaceForAction:(id)a4 currentState:(id)a5 completionHandler:(id)a6;
- (NSArray)airPlayRouteIDs;
- (WFAssessmentModeManager)assessmentModeManager;
- (WFBackgroundShortcutRunner)initWithProcessPolicy:(unint64_t)a3;
- (WFDialogTransformer)dialogTransformer;
- (WFHarnessTestCase)currentTestCase;
- (WFRemoteExecutionCoordinator)remoteExecutionCoordinator;
- (WFRemoteExecutionFileCoordinator)fileCoordinator;
- (id)assessmentModeActiveError;
- (id)contextForAction:(id)a3;
- (id)createTestSiriUIPresenterInterfaceForTestCase:(id)a3;
- (id)createTestUIPresenterInterfaceForTestCase:(id)a3;
- (id)metricsRunSourceFromEnvironment:(int64_t)a3 runSource:(id)a4;
- (id)queue_runningProgressSuppressionStateMachine;
- (id)remoteDialogPresenterEndpointForController:(id)a3;
- (id)siriOptions;
- (id)testingHarnessErrorForWorkflowFinishedError:(id)a3;
- (id)workflowController:(id)a3 actionReversalStateForAction:(id)a4;
- (id)workflowForTesting;
- (int64_t)executionContext;
- (void)action:(id)a3 provideInputForParameters:(id)a4 withDefaultStates:(id)a5 prompts:(id)a6 completionHandler:(id)a7;
- (void)applicationWillLaunchInForeground;
- (void)assessmentModeManagerDidBecomeActive:(id)a3;
- (void)beginPersistentModeIfNeededWithRunningContext:(id)a3 action:(id)a4 attributionBehavior:(int64_t)a5;
- (void)callWorkflowRunningCompletionBlockWithResult:(id)a3;
- (void)computeFinderResizedSizesForImages:(id)a3 inSizes:(id)a4 completion:(id)a5;
- (void)configureIntent:(id)a3;
- (void)demoteSharedTemporaryDirectoryLock;
- (void)didFinishActionWithIdentifier:(id)a3;
- (void)didStartActionWithIdentifier:(id)a3;
- (void)dismissPresentedContentWithCompletionHandler:(id)a3;
- (void)evaluateRemoteQuarantinePolicyForWorkflow:(id)a3 workflowReference:(id)a4 withCompletionHandler:(id)a5;
- (void)extractVariableContentFromEncodedReference:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5;
- (void)fetchAvailableParameterStatesForEncodedValueSetDefinition:(id)a3 searchTerm:(id)a4 forEncodedToolInvocation:(id)a5 completionHandler:(id)a6;
- (void)fetchDisplayValueForRequest:(id)a3 completionHandler:(id)a4;
- (void)fetchToolInvocationSummaryForInvocation:(id)a3 fetchingDefaultValues:(BOOL)a4 completionHandler:(id)a5;
- (void)filterContextualActions:(id)a3 forContext:(id)a4 completion:(id)a5;
- (void)finishRunningWithResult:(id)a3;
- (void)getContextualActionsForContext:(id)a3 completion:(id)a4;
- (void)getCurrentProgressCompletedWithCompletionHandler:(id)a3;
- (void)handleAppProtectionRequestWithBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)handleIncomingFileForRemoteExecutionWithURL:(id)a3 withIdentifier:(id)a4;
- (void)handleTestingEventIfTesting:(id)a3 completionHandler:(id)a4;
- (void)injectContentAsVariable:(id)a3 completionHandler:(id)a4;
- (void)openURL:(id)a3 withBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)pauseWorkflowAndWriteStateToDisk:(id)a3;
- (void)performQuery:(id)a3 inValueSet:(id)a4 toolInvocation:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)performWithHost:(id)a3;
- (void)performWithRunningProgressSuppressionStateMachine:(id)a3;
- (void)prepareForSteppingInPersistentModeWithAction:(id)a3;
- (void)presentAlert:(id)a3;
- (void)presentAlertWithSmartPromptConfiguration:(id)a3 completionHandler:(id)a4;
- (void)presenterRequestedUpdatedRunViewSource:(id)a3 completionHandler:(id)a4;
- (void)presenterRequestedWorkflowPauseForContext:(id)a3 dialogRequest:(id)a4;
- (void)prewarmRunnerWithCompletion:(id)a3;
- (void)reindexToolKitDatabaseWithRequest:(id)a3 completionHandler:(id)a4;
- (void)requestActionInterfacePresentationForActionClassName:(id)a3 classNamesByType:(id)a4 completionHandler:(id)a5;
- (void)requestAuthorizationWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)requestFileAccessForURLs:(id)a3 workflowName:(id)a4 workflowID:(id)a5 completionHandler:(id)a6;
- (void)resolveContent:(id)a3 completionHandler:(id)a4;
- (void)resolveDeferredValueFromEncodedStorage:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5;
- (void)resolveDescriptor:(id)a3 completionHandler:(id)a4;
- (void)resumeRunningFromContext:(id)a3 withRequest:(id)a4 completion:(id)a5;
- (void)runActionFromRunRequestData:(id)a3 runningContext:(id)a4 completion:(id)a5;
- (void)runToolWithInvocation:(id)a3;
- (void)runWorkflowWithDescriptor:(id)a3 request:(id)a4 inEnvironment:(id)a5 runningContext:(id)a6 completion:(id)a7;
- (void)runnerStateMachine:(id)a3 didFinishRunningShortcutWithResult:(id)a4;
- (void)runnerStateMachine:(id)a3 didRequestStoppingShortcutWithError:(id)a4;
- (void)runnerStateMachineDidRequestProcessExit:(id)a3;
- (void)runningProgressSuppressionStateMachine:(id)a3 didDecideRunningProgressIsAllowed:(BOOL)a4 dialogAttribution:(id)a5;
- (void)sendDialogRequestForParameter:(id)a3 action:(id)a4 dialogRequest:(id)a5 completion:(id)a6;
- (void)sendRemoteAskWhenRunRequestWithParameters:(id)a3 action:(id)a4 completion:(id)a5;
- (void)sendResponseForRunRequest:(id)a3 controller:(id)a4 error:(id)a5 completion:(id)a6;
- (void)shouldRunFollowUpActionWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4 parameterValues:(id)a5 encodedToolInvocation:(id)a6 showOutputActionOptions:(unint64_t)a7 completionHandler:(id)a8;
- (void)showChronoControlOfType:(unint64_t)a3 identity:(id)a4 completionHandler:(id)a5;
- (void)showHandleInteraction:(id)a3 prompt:(id)a4 completionHandler:(id)a5;
- (void)showLinkActionConfirmationWithActionMetadata:(id)a3 showPrompt:(BOOL)a4 dialog:(id)a5 dialogString:(id)a6 viewSnippet:(id)a7 snippetAction:(id)a8 encodedSnippetActionToolInvocation:(id)a9 confirmationActionName:(id)a10 isContinueInAppRequest:(BOOL)a11 systemStyle:(id)a12 completionHandler:(id)a13;
- (void)showLinkChoice:(id)a3 dialog:(id)a4 completionHandler:(id)a5;
- (void)showLinkParameterConfirmationWithActionMetadata:(id)a3 dialog:(id)a4 dialogString:(id)a5 viewSnippet:(id)a6 parameterValue:(id)a7 completionHandler:(id)a8;
- (void)showLinkResult:(id)a3 dialog:(id)a4 encodedSnippetActionToolInvocation:(id)a5 completionHandler:(id)a6;
- (void)showPreviewForContentCollection:(id)a3 completionHandler:(id)a4;
- (void)showSnippetLinkAction:(id)a3 encodedSnippetActionToolInvocation:(id)a4 completionHandler:(id)a5;
- (void)startWorkflowExecution:(id)a3 workflowController:(id)a4 descriptor:(id)a5 workflowReference:(id)a6 database:(id)a7;
- (void)stepWithAction:(id)a3;
- (void)stopWithError:(id)a3;
- (void)synchronouslyPerformWithHost:(id)a3;
- (void)synchronouslyPerformWithRunningProgressSuppressionStateMachine:(id)a3;
- (void)transformAction:(id)a3 completionHandler:(id)a4;
- (void)unaliveProcess;
- (void)updateRunViewSource:(id)a3;
- (void)workflowController:(id)a3 actionDidRequestWorkflowExit:(id)a4;
- (void)workflowController:(id)a3 didFinishRunningWithError:(id)a4 cancelled:(BOOL)a5;
- (void)workflowController:(id)a3 didGenerateReversalState:(id)a4 forAction:(id)a5;
- (void)workflowController:(id)a3 didRunAction:(id)a4 error:(id)a5 completionHandler:(id)a6;
- (void)workflowController:(id)a3 handleTestingEvent:(id)a4 completionHandler:(id)a5;
- (void)workflowController:(id)a3 prepareToRunAction:(id)a4 withInput:(id)a5 completionHandler:(id)a6;
- (void)workflowController:(id)a3 requestToQuarantineWorkflow:(id)a4;
- (void)workflowControllerWillRun:(id)a3;
@end

@implementation WFBackgroundShortcutRunner

- (BOOL)initializeSharedTemporaryDirectoryLock
{
  v3 = WFBackgroundShortcutRunnerLockFileURL();
  self->_lockFileFD = open([v3 fileSystemRepresentation], 532, 438);

  return flock([(WFBackgroundShortcutRunner *)self lockFileFD], 6) == 0;
}

- (void)demoteSharedTemporaryDirectoryLock
{
  v2 = [(WFBackgroundShortcutRunner *)self lockFileFD];

  flock(v2, 5);
}

- (WFDialogTransformer)dialogTransformer
{
  dialogTransformer = self->_dialogTransformer;
  if (dialogTransformer)
  {
    goto LABEL_26;
  }

  v4 = [(WFBackgroundShortcutRunner *)self currentTestCase];

  if (!v4)
  {
    v16 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
    v17 = [v16 remoteDialogPresenterEndpoint];

    if (!v17)
    {
      v26 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
      v27 = [v26 presentationMode];

      if (v27 == 3)
      {
        v12 = 0;
        goto LABEL_5;
      }

      v15 = +[WFUIPresenter defaultPresenter];
      [(WFUIPresenter *)v15 setDelegate:self];
LABEL_22:
      v12 = 0;
      goto LABEL_23;
    }

    v18 = [(WFBackgroundShortcutRunner *)self siriOptions];

    if (v18)
    {
      v19 = [(WFBackgroundShortcutRunner *)self siriOptions];
      LODWORD(v18) = [v19 disableSiriBehavior];

      v20 = [(WFBackgroundShortcutRunner *)self siriOptions];
      v21 = [v20 disableSiriBehavior] ^ 1;
    }

    else
    {
      v20 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
      v21 = [v20 handlesDialogRequests];
    }

    if ([(WFBackgroundShortcutRunner *)self forcePersistentModeWhileStepping])
    {
      v28 = +[WFUIPresenter defaultPresenter];
      [(WFUIPresenter *)v28 setDelegate:self];
      if (!v18)
      {
LABEL_15:
        if (!v21)
        {
          v33 = [WFUIPresenterXPCConnection alloc];
          v34 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
          v35 = [v34 remoteDialogPresenterEndpoint];
          v36 = [(WFUIPresenterXPCConnection *)v33 initWithEndpoint:v35];

          v15 = [[WFUIPresenter alloc] initWithConnection:v36];
          goto LABEL_22;
        }

        v15 = v28;
        goto LABEL_19;
      }
    }

    else
    {
      v28 = 0;
      if (!v18)
      {
        goto LABEL_15;
      }
    }

    v15 = +[WFUIPresenter defaultPresenter];

    [(WFUIPresenter *)v15 setDelegate:self];
    if ((v21 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v29 = objc_alloc(MEMORY[0x1E69E0AF0]);
    v30 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
    v31 = [v30 remoteDialogPresenterEndpoint];
    v32 = [v29 initWithEndpoint:v31];

    v12 = [objc_alloc(MEMORY[0x1E69E0AE8]) initWithConnection:v32];
    goto LABEL_23;
  }

  v5 = [(WFBackgroundShortcutRunner *)self currentTestCase];
  v6 = [v5 siriInteractions];
  v7 = [v6 count];

  if (!v7)
  {
    v22 = [WFUIPresenterLocalConnection alloc];
    v23 = [(WFBackgroundShortcutRunner *)self currentTestCase];
    v24 = [(WFBackgroundShortcutRunner *)self createTestUIPresenterInterfaceForTestCase:v23];
    v25 = [(WFUIPresenterLocalConnection *)v22 initWithPresenter:v24];

    v15 = [[WFUIPresenter alloc] initWithConnection:v25];
    goto LABEL_22;
  }

  v8 = objc_alloc(MEMORY[0x1E69E0D20]);
  v9 = [(WFBackgroundShortcutRunner *)self currentTestCase];
  v10 = [(WFBackgroundShortcutRunner *)self createTestSiriUIPresenterInterfaceForTestCase:v9];
  v11 = [v8 initWithPresenter:v10];

  v12 = [objc_alloc(MEMORY[0x1E69E0AE8]) initWithConnection:v11];
  v13 = [(WFBackgroundShortcutRunner *)self workflowController];
  v14 = [v13 runningContext];
  [v14 setShouldForwardSiriActionRequests:1];

LABEL_5:
  v15 = 0;
LABEL_23:
  v37 = [WFDialogTransformer alloc];
  v38 = [(WFBackgroundShortcutRunner *)self workflowController];
  v39 = [v38 workflow];
  v40 = [(WFBackgroundShortcutRunner *)self workflowController];
  v41 = [v40 runSource];
  v42 = [(WFBackgroundShortcutRunner *)self workflowController];
  v43 = [v42 runningContext];
  v44 = [(WFDialogTransformer *)v37 initWithWorkflow:v39 userInterfacePresenter:v15 runSource:v41 runningContext:v43];
  v45 = self->_dialogTransformer;
  self->_dialogTransformer = v44;

  v46 = [(WFBackgroundShortcutRunner *)self workflowController];
  [(WFDialogTransformer *)self->_dialogTransformer setDelegate:v46];

  [(WFDialogTransformer *)self->_dialogTransformer setExternalUIPresenter:v12];
  v47 = [(WFBackgroundShortcutRunner *)self workflowController];
  v48 = [v47 runViewSource];
  [(WFDialogTransformer *)self->_dialogTransformer setRunViewSource:v48];

  v49 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  -[WFDialogTransformer setAllowsHandoff:](self->_dialogTransformer, "setAllowsHandoff:", [v49 allowsHandoff]);

  v50 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  -[WFDialogTransformer setPresentationMode:](self->_dialogTransformer, "setPresentationMode:", [v50 presentationMode]);

  v51 = [(WFBackgroundShortcutRunner *)self siriOptions];
  if (v51)
  {
    [(WFDialogTransformer *)self->_dialogTransformer setSiriOptions:v51];
  }

  dialogTransformer = self->_dialogTransformer;
LABEL_26:

  return dialogTransformer;
}

- (BOOL)forcePersistentModeWhileStepping
{
  if (([MEMORY[0x1E695E000] forceSpotlightRunSource] & 1) == 0)
  {
    v4 = [(WFBackgroundShortcutRunner *)self workflowController];
    v5 = [v4 runSource];
    v6 = *MEMORY[0x1E69E1410];
    v7 = v5;
    v8 = v7;
    if (v7 == v6)
    {
      v3 = 1;
      v10 = v7;
    }

    else
    {
      if (v7 && v6)
      {
        v9 = [v7 isEqualToString:v6];

        if (v9)
        {
          v3 = 1;
LABEL_17:

          return v3;
        }
      }

      else
      {
      }

      v10 = [(WFBackgroundShortcutRunner *)self workflowController];
      v11 = [v10 runSource];
      v12 = *MEMORY[0x1E69E13B8];
      v13 = v11;
      v14 = v12;
      v15 = v14;
      if (v13 == v14)
      {
        v3 = 1;
      }

      else
      {
        v3 = 0;
        if (v13 && v14)
        {
          v3 = [v13 isEqualToString:v14];
        }
      }
    }

    goto LABEL_17;
  }

  return 1;
}

- (void)unaliveProcess
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[WFBackgroundShortcutRunner unaliveProcess]";
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEBUG, "%s Waiting for exit tasks before exiting.", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__WFBackgroundShortcutRunner_unaliveProcess__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  exitTaskGroup = self->_exitTaskGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__WFBackgroundShortcutRunner_unaliveProcess__block_invoke_350;
  block[3] = &unk_1E837F4E8;
  v6 = v4;
  v14 = v6;
  v7 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(exitTaskGroup, MEMORY[0x1E69E96A0], block);
  v8 = dispatch_time(0, 20000000000);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__WFBackgroundShortcutRunner_unaliveProcess__block_invoke_351;
  v11[3] = &unk_1E837F4E8;
  v12 = v6;
  v9 = v6;
  dispatch_after(v8, v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __44__WFBackgroundShortcutRunner_unaliveProcess__block_invoke_350(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[WFBackgroundShortcutRunner unaliveProcess]_block_invoke";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_DEBUG, "%s Finished exit tasks. Preparing to exit.", &v5, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __44__WFBackgroundShortcutRunner_unaliveProcess__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) promoteSharedTemporaryDirectoryLock])
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = WFBackgroundShortcutRunnerLockFileURL();
    v11 = 0;
    v4 = [v2 removeItemAtURL:v3 error:&v11];
    v5 = v11;

    if ((v4 & 1) == 0)
    {
      v6 = getWFXPCRunnerLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[WFBackgroundShortcutRunner unaliveProcess]_block_invoke";
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Failed to delete the BackgroundShortcutRunner lock file: %@", buf, 0x16u);
      }
    }
  }

  [MEMORY[0x1E69ACE40] invalidateAllConnections];
  close([*(a1 + 32) lockFileFD]);
  v7 = [*(a1 + 32) xpcConnection];
  [v7 invalidate];

  v8 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[WFBackgroundShortcutRunner unaliveProcess]_block_invoke";
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Dropping sandbox extensions to the data vault", buf, 0xCu);
  }

  v9 = [*(a1 + 32) dataVaultFileURLs];
  [v9 enumerateObjectsUsingBlock:&__block_literal_global_348];

  v10 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[WFBackgroundShortcutRunner unaliveProcess]_block_invoke_2";
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s Exiting process", buf, 0xCu);
  }

  exit(0);
}

void __44__WFBackgroundShortcutRunner_unaliveProcess__block_invoke_346(uint64_t a1, void *a2)
{
  v2 = [a2 url];
  [v2 stopAccessingSecurityScopedResource];
}

- (BOOL)shortcutShouldShowRunningProgress
{
  if ([(WFBackgroundShortcutRunner *)self environment]== 4)
  {
    return 0;
  }

  v3 = [(WFBackgroundShortcutRunner *)self currentRunRequest];

  if (!v3)
  {
    return 0;
  }

  v4 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  v5 = [v4 presentationMode];

  v6 = [MEMORY[0x1E69E0A90] currentDevice];
  v7 = [v6 hasSystemAperture];

  if (v7)
  {
    v8 = [(WFBackgroundShortcutRunner *)self currentRunningContext];
    if ([(WFBackgroundShortcutRunner *)self runRequestOriginatedFromLocalSiri])
    {
      v9 = 1;
LABEL_22:

      return v9;
    }

    v11 = [v8 automationType];

    if (v11)
    {
      v9 = 0;
      goto LABEL_22;
    }

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E13A0], *MEMORY[0x1E69E1418], *MEMORY[0x1E69E1408], 0}];
    v13 = [v8 runSource];
    if ([v13 length])
    {
      v14 = [v8 runSource];
      v15 = [v12 containsObject:v14];

      if (v15)
      {
        v9 = v5 == 1;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
    }

    v9 = v5 != 3 && v5 != 0;
    goto LABEL_21;
  }

  return v5 == 1;
}

- (BOOL)runRequestOriginatedFromLocalSiri
{
  v2 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 runSource];
    v4 = [v3 isEqualToString:*MEMORY[0x1E69E13E8]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)queue_runningProgressSuppressionStateMachine
{
  v3 = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_V2(v3);

  runningProgressSuppressionStateMachine = self->_runningProgressSuppressionStateMachine;

  return runningProgressSuppressionStateMachine;
}

- (BOOL)isStepwiseExecution
{
  v2 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  v3 = [v2 isStepwise];

  return v3;
}

- (id)siriOptions
{
  v2 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 options];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (WFHarnessTestCase)currentTestCase
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 testRunDescriptor];
    v9 = 0;
    v4 = [v3 loadTestCaseWithError:&v9];
    v5 = v9;

    if (!v4)
    {
      v6 = getWFTestHarnessLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[WFBackgroundShortcutRunner(TestHarness) currentTestCase]";
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Running in test harness, but can't load test case: %@", buf, 0x16u);
      }
    }
  }

  else
  {

    v4 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)testingHarnessErrorForWorkflowFinishedError:(id)a3
{
  v4 = a3;
  v5 = [(WFBackgroundShortcutRunner *)self currentTestCase];
  v6 = v5;
  if (!v4 && v5)
  {
    v7 = [v5 interactions];
    v8 = [v7 mutableCopy];

    v9 = [v6 handledInteractions];
    [v8 minusSet:v9];

    v10 = [v6 siriInteractions];
    v11 = [v10 mutableCopy];

    v12 = [v6 handledSiriInteractions];
    [v11 minusSet:v12];

    v13 = [v6 conditions];
    v14 = [v13 mutableCopy];

    v15 = [v6 handledConditions];
    [v14 minusSet:v15];

    if ([v8 count] || objc_msgSend(v11, "count") || objc_msgSend(v14, "count"))
    {
      v16 = [WFHarnessTestResult failureWithReason:@"Expected interaction or condition not handled."];
      v17 = [v16 errorRepresentation];

      goto LABEL_9;
    }
  }

  v17 = v4;
LABEL_9:

  return v17;
}

- (void)handleTestingEventIfTesting:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WFBackgroundShortcutRunner *)self isTesting])
  {
    v8 = [v6 action];
    v9 = [(WFBackgroundShortcutRunner *)self contextForAction:v8];

    v10 = [(WFBackgroundShortcutRunner *)self currentTestCase];
    v11 = [v10 conditions];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __89__WFBackgroundShortcutRunner_TestHarness__handleTestingEventIfTesting_completionHandler___block_invoke;
    v28[3] = &unk_1E8373888;
    v12 = v6;
    v29 = v12;
    v30 = v9;
    v13 = v9;
    v14 = [v11 if_compactMap:v28];

    v15 = [(WFBackgroundShortcutRunner *)self currentTestCase];
    v16 = [v15 handledConditions];
    [v16 unionSet:v14];

    v17 = [WFHarnessActionConditionContext alloc];
    v18 = [(WFBackgroundShortcutRunner *)self workflowController];
    v19 = [(WFHarnessActionConditionContext *)v17 initWithVariableDataSource:v18];

    v20 = [v14 allObjects];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __89__WFBackgroundShortcutRunner_TestHarness__handleTestingEventIfTesting_completionHandler___block_invoke_2;
    v25[3] = &unk_1E83738D8;
    v26 = v12;
    v27 = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __89__WFBackgroundShortcutRunner_TestHarness__handleTestingEventIfTesting_completionHandler___block_invoke_4;
    v22[3] = &unk_1E837EE60;
    v24 = v7;
    v23 = v26;
    v21 = v19;
    [v20 if_enumerateAsynchronously:v25 completionHandler:v22];
  }

  else
  {
    (*(v7 + 2))(v7, 1, 0);
  }
}

id __89__WFBackgroundShortcutRunner_TestHarness__handleTestingEventIfTesting_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  [v3 eventClass];
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 selector], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "matchesContext:", *(a1 + 40)), v5, v6))
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __89__WFBackgroundShortcutRunner_TestHarness__handleTestingEventIfTesting_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__WFBackgroundShortcutRunner_TestHarness__handleTestingEventIfTesting_completionHandler___block_invoke_3;
  v10[3] = &unk_1E83738B0;
  v11 = v6;
  v9 = v6;
  [a2 evaluateWithEvent:v8 context:v7 withResponse:v10];
}

void __89__WFBackgroundShortcutRunner_TestHarness__handleTestingEventIfTesting_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"WFHarnessTestErrorResult"];

    if (!v7)
    {
      v8 = getWFTestHarnessLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v12 = 136315138;
        v13 = "[WFBackgroundShortcutRunner(TestHarness) handleTestingEventIfTesting:completionHandler:]_block_invoke_4";
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Condition failed, but failure does not contain a test result", &v12, 0xCu);
      }

      v9 = [v5 localizedDescription];
      v7 = [WFHarnessTestResult failureWithReason:v9];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    objc_opt_class();
    objc_opt_isKindOfClass();
    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __89__WFBackgroundShortcutRunner_TestHarness__handleTestingEventIfTesting_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 errorRepresentation];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)isTesting
{
  v2 = [(WFBackgroundShortcutRunner *)self currentTestCase];
  v3 = v2 != 0;

  return v3;
}

- (id)contextForAction:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFBackgroundShortcutRunner+TestHarness.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v6 = [(WFBackgroundShortcutRunner *)self workflowForTesting];
  v7 = [v6 actions];
  v8 = [v7 indexOfObject:v5];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [(WFBackgroundShortcutRunner *)self workflowForTesting];
      *buf = 136315650;
      v18 = "[WFBackgroundShortcutRunner(TestHarness) contextForAction:]";
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Can't find executing action %@ in executing workflow %@", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    v12 = [WFHarnessActionContext alloc];
    v13 = [v5 identifier];
    v11 = [(WFHarnessActionContext *)v12 initWithIdentifier:v13 indexInWorkflow:v8];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)workflowForTesting
{
  v2 = [(WFBackgroundShortcutRunner *)self workflowController];
  v3 = [v2 workflow];

  return v3;
}

- (id)createTestSiriUIPresenterInterfaceForTestCase:(id)a3
{
  v4 = a3;
  v5 = [[WFTestUIPresenterInterface alloc] initWithTestCase:v4 backgroundRunner:self];

  return v5;
}

- (id)createTestUIPresenterInterfaceForTestCase:(id)a3
{
  v4 = a3;
  v5 = [[WFTestUIPresenterInterface alloc] initWithTestCase:v4 backgroundRunner:self];

  return v5;
}

- (void)reindexToolKitDatabaseWithRequest:(id)a3 completionHandler:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Unsupported runner type";
  v7 = MEMORY[0x1E695DF20];
  v8 = a4;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:94 userInfo:v9];
  (*(a4 + 2))(v8, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)runToolWithInvocation:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"WFBackgroundShortcutRunner.m" lineNumber:2463 description:@"-[WFBackgroundShortcutRunner runToolWithInvocation:] should be overridden by subclass"];
}

- (void)transformAction:(id)a3 completionHandler:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Unsupported runner type";
  v7 = MEMORY[0x1E695DF20];
  v8 = a4;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:94 userInfo:v9];
  (*(a4 + 2))(v8, 0, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchToolInvocationSummaryForInvocation:(id)a3 fetchingDefaultValues:(BOOL)a4 completionHandler:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A798];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = @"Unsupported runner type";
  v8 = MEMORY[0x1E695DF20];
  v9 = a5;
  v10 = [v8 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v6 errorWithDomain:v7 code:94 userInfo:v10];
  (*(a5 + 2))(v9, 0, v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)resolveDeferredValueFromEncodedStorage:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A798];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = @"Unsupported runner type";
  v8 = MEMORY[0x1E695DF20];
  v9 = a5;
  v10 = [v8 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v6 errorWithDomain:v7 code:94 userInfo:v10];
  (*(a5 + 2))(v9, 0, v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)fetchDisplayValueForRequest:(id)a3 completionHandler:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Unsupported runner type";
  v7 = MEMORY[0x1E695DF20];
  v8 = a4;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:94 userInfo:v9];
  (*(a4 + 2))(v8, 0, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)performQuery:(id)a3 inValueSet:(id)a4 toolInvocation:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A798];
  v15 = *MEMORY[0x1E696A578];
  v16[0] = @"Unsupported runner type";
  v10 = MEMORY[0x1E695DF20];
  v11 = a7;
  v12 = [v10 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = [v8 errorWithDomain:v9 code:94 userInfo:v12];
  (*(a7 + 2))(v11, 0, v13);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)resolveContent:(id)a3 completionHandler:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Unsupported runner type";
  v7 = MEMORY[0x1E695DF20];
  v8 = a4;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:94 userInfo:v9];
  (*(a4 + 2))(v8, 0, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)injectContentAsVariable:(id)a3 completionHandler:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Unsupported runner type";
  v7 = MEMORY[0x1E695DF20];
  v8 = a4;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:94 userInfo:v9];
  (*(a4 + 2))(v8, 0, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchAvailableParameterStatesForEncodedValueSetDefinition:(id)a3 searchTerm:(id)a4 forEncodedToolInvocation:(id)a5 completionHandler:(id)a6
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A798];
  v14 = *MEMORY[0x1E696A578];
  v15[0] = @"Unsupported runner type";
  v9 = MEMORY[0x1E695DF20];
  v10 = a6;
  v11 = [v9 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12 = [v7 errorWithDomain:v8 code:94 userInfo:v11];
  (*(a6 + 2))(v10, 0, v12);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)extractVariableContentFromEncodedReference:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A798];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = @"Unsupported runner type";
  v8 = MEMORY[0x1E695DF20];
  v9 = a5;
  v10 = [v8 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v6 errorWithDomain:v7 code:94 userInfo:v10];
  (*(a5 + 2))(v9, 0, v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (id)assessmentModeActiveError
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A798];
  v9 = *MEMORY[0x1E696A578];
  v4 = WFLocalizedString(@"A shortcut cannot be run while in Assessment Mode.");
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v2 errorWithDomain:v3 code:1 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)assessmentModeManagerDidBecomeActive:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[WFBackgroundShortcutRunner assessmentModeManagerDidBecomeActive:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Assessment Mode became active stopping workflow execution.", &v7, 0xCu);
  }

  v5 = [(WFBackgroundShortcutRunner *)self assessmentModeActiveError];
  [(WFBackgroundShortcutRunner *)self stopWithError:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (WFAssessmentModeManager)assessmentModeManager
{
  assessmentModeManager = self->_assessmentModeManager;
  if (!assessmentModeManager)
  {
    v4 = [WFAssessmentModeManager alloc];
    v5 = [(WFBackgroundShortcutRunner *)self queue];
    v6 = [(WFAssessmentModeManager *)v4 initWithQueue:v5 delegate:self];
    v7 = self->_assessmentModeManager;
    self->_assessmentModeManager = v6;

    assessmentModeManager = self->_assessmentModeManager;
  }

  return assessmentModeManager;
}

- (void)evaluateRemoteQuarantinePolicyForWorkflow:(id)a3 workflowReference:(id)a4 withCompletionHandler:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = getWFWorkflowExecutionLogObject();
  v12 = v11;
  if (v9)
  {
    v13 = os_signpost_id_generate(v11);

    v14 = getWFWorkflowExecutionLogObject();
    v15 = v14;
    v16 = v13 - 1;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "RemoteQuarantineEvaluation", "", buf, 2u);
    }

    v17 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v9 identifier];
      *buf = 136315394;
      v45 = "[WFBackgroundShortcutRunner evaluateRemoteQuarantinePolicyForWorkflow:workflowReference:withCompletionHandler:]";
      v46 = 2112;
      v47 = v18;
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Evaluating remote quarantine policy for workflow %@", buf, 0x16u);
    }

    v19 = +[WFRemoteQuarantinePolicyEvaluator sharedEvaluator];
    v20 = [v19 remoteQuarantineHashForWorkflowReference:v9];
    if ([v9 remoteQuarantineStatus] == 2)
    {
      v21 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v9 identifier];
        *buf = 136315394;
        v45 = "[WFBackgroundShortcutRunner evaluateRemoteQuarantinePolicyForWorkflow:workflowReference:withCompletionHandler:]";
        v46 = 2112;
        v47 = v22;
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_INFO, "%s Skipping remote quarantine policy evaluation for workflow %@, since it has been explicitly allowed by the user.", buf, 0x16u);
      }

      v23 = getWFWorkflowExecutionLogObject();
      v24 = v23;
      if (v16 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v23))
      {
        goto LABEL_23;
      }

      *buf = 0;
    }

    else
    {
      v25 = [v9 remoteQuarantineHash];
      v26 = [v25 isEqualToData:v20];

      v27 = getWFWorkflowExecutionLogObject();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
      if (!v26)
      {
        if (v28)
        {
          [v9 identifier];
          v31 = v39 = v8;
          v38 = [v9 remoteQuarantineHash];
          v32 = [v38 debugDescription];
          v33 = [v20 debugDescription];
          *buf = 136315906;
          v45 = "[WFBackgroundShortcutRunner evaluateRemoteQuarantinePolicyForWorkflow:workflowReference:withCompletionHandler:]";
          v46 = 2112;
          v47 = v31;
          v48 = 2112;
          v49 = v32;
          v50 = 2112;
          v51 = v33;
          _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_INFO, "%s Remote quarantine policy evaluation required for workflow %@: %@ != %@", buf, 0x2Au);

          v8 = v39;
        }

        v34 = [WFWorkflowRemoteQuarantineRequest alloc];
        v35 = [v8 record];
        v36 = [(WFWorkflowRemoteQuarantineRequest *)v34 initWithWorkflowRecord:v35];

        [v19 setDelegate:self];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __112__WFBackgroundShortcutRunner_evaluateRemoteQuarantinePolicyForWorkflow_workflowReference_withCompletionHandler___block_invoke;
        v40[3] = &unk_1E8374C00;
        v43 = v13;
        v42 = v10;
        v41 = v20;
        [v19 evaluatePolicyForRequest:v36 completion:v40];

        goto LABEL_27;
      }

      if (v28)
      {
        v29 = [v9 identifier];
        *buf = 136315394;
        v45 = "[WFBackgroundShortcutRunner evaluateRemoteQuarantinePolicyForWorkflow:workflowReference:withCompletionHandler:]";
        v46 = 2112;
        v47 = v29;
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_INFO, "%s Skipping remote quarantine policy evaluation for workflow %@, since it has already been checked.", buf, 0x16u);
      }

      v30 = getWFWorkflowExecutionLogObject();
      v24 = v30;
      if (v16 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v30))
      {
LABEL_23:

        (*(v10 + 2))(v10, 1, v20, 0);
LABEL_27:

        goto LABEL_28;
      }

      *buf = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_1CA256000, v24, OS_SIGNPOST_INTERVAL_END, v13, "RemoteQuarantineEvaluation", "", buf, 2u);
    goto LABEL_23;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v45 = "[WFBackgroundShortcutRunner evaluateRemoteQuarantinePolicyForWorkflow:workflowReference:withCompletionHandler:]";
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Skipping remote quarantine policy evaluation for workflow, since it has no database reference.", buf, 0xCu);
  }

  (*(v10 + 2))(v10, 1, 0, 0);
LABEL_28:

  v37 = *MEMORY[0x1E69E9840];
}

void __112__WFBackgroundShortcutRunner_evaluateRemoteQuarantinePolicyForWorkflow_workflowReference_withCompletionHandler___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = getWFWorkflowExecutionLogObject();
  v6 = v5;
  v7 = a1[6];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v6, OS_SIGNPOST_INTERVAL_END, v7, "RemoteQuarantineEvaluation", "", v9, 2u);
  }

  v8 = a1[4];
  (*(a1[5] + 16))();
}

- (id)metricsRunSourceFromEnvironment:(int64_t)a3 runSource:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = *MEMORY[0x1E69E1428];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *MEMORY[0x1E69E1428];
  }

  v9 = v8;
  v10 = [v9 isEqualToString:v7];
  if ((a3 - 1) <= 4 && v10)
  {
    v11 = **(&unk_1E8374C20 + a3 - 1);

    v9 = v11;
  }

  return v9;
}

- (BOOL)launchAppToContinueFromState:(id)a3 runSource:(id)a4 withCompletion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"WFBackgroundShortcutRunner.m" lineNumber:2299 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v12 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[WFBackgroundShortcutRunner launchAppToContinueFromState:runSource:withCompletion:]";
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s Launching Shortcuts app to continue running", buf, 0xCu);
  }

  if ([(WFBackgroundShortcutRunner *)self environment]== 1)
  {
    v13 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[WFBackgroundShortcutRunner launchAppToContinueFromState:runSource:withCompletion:]";
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Can't open app from resident device", buf, 0xCu);
    }

LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  if (!v9)
  {
    v13 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = [(WFBackgroundShortcutRunner *)self workflowController];
      *buf = 136315394;
      v26 = "[WFBackgroundShortcutRunner launchAppToContinueFromState:runSource:withCompletion:]";
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s failed to get state from controller (%@)", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v14 = *MEMORY[0x1E69E1388];
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *MEMORY[0x1E69E1388];
  }

  v13 = [WFHandoffSimulator userActivityForContinuingWorkflowWithState:v9 fromSource:v15];
  v16 = objc_alloc(MEMORY[0x1E6996CA0]);
  v17 = [v16 initWithBundleIdentifier:*MEMORY[0x1E69E0FB0] options:0 URL:0 userActivity:v13];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __84__WFBackgroundShortcutRunner_launchAppToContinueFromState_runSource_withCompletion___block_invoke;
  v23[3] = &unk_1E837F0F0;
  v24 = v11;
  [v17 performWithCompletionHandler:v23];

  v18 = 1;
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __84__WFBackgroundShortcutRunner_launchAppToContinueFromState_runSource_withCompletion___block_invoke(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = getWFXPCRunnerLogObject();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[WFBackgroundShortcutRunner launchAppToContinueFromState:runSource:withCompletion:]_block_invoke";
      v6 = "%s Succeeded launching Shortcuts app";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_1CA256000, v7, v8, v6, &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = "[WFBackgroundShortcutRunner launchAppToContinueFromState:runSource:withCompletion:]_block_invoke";
    v6 = "%s Failed to open Shortcuts app to continue";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  result = (*(*(a1 + 32) + 16))(*(a1 + 32), v9);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getCurrentProgressCompletedWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFBackgroundShortcutRunner *)self workflowController];
  v8 = [v5 progress];

  v6 = MEMORY[0x1E696AD98];
  [v8 fractionCompleted];
  v7 = [v6 numberWithDouble:?];
  v4[2](v4, v7, 0);
}

- (void)sendDialogRequestForParameter:(id)a3 action:(id)a4 dialogRequest:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = +[WFRemoteExecutionCoordinator sharedCoordinator];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__WFBackgroundShortcutRunner_sendDialogRequestForParameter_action_dialogRequest_completion___block_invoke;
  v17[3] = &unk_1E8374BD8;
  v19 = v10;
  v20 = v11;
  v18 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v9;
  [v13 sendDialogRequest:v12 completion:v17];
}

void __92__WFBackgroundShortcutRunner_sendDialogRequestForParameter_action_dialogRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 dialogResponse];
    if ([v6 isCancelled])
    {
      v7 = *(a1 + 48);
      v8 = [MEMORY[0x1E696ABC0] userCancelledError];
      (*(v7 + 16))(v7, 0, v8);
    }

    else
    {
      v6 = v6;
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        v13 = [v6 serializedParameterState];
        v14 = [v11 createStateForParameter:v12 fromSerializedRepresentation:v13];
      }

      else
      {

        v14 = [*(a1 + 32) parameterStateFromDialogResponse:v6];
      }

      v15 = [*(a1 + 32) stateClass];
      if (v15 == objc_opt_class())
      {
        v34 = [WFInputtedState alloc];
        v35 = [*(a1 + 32) key];
        v36 = [(WFInputtedState *)v34 initWithParameterKey:v35 parameterState:v14];

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        v38 = v5;
        v16 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          v17 = *(a1 + 32);
          v18 = objc_opt_class();
          v19 = *(a1 + 32);
          v20 = v18;
          v21 = [v19 stateClass];
          v22 = v21;
          *buf = 136315906;
          v42 = "[WFBackgroundShortcutRunner sendDialogRequestForParameter:action:dialogRequest:completion:]_block_invoke";
          v43 = 2112;
          v44 = v18;
          v45 = 2112;
          v46 = v21;
          v47 = 2112;
          v48 = objc_opt_class();
          v23 = v48;
          _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_FAULT, "%s %@ expected a parameter state of class: %@, but received a different parameter state class: %@", buf, 0x2Au);
        }

        v24 = MEMORY[0x1E696ABC0];
        v39[0] = *MEMORY[0x1E696A578];
        v25 = WFLocalizedString(@"Invalid parameter state");
        v40[0] = v25;
        v39[1] = *MEMORY[0x1E696A588];
        v26 = MEMORY[0x1E696AEC0];
        v27 = WFLocalizedString(@"Received invalid parameter state for action %@ and parameter %@");
        v28 = [*(a1 + 40) localizedName];
        [*(a1 + 32) localizedLabel];
        v30 = v29 = v14;
        v31 = [v26 localizedStringWithFormat:v27, v28, v30];
        v40[1] = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
        v33 = [v24 errorWithDomain:@"WFBackgroundShortcutRunnerErrorDomain" code:14 userInfo:v32];

        v14 = v29;
        (*(*(a1 + 48) + 16))();

        v5 = v38;
      }
    }
  }

  else
  {
    v9 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [*(a1 + 32) localizedLabel];
      *buf = 136315394;
      v42 = "[WFBackgroundShortcutRunner sendDialogRequestForParameter:action:dialogRequest:completion:]_block_invoke";
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Received an invalid dialog request for parameter: %@", buf, 0x16u);
    }

    v6 = WFBackgroundShortcutRunnerError(12, v5);
    (*(*(a1 + 48) + 16))();
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)sendRemoteAskWhenRunRequestWithParameters:(id)a3 action:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__7456;
  v20[4] = __Block_byref_object_dispose__7457;
  v21 = objc_opt_new();
  v11 = [v8 array];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke;
  v17[3] = &unk_1E8374BB0;
  v17[4] = self;
  v12 = v9;
  v18 = v12;
  v19 = v20;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke_3;
  v14[3] = &unk_1E8379020;
  v16 = v20;
  v13 = v10;
  v15 = v13;
  [v11 if_enumerateAsynchronouslyInSequence:v17 completionHandler:v14];

  _Block_object_dispose(v20, 8);
}

void __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if ([v6 conformsToProtocol:&unk_1F4A9DDC8])
  {
    v8 = v6;
    v9 = [*(a1 + 32) dialogTransformer];
    v10 = [v9 attribution];

    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke_2;
    v59[3] = &unk_1E8374B88;
    v63 = v7;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v60 = v8;
    v61 = v11;
    v13 = v12;
    v14 = *(a1 + 48);
    v62 = v13;
    v64 = v14;
    v15 = v7;
    v16 = v8;
    [(WFRemoteExecutionDialogRequest *)v16 createDialogRequestWithAttribution:v10 defaultState:0 prompt:0 completionHandler:v59];

    v17 = v60;
  }

  else
  {
    v50 = v7;
    v51 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v18 = a1;
    v19 = [*(a1 + 40) parameters];
    v20 = [v19 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v56;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v56 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v55 + 1) + 8 * i);
          v25 = [v24 key];
          v26 = [v6 key];
          v27 = [v25 isEqualToString:v26];

          if ((v27 & 1) == 0)
          {
            v28 = *(v18 + 40);
            v29 = [v24 key];
            v30 = [v28 parameterStateForKey:v29 fallingBackToDefaultValue:0];

            v31 = [v30 serializedRepresentation];
            v32 = [v24 key];
            [v51 if_setObjectIfNonNil:v31 forKey:v32];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v21);
    }

    v33 = [MEMORY[0x1E69E09A0] dialogComponentStyleForParameter:v6];
    v16 = [MEMORY[0x1E69E0AA0] doneButton];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v6;
      if ([v34 isTimePickerParameter])
      {
        v35 = [MEMORY[0x1E69E0AA0] startButton];

        v16 = v35;
      }
    }

    v36 = objc_alloc(MEMORY[0x1E69E09A0]);
    v37 = [*(v18 + 40) identifier];
    v38 = [v6 key];
    v39 = [objc_alloc(MEMORY[0x1E69E0A98]) initWithTitle:0 icon:0];
    v40 = [v6 localizedPrompt];
    LOBYTE(v49) = 1;
    v10 = v51;
    v15 = [v36 initWithActionIdentifier:v37 parameterKey:v38 serializedParameterStates:v51 style:v33 attribution:v39 prompt:v40 doneButton:v16 focusImmediatelyWhenPresented:v49];

    v41 = [WFRemoteExecutionDialogRequest alloc];
    v42 = [*(v18 + 32) currentRemoteExecutionRunRequest];
    v43 = [v42 identifier];
    v17 = [(WFRemoteExecutionDialogRequest *)v41 initWithDialogRequest:v15 runRequestIdentifier:v43];

    v44 = *(v18 + 32);
    v45 = *(v18 + 40);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke_2_546;
    v52[3] = &unk_1E8374B60;
    v46 = *(v18 + 48);
    v53 = v50;
    v54 = v46;
    v47 = v50;
    [v44 sendDialogRequestForParameter:v6 action:v45 dialogRequest:v17 completion:v52];
  }

  v48 = *MEMORY[0x1E69E9840];
}

void __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 parameterState];
        v13 = [v11 parameterKey];
        [v5 setObject:v12 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 32) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

void __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [WFRemoteExecutionDialogRequest alloc];
    v5 = [*(a1 + 40) currentRemoteExecutionRunRequest];
    v6 = [v5 identifier];
    v7 = [(WFRemoteExecutionDialogRequest *)v4 initWithDialogRequest:v3 runRequestIdentifier:v6];

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke_540;
    v20[3] = &unk_1E8374B60;
    v19 = *(a1 + 56);
    v11 = v19;
    v21 = v19;
    [v8 sendDialogRequestForParameter:v9 action:v10 dialogRequest:v7 completion:v20];
  }

  else
  {
    v12 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = [*(a1 + 32) localizedLabel];
      *buf = 136315394;
      v25 = "[WFBackgroundShortcutRunner sendRemoteAskWhenRunRequestWithParameters:action:completion:]_block_invoke_2";
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Unable to create valid dialog request for parameter: %@", buf, 0x16u);
    }

    v14 = MEMORY[0x1E696ABC0];
    v22[0] = *MEMORY[0x1E696A578];
    v15 = WFLocalizedString(@"Unable to Run");
    v23[0] = v15;
    v22[1] = *MEMORY[0x1E696A588];
    v16 = WFLocalizedString(@"Unable to finish running action due to missing values.");
    v23[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v7 = [v14 errorWithDomain:@"WFBackgroundShortcutRunnerErrorDomain" code:5 userInfo:v17];

    (*(*(a1 + 56) + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke_2_546(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:a2];
  }

  (*(*(a1 + 32) + 16))();
}

void __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke_540(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:a2];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)didFinishActionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v5 didFinishActionWithIdentifier:v4];
}

- (void)didStartActionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v5 didStartActionWithIdentifier:v4];
}

- (void)openURL:(id)a3 withBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v12 = [v11 currentAction];

  if (v12)
  {
    v13 = [[WFActionWillOpenURLTestingEvent alloc] initWithAction:v12 URL:v8 bundleIdentifier:v9];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__WFBackgroundShortcutRunner_openURL_withBundleIdentifier_completionHandler___block_invoke;
    v15[3] = &unk_1E8374B38;
    v18 = v10;
    v15[4] = self;
    v16 = v8;
    v17 = v9;
    [(WFBackgroundShortcutRunner *)self handleTestingEventIfTesting:v13 completionHandler:v15];
  }

  else
  {
    v14 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [v14 openURL:v8 withBundleIdentifier:v9 completionHandler:v10];
  }
}

void __77__WFBackgroundShortcutRunner_openURL_withBundleIdentifier_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = [*(a1 + 32) dialogTransformer];
    [v5 openURL:*(a1 + 40) withBundleIdentifier:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = [a3 errorRepresentation];
    (*(v4 + 16))(v4, 1);
  }
}

- (BOOL)performSiriRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v9 = [v8 performSiriRequest:v7 completionHandler:v6];

  return v9;
}

- (void)configureIntent:(id)a3
{
  v5 = a3;
  if ([(WFBackgroundShortcutRunner *)self isRunningWithSiriUI])
  {
    v4 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [v4 configureIntent:v5];
  }
}

- (NSArray)airPlayRouteIDs
{
  v2 = [(WFBackgroundShortcutRunner *)self siriOptions];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 airPlayRouteIDs];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)executionContext
{
  v2 = [(WFBackgroundShortcutRunner *)self siriOptions];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 executionContext];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isRunningWithToolKitClient
{
  v2 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v3 = [v2 isRunningWithToolKitClient];

  return v3;
}

- (BOOL)isRunningWithExternalUI
{
  v2 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v3 = [v2 isRunningWithExternalUI];

  return v3;
}

- (BOOL)isRunningWithSiriUI
{
  v2 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v3 = [v2 isRunningWithSiriUI];

  return v3;
}

- (void)requestFileAccessForURLs:(id)a3 workflowName:(id)a4 workflowID:(id)a5 completionHandler:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[WFBackgroundShortcutRunner requestFileAccessForURLs:workflowName:workflowID:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s requestFileAccessForURLs forwarding to dialogTransformer", buf, 0xCu);
  }

  v15 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__WFBackgroundShortcutRunner_requestFileAccessForURLs_workflowName_workflowID_completionHandler___block_invoke;
  v18[3] = &unk_1E837F0F0;
  v19 = v10;
  v16 = v10;
  [v15 requestFileAccessForURLs:v13 workflowName:v12 workflowID:v11 completionHandler:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __97__WFBackgroundShortcutRunner_requestFileAccessForURLs_workflowName_workflowID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[WFBackgroundShortcutRunner requestFileAccessForURLs:workflowName:workflowID:completionHandler:]_block_invoke";
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s dialogTransformer completed with success: %d, error: %@", &v9, 0x1Cu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestAuthorizationWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v8 requestAuthorizationWithConfiguration:v7 completionHandler:v6];
}

- (BOOL)shouldNotHandoff
{
  v3 = [(WFBackgroundShortcutRunner *)self currentRunRequest];

  if (v3)
  {
    v4 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
    v5 = [v4 allowsHandoff] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)pauseWorkflowAndWriteStateToDisk:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(WFBackgroundShortcutRunner *)self synchronouslyPerformWithHost:&__block_literal_global_469];
  v5 = [(WFBackgroundShortcutRunner *)self workflowController];
  [v5 publishRunningState:3];

  v6 = WFWFWorkflowControllerStateDefaultSerializedURLFromContext(v4);
  if (v6)
  {
    v7 = [(WFBackgroundShortcutRunner *)self workflowController];
    v8 = [v7 currentState];
    v15 = 0;
    v9 = [v8 writeToURL:v6 error:&v15];
    v10 = v15;

    if ((v9 & 1) == 0)
    {
      v11 = getWFXPCRunnerLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v17 = "[WFBackgroundShortcutRunner pauseWorkflowAndWriteStateToDisk:]";
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Failed to write current workflow controller state to disk because of %@", buf, 0x16u);
      }
    }

    v12 = dispatch_time(0, 500000000);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__WFBackgroundShortcutRunner_pauseWorkflowAndWriteStateToDisk___block_invoke_470;
    v14[3] = &unk_1E837FA70;
    v14[4] = self;
    dispatch_after(v12, MEMORY[0x1E69E96A0], v14);
  }

  else
  {
    v10 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v17 = "[WFBackgroundShortcutRunner pauseWorkflowAndWriteStateToDisk:]";
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Unable to get destination URL from context: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __63__WFBackgroundShortcutRunner_pauseWorkflowAndWriteStateToDisk___block_invoke_470(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 stopShortcutWithError:0 reason:@"paused workflow"];
}

- (void)handleAppProtectionRequestWithBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v8 handleAppProtectionRequestWithBundleIdentifier:v7 completionHandler:v6];
}

- (void)resolveDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v8 resolveDescriptor:v7 completionHandler:v6];
}

- (void)dismissPresentedContentWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v5 dismissPresentedContentWithCompletionHandler:v4];
}

- (void)presentAlertWithSmartPromptConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(WFBackgroundShortcutRunner *)self requestedFromAnotherDevice])
  {
    v8 = [WFSmartPromptDialogRequest alloc];
    v9 = [MEMORY[0x1E69E0A98] attributionWithAppBundleIdentifier:*MEMORY[0x1E69E0FB0]];
    v10 = [(WFSmartPromptDialogRequest *)v8 initWithConfiguration:v7 attribution:v9];

    v11 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(WFDialogRequest *)v10 promptForDisplay];
    v14 = [v7 workflowName];

    v15 = [v12 stringWithFormat:v13, v14];
    [v11 setMessage:v15];

    v16 = [(WFSmartPromptDialogRequest *)v10 allowOnceButton];

    if (v16)
    {
      v17 = MEMORY[0x1E6996C78];
      v18 = [(WFSmartPromptDialogRequest *)v10 allowOnceButton];
      v19 = [v18 title];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __89__WFBackgroundShortcutRunner_presentAlertWithSmartPromptConfiguration_completionHandler___block_invoke;
      v36[3] = &unk_1E837F4E8;
      v37 = v6;
      v20 = [v17 buttonWithTitle:v19 style:0 handler:v36];

      [v11 addButton:v20];
    }

    v21 = [(WFSmartPromptDialogRequest *)v10 allowAlwaysButton];

    if (v21)
    {
      v22 = MEMORY[0x1E6996C78];
      v23 = [(WFSmartPromptDialogRequest *)v10 allowAlwaysButton];
      v24 = [v23 title];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __89__WFBackgroundShortcutRunner_presentAlertWithSmartPromptConfiguration_completionHandler___block_invoke_2;
      v34[3] = &unk_1E837F4E8;
      v35 = v6;
      v25 = [v22 buttonWithTitle:v24 style:0 handler:v34];

      [v11 addButton:v25];
    }

    v26 = [(WFSmartPromptDialogRequest *)v10 denyButton];

    if (v26)
    {
      v27 = MEMORY[0x1E6996C78];
      v28 = [(WFSmartPromptDialogRequest *)v10 denyButton];
      v29 = [v28 title];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __89__WFBackgroundShortcutRunner_presentAlertWithSmartPromptConfiguration_completionHandler___block_invoke_3;
      v32[3] = &unk_1E837F4E8;
      v33 = v6;
      v30 = [v27 buttonWithTitle:v29 style:1 handler:v32];

      [v11 addButton:v30];
    }

    [(WFBackgroundShortcutRunner *)self presentAlert:v11];
  }

  else
  {
    v31 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [v31 presentAlertWithSmartPromptConfiguration:v7 completionHandler:v6];
  }
}

- (void)showChronoControlOfType:(unint64_t)a3 identity:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v10 showChronoControlOfType:a3 identity:v9 completionHandler:v8];
}

- (void)shouldRunFollowUpActionWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4 parameterValues:(id)a5 encodedToolInvocation:(id)a6 showOutputActionOptions:(unint64_t)a7 completionHandler:(id)a8
{
  v19 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  if ([(WFBackgroundShortcutRunner *)self runRequestOriginatedFromLocalSiri])
  {
    v17[2](v17, 0);
  }

  else
  {
    v18 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [v18 shouldRunFollowUpActionWithBundleIdentifier:v19 actionIdentifier:v14 parameterValues:v15 encodedToolInvocation:v16 showOutputActionOptions:a7 completionHandler:v17];
  }
}

- (void)showLinkChoice:(id)a3 dialog:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v11 showLinkChoice:v10 dialog:v9 completionHandler:v8];
}

- (void)showSnippetLinkAction:(id)a3 encodedSnippetActionToolInvocation:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v11 showSnippetLinkAction:v10 encodedSnippetActionToolInvocation:v9 completionHandler:v8];
}

- (void)showLinkResult:(id)a3 dialog:(id)a4 encodedSnippetActionToolInvocation:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v14 showLinkResult:v13 dialog:v12 encodedSnippetActionToolInvocation:v11 completionHandler:v10];
}

- (void)showLinkParameterConfirmationWithActionMetadata:(id)a3 dialog:(id)a4 dialogString:(id)a5 viewSnippet:(id)a6 parameterValue:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v20 showLinkParameterConfirmationWithActionMetadata:v19 dialog:v18 dialogString:v17 viewSnippet:v16 parameterValue:v15 completionHandler:v14];
}

- (void)showLinkActionConfirmationWithActionMetadata:(id)a3 showPrompt:(BOOL)a4 dialog:(id)a5 dialogString:(id)a6 viewSnippet:(id)a7 snippetAction:(id)a8 encodedSnippetActionToolInvocation:(id)a9 confirmationActionName:(id)a10 isContinueInAppRequest:(BOOL)a11 systemStyle:(id)a12 completionHandler:(id)a13
{
  v31 = a4;
  v19 = a13;
  v30 = a12;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a5;
  v26 = a3;
  v27 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __243__WFBackgroundShortcutRunner_showLinkActionConfirmationWithActionMetadata_showPrompt_dialog_dialogString_viewSnippet_snippetAction_encodedSnippetActionToolInvocation_confirmationActionName_isContinueInAppRequest_systemStyle_completionHandler___block_invoke;
  v32[3] = &unk_1E8374B10;
  v33 = v19;
  v28 = v19;
  LOBYTE(v29) = a11;
  [v27 showLinkActionConfirmationWithActionMetadata:v26 showPrompt:v31 dialog:v25 dialogString:v24 viewSnippet:v23 snippetAction:v22 encodedSnippetActionToolInvocation:v21 confirmationActionName:v20 isContinueInAppRequest:v29 systemStyle:v30 completionHandler:v32];
}

- (void)showPreviewForContentCollection:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v8 showPreviewForContentCollection:v7 completionHandler:v6];
}

- (void)showHandleInteraction:(id)a3 prompt:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v11 showHandleInteraction:v10 prompt:v9 completionHandler:v8];
}

- (void)requestActionInterfacePresentationForActionClassName:(id)a3 classNamesByType:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v11 requestActionInterfacePresentationForActionClassName:v10 classNamesByType:v9 completionHandler:v8];
}

- (void)presentAlert:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(WFBackgroundShortcutRunner *)self environment]== 4)
  {
    v5 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[WFBackgroundShortcutRunner presentAlert:]";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Trying to present an alert in a remote execution environment, going to send to originating device", buf, 0xCu);
    }

    v6 = [WFRemoteExecutionAlertRequest alloc];
    v7 = [(WFBackgroundShortcutRunner *)self currentRemoteExecutionRunRequest];
    v8 = [v7 identifier];
    v9 = [(WFRemoteExecutionAlertRequest *)v6 initWithAlert:v4 associatedRunRequestIdentifier:v8];

    v10 = [(WFBackgroundShortcutRunner *)self remoteExecutionCoordinator];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__WFBackgroundShortcutRunner_presentAlert___block_invoke;
    v13[3] = &unk_1E8374AE8;
    v13[4] = self;
    v14 = v4;
    [v10 sendAlertRequest:v9 completion:v13];
  }

  else
  {
    v11 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [v11 presentAlert:v4];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __43__WFBackgroundShortcutRunner_presentAlert___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [*(a1 + 40) buttons];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [v12 title];
          v14 = [v13 isEqualToString:v5];

          if (v14)
          {
            v15 = [v12 handler];
            v15[2](v15, 0);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v16 = [*(a1 + 32) workflowController];
    v17 = [v16 workflow];
    v18 = [v17 actions];
    v19 = [*(a1 + 32) workflowController];
    v20 = [v19 currentState];
    v21 = [v18 objectAtIndex:{objc_msgSend(v20, "currentActionIndex")}];

    [v21 finishRunningWithError:v6];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)workflowController:(id)a3 handleTestingEvent:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__WFBackgroundShortcutRunner_workflowController_handleTestingEvent_completionHandler___block_invoke;
  v9[3] = &unk_1E8374AC0;
  v10 = v7;
  v8 = v7;
  [(WFBackgroundShortcutRunner *)self handleTestingEventIfTesting:a4 completionHandler:v9];
}

void __86__WFBackgroundShortcutRunner_workflowController_handleTestingEvent_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 errorRepresentation];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)workflowController:(id)a3 didGenerateReversalState:(id)a4 forAction:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(WFBackgroundShortcutRunner *)self actionReversalStates];
  [v9 setObject:v8 forKeyedSubscript:v7];
}

- (id)workflowController:(id)a3 actionReversalStateForAction:(id)a4
{
  v5 = [(WFBackgroundShortcutRunner *)self workflowController:a3];
  v6 = [v5 workflow];
  v7 = [v6 actions];
  v8 = [v7 count];

  if (v8 <= 1)
  {
    v10 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = [v10 action];
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v9 = [v13 reversalState];
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

  return v9;
}

- (void)action:(id)a3 provideInputForParameters:(id)a4 withDefaultStates:(id)a5 prompts:(id)a6 completionHandler:(id)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([(WFBackgroundShortcutRunner *)self isInRemoteExecutionEnvironment])
  {
    [(WFBackgroundShortcutRunner *)self sendRemoteAskWhenRunRequestWithParameters:v12 action:v17 completion:v15];
  }

  else
  {
    v16 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [v16 action:v17 provideInputForParameters:v12 withDefaultStates:v13 prompts:v14 completionHandler:v15];
  }
}

- (id)remoteDialogPresenterEndpointForController:(id)a3
{
  v3 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v4 = [v3 userInterfacePresenter];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

  v7 = [v6 endpoint];

  return v7;
}

- (void)workflowController:(id)a3 requestToQuarantineWorkflow:(id)a4
{
  v4 = a4;
  v6 = +[WFDatabaseProxy defaultDatabase];
  v5 = [v4 reference];

  [v6 quarantineWorkflowWithReference:v5];
}

- (BOOL)workflowController:(id)a3 handleUnsupportedEnvironmentForAction:(id)a4 currentState:(id)a5 completionHandler:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = getWFRunningLifecycleLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 description];
    v20 = 138543362;
    v21 = v15;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ is not supported in the current environment.", &v20, 0xCu);
  }

  if ([(WFBackgroundShortcutRunner *)self environment]== 4)
  {
    v16 = 0;
  }

  else
  {
    v17 = [v10 runSource];
    v16 = WFRemoteExecuteActionIfApplicable(v11, v12, self, self, v17, v13);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)workflowController:(id)a3 handleUnsupportedUserInterfaceForAction:(id)a4 currentState:(id)a5 completionHandler:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a6;
  v10 = [(WFBackgroundShortcutRunner *)self isRunningWithSiriUI];
  v11 = getWFRunningLifecycleLogObject();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 136315138;
      v20 = "[WFBackgroundShortcutRunner workflowController:handleUnsupportedUserInterfaceForAction:currentState:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s Using new punch out logic", buf, 0xCu);
    }

    v11 = objc_alloc_init(MEMORY[0x1E69E0D08]);
    v13 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __120__WFBackgroundShortcutRunner_workflowController_handleUnsupportedUserInterfaceForAction_currentState_completionHandler___block_invoke;
    v17[3] = &unk_1E8374A98;
    v17[4] = self;
    v18 = v9;
    [v13 performSiriRequest:v11 completionHandler:v17];
  }

  else if (v12)
  {
    v14 = [v8 description];
    *buf = 138543362;
    v20 = v14;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ is not supported in the current user interface.", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

void __120__WFBackgroundShortcutRunner_workflowController_handleUnsupportedUserInterfaceForAction_currentState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 shouldPunchOut];
    v5 = getWFRunningLifecycleLogObject();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "Received punch out success from Siri, performing unlock if needed", buf, 2u);
      }

      v7 = objc_alloc_init(WFCompactUnlockService);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __120__WFBackgroundShortcutRunner_workflowController_handleUnsupportedUserInterfaceForAction_currentState_completionHandler___block_invoke_451;
      v17[3] = &unk_1E8374A70;
      v8 = *(a1 + 40);
      v17[4] = *(a1 + 32);
      v18 = v7;
      v19 = v8;
      v9 = v7;
      [(WFCompactUnlockService *)v9 requestUnlockIfNeeded:v17];
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "Received punch out failure from Siri, terminating without handoff", buf, 2u);
      }

      v14 = *(a1 + 40);
      v15 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
      (*(v14 + 16))(v14, v15);
    }

    v13 = v3;
  }

  else
  {

    v10 = getWFRunningLifecycleLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v21 = "[WFBackgroundShortcutRunner workflowController:handleUnsupportedUserInterfaceForAction:currentState:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = objc_opt_class();
      v11 = v23;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", buf, 0x16u);
    }

    v12 = *(a1 + 40);
    v13 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    (*(v12 + 16))(v12, v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __120__WFBackgroundShortcutRunner_workflowController_handleUnsupportedUserInterfaceForAction_currentState_completionHandler___block_invoke_451(uint64_t a1, int a2)
{
  v4 = getWFRunningLifecycleLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "Received unlock success, performing handoff", buf, 2u);
    }

    v6 = +[WFUIPresenter defaultPresenter];
    [v6 setDelegate:*(a1 + 32)];
    v7 = [*(a1 + 32) dialogTransformer];
    [v7 swapExternalUIPresenterWithPresenter:v6];

    v8 = [*(a1 + 32) currentRunRequest];
    [v8 setPresentationMode:1];

    v9 = [*(a1 + 32) dialogTransformer];
    v10 = [v9 attributionAllowingAction:0];

    v11 = [*(a1 + 32) dialogTransformer];
    v12 = [v11 userInterfacePresenter];
    v13 = [*(a1 + 32) currentRunningContext];
    [v12 beginPersistentModeWithRunningContext:v13 attribution:v10 completionHandler:&__block_literal_global_454];

    [*(a1 + 32) synchronouslyPerformWithHost:&__block_literal_global_457_7470];
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x1E696ABC0] wfSiriPunchOutError];
    (*(v14 + 16))(v14, v15);
  }

  else
  {
    if (v5)
    {
      *v17 = 0;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "Received unlock failure, terminating without handoff", v17, 2u);
    }

    v16 = *(a1 + 48);
    v6 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    (*(v16 + 16))(v16, v6);
  }
}

void __120__WFBackgroundShortcutRunner_workflowController_handleUnsupportedUserInterfaceForAction_currentState_completionHandler___block_invoke_452(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFGeneralLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFBackgroundShortcutRunner workflowController:handleUnsupportedUserInterfaceForAction:currentState:completionHandler:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Failed to begin persistent mode: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)workflowController:(id)a3 actionDidRequestWorkflowExit:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = getWFRunningLifecycleLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 description];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ requested shortcut exit.", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)workflowController:(id)a3 didRunAction:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = getWFRunningLifecycleLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 description];
    v16 = [v11 output];
    *buf = 138543874;
    v61 = v15;
    v62 = 1026;
    *v63 = v12 != 0;
    *&v63[4] = 2112;
    *&v63[6] = v16;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "Action finished running %{public}@, error: %{BOOL,public}d, output: %@.", buf, 0x1Cu);
  }

  v17 = [v11 toolInvocation];
  if (v17)
  {
    dispatch_group_enter(self->_exitTaskGroup);
    v18 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__WFBackgroundShortcutRunner_workflowController_didRunAction_error_completionHandler___block_invoke;
    block[3] = &unk_1E837F870;
    v58 = v17;
    v59 = self;
    dispatch_async(v18, block);
  }

  if ([(WFBackgroundShortcutRunner *)self isStepwiseExecution])
  {
    v19 = getWFRunningLifecycleLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v61 = "[WFBackgroundShortcutRunner workflowController:didRunAction:error:completionHandler:]";
      v62 = 2112;
      *v63 = v12;
      _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_DEFAULT, "%s [Step-wise] Sending action result (error: %@) out", buf, 0x16u);
    }

    v20 = [v11 outputVariableWithVariableProvider:v11 UUIDProvider:0];
    v21 = v11;
    v46 = v13;
    v47 = v10;
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = objc_alloc(MEMORY[0x1E69E0D60]);
        v23 = [v21 undoContext];
        v24 = [v21 didRunOpensIntent];
        v25 = [v21 attribution];
        v26 = [v22 initWithUndoContext:v23 didRunOpensIntent:v24 attribution:v25];

        v27 = v21;
      }

      else
      {
        v27 = 0;
        v26 = 0;
        v23 = v21;
      }
    }

    else
    {
      v23 = 0;
      v27 = 0;
      v26 = 0;
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __86__WFBackgroundShortcutRunner_workflowController_didRunAction_error_completionHandler___block_invoke_439;
    v52[3] = &unk_1E8374A48;
    v53 = v21;
    v31 = v12;
    v54 = v31;
    v30 = v20;
    v55 = v30;
    v32 = v26;
    v56 = v32;
    [(WFBackgroundShortcutRunner *)self performWithHost:v52];
    if ([(WFBackgroundShortcutRunner *)self forcePersistentModeWhileStepping])
    {
      if (v31 && ([v31 wf_isUserCancelledError] & 1) == 0)
      {
        v45 = [(WFBackgroundShortcutRunner *)self currentRunningWorkflowReference];
        v44 = [MEMORY[0x1E69E0938] standardClient];
        v42 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
        [v42 attribution];
        v33 = v43 = v27;
        v34 = [(WFBackgroundShortcutRunner *)self currentRunningContext];
        [v44 postNotificationAboutFailure:v31 inWorkflow:v45 dialogAttribution:v33 runningContext:v34];

        v27 = v43;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = v31 == 0;
        [(WFBackgroundShortcutRunner *)self dialogTransformer];
        v37 = v36 = v27;
        v38 = [v37 userInterfacePresenter];
        v39 = [MEMORY[0x1E696AD98] numberWithInt:v35];
        v40 = [(WFBackgroundShortcutRunner *)self currentRunningContext];
        [v38 completePersistentModeWithSuccess:v39 runningContext:v40 completionHandler:&__block_literal_global_442];

        v27 = v36;
      }
    }

    v13 = v46;
    v46[2](v46);

    v10 = v47;
  }

  else
  {
    v28 = [WFActionDidRunTestingEvent alloc];
    v29 = [v11 output];
    v30 = [(WFActionDidRunTestingEvent *)v28 initWithAction:v11 output:v29 error:v12];

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __86__WFBackgroundShortcutRunner_workflowController_didRunAction_error_completionHandler___block_invoke_444;
    v48[3] = &unk_1E8374B38;
    v48[4] = self;
    v51 = v13;
    v49 = v11;
    v50 = v10;
    [(WFBackgroundShortcutRunner *)self handleTestingEventIfTesting:v30 completionHandler:v48];
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __86__WFBackgroundShortcutRunner_workflowController_didRunAction_error_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = getWFToolKitLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[WFBackgroundShortcutRunner workflowController:didRunAction:error:completionHandler:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_INFO, "%s Donating ToolKit run to ToolKit.Transcript Biome stream", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v8 = 0;
  v4 = [v3 donateToBiomeAndReturnError:&v8];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = getWFToolKitLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[WFBackgroundShortcutRunner workflowController:didRunAction:error:completionHandler:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Error donating to Biome: %@", buf, 0x16u);
    }
  }

  dispatch_group_leave(*(*(a1 + 40) + 136));

  v7 = *MEMORY[0x1E69E9840];
}

void __86__WFBackgroundShortcutRunner_workflowController_didRunAction_error_completionHandler___block_invoke_439(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v10 = [v3 UUID];
  v5 = *(a1 + 40);
  v6 = WFEncodableError();
  v7 = MEMORY[0x1E69E0958];
  v8 = [*(a1 + 48) serializedRepresentation];
  v9 = [v7 objectWithPropertyListObject:v8];
  [v4 actionWithUUID:v10 didFinishRunningWithError:v6 serializedVariable:v9 executionResultMetadata:*(a1 + 56)];
}

void __86__WFBackgroundShortcutRunner_workflowController_didRunAction_error_completionHandler___block_invoke_444(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__WFBackgroundShortcutRunner_workflowController_didRunAction_error_completionHandler___block_invoke_2_445;
    aBlock[3] = &unk_1E837F4E8;
    v16 = *(a1 + 56);
    v6 = _Block_copy(aBlock);
    v7 = [*(a1 + 32) dialogTransformer];
    [v7 setCurrentAction:0];

    v8 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x1E69E0C70] sharedManager];
      v14 = 0;
      v10 = [v9 retakeResignedExtensionsWithReason:@"Runner finished Run Workflow" error:&v14];
      v11 = v14;

      if ((v10 & 1) == 0)
      {
        [*(a1 + 48) stopWithError:v11];
      }
    }

    v6[2](v6);
  }

  else
  {
    v12 = [*(a1 + 32) stateMachine];
    v13 = [v5 errorRepresentation];
    [v12 stopShortcutWithError:v13 reason:@"harness test failed"];
  }
}

void __86__WFBackgroundShortcutRunner_workflowController_didRunAction_error_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFGeneralLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFBackgroundShortcutRunner workflowController:didRunAction:error:completionHandler:]_block_invoke_2";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Failed to complete persistent mode: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)workflowController:(id)a3 prepareToRunAction:(id)a4 withInput:(id)a5 completionHandler:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = getWFRunningLifecycleLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 description];
    *buf = 138543362;
    v44 = v13;
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "Running action %{public}@", buf, 0xCu);
  }

  v14 = getWFRunningLifecycleLogObject();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v14, OS_SIGNPOST_INTERVAL_END, 0xFFFFFFFFuLL, "UntilFirstAction", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = [v9 workflow];
  v16 = [v15 actions];
  v17 = [v16 indexOfObject:v10];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    dialogTransformer = self->_dialogTransformer;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17 + 1];
    [(WFDialogTransformer *)dialogTransformer willBeginExecutingShortcutStep:v19];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__WFBackgroundShortcutRunner_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke;
  aBlock[3] = &unk_1E837ECE0;
  v20 = v10;
  v40 = v20;
  v41 = self;
  v21 = v11;
  v42 = v21;
  v22 = _Block_copy(aBlock);
  v23 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v23 setCurrentAction:v20];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __96__WFBackgroundShortcutRunner_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke_3;
  v36[3] = &unk_1E8374A20;
  v24 = v20;
  v37 = v24;
  v25 = v9;
  v38 = v25;
  [(WFBackgroundShortcutRunner *)self performWithRunningProgressSuppressionStateMachine:v36];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [MEMORY[0x1E69E0C70] sharedManager];
    [v26 resignIssuedExtensionsWithReason:@"Runner running Run Workflow"];

    v22[2](v22);
  }

  else
  {
    v27 = NSClassFromString(&cfstr_Wfhealthkitres.isa);
    if (!v27 || ([MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), v27, 0}], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v28 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    }

    v29 = [v24 resourceManager];
    v30 = [v29 resourceObjectsOfClasses:v28];
    v31 = [v30 if_compactMap:&__block_literal_global_431];

    v32 = [MEMORY[0x1E69E0C70] sharedManager];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __96__WFBackgroundShortcutRunner_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke_5;
    v34[3] = &unk_1E837D0D0;
    v35 = v22;
    [v32 requestSandboxExtensionForRunningActionWithAccessResources:v31 completion:v34];
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __96__WFBackgroundShortcutRunner_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [(WFActionTestingEvent *)[WFActionWillRunTestingEvent alloc] initWithAction:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __96__WFBackgroundShortcutRunner_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke_2;
  v4[3] = &unk_1E83749F8;
  v4[4] = v3;
  v5 = *(a1 + 48);
  [v3 handleTestingEventIfTesting:v2 completionHandler:v4];
}

void __96__WFBackgroundShortcutRunner_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 workflow];
  [v4 startedRunningAction:v2 inShortcut:v5];
}

uint64_t __96__WFBackgroundShortcutRunner_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  if ([a2 containsObject:@"WFCalendarAccessResource"])
  {
    WFClearWorkflowEventStore();
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

id __96__WFBackgroundShortcutRunner_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke_4()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  if ([MEMORY[0x1E69E0C68] hasExtensionForResourceClassName:v1])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __96__WFBackgroundShortcutRunner_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) stateMachine];
    v6 = [v7 errorRepresentation];
    [v5 stopShortcutWithError:v6 reason:@"harness test failed"];
  }
}

- (void)workflowController:(id)a3 didFinishRunningWithError:(id)a4 cancelled:(BOOL)a5
{
  v5 = a5;
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = getWFRunningLifecycleLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 workflow];
      *buf = 138412290;
      v45 = v11;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "Shortcut %@ was cancelled.", buf, 0xCu);
    }

    [MEMORY[0x1E696ABC0] userCancelledError];
    v9 = v12 = v9;
  }

  else
  {
    v12 = getWFRunningLifecycleLogObject();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v13)
      {
        v14 = [v8 workflow];
        *buf = 138412547;
        v45 = v14;
        v46 = 2113;
        v47 = v9;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "Shortcut %@ failed with error %{private}@.", buf, 0x16u);
      }
    }

    else
    {
      if (v13)
      {
        v15 = [v8 workflow];
        v16 = [v8 output];
        *buf = 138412547;
        v45 = v15;
        v46 = 2113;
        v47 = v16;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "Shortcut %@ has finished running with output: %{private}@.", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  v17 = [(WFBackgroundShortcutRunner *)self testingHarnessErrorForWorkflowFinishedError:v9];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke;
  aBlock[3] = &unk_1E8374980;
  v18 = v8;
  v42 = v18;
  v43 = self;
  v19 = _Block_copy(aBlock);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_408;
  v38[3] = &unk_1E837CF40;
  v20 = v19;
  v40 = v20;
  v38[4] = self;
  v21 = v18;
  v39 = v21;
  v22 = _Block_copy(v38);
  if ([(WFBackgroundShortcutRunner *)self environment]== 4)
  {
    v23 = [(WFBackgroundShortcutRunner *)self currentRemoteExecutionRunRequest];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_5;
    v35[3] = &unk_1E837E1F8;
    v37 = v22;
    v36 = v17;
    [(WFBackgroundShortcutRunner *)self sendResponseForRunRequest:v23 controller:v21 error:v36 completion:v35];
  }

  else if ((([v17 wf_isUnsupportedUserInterfaceError] & 1) != 0 || objc_msgSend(v17, "wf_isUnsupportedEnvironmentError")) && (objc_msgSend(v21, "runningContext"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isShortcutsApp"), v24, (v25 & 1) == 0))
  {
    v26 = [v21 runningContext];
    v27 = [v26 copyWithNewIdentity];

    v28 = [v21 currentStateWithContext:v27];
    v29 = [v21 runSource];
    if (v28)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_6;
      v32[3] = &unk_1E837E1F8;
      v33 = 0;
      v34 = v22;
      [(WFBackgroundShortcutRunner *)self launchAppToContinueFromState:v28 runSource:v29 withCompletion:v32];

      v30 = v34;
    }

    else
    {
      v30 = getWFXPCRunnerLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v45 = "[WFBackgroundShortcutRunner workflowController:didFinishRunningWithError:cancelled:]";
        _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_FAULT, "%s Need to handoff, but workflow controller state is nil", buf, 0xCu);
      }
    }
  }

  else
  {
    (*(v22 + 2))(v22, v17);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) output];
  if ([v4 numberOfItems] < 1 || objc_msgSend(*(a1 + 32), "outputBehavior") != 2 || (objc_msgSend(*(a1 + 32), "shouldDisablePrivacyPrompts") & 1) != 0)
  {
    goto LABEL_6;
  }

  v5 = [*(a1 + 32) lastExecutedAction];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_6:
    goto LABEL_7;
  }

  v7 = [*(a1 + 32) runSource];
  IsExemptFromOutputApproval = WFRunSourceIsExemptFromOutputApproval();

  if ((IsExemptFromOutputApproval & 1) == 0)
  {
    v9 = [WFSmartPromptConfiguration alloc];
    v10 = [*(a1 + 32) output];
    v11 = [*(a1 + 32) workflow];
    v12 = [v11 reference];
    v13 = [*(a1 + 32) runSource];
    v14 = [(WFSmartPromptConfiguration *)v9 initWithOutputContentCollection:v10 reference:v12 source:v13];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_2;
    v16[3] = &unk_1E8375270;
    v15 = *(a1 + 40);
    v17 = *(a1 + 32);
    v18 = v3;
    [v15 presentAlertWithSmartPromptConfiguration:v14 completionHandler:v16];

    goto LABEL_8;
  }

LABEL_7:
  v6 = [*(a1 + 32) output];
  (*(v3 + 2))(v3, v6);

LABEL_8:
}

void __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_408(void *a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_2_409;
  v8[3] = &unk_1E83749D0;
  v4 = a1[5];
  v5 = a1[6];
  v8[4] = a1[4];
  v9 = v4;
  v10 = v3;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_2_409(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_os_feature_enabled_impl() && ([*(a1 + 32) workflowController], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "outputBehavior"), v4, v5 == 3))
  {
    v6 = [*(a1 + 40) actionOutputs];
    v7 = *(a1 + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_3;
    v13[3] = &unk_1E83749A8;
    v13[4] = *(a1 + 32);
    WFBackgroundShortcutRunnerMakeAllActionsResult(v6, v8, v7, v13);
  }

  else
  {
    v6 = [*(a1 + 32) currentRunRequest];
    v9 = [*(a1 + 32) actionReversalStates];
    v10 = [v9 copy];
    v11 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_4;
    v12[3] = &unk_1E83749A8;
    v12[4] = *(a1 + 32);
    WFBackgroundShortcutRunnerMakeResult(v6, v3, v10, v11, v12);
  }
}

void __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stateMachine];
  [v4 finishRunningWithReason:@"workflow controller did finish" result:v3];
}

void __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stateMachine];
  [v4 finishRunningWithReason:@"workflow controller did finish" result:v3];
}

void __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v9 = getWFSecurityLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[WFBackgroundShortcutRunner workflowController:didFinishRunningWithError:cancelled:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s User selected Allow Once at output smart prompt", &v11, 0xCu);
    }

    v4 = [*(a1 + 32) output];
  }

  else if (a2 == 1)
  {
    v5 = getWFSecurityLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[WFBackgroundShortcutRunner workflowController:didFinishRunningWithError:cancelled:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s User selected Allow Always at output smart prompt", &v11, 0xCu);
    }

    v4 = [*(a1 + 32) output];
    v6 = +[WFDatabaseProxy defaultDatabase];
    v7 = [*(a1 + 32) workflow];
    v8 = [v7 reference];
    [v6 saveOutputActionSmartPromtDataForWorkflowReference:v8 error:0];
  }

  else
  {
    if (!a2)
    {
      v3 = getWFSecurityLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "[WFBackgroundShortcutRunner workflowController:didFinishRunningWithError:cancelled:]_block_invoke_2";
        _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s User selected Deny at output smart prompt", &v11, 0xCu);
      }
    }

    v4 = 0;
  }

  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)workflowControllerWillRun:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 workflow];
    *buf = 136315394;
    v30 = "[WFBackgroundShortcutRunner workflowControllerWillRun:]";
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Workflow controller starting for workflow: %@", buf, 0x16u);
  }

  v7 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v8 = [v7 attribution];

  v9 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v10 = [v9 currentAction];

  if (!v10)
  {
    v11 = [v4 workflow];
    v12 = [v11 actions];
    v13 = [v12 firstObject];
    v14 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [v14 setCurrentAction:v13];
  }

  v15 = [v4 input];
  v16 = [v15 requiredResourcesForContent];

  if (v16)
  {
    v17 = [MEMORY[0x1E69E0C70] sharedManager];
    v28 = 0;
    v18 = [v17 requestSandboxExtensionForRunningActionWithAccessResources:v16 error:&v28];
    v19 = v28;

    if ((v18 & 1) == 0)
    {
      v20 = getWFSecurityLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[WFBackgroundShortcutRunner workflowControllerWillRun:]";
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s Error consuming sandbox resources %@ required to access shortcut input. The shortcut might have trouble accessing its input.", buf, 0x16u);
      }
    }
  }

  v21 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [v21 workflowWillBegin];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__WFBackgroundShortcutRunner_workflowControllerWillRun___block_invoke;
  v25[3] = &unk_1E8374938;
  v25[4] = self;
  v26 = v8;
  v27 = v4;
  v22 = v4;
  v23 = v8;
  [(WFBackgroundShortcutRunner *)self performWithHost:v25];

  v24 = *MEMORY[0x1E69E9840];
}

void __56__WFBackgroundShortcutRunner_workflowControllerWillRun___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 workflowController];
  v6 = [v5 workflow];
  v7 = [v6 reference];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isPersonalAutomation")}];
  [v4 workflowDidStartRunning:v7 isAutomation:v8 dialogAttribution:*(a1 + 40)];

  v10 = [*(a1 + 32) queue_runningProgressSuppressionStateMachine];
  v9 = [*(a1 + 48) workflow];
  [v10 startedRunningShortcut:v9 withDialogAttribution:*(a1 + 40)];
}

- (void)synchronouslyPerformWithRunningProgressSuppressionStateMachine:(id)a3
{
  v4 = a3;
  v5 = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(WFBackgroundShortcutRunner *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__WFBackgroundShortcutRunner_synchronouslyPerformWithRunningProgressSuppressionStateMachine___block_invoke;
  v8[3] = &unk_1E837E1F8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)performWithRunningProgressSuppressionStateMachine:(id)a3
{
  v4 = a3;
  v5 = [(WFBackgroundShortcutRunner *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__WFBackgroundShortcutRunner_performWithRunningProgressSuppressionStateMachine___block_invoke;
  v7[3] = &unk_1E837E1F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)synchronouslyPerformWithHost:(id)a3
{
  v4 = a3;
  v5 = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(WFBackgroundShortcutRunner *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__WFBackgroundShortcutRunner_synchronouslyPerformWithHost___block_invoke;
  v8[3] = &unk_1E837E1F8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __59__WFBackgroundShortcutRunner_synchronouslyPerformWithHost___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_398];

  (*(*(a1 + 40) + 16))();
}

void __59__WFBackgroundShortcutRunner_synchronouslyPerformWithHost___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[WFBackgroundShortcutRunner synchronouslyPerformWithHost:]_block_invoke_2";
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s failed to get remote object proxy to host: %{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)performWithHost:(id)a3
{
  v4 = a3;
  v5 = [(WFBackgroundShortcutRunner *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__WFBackgroundShortcutRunner_performWithHost___block_invoke;
  v7[3] = &unk_1E837E1F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__WFBackgroundShortcutRunner_performWithHost___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_396];

  (*(*(a1 + 40) + 16))();
}

void __46__WFBackgroundShortcutRunner_performWithHost___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[WFBackgroundShortcutRunner performWithHost:]_block_invoke_2";
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s failed to get remote object proxy to host: %{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)allowIncomingRunRequest:(id)a3 withDescriptor:(id)a4 accessSpecifier:(id)a5 record:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 allowFullRuntimeAccess])
  {
    LOBYTE(v11) = 1;
    goto LABEL_43;
  }

  v12 = v8;
  v13 = v9;
  v14 = v12;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

LABEL_8:
      LOBYTE(v11) = [v10 allowRunningTestHarnessTests];
      goto LABEL_43;
    }
  }

  v15 = v13;
  if (v15)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_8;
    }

    v18 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v18;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {

    v17 = 0;
  }

  v19 = [v17 action];
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v21 associatedAppBundleIdentifier];

  if (v22 && ([v22 wf_isEmpty] & 1) == 0 && (objc_msgSend(v10, "allowLinkContextualActionRunningForBundleIdentifier:", v22) & 1) != 0)
  {
    goto LABEL_26;
  }

  if ([v10 allowCustomShortcutRunning])
  {
    v23 = v15;
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();

    if (v24)
    {
      goto LABEL_26;
    }
  }

  if ([v10 allowStepwiseExecution] && (v25 = v15, objc_opt_class(), v26 = objc_opt_isKindOfClass(), v25, (v26 & 1) != 0) || (objc_msgSend(v10, "allowHomeResidentShortcutRunning") & 1) != 0)
  {
LABEL_26:
    LOBYTE(v11) = 1;
  }

  else
  {
    v27 = v15;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v28 = [v27 action];
      WFStaticContextualActionDefinitionsForSurface();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v29 = v37 = 0u;
      v11 = [v29 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v11)
      {
        v30 = *v35;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(v29);
            }

            if ([*(*(&v34 + 1) + 8 * i) isEqual:{v28, v34}])
            {
              LOBYTE(v11) = 1;
              goto LABEL_40;
            }
          }

          v11 = [v29 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_40:
    }

    else
    {

      LOBYTE(v11) = 0;
    }
  }

LABEL_43:
  v32 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)computeFinderResizedSizesForImages:(id)a3 inSizes:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v20 = a4;
  v8 = a5;
  v9 = objc_alloc_init(WFFinderImageResizer);
  v10 = objc_alloc_init(MEMORY[0x1E6996D40]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = MEMORY[0x1E6996E20];
        v17 = [*(*(&v21 + 1) + 8 * v15) fileURL];
        v18 = [v16 fileWithURL:v17 options:29];

        [v10 addFile:v18];
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [(WFFinderImageResizer *)v9 computeResizedSizesForImages:v10 inSizes:v20 completion:v8];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)filterContextualActions:(id)a3 forContext:(id)a4 completion:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v7 = a4;
  v28 = a5;
  v8 = objc_alloc_init(MEMORY[0x1E6996D40]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = v7;
  obj = [v7 files];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = MEMORY[0x1E6996E20];
        v15 = [v13 fileURL];
        v16 = MEMORY[0x1E69E0AF8];
        v17 = [v13 type];
        v18 = [v17 identifier];
        v19 = [v16 typeWithString:v18];
        v20 = [v14 fileWithURL:v15 options:8 ofType:v19];

        [v8 addFile:v20];
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  v21 = [v27 if_map:&__block_literal_global_391];
  v22 = +[WFActionRegistry sharedRegistry];
  v23 = [v22 createActionsWithIdentifiers:v21 serializedParameterArray:0];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __76__WFBackgroundShortcutRunner_filterContextualActions_forContext_completion___block_invoke_2;
  v31[3] = &unk_1E8374910;
  v32 = v27;
  v33 = v8;
  v24 = v8;
  v25 = v27;
  [v23 if_mapAsynchronously:v31 completionHandler:v28];

  v26 = *MEMORY[0x1E69E9840];
}

void __76__WFBackgroundShortcutRunner_filterContextualActions_forContext_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = a2;
  v10 = [v8 objectAtIndexedSubscript:a3];
  v11 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__WFBackgroundShortcutRunner_filterContextualActions_forContext_completion___block_invoke_3;
  v14[3] = &unk_1E837EE10;
  v15 = v10;
  v16 = v7;
  v12 = v10;
  v13 = v7;
  [v9 matchContextualAction:v12 toContentCollection:v11 completionHandler:v14];
}

uint64_t __76__WFBackgroundShortcutRunner_filterContextualActions_forContext_completion___block_invoke_3(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4);
}

- (void)getContextualActionsForContext:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[WFActionRegistry sharedRegistry];
  v8 = [v7 createActionsWithIdentifiers:MEMORY[0x1E695E0F0] serializedParameterArray:0];

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) contextualActionsForSurface:{objc_msgSend(v5, "surface", v17)}];
        [v9 addObjectsFromArray:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v6[2](v6, v9, 0);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)sendResponseForRunRequest:(id)a3 controller:(id)a4 error:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v10 identifier];
    *buf = 136315650;
    v30 = "[WFBackgroundShortcutRunner sendResponseForRunRequest:controller:error:completion:]";
    v31 = 2114;
    v32 = v15;
    v33 = 2114;
    v34 = v12;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s <%{public}@> preparing to send response, error: %{public}@", buf, 0x20u);
  }

  v16 = [v10 identifier];

  if (v16)
  {
    v17 = [WFRemoteExecutionRunRequestResponse alloc];
    v18 = [v10 identifier];
    v19 = [v11 output];
    v20 = [(WFRemoteExecutionRunRequestResponse *)v17 initWithRunRequestIdentifier:v18 variables:0 output:v19 error:v12];

    v21 = [(WFBackgroundShortcutRunner *)self remoteExecutionCoordinator];
    [v20 setCoordinator:v21];

    v22 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    v28 = 0;
    [v20 writeTo:v22 error:&v28];
    v23 = v28;
    v24 = [v22 immutableData];

    if (v24)
    {
      v25 = [(WFBackgroundShortcutRunner *)self remoteExecutionCoordinator];
      v26 = [v22 immutableData];
      [v25 sendRunRequestResponse:v26 completion:v13];
    }

    else
    {
      v25 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v30 = "[WFBackgroundShortcutRunner sendResponseForRunRequest:controller:error:completion:]";
        v31 = 2114;
        v32 = v23;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s An error occurred while writing the run request data %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v20 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v30 = "[WFBackgroundShortcutRunner sendResponseForRunRequest:controller:error:completion:]";
      _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s Unable to send response for run request because the run request did not have an identifier", buf, 0xCu);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)handleIncomingFileForRemoteExecutionWithURL:(id)a3 withIdentifier:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[WFBackgroundShortcutRunner handleIncomingFileForRemoteExecutionWithURL:withIdentifier:]";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Incoming file with id: %@, at fileURL: %@", &v11, 0x20u);
  }

  v9 = [(WFBackgroundShortcutRunner *)self fileCoordinator];
  [v9 handleFile:v6 withIdentifier:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionCoordinator)remoteExecutionCoordinator
{
  remoteExecutionCoordinator = self->_remoteExecutionCoordinator;
  if (!remoteExecutionCoordinator)
  {
    v4 = +[WFRemoteExecutionCoordinator sharedCoordinator];
    v5 = self->_remoteExecutionCoordinator;
    self->_remoteExecutionCoordinator = v4;

    remoteExecutionCoordinator = self->_remoteExecutionCoordinator;
  }

  return remoteExecutionCoordinator;
}

- (WFRemoteExecutionFileCoordinator)fileCoordinator
{
  fileCoordinator = self->_fileCoordinator;
  if (!fileCoordinator)
  {
    v4 = objc_opt_new();
    v5 = self->_fileCoordinator;
    self->_fileCoordinator = v4;

    fileCoordinator = self->_fileCoordinator;
  }

  return fileCoordinator;
}

- (void)presenterRequestedUpdatedRunViewSource:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__WFBackgroundShortcutRunner_presenterRequestedUpdatedRunViewSource_completionHandler___block_invoke;
  v10[3] = &unk_1E83748C8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(WFBackgroundShortcutRunner *)self performWithHost:v10];
}

void __87__WFBackgroundShortcutRunner_presenterRequestedUpdatedRunViewSource_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __87__WFBackgroundShortcutRunner_presenterRequestedUpdatedRunViewSource_completionHandler___block_invoke_2;
    v6[3] = &unk_1E83748A0;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    [a2 presenterRequestedUpdatedRunViewSource:v4 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)presenterRequestedWorkflowPauseForContext:(id)a3 dialogRequest:(id)a4
{
  v5 = a3;
  v6 = [(WFBackgroundShortcutRunner *)self workflowController];
  v7 = [v6 runningContext];
  v10 = v5;
  v8 = v7;
  if (v8 == v10)
  {

    goto LABEL_7;
  }

  if (!v10 || !v8)
  {

    goto LABEL_9;
  }

  v9 = [v10 isEqual:v8];

  if (v9)
  {
LABEL_7:
    [(WFBackgroundShortcutRunner *)self pauseWorkflowAndWriteStateToDisk:v10];
  }

LABEL_9:
}

- (void)applicationWillLaunchInForeground
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v5 = [v4 currentAction];
  v6 = [(WFBackgroundShortcutRunner *)self workflowController];
  v7 = [v6 workflow];
  v8 = [v7 actions];
  v9 = [v8 lastObject];
  v13 = [v3 numberWithBool:{objc_msgSend(v5, "isEqual:", v9)}];

  v10 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v11 = [v10 userInterfacePresenter];
  v12 = [(WFBackgroundShortcutRunner *)self currentRunningContext];
  [v11 applicationWillLaunchInForegroundForRunningContext:v12 isLastAction:v13];
}

- (BOOL)progressIsPersistentInSystemAperture
{
  v3 = [MEMORY[0x1E69E0A90] currentDevice];
  v4 = [v3 hasSystemAperture];

  if (!v4 || self->_runningProgressSuppressionStateMachine && [(WFBackgroundShortcutRunner *)self runningProgressSuppressionMachineResolvedAndDeniedProgress]|| ![(WFBackgroundShortcutRunner *)self shortcutShouldShowRunningProgress])
  {
    return 0;
  }

  v5 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v6 = [v5 userInterfacePresenter];
  v7 = v6 != 0;

  return v7;
}

- (BOOL)runRequestIsContextualAction
{
  v2 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  if (v2)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)runningProgressSuppressionStateMachine:(id)a3 didDecideRunningProgressIsAllowed:(BOOL)a4 dialogAttribution:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_V2(v8);

  runningProgressSuppressionStateMachine = self->_runningProgressSuppressionStateMachine;
  self->_runningProgressSuppressionStateMachine = 0;

  self->_runningProgressSuppressionMachineResolvedAndDeniedProgress = !a4;
  v10 = [(WFBackgroundShortcutRunner *)self shortcutShouldShowRunningProgress];
  v11 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v12 = [v11 userInterfacePresenter];

  v13 = [(WFBackgroundShortcutRunner *)self isStepwiseExecution];
  v14 = getWFGeneralLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "[WFBackgroundShortcutRunner runningProgressSuppressionStateMachine:didDecideRunningProgressIsAllowed:dialogAttribution:]";
    v24 = 1024;
    v25 = v10;
    v26 = 1024;
    v27 = v12 != 0;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s Deciding if persistent mode should be started: shortcutShouldShowRunningProgress: %d, hasUserInterfacePresenter: %d", buf, 0x18u);
  }

  if (v12 != 0 && v10 && !v13)
  {
    v15 = getWFGeneralLogObject();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a4)
    {
      if (v16)
      {
        *buf = 136315138;
        v23 = "[WFBackgroundShortcutRunner runningProgressSuppressionStateMachine:didDecideRunningProgressIsAllowed:dialogAttribution:]";
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, "%s Beginning persistent mode", buf, 0xCu);
      }

      dispatch_group_enter(self->_exitTaskGroup);
      v17 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
      v18 = [v17 userInterfacePresenter];
      v19 = [(WFBackgroundShortcutRunner *)self currentRunningContext];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __121__WFBackgroundShortcutRunner_runningProgressSuppressionStateMachine_didDecideRunningProgressIsAllowed_dialogAttribution___block_invoke;
      v21[3] = &unk_1E837E5E0;
      v21[4] = self;
      [v18 beginPersistentModeWithRunningContext:v19 attribution:v7 completionHandler:v21];
    }

    else
    {
      if (v16)
      {
        *buf = 136315138;
        v23 = "[WFBackgroundShortcutRunner runningProgressSuppressionStateMachine:didDecideRunningProgressIsAllowed:dialogAttribution:]";
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, "%s Would have started persistent mode, but we are asked to suppress running progress dialogs", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __121__WFBackgroundShortcutRunner_runningProgressSuppressionStateMachine_didDecideRunningProgressIsAllowed_dialogAttribution___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getWFGeneralLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[WFBackgroundShortcutRunner runningProgressSuppressionStateMachine:didDecideRunningProgressIsAllowed:dialogAttribution:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_ERROR, "%s Failed to begin persistent mode: %@", &v6, 0x16u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 136));

  v5 = *MEMORY[0x1E69E9840];
}

- (void)runnerStateMachineDidRequestProcessExit:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[WFBackgroundShortcutRunner runnerStateMachineDidRequestProcessExit:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s Notify the host that runner will exit", &v6, 0xCu);
  }

  [(WFBackgroundShortcutRunner *)self synchronouslyPerformWithHost:&__block_literal_global_364];
  [(WFBackgroundShortcutRunner *)self unaliveProcess];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)runnerStateMachine:(id)a3 didFinishRunningShortcutWithResult:(id)a4
{
  v5 = a4;
  v6 = [(WFBackgroundShortcutRunner *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__WFBackgroundShortcutRunner_runnerStateMachine_didFinishRunningShortcutWithResult___block_invoke;
  v8[3] = &unk_1E837F870;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __84__WFBackgroundShortcutRunner_runnerStateMachine_didFinishRunningShortcutWithResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) finishRunningWithResult:*(a1 + 40)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 exitWithReason:@"shortcut finished running"];
}

- (void)runnerStateMachine:(id)a3 didRequestStoppingShortcutWithError:(id)a4
{
  v12 = a4;
  v5 = [(WFBackgroundShortcutRunner *)self workflowController];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [(WFBackgroundShortcutRunner *)self workflowController];
  v8 = [v7 workflow];

  if (v8)
  {
    v9 = [(WFBackgroundShortcutRunner *)self workflowController];
    [v9 stopWithError:v12];
  }

  else
  {
LABEL_4:
    v10 = [(WFBackgroundShortcutRunner *)self completionBlock];

    if (v10)
    {
      v9 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:v12];
      v11 = [(WFBackgroundShortcutRunner *)self stateMachine];
      [v11 finishRunningWithReason:@"runner was asked to stop but there's a completion handler and NO workflow" result:v9];
    }

    else
    {
      v9 = [(WFBackgroundShortcutRunner *)self stateMachine];
      [v9 exitWithReason:{@"-stop was called and there is no running shortcut, proceeding directly to stop"}];
    }
  }
}

- (void)finishRunningWithResult:(id)a3
{
  v4 = a3;
  v5 = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(WFBackgroundShortcutRunner *)self runEvent];

  if (v6)
  {
    v7 = [v4 error];
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = +[WFDatabaseProxy defaultDatabase];
    v10 = [(WFBackgroundShortcutRunner *)self runEvent];
    [v9 setOutcome:v8 forRunEvent:v10];

    [(WFBackgroundShortcutRunner *)self setRunEvent:0];
  }

  v11 = [(WFBackgroundShortcutRunner *)self currentRunningContext];
  if (([v4 isCancelled] & 1) == 0)
  {
    v12 = [v4 error];
    if (v12 && [v11 allowsDialogNotifications])
    {
      v13 = [v4 error];
      v14 = [v13 wf_isRequiresShortcutsJrError];

      if (v14)
      {
        goto LABEL_12;
      }

      v12 = [(WFBackgroundShortcutRunner *)self currentRunningWorkflowReference];
      v15 = [MEMORY[0x1E69E0938] standardClient];
      v16 = [v4 error];
      v17 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
      v18 = [v17 attribution];
      [v15 postNotificationAboutFailure:v16 inWorkflow:v12 dialogAttribution:v18 runningContext:v11];
    }
  }

LABEL_12:
  v19 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v20 = [v19 userInterfacePresenter];

  if (v20)
  {
    if ([(WFBackgroundShortcutRunner *)self shortcutShouldShowRunningProgress]&& ![(WFBackgroundShortcutRunner *)self runningProgressSuppressionMachineResolvedAndDeniedProgress])
    {
      dispatch_group_enter(self->_exitTaskGroup);
      v21 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
      v22 = [v21 userInterfacePresenter];
      v23 = MEMORY[0x1E696AD98];
      v24 = [v4 error];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = [v4 isCancelled] ^ 1;
      }

      v26 = [v23 numberWithInt:v25];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __54__WFBackgroundShortcutRunner_finishRunningWithResult___block_invoke;
      v29[3] = &unk_1E837E5E0;
      v29[4] = self;
      [v22 completePersistentModeWithSuccess:v26 runningContext:v11 completionHandler:v29];
    }

    else
    {
      dispatch_group_enter(self->_exitTaskGroup);
      v21 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
      v22 = [v21 userInterfacePresenter];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __54__WFBackgroundShortcutRunner_finishRunningWithResult___block_invoke_2;
      v28[3] = &unk_1E837E5E0;
      v28[4] = self;
      [v22 dismissPresentedContentForRunningContext:v11 completionHandler:v28];
    }
  }

  [(WFBackgroundShortcutRunner *)self callWorkflowRunningCompletionBlockWithResult:v4];
  v27 = [(WFBackgroundShortcutRunner *)self workflowController];
  [v27 reset];

  [(WFBackgroundShortcutRunner *)self setTransaction:0];
  [(WFBackgroundShortcutRunner *)self setCurrentRunRequest:0];
  [(WFBackgroundShortcutRunner *)self setCurrentRunningWorkflowReference:0];
  [(WFBackgroundShortcutRunner *)self setCurrentRunningContext:0];
}

- (void)callWorkflowRunningCompletionBlockWithResult:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(WFBackgroundShortcutRunner *)self completionBlock];

  v7 = getWFXPCRunnerLogObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v12 = 136315138;
      v13 = "[WFBackgroundShortcutRunner callWorkflowRunningCompletionBlockWithResult:]";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Workflow Did Finish: Calling Completion Block", &v12, 0xCu);
    }

    v9 = [(WFBackgroundShortcutRunner *)self completionBlock];
    (v9)[2](v9, v4, 0);

    completionBlock = self->_completionBlock;
    self->_completionBlock = 0;

    v7 = getWFGeneralLogObject();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v12) = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v7, OS_SIGNPOST_INTERVAL_END, 0xFFFFFFFEuLL, "BackgroundRunnerExecute", "", &v12, 2u);
    }
  }

  else if (v8)
  {
    v12 = 136315138;
    v13 = "[WFBackgroundShortcutRunner callWorkflowRunningCompletionBlockWithResult:]";
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Workflow Did Finish: No Completion Block", &v12, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __44__WFBackgroundShortcutRunner_unaliveProcess__block_invoke_351(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315138;
    v6 = "[WFBackgroundShortcutRunner unaliveProcess]_block_invoke";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_FAULT, "%s Forcing BGSR exit with dirty tasks. This is a programmer error. Exiting anyways.", &v5, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)stopWithError:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(WFBackgroundShortcutRunner *)self workflowController];
    v7 = [v6 workflow];
    v10 = 136315394;
    v11 = "[WFBackgroundShortcutRunner stopWithError:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Requested stopping workflow run: %@", &v10, 0x16u);
  }

  v8 = [(WFBackgroundShortcutRunner *)self stateMachine];
  [v8 stopShortcutWithError:v4 reason:@"-stop was called"];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)resumeRunningFromContext:(id)a3 withRequest:(id)a4 completion:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v11;

  self->_environment = 0;
  objc_storeStrong(&self->_currentRunRequest, a4);
  v13 = _Block_copy(v10);

  completionBlock = self->_completionBlock;
  self->_completionBlock = v13;

  v15 = [(WFBackgroundShortcutRunner *)self stateMachine];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"incoming resume request (%@) with context: %@", v9, v8];
  [v15 handlingRequestStateWithReason:v16];

  v17 = WFWFWorkflowControllerStateDefaultSerializedURLFromContext(v8);
  if (v17)
  {
    v18 = [v9 runSource];
    v19 = [v18 isEqualToString:*MEMORY[0x1E69E13B0]];

    if (v19)
    {
      [(WFBackgroundShortcutRunner *)self setIsPersonalAutomation:1];
    }

    v20 = [v9 extensionResourceClasses];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [MEMORY[0x1E695DFD8] set];
    }

    v28 = v22;

    v29 = [objc_alloc(MEMORY[0x1E69E0C78]) initWithAccessResourceClassNames:v28];
    v32 = [MEMORY[0x1E69E0C70] sharedManager];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __78__WFBackgroundShortcutRunner_resumeRunningFromContext_withRequest_completion___block_invoke;
    v34[3] = &unk_1E8374838;
    v35 = v17;
    v36 = self;
    v37 = v8;
    v38 = v9;
    [v32 performWithSandboxExtensions:v29 asynchronousBlock:v34];

    v30 = v35;
  }

  else
  {
    v23 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v42 = "[WFBackgroundShortcutRunner resumeRunningFromContext:withRequest:completion:]";
      v43 = 2112;
      v44 = v8;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_FAULT, "%s Unable to get state URL from context: %@", buf, 0x16u);
    }

    v24 = MEMORY[0x1E696ABC0];
    v39[0] = *MEMORY[0x1E696A578];
    v25 = WFLocalizedString(@"Unable to run");
    v40[0] = v25;
    v39[1] = *MEMORY[0x1E696A588];
    v26 = WFLocalizedString(@"An error occurred while resuming your shortcut.");
    v40[1] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v28 = [v24 errorWithDomain:@"WFBackgroundShortcutRunnerErrorDomain" code:11 userInfo:v27];

    v29 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:v28];
    v30 = [(WFBackgroundShortcutRunner *)self stateMachine];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to get state URL from context: %@", v8];
    [v30 finishRunningWithReason:v31 result:v29];
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __78__WFBackgroundShortcutRunner_resumeRunningFromContext_withRequest_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = getWFSecurityLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[WFBackgroundShortcutRunner resumeRunningFromContext:withRequest:completion:]_block_invoke";
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Error temporarily taking all sandbox extensions at workflow run resume: %@", buf, 0x16u);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__WFBackgroundShortcutRunner_resumeRunningFromContext_withRequest_completion___block_invoke_332;
  v13[3] = &unk_1E8374810;
  v12 = *(a1 + 32);
  v9 = v12.i64[0];
  v14 = vextq_s8(v12, v12, 8uLL);
  v17 = v7;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v10 = v7;
  [WFWorkflowControllerState getStateFromURL:v9 completionHandler:v13];

  v11 = *MEMORY[0x1E69E9840];
}

void __78__WFBackgroundShortcutRunner_resumeRunningFromContext_withRequest_completion___block_invoke_332(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 workflow];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v8 = +[WFDatabaseProxy defaultDatabase];
  v9 = [v8 workflowRecordForDescriptor:v7 error:0];

  if (!v9)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v10 = -[WFWorkflow initWithRecord:reference:storageProvider:migrateIfNecessary:environment:error:]([WFWorkflow alloc], "initWithRecord:reference:storageProvider:migrateIfNecessary:environment:error:", v9, v7, 0, 1, [*(a1 + 32) environment], 0);
  v11 = v10;
  if (v5 && v10)
  {
    v12 = objc_alloc_init(WFWorkflowController);
    [(WFWorkflowController *)v12 setWorkflow:v11];
    [(WFWorkflowController *)v12 setCurrentState:v5];
    [(WFWorkflowController *)v12 setDelegate:*(a1 + 32)];
    v13 = [v5 currentRunSource];
    [(WFWorkflowController *)v12 setRunSource:v13];

    -[WFWorkflowController setShouldDisablePrivacyPrompts:](v12, "setShouldDisablePrivacyPrompts:", [v5 shouldDisablePrivacyPrompts]);
    [(WFWorkflowController *)v12 setRunningContext:*(a1 + 48)];
    objc_storeStrong((*(a1 + 32) + 88), *(a1 + 48));
    objc_storeStrong((*(a1 + 32) + 160), v12);
    v14 = [*(a1 + 32) stateMachine];
    v15 = [*(a1 + 32) environment];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"resuming shortcut run for context: %@, request: %@", *(a1 + 48), *(a1 + 56)];
    [v14 startRunningShortcutWithEnvironment:v15 reference:v7 isPersonalAutomation:0 reason:v16];

    [(WFWorkflowController *)v12 run];
    v17 = [MEMORY[0x1E696AC08] defaultManager];
    v18 = *(a1 + 40);
    v32 = v6;
    LOBYTE(v16) = [v17 removeItemAtURL:v18 error:&v32];
    v19 = v32;

    if ((v16 & 1) == 0)
    {
      v20 = getWFXPCRunnerLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 40);
        *buf = 136315650;
        v36 = "[WFBackgroundShortcutRunner resumeRunningFromContext:withRequest:completion:]_block_invoke";
        v37 = 2112;
        v38 = v21;
        v39 = 2112;
        v40 = v19;
        _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s Unable to remove serialized state file at URL (%@): %@", buf, 0x20u);
      }
    }

    (*(*(a1 + 64) + 16))();
    v6 = v19;
    goto LABEL_15;
  }

LABEL_12:
  v22 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    v23 = *(a1 + 40);
    *buf = 136315650;
    v36 = "[WFBackgroundShortcutRunner resumeRunningFromContext:withRequest:completion:]_block_invoke";
    v37 = 2112;
    v38 = v23;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s Unable to get deserialized state from (%@): %@", buf, 0x20u);
  }

  v24 = MEMORY[0x1E696ABC0];
  v33[0] = *MEMORY[0x1E696A578];
  v25 = WFLocalizedString(@"Unable to run");
  v34[0] = v25;
  v33[1] = *MEMORY[0x1E696A588];
  v26 = WFLocalizedString(@"An error occurred while resuming your shortcut.");
  v34[1] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v12 = [v24 errorWithDomain:@"WFBackgroundShortcutRunnerErrorDomain" code:11 userInfo:v27];

  v28 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:v12];
  v29 = [*(a1 + 32) stateMachine];
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to deserialize workflow controller state: URL: %@, error: %@", *(a1 + 40), v12];
  [v29 finishRunningWithReason:v30 result:v28];

  (*(*(a1 + 64) + 16))();
LABEL_15:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)runActionFromRunRequestData:(id)a3 runningContext:(id)a4 completion:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v11;

  self->_environment = 4;
  v13 = _Block_copy(v9);

  completionBlock = self->_completionBlock;
  self->_completionBlock = v13;

  v15 = [(WFBackgroundShortcutRunner *)self stateMachine];
  [v15 handlingRequestStateWithReason:@"incoming remote execution request"];

  v39 = 0;
  v16 = [[WFRemoteExecutionRunRequest alloc] initWithData:v10 error:&v39];

  v17 = v39;
  if (v16)
  {
    [(WFBackgroundShortcutRunner *)self setCurrentRemoteExecutionRunRequest:v16];
    v18 = [(WFBackgroundShortcutRunner *)self stateMachine];
    v19 = [v18 isRunningShortcut];

    if (v19)
    {
      v20 = getWFXPCRunnerLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v41 = "[WFBackgroundShortcutRunner runActionFromRunRequestData:runningContext:completion:]";
        _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s BackgroundShortcutRunner asked to run two workflows in parallel which is not supported.", buf, 0xCu);
      }

      v21 = WFBackgroundShortcutRunnerError(3, 0);
      v22 = [(WFBackgroundShortcutRunner *)self currentRemoteExecutionRunRequest];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke;
      v36[3] = &unk_1E837F870;
      v37 = v21;
      v38 = self;
      v23 = v21;
      [(WFBackgroundShortcutRunner *)self sendResponseForRunRequest:v22 controller:0 error:v23 completion:v36];
    }

    else
    {
      v29 = [MEMORY[0x1E69E0C70] sharedManager];
      v30 = [MEMORY[0x1E69E0C78] all];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke_2;
      v32[3] = &unk_1E83747E8;
      v33 = v16;
      v34 = self;
      v35 = v8;
      [v29 performWithSandboxExtensions:v30 asynchronousBlock:v32];

      v23 = v33;
    }
  }

  else
  {
    v24 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v41 = "[WFBackgroundShortcutRunner runActionFromRunRequestData:runningContext:completion:]";
      v42 = 2114;
      v43 = v17;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s failed to read run request from data, error: %{public}@", buf, 0x16u);
    }

    v25 = objc_alloc(MEMORY[0x1E69E0E28]);
    v26 = WFBackgroundShortcutRunnerError(1, v17);
    v23 = [v25 initWithError:v26];

    v27 = [(WFBackgroundShortcutRunner *)self stateMachine];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to parse remote execution run request from data, error: %@", v17];
    [v27 finishRunningWithReason:v28 result:v23];
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:*(a1 + 32)];
  v2 = [*(a1 + 40) stateMachine];
  [v2 finishRunningWithReason:@"incoming remote execution request landed in existing runner result:{which is not supported", v3}];
}

void __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = getWFSecurityLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[WFBackgroundShortcutRunner runActionFromRunRequestData:runningContext:completion:]_block_invoke_2";
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Error temporarily taking all sandbox extensions at workflow run start: %@", buf, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) fileCoordinator];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke_295;
  v15[3] = &unk_1E83747C0;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v17 = v7;
  v15[4] = v11;
  v16 = v12;
  v13 = v7;
  [v9 inflateWithFileCoordinator:v10 completion:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke_295(id *a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke_2_296;
  aBlock[3] = &unk_1E837F4E8;
  v61 = a1[6];
  v7 = _Block_copy(aBlock);
  if (v6)
  {
    v8 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [v5 identifier];
      *buf = 136315650;
      v63 = "[WFBackgroundShortcutRunner runActionFromRunRequestData:runningContext:completion:]_block_invoke";
      v64 = 2114;
      v65 = v9;
      v66 = 2114;
      v67 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s <%{public}@> an error occurred while inflating request: %{public}@", buf, 0x20u);
    }

    v10 = WFBackgroundShortcutRunnerError(5, v6);
    v11 = a1[4];
    v12 = [v11 currentRemoteExecutionRunRequest];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke_297;
    v56[3] = &unk_1E837C1E8;
    v13 = v10;
    v14 = a1[4];
    v57 = v13;
    v58 = v14;
    v59 = v6;
    [v11 sendResponseForRunRequest:v12 controller:0 error:v13 completion:v56];

    v15 = v57;
  }

  else
  {
    v16 = +[WFActionRegistry sharedRegistry];
    v17 = [v5 actionIdentifier];
    v18 = [v5 serializedParameters];
    v13 = [v16 createActionWithIdentifier:v17 serializedParameters:v18];

    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v15 = [v5 workflowID];
      v43 = +[WFDatabaseProxy defaultDatabase];
      v51 = [v43 referenceForWorkflowID:v15];
      v50 = objc_alloc_init(WFWorkflowRecord);
      v26 = [v51 name];
      [(WFWorkflowRecord *)v50 setName:v26];

      v52 = [(WFWorkflow *)[WFRemoteExecutionRunRequestWorkflow alloc] initWithRecord:v50 reference:v51 storageProvider:0 error:0];
      v27 = [v5 workflowID];
      [(WFRemoteExecutionRunRequestWorkflow *)v52 setWorkflowID:v27];

      [(WFWorkflow *)v52 addAction:v13];
      [v13 willBeAddedToWorkflow:v52];
      [v13 wasAddedToWorkflow:v52];
      v28 = objc_alloc(MEMORY[0x1E69E0E38]);
      v29 = [(WFRemoteExecutionRunRequestWorkflow *)v52 workflowID];
      v49 = [v28 initWithWorkflowIdentifier:v29];

      [v49 setRunKind:*MEMORY[0x1E69E1350]];
      v44 = [WFWorkflowControllerState alloc];
      v48 = [v5 variables];
      v47 = [v5 input];
      v46 = [v5 processedParameters];
      v30 = [MEMORY[0x1E695DF00] date];
      v31 = [v13 contentAttributionTracker];
      v32 = v13;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;

      v35 = [v34 controlFlowTracker];
      LOBYTE(v42) = 0;
      v45 = [(WFWorkflowControllerState *)v44 initWithWorkflow:0 variables:v48 currentActionIndex:0 runningContext:v49 currentInput:v47 currentProcessedParameters:v46 startDate:v30 currentRunSource:0 numberOfDialogsPresented:0 outputBehavior:2 contentAttributionTracker:v31 contentItemCache:0 flowTracker:v35 allowedOnceSmartPromptStates:0 extensionResourceClasses:0 shouldDisablePrivacyPrompts:v42];

      v36 = objc_alloc_init(WFWorkflowController);
      [(WFWorkflowController *)v36 setWorkflow:v52];
      [(WFWorkflowController *)v36 setCurrentState:v45];
      [(WFWorkflowController *)v36 setDelegate:a1[4]];
      v37 = a1[4];
      v38 = [v37 environment];
      v39 = [v37 metricsRunSourceFromEnvironment:v38 runSource:*MEMORY[0x1E69E13C0]];
      [(WFWorkflowController *)v36 setRunSource:v39];

      [(WFWorkflowController *)v36 setRunningContext:a1[5]];
      objc_storeStrong(a1[4] + 11, a1[5]);
      objc_storeStrong(a1[4] + 20, v36);
      v40 = [a1[4] stateMachine];
      [v40 startRunningShortcutWithEnvironment:objc_msgSend(a1[4] reference:"environment") isPersonalAutomation:0 reason:{0, @"running remote execution request"}];

      [(WFWorkflowController *)v36 run];
      v25 = v43;
    }

    else
    {
      v19 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v20 = [v5 identifier];
        *buf = 136315650;
        v63 = "[WFBackgroundShortcutRunner runActionFromRunRequestData:runningContext:completion:]_block_invoke_2";
        v64 = 2114;
        v65 = v20;
        v66 = 2114;
        v67 = v13;
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_FAULT, "%s <%{public}@> stopping execution because of invalid action: %{public}@", buf, 0x20u);
      }

      v21 = WFBackgroundShortcutRunnerError(4, 0);
      v22 = a1[4];
      v23 = [v22 currentRemoteExecutionRunRequest];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke_302;
      v53[3] = &unk_1E837F870;
      v15 = v21;
      v24 = a1[4];
      v54 = v15;
      v55 = v24;
      [v22 sendResponseForRunRequest:v23 controller:0 error:v15 completion:v53];

      v25 = v54;
    }
  }

  v7[2](v7);
  v41 = *MEMORY[0x1E69E9840];
}

void __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke_297(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:*(a1 + 32)];
  v2 = [*(a1 + 40) stateMachine];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"an error occurred while inflating request: %@", *(a1 + 48)];
  [v2 finishRunningWithReason:v3 result:v4];
}

void __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke_302(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:*(a1 + 32)];
  v2 = [*(a1 + 40) stateMachine];
  [v2 finishRunningWithReason:@"couldn't make the action in the remote execution request" result:v3];
}

- (void)beginPersistentModeIfNeededWithRunningContext:(id)a3 action:(id)a4 attributionBehavior:(int64_t)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v11 = [v10 userInterfacePresenter];
  v12 = [v11 currentPersistentRunningContextIdentifier];
  v13 = [v8 identifier];
  v14 = v12;
  v15 = v13;
  v16 = v15;
  if (v14 == v15)
  {

    goto LABEL_7;
  }

  if (!v14 || !v15)
  {

    goto LABEL_10;
  }

  v17 = [v14 isEqualToString:v15];

  if (v17)
  {
LABEL_7:
    v18 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v8 identifier];
      v32 = 136315394;
      v33 = "[WFBackgroundShortcutRunner beginPersistentModeIfNeededWithRunningContext:action:attributionBehavior:]";
      v34 = 2112;
      v35 = v19;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s Already began persistent mode for %@ not doing anything", &v32, 0x16u);
    }

    goto LABEL_18;
  }

LABEL_10:
  if (![(WFBackgroundShortcutRunner *)self forcePersistentModeWhileStepping])
  {
    v18 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315138;
      v33 = "[WFBackgroundShortcutRunner beginPersistentModeIfNeededWithRunningContext:action:attributionBehavior:]";
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s Not starting persistent mode because should not force.", &v32, 0xCu);
    }

LABEL_18:

    goto LABEL_19;
  }

  v20 = [(WFBackgroundShortcutRunner *)self workflowController];
  v21 = [v20 currentAction];
  v22 = [v21 shouldAppearAttributedFromSystemSurfacesForBehavior:a5];

  if ((v22 & 1) == 0)
  {
    v25 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [(WFBackgroundShortcutRunner *)self workflowController];
      v27 = [v26 currentAction];
      v32 = 136315394;
      v33 = "[WFBackgroundShortcutRunner beginPersistentModeIfNeededWithRunningContext:action:attributionBehavior:]";
      v34 = 2112;
      v35 = v27;
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_INFO, "%s Skipping Spotlight stepping prep for action: %@ because action did not want attribution with behavior", &v32, 0x16u);
    }

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [v28 setCurrentAction:v9];

    v25 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    v29 = [v25 userInterfacePresenter];
    v30 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    v31 = [v30 standaloneActionAttribution];
    [v29 beginPersistentModeWithRunningContext:v8 attribution:v31 completionHandler:&__block_literal_global_284_7557];

LABEL_23:
    goto LABEL_19;
  }

  v23 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v32 = 136315394;
    v33 = "[WFBackgroundShortcutRunner beginPersistentModeIfNeededWithRunningContext:action:attributionBehavior:]";
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_DEBUG, "%s Skipping beginning persistent mode for run workflow action since it will handle starting it: %@", &v32, 0x16u);
  }

  [v9 beginPersistentModeForSpotlightWhenReady];
LABEL_19:

  v24 = *MEMORY[0x1E69E9840];
}

void __103__WFBackgroundShortcutRunner_beginPersistentModeIfNeededWithRunningContext_action_attributionBehavior___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFBackgroundShortcutRunner beginPersistentModeIfNeededWithRunningContext:action:attributionBehavior:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Failed to begin persistent mode: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)prepareForSteppingInPersistentModeWithAction:(id)a3
{
  v4 = [(WFBackgroundShortcutRunner *)self currentRunningContext];
  v5 = [(WFBackgroundShortcutRunner *)self workflowController];
  v6 = [v5 currentAction];
  [(WFBackgroundShortcutRunner *)self beginPersistentModeIfNeededWithRunningContext:v4 action:v6 attributionBehavior:0];

  if ([MEMORY[0x1E695E000] forceSpotlightImplicitResult])
  {
    v7 = [(WFBackgroundShortcutRunner *)self workflowController];
    v10 = [v7 workflow];

    v8 = +[WFActionRegistry sharedRegistry];
    v9 = [v8 createActionWithIdentifier:@"is.workflow.actions.showresult" serializedParameters:0];

    [v10 addAction:v9];
    [v9 unlockInputParameter];
    [v9 snapInputParameterIfNecessary];
  }
}

- (void)stepWithAction:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 isMissing])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFBackgroundShortcutRunner.m" lineNumber:636 description:@"Tried to step with an invalid action"];
  }

  v6 = [(WFBackgroundShortcutRunner *)self workflowController];
  v7 = [v6 workflow];

  v8 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[WFBackgroundShortcutRunner stepWithAction:]";
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Adding action: %@ to workflow: %@", &v12, 0x20u);
  }

  [v7 addAction:v5];
  [(WFBackgroundShortcutRunner *)self prepareForSteppingInPersistentModeWithAction:v5];
  v9 = [(WFBackgroundShortcutRunner *)self workflowController];
  [v9 step];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)runWorkflowWithDescriptor:(id)a3 request:(id)a4 inEnvironment:(id)a5 runningContext:(id)a6 completion:(id)a7
{
  v91[1] = *MEMORY[0x1E69E9840];
  v71 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v12 isStepwise])
  {
    v16 = [(WFBackgroundShortcutRunner *)self accessSpecifier];
    v17 = [v16 allowStepwiseExecution];

    if ((v17 & 1) == 0)
    {
      v36 = objc_alloc(MEMORY[0x1E69E0E28]);
      v37 = MEMORY[0x1E696ABC0];
      v90 = *MEMORY[0x1E696A578];
      v91[0] = @"You're trying to run a shortcut stepwise, but you don't have the entitlement for it.";
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:&v90 count:1];
      v39 = [v37 errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v38];
      v40 = WFBackgroundShortcutRunnerError(0, v39);
      v27 = [v36 initWithError:v40];

      v28 = getWFGeneralLogObject();
      if (os_signpost_enabled(v28))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_1CA256000, v28, OS_SIGNPOST_INTERVAL_END, 0xFFFFFFFEuLL, "BackgroundRunnerExecute", "", &buf, 2u);
      }

      goto LABEL_23;
    }
  }

  v18 = os_log_create("com.apple.shortcuts", "SystemSignpostIntervals");
  v19 = [v14 identifier];
  v20 = [v19 hash];

  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v18, OS_SIGNPOST_INTERVAL_END, v20, "RunnerRunRequest", "", &buf, 2u);
  }

  v21 = getWFGeneralLogObject();
  if (os_signpost_enabled(v21))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xFFFFFFFEuLL, "BackgroundRunnerExecute", " enableTelemetry=YES ", &buf, 2u);
  }

  v22 = [(WFBackgroundShortcutRunner *)self stateMachine];
  v23 = [v22 isRunningShortcut];

  if (!v23)
  {
    if (+[WFAssessmentModeManager isAssessmentModeSupportedOnCurrentDevice])
    {
      v29 = [(WFBackgroundShortcutRunner *)self assessmentModeManager];
      v30 = [v29 isInAssessmentMode];

      v31 = getWFXPCRunnerLogObject();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v30)
      {
        if (v32)
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]";
          _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_DEFAULT, "%s Device is in assessmentMode cancelling shortcut execution.", &buf, 0xCu);
        }

        v33 = objc_alloc(MEMORY[0x1E69E0E28]);
        v34 = [(WFBackgroundShortcutRunner *)self assessmentModeActiveError];
        v35 = WFBackgroundShortcutRunnerError(16, v34);
        v27 = [v33 initWithError:v35];

        v28 = getWFGeneralLogObject();
        if (os_signpost_enabled(v28))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1CA256000, v28, OS_SIGNPOST_INTERVAL_END, 0xFFFFFFFEuLL, "BackgroundRunnerExecute", "", &buf, 2u);
        }

        goto LABEL_23;
      }

      if (v32)
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]";
        _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_DEFAULT, "%s Device is NOT in assessmentMode observing for changes.", &buf, 0xCu);
      }

      v42 = [(WFBackgroundShortcutRunner *)self assessmentModeManager];
      [v42 startObservingForAssesmentModeChangesIfNeeded];
    }

    v43 = [(WFBackgroundShortcutRunner *)self stateMachine];
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"new run request: %@", v12];
    [v43 handlingRequestStateWithReason:v44];

    v45 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v45;

    self->_environment = [v13 integerValue];
    objc_storeStrong(&self->_currentRunRequest, a4);
    v47 = _Block_copy(v15);
    completionBlock = self->_completionBlock;
    self->_completionBlock = v47;

    v27 = +[WFDatabaseProxy defaultDatabase];
    v82 = 0;
    v49 = [v71 workflowReferenceWithDatabase:v27 error:&v82];
    v50 = v82;
    v41 = v50;
    if (!v49 && v50)
    {
      v51 = objc_alloc(MEMORY[0x1E69E0E28]);
      v52 = WFBackgroundShortcutRunnerError(1, 0);
      v53 = [v51 initWithError:v52];

      v54 = [v53 error];
      (*(v15 + 2))(v15, v53, v54);

LABEL_46:
      goto LABEL_47;
    }

    if ([v49 disabledOnLockScreen] && +[WFCompactUnlockService isDeviceLocked](WFCompactUnlockService, "isDeviceLocked"))
    {
      v55 = MEMORY[0x1E696ABC0];
      v88 = *MEMORY[0x1E696A578];
      v56 = WFLocalizedString(@"This shortcut cannot run when the device is locked. You can change this in the Privacy tab of the shortcut settings.");
      v89 = v56;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v58 = [v55 errorWithDomain:@"WFWorkflowErrorDomain" code:7 userInfo:v57];

      v59 = objc_alloc(MEMORY[0x1E69E0E28]);
      v60 = WFBackgroundShortcutRunnerError(15, v58);
      v61 = [v59 initWithError:v60];

      v62 = [v61 error];
      (*(v15 + 2))(v15, v61, v62);

      goto LABEL_46;
    }

    objc_storeStrong(&self->_currentRunningWorkflowReference, v49);
    objc_storeStrong(&self->_currentRunningContext, a6);
    self->_isPersonalAutomation = [v49 hiddenFromLibraryAndSync];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v86 = 0x2020000000;
    v87 = 0;
    if (v49)
    {
      if ([(WFBackgroundShortcutRunner *)self isPersonalAutomation])
      {
        v63 = getWFSecurityLogObject();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *v83 = 136315138;
          v84 = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]";
          v64 = "%s Disabling privacy prompts because this is a personal automation.";
LABEL_42:
          v65 = v63;
          v66 = OS_LOG_TYPE_DEFAULT;
LABEL_43:
          _os_log_impl(&dword_1CA256000, v65, v66, v64, v83, 0xCu);
        }
      }

      else if (self->_environment == 1)
      {
        v63 = getWFSecurityLogObject();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *v83 = 136315138;
          v84 = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]";
          v64 = "%s Disabling privacy prompts because this is a home automation.";
          goto LABEL_42;
        }
      }

      else
      {
        if (![MEMORY[0x1E695E000] smartPromptsExplicitlyDisabled])
        {
          goto LABEL_45;
        }

        v63 = getWFSecurityLogObject();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *v83 = 136315138;
          v84 = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]";
          v64 = "%s ‼️ Disabling privacy prompts due to disable smart prompts defaults. If you did not set this explicitly, your device is in an unexpected and unsupported state.";
          v65 = v63;
          v66 = OS_LOG_TYPE_ERROR;
          goto LABEL_43;
        }
      }
    }

    else
    {
      v63 = getWFSecurityLogObject();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *v83 = 136315138;
        v84 = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]";
        v64 = "%s Disabling privacy prompts because this is an on-the-fly shortcut.";
        goto LABEL_42;
      }
    }

    *(*(&buf + 1) + 24) = 1;
LABEL_45:
    v67 = [MEMORY[0x1E69E0C70] sharedManager];
    v68 = [MEMORY[0x1E69E0C78] all];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __104__WFBackgroundShortcutRunner_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke;
    v72[3] = &unk_1E8374798;
    v73 = v71;
    v74 = v13;
    v75 = v27;
    v76 = self;
    v81 = a2;
    v77 = v12;
    v78 = v14;
    v79 = v49;
    p_buf = &buf;
    [v67 performWithSandboxExtensions:v68 asynchronousBlock:v72];

    _Block_object_dispose(&buf, 8);
    goto LABEL_46;
  }

  v24 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]";
    _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_ERROR, "%s BackgroundShortcutRunner asked to run two workflows in parallel which is not supported.", &buf, 0xCu);
  }

  v25 = objc_alloc(MEMORY[0x1E69E0E28]);
  v26 = WFBackgroundShortcutRunnerError(3, 0);
  v27 = [v25 initWithError:v26];

  v28 = getWFGeneralLogObject();
  if (os_signpost_enabled(v28))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v28, OS_SIGNPOST_INTERVAL_END, 0xFFFFFFFEuLL, "BackgroundRunnerExecute", "", &buf, 2u);
  }

LABEL_23:

  v41 = [v27 error];
  (*(v15 + 2))(v15, v27, v41);
LABEL_47:

  v69 = *MEMORY[0x1E69E9840];
}

void __104__WFBackgroundShortcutRunner_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = getWFSecurityLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]_block_invoke";
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Error temporarily taking all sandbox extensions at workflow run start: %@", buf, 0x16u);
    }
  }

  v11 = getWFXPCRunnerLogObject();
  v12 = os_signpost_id_generate(v11);

  v13 = getWFXPCRunnerLogObject();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LoadWorkflow", "", buf, 2u);
  }

  v15 = *(a1 + 32);
  v16 = [*(a1 + 40) integerValue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __104__WFBackgroundShortcutRunner_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke_224;
  v24[3] = &unk_1E8374770;
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v24[4] = *(a1 + 56);
  v30 = v9;
  v19 = *(a1 + 96);
  v32 = v12;
  v33 = v19;
  v25 = v18;
  v26 = *(a1 + 32);
  v27 = *(a1 + 72);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v28 = v20;
  v31 = v21;
  v29 = *(a1 + 48);
  v22 = v9;
  [v15 createWorkflowWithEnvironment:v16 database:v17 completionHandler:v24];

  v23 = *MEMORY[0x1E69E9840];
}

void __104__WFBackgroundShortcutRunner_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke_224(uint64_t a1, void *a2, void *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = getWFXPCRunnerLogObject();
  v8 = v7;
  v9 = *(a1 + 96);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v8, OS_SIGNPOST_INTERVAL_END, v9, "LoadWorkflow", "", buf, 2u);
  }

  if (!v5)
  {
    v12 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v73 = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]_block_invoke";
      v74 = 2112;
      v75 = v6;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Unable to get workflow from descriptor. %@", buf, 0x16u);
    }

    v13 = objc_alloc(MEMORY[0x1E69E0E28]);
    v14 = WFBackgroundShortcutRunnerError(1, v6);
    v15 = [v13 initWithError:v14];

    v16 = [*(a1 + 32) stateMachine];
    v17 = v16;
    v18 = @"unable to find requested workflow to run";
    goto LABEL_23;
  }

  v10 = [v5 environment];
  if (v10 != [*(a1 + 32) environment])
  {
    v62 = [MEMORY[0x1E696AAA8] currentHandler];
    [v62 handleFailureInMethod:*(a1 + 104) object:*(a1 + 32) file:@"WFBackgroundShortcutRunner.m" lineNumber:378 description:@"Environment on workflow should be the same as environment of BGSR"];
  }

  v11 = [v5 actions];
  if ([v11 count])
  {

    goto LABEL_13;
  }

  v19 = [*(a1 + 32) isStepwiseExecution];

  if (v19)
  {
LABEL_13:
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v23 = [v20 accessSpecifier];
    v24 = [v5 record];
    LOBYTE(v20) = [v20 allowIncomingRunRequest:v21 withDescriptor:v22 accessSpecifier:v23 record:v24];

    if (v20)
    {
      [v5 setIgnoreModifications:1];
      v25 = getWFRunningLifecycleLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 40);
        *buf = 138543618;
        v73 = v5;
        v74 = 2114;
        v75 = v26;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_DEFAULT, "Starting shortcut run: %{public}@, request: %{public}@", buf, 0x16u);
      }

      v27 = [*(a1 + 32) stateMachine];
      v28 = [*(a1 + 32) environment];
      v29 = [v5 reference];
      v30 = [*(a1 + 32) isPersonalAutomation];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"running run request: %@", *(a1 + 40)];
      [v27 startRunningShortcutWithEnvironment:v28 reference:v29 isPersonalAutomation:v30 reason:v31];

      if ([*(a1 + 32) environment] != 1 || (objc_msgSend(v5, "isResidentCompatible") & 1) != 0)
      {
        v32 = *(a1 + 40);
        if (v32)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        v15 = v33;

        v47 = [v15 action];
        [*(a1 + 56) setContextualAction:v47];

        v48 = [v15 actionContext];
        [*(a1 + 56) setContextualActionContext:v48];

        v49 = *(a1 + 40);
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __104__WFBackgroundShortcutRunner_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke_260;
        v63[3] = &unk_1E8374748;
        v50 = *(a1 + 80);
        v51 = *(a1 + 32);
        v68 = v50;
        v63[4] = v51;
        v64 = v5;
        v52 = *(a1 + 64);
        v53 = *(a1 + 40);
        v54 = *(a1 + 56);
        v55 = *(a1 + 48);
        *&v56 = v54;
        *(&v56 + 1) = v55;
        *&v57 = v52;
        *(&v57 + 1) = v53;
        v65 = v57;
        v66 = v56;
        v69 = *(a1 + 88);
        v67 = *(a1 + 72);
        [v49 getInputWithCompletionHandler:v63];

        goto LABEL_29;
      }

      v59 = getWFXPCRunnerLogObject();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v73 = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v59, OS_LOG_TYPE_ERROR, "%s workflow is not home resident-compatible, but run from home-resident environment", buf, 0xCu);
      }

      v60 = objc_alloc(MEMORY[0x1E69E0E28]);
      v61 = WFBackgroundShortcutRunnerError(2, 0);
      v15 = [v60 initWithError:v61];

      v16 = [*(a1 + 32) stateMachine];
      v17 = v16;
      v18 = @"workflow is not home resident-compatible, but run from home-resident environment";
    }

    else
    {
      v34 = objc_alloc(MEMORY[0x1E69E0E28]);
      v35 = WFBackgroundShortcutRunnerError(0, v6);
      v15 = [v34 initWithError:v35];

      v16 = [*(a1 + 32) stateMachine];
      v17 = v16;
      v18 = @"missing required entitlement";
    }

LABEL_23:
    [v16 finishRunningWithReason:v18 result:v15];

    (*(*(a1 + 80) + 16))();
    goto LABEL_29;
  }

  v36 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = [v5 name];
    *buf = 136315394;
    v73 = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]_block_invoke";
    v74 = 2112;
    v75 = v37;
    _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_ERROR, "%s “%@” contains no actions.", buf, 0x16u);
  }

  v38 = MEMORY[0x1E696ABC0];
  v70[0] = *MEMORY[0x1E696A578];
  v39 = WFLocalizedString(@"Empty Shortcut");
  v71[0] = v39;
  v70[1] = *MEMORY[0x1E696A588];
  v40 = MEMORY[0x1E696AEC0];
  v41 = WFLocalizedString(@"“%@” contains no actions.");
  v42 = [v5 name];
  v43 = [v40 localizedStringWithFormat:v41, v42];
  v71[1] = v43;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
  v15 = [v38 errorWithDomain:@"WFBackgroundShortcutRunnerErrorDomain" code:10 userInfo:v44];

  v45 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:v15];
  v46 = [*(a1 + 32) stateMachine];
  [v46 finishRunningWithReason:@"no actions in workflow" result:v45];

  (*(*(a1 + 80) + 16))();
LABEL_29:

  v58 = *MEMORY[0x1E69E9840];
}

void __104__WFBackgroundShortcutRunner_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke_260(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 88) + 16))();
  if (v5 || !v6)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __104__WFBackgroundShortcutRunner_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke_264;
    v23[3] = &unk_1E8374720;
    v13 = v12;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v27 = v5;
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a1 + 72);
    v30 = *(a1 + 96);
    v19 = *(a1 + 80);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v28 = v21;
    v29 = v20;
    [v10 evaluateRemoteQuarantinePolicyForWorkflow:v11 workflowReference:v13 withCompletionHandler:v23];

    v7 = v24;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:v6];
    v8 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]_block_invoke";
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Could not get input with error: %@", buf, 0x16u);
    }

    v9 = [*(a1 + 32) stateMachine];
    [v9 finishRunningWithReason:@"no input and input error" result:v7];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __104__WFBackgroundShortcutRunner_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke_264(uint64_t a1, char a2, void *a3, void *a4)
{
  v22 = a3;
  v7 = a4;
  if (a2)
  {
    if (v22)
    {
      v8 = [*(a1 + 48) remoteQuarantineHash];
      v9 = [v8 isEqualToData:v22];

      if ((v9 & 1) == 0)
      {
        v10 = +[WFDatabaseProxy defaultDatabase];
        [v10 storeQuarantineHashForWorkflowWithReference:*(a1 + 32) quarantineHash:v22];
      }
    }

    v11 = objc_alloc_init(WFWorkflowController);
    [*(a1 + 40) setWorkflowController:v11];
    [(WFWorkflowController *)v11 setWorkflow:*(a1 + 48)];
    [(WFWorkflowController *)v11 setInput:*(a1 + 56)];
    [(WFWorkflowController *)v11 setDelegate:*(a1 + 40)];
    v12 = [*(a1 + 64) automationType];
    [(WFWorkflowController *)v11 setAutomationType:v12];

    v13 = [*(a1 + 64) runViewSource];
    [(WFWorkflowController *)v11 setRunViewSource:v13];

    [(WFWorkflowController *)v11 setRunningContext:*(a1 + 72)];
    [(WFWorkflowController *)v11 setDonateInteraction:0];
    v14 = [*(a1 + 64) listenerEndpoints];
    [(WFWorkflowController *)v11 setListenerEndpoints:v14];

    -[WFWorkflowController setIsAutomationSuggestion:](v11, "setIsAutomationSuggestion:", [*(a1 + 64) isAutomationSuggestion]);
    v15 = [*(a1 + 64) trialID];
    [(WFWorkflowController *)v11 setAutomationTrialID:v15];

    v16 = *(a1 + 40);
    v17 = [v16 environment];
    v18 = [*(a1 + 64) runSource];
    v19 = [v16 metricsRunSourceFromEnvironment:v17 runSource:v18];
    [(WFWorkflowController *)v11 setRunSource:v19];

    -[WFWorkflowController setOutputBehavior:](v11, "setOutputBehavior:", [*(a1 + 64) outputBehavior]);
    v20 = *(a1 + 80);
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *(*(*(a1 + 96) + 8) + 24) = [v20 shouldDisablePrivacyPrompts];
    }

    else
    {

      v20 = 0;
    }

    [(WFWorkflowController *)v11 setShouldDisablePrivacyPrompts:*(*(*(a1 + 96) + 8) + 24)];
    [*(a1 + 40) startWorkflowExecution:*(a1 + 64) workflowController:v11 descriptor:*(a1 + 80) workflowReference:*(a1 + 32) database:*(a1 + 88)];
  }

  else
  {
    if (*(a1 + 32))
    {
      v21 = +[WFDatabaseProxy defaultDatabase];
      [v21 quarantineWorkflowWithReference:*(a1 + 32)];
    }

    v11 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:v7];
    v20 = [*(a1 + 40) stateMachine];
    [v20 finishRunningWithReason:@"remote quarantine error" result:v11];
  }
}

- (void)startWorkflowExecution:(id)a3 workflowController:(id)a4 descriptor:(id)a5 workflowReference:(id)a6 database:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a4;
  v17 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v28 = "[WFBackgroundShortcutRunner startWorkflowExecution:workflowController:descriptor:workflowReference:database:]";
    v29 = 2048;
    v30 = CACurrentMediaTime();
    _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEBUG, "%s [Performance] Starting workflow run, %f", buf, 0x16u);
  }

  [v16 run];
  v18 = [v12 logRunEvent];
  if (v14 && v18)
  {
    v19 = [v12 runSource];
    v20 = [v15 logRunOfWorkflow:v14 withSource:v19 triggerID:0];
    [(WFBackgroundShortcutRunner *)self setRunEvent:v20];
  }

  if ([v12 donateInteraction])
  {
    v21 = dispatch_get_global_queue(0, 0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __110__WFBackgroundShortcutRunner_startWorkflowExecution_workflowController_descriptor_workflowReference_database___block_invoke;
    v23[3] = &unk_1E837F848;
    v23[4] = self;
    v24 = v13;
    v25 = v15;
    v26 = v14;
    dispatch_async(v21, v23);
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __110__WFBackgroundShortcutRunner_startWorkflowExecution_workflowController_descriptor_workflowReference_database___block_invoke(void *a1)
{
  dispatch_group_enter(*(a1[4] + 136));
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __110__WFBackgroundShortcutRunner_startWorkflowExecution_workflowController_descriptor_workflowReference_database___block_invoke_2;
  v6[3] = &unk_1E837FA70;
  v6[4] = a1[4];
  return [v2 donateRunInteractionWithDatabase:v3 workflowReference:v4 completionHandler:v6];
}

- (void)prewarmRunnerWithCompletion:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFBackgroundShortcutRunner prewarmRunnerWithCompletion:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Runner prewarm complete", &v6, 0xCu);
  }

  v3[2](v3, 0);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateRunViewSource:(id)a3
{
  v4 = a3;
  v6 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v5 = [v6 userInterfacePresenter];
  [v5 updateRunViewSource:v4];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[WFBackgroundShortcutRunner listener:shouldAcceptNewConnection:]";
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEBUG, "%s Received new connection", buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__WFBackgroundShortcutRunner_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_1E837FA70;
  v14[4] = self;
  [v5 setInterruptionHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__WFBackgroundShortcutRunner_listener_shouldAcceptNewConnection___block_invoke_196;
  v13[3] = &unk_1E837FA70;
  v13[4] = self;
  [v5 setInvalidationHandler:v13];
  v7 = WFOutOfProcessWorkflowControllerHostXPCInterface();
  [v5 setRemoteObjectInterface:v7];

  v8 = WFOutOfProcessWorkflowControllerVendorXPCInterface();
  [v5 setExportedInterface:v8];

  [v5 setExportedObject:self];
  [v5 resume];
  [(WFBackgroundShortcutRunner *)self setXpcConnection:v5];
  v9 = [MEMORY[0x1E69E0910] accessSpecifierForXPCConnection:v5];

  [(WFBackgroundShortcutRunner *)self setAccessSpecifier:v9];
  v10 = [(WFBackgroundShortcutRunner *)self stateMachine];
  [v10 idleStateWithReason:@"incoming connection to runner"];

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void __65__WFBackgroundShortcutRunner_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[WFBackgroundShortcutRunner listener:shouldAcceptNewConnection:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_ERROR, "%s XPC connection interrupted", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) stateMachine];
  [v3 connectionInvalidatedOrInterrupted];

  v4 = *MEMORY[0x1E69E9840];
}

void __65__WFBackgroundShortcutRunner_listener_shouldAcceptNewConnection___block_invoke_196(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[WFBackgroundShortcutRunner listener:shouldAcceptNewConnection:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_ERROR, "%s XPC connection invalidated", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) stateMachine];
  [v3 connectionInvalidatedOrInterrupted];

  v4 = *MEMORY[0x1E69E9840];
}

- (WFBackgroundShortcutRunner)initWithProcessPolicy:(unint64_t)a3
{
  v25.receiver = self;
  v25.super_class = WFBackgroundShortcutRunner;
  v4 = [(WFBackgroundShortcutRunner *)&v25 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v6 = [MEMORY[0x1E69E0910] accessSpecifierUnrestricted];
        [(WFBackgroundShortcutRunner *)v5 setAccessSpecifier:v6];

        [WFInitialization initializeProcessWithDatabase:0 skipDeletingTemporaryFiles:1];
      }
    }

    else
    {
      v7 = [(WFBackgroundShortcutRunner *)v4 initializeSharedTemporaryDirectoryLock]^ 1;
      [WFInitialization initializeProcessWithDatabase:0 skipDeletingTemporaryFiles:v7];
      if ((v7 & 1) == 0)
      {
        [(WFBackgroundShortcutRunner *)v5 demoteSharedTemporaryDirectoryLock];
      }

      v8 = [MEMORY[0x1E69E0938] standardClient];
      v9 = [v8 getVaultItemsAccessForBackgroundRunner];

      [v9 enumerateObjectsUsingBlock:&__block_literal_global_7653];
      [(WFBackgroundShortcutRunner *)v5 setDataVaultFileURLs:v9];
    }

    v10 = [[WFBackgroundShortcutRunnerStateMachine alloc] initWithProcessPolicy:a3];
    [(WFBackgroundShortcutRunnerStateMachine *)v10 setDelegate:v5];
    stateMachine = v5->_stateMachine;
    v5->_stateMachine = v10;
    v12 = v10;

    v13 = objc_opt_new();
    [(WFRunningProgressSuppressionStateMachine *)v13 setDelegate:v5];
    runningProgressSuppressionStateMachine = v5->_runningProgressSuppressionStateMachine;
    v5->_runningProgressSuppressionStateMachine = v13;
    v15 = v13;

    v5->_runningProgressSuppressionMachineResolvedAndDeniedProgress = 0;
    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v17 = dispatch_queue_create("com.apple.WorkflowKit.BackgroundShortcutRunner.queue", v16);
    queue = v5->_queue;
    v5->_queue = v17;

    v19 = objc_opt_new();
    actionReversalStates = v5->_actionReversalStates;
    v5->_actionReversalStates = v19;

    v21 = dispatch_group_create();
    exitTaskGroup = v5->_exitTaskGroup;
    v5->_exitTaskGroup = v21;

    v23 = v5;
  }

  return v5;
}

void __52__WFBackgroundShortcutRunner_initWithProcessPolicy___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];
  [v2 startAccessingSecurityScopedResource];
}

@end