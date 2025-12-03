@interface WFBackgroundShortcutRunner
- (BOOL)allowIncomingRunRequest:(id)request withDescriptor:(id)descriptor accessSpecifier:(id)specifier record:(id)record;
- (BOOL)forcePersistentModeWhileStepping;
- (BOOL)initializeSharedTemporaryDirectoryLock;
- (BOOL)isRunningWithExternalUI;
- (BOOL)isRunningWithSiriUI;
- (BOOL)isRunningWithToolKitClient;
- (BOOL)isStepwiseExecution;
- (BOOL)isTesting;
- (BOOL)launchAppToContinueFromState:(id)state runSource:(id)source withCompletion:(id)completion;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)performSiriRequest:(id)request completionHandler:(id)handler;
- (BOOL)progressIsPersistentInSystemAperture;
- (BOOL)runRequestIsContextualAction;
- (BOOL)runRequestOriginatedFromLocalSiri;
- (BOOL)shortcutShouldShowRunningProgress;
- (BOOL)shouldNotHandoff;
- (BOOL)workflowController:(id)controller handleUnsupportedEnvironmentForAction:(id)action currentState:(id)state completionHandler:(id)handler;
- (BOOL)workflowController:(id)controller handleUnsupportedUserInterfaceForAction:(id)action currentState:(id)state completionHandler:(id)handler;
- (NSArray)airPlayRouteIDs;
- (WFAssessmentModeManager)assessmentModeManager;
- (WFBackgroundShortcutRunner)initWithProcessPolicy:(unint64_t)policy;
- (WFDialogTransformer)dialogTransformer;
- (WFHarnessTestCase)currentTestCase;
- (WFRemoteExecutionCoordinator)remoteExecutionCoordinator;
- (WFRemoteExecutionFileCoordinator)fileCoordinator;
- (id)assessmentModeActiveError;
- (id)contextForAction:(id)action;
- (id)createTestSiriUIPresenterInterfaceForTestCase:(id)case;
- (id)createTestUIPresenterInterfaceForTestCase:(id)case;
- (id)metricsRunSourceFromEnvironment:(int64_t)environment runSource:(id)source;
- (id)queue_runningProgressSuppressionStateMachine;
- (id)remoteDialogPresenterEndpointForController:(id)controller;
- (id)siriOptions;
- (id)testingHarnessErrorForWorkflowFinishedError:(id)error;
- (id)workflowController:(id)controller actionReversalStateForAction:(id)action;
- (id)workflowForTesting;
- (int64_t)executionContext;
- (void)action:(id)action provideInputForParameters:(id)parameters withDefaultStates:(id)states prompts:(id)prompts completionHandler:(id)handler;
- (void)applicationWillLaunchInForeground;
- (void)assessmentModeManagerDidBecomeActive:(id)active;
- (void)beginPersistentModeIfNeededWithRunningContext:(id)context action:(id)action attributionBehavior:(int64_t)behavior;
- (void)callWorkflowRunningCompletionBlockWithResult:(id)result;
- (void)computeFinderResizedSizesForImages:(id)images inSizes:(id)sizes completion:(id)completion;
- (void)configureIntent:(id)intent;
- (void)demoteSharedTemporaryDirectoryLock;
- (void)didFinishActionWithIdentifier:(id)identifier;
- (void)didStartActionWithIdentifier:(id)identifier;
- (void)dismissPresentedContentWithCompletionHandler:(id)handler;
- (void)evaluateRemoteQuarantinePolicyForWorkflow:(id)workflow workflowReference:(id)reference withCompletionHandler:(id)handler;
- (void)extractVariableContentFromEncodedReference:(id)reference withResolutionRequest:(id)request completionHandler:(id)handler;
- (void)fetchAvailableParameterStatesForEncodedValueSetDefinition:(id)definition searchTerm:(id)term forEncodedToolInvocation:(id)invocation completionHandler:(id)handler;
- (void)fetchDisplayValueForRequest:(id)request completionHandler:(id)handler;
- (void)fetchToolInvocationSummaryForInvocation:(id)invocation fetchingDefaultValues:(BOOL)values completionHandler:(id)handler;
- (void)filterContextualActions:(id)actions forContext:(id)context completion:(id)completion;
- (void)finishRunningWithResult:(id)result;
- (void)getContextualActionsForContext:(id)context completion:(id)completion;
- (void)getCurrentProgressCompletedWithCompletionHandler:(id)handler;
- (void)handleAppProtectionRequestWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)handleIncomingFileForRemoteExecutionWithURL:(id)l withIdentifier:(id)identifier;
- (void)handleTestingEventIfTesting:(id)testing completionHandler:(id)handler;
- (void)injectContentAsVariable:(id)variable completionHandler:(id)handler;
- (void)openURL:(id)l withBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)pauseWorkflowAndWriteStateToDisk:(id)disk;
- (void)performQuery:(id)query inValueSet:(id)set toolInvocation:(id)invocation options:(id)options completionHandler:(id)handler;
- (void)performWithHost:(id)host;
- (void)performWithRunningProgressSuppressionStateMachine:(id)machine;
- (void)prepareForSteppingInPersistentModeWithAction:(id)action;
- (void)presentAlert:(id)alert;
- (void)presentAlertWithSmartPromptConfiguration:(id)configuration completionHandler:(id)handler;
- (void)presenterRequestedUpdatedRunViewSource:(id)source completionHandler:(id)handler;
- (void)presenterRequestedWorkflowPauseForContext:(id)context dialogRequest:(id)request;
- (void)prewarmRunnerWithCompletion:(id)completion;
- (void)reindexToolKitDatabaseWithRequest:(id)request completionHandler:(id)handler;
- (void)requestActionInterfacePresentationForActionClassName:(id)name classNamesByType:(id)type completionHandler:(id)handler;
- (void)requestAuthorizationWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)requestFileAccessForURLs:(id)ls workflowName:(id)name workflowID:(id)d completionHandler:(id)handler;
- (void)resolveContent:(id)content completionHandler:(id)handler;
- (void)resolveDeferredValueFromEncodedStorage:(id)storage withResolutionRequest:(id)request completionHandler:(id)handler;
- (void)resolveDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)resumeRunningFromContext:(id)context withRequest:(id)request completion:(id)completion;
- (void)runActionFromRunRequestData:(id)data runningContext:(id)context completion:(id)completion;
- (void)runToolWithInvocation:(id)invocation;
- (void)runWorkflowWithDescriptor:(id)descriptor request:(id)request inEnvironment:(id)environment runningContext:(id)context completion:(id)completion;
- (void)runnerStateMachine:(id)machine didFinishRunningShortcutWithResult:(id)result;
- (void)runnerStateMachine:(id)machine didRequestStoppingShortcutWithError:(id)error;
- (void)runnerStateMachineDidRequestProcessExit:(id)exit;
- (void)runningProgressSuppressionStateMachine:(id)machine didDecideRunningProgressIsAllowed:(BOOL)allowed dialogAttribution:(id)attribution;
- (void)sendDialogRequestForParameter:(id)parameter action:(id)action dialogRequest:(id)request completion:(id)completion;
- (void)sendRemoteAskWhenRunRequestWithParameters:(id)parameters action:(id)action completion:(id)completion;
- (void)sendResponseForRunRequest:(id)request controller:(id)controller error:(id)error completion:(id)completion;
- (void)shouldRunFollowUpActionWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier parameterValues:(id)values encodedToolInvocation:(id)invocation showOutputActionOptions:(unint64_t)options completionHandler:(id)handler;
- (void)showChronoControlOfType:(unint64_t)type identity:(id)identity completionHandler:(id)handler;
- (void)showHandleInteraction:(id)interaction prompt:(id)prompt completionHandler:(id)handler;
- (void)showLinkActionConfirmationWithActionMetadata:(id)metadata showPrompt:(BOOL)prompt dialog:(id)dialog dialogString:(id)string viewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation confirmationActionName:(id)self0 isContinueInAppRequest:(BOOL)self1 systemStyle:(id)self2 completionHandler:(id)self3;
- (void)showLinkChoice:(id)choice dialog:(id)dialog completionHandler:(id)handler;
- (void)showLinkParameterConfirmationWithActionMetadata:(id)metadata dialog:(id)dialog dialogString:(id)string viewSnippet:(id)snippet parameterValue:(id)value completionHandler:(id)handler;
- (void)showLinkResult:(id)result dialog:(id)dialog encodedSnippetActionToolInvocation:(id)invocation completionHandler:(id)handler;
- (void)showPreviewForContentCollection:(id)collection completionHandler:(id)handler;
- (void)showSnippetLinkAction:(id)action encodedSnippetActionToolInvocation:(id)invocation completionHandler:(id)handler;
- (void)startWorkflowExecution:(id)execution workflowController:(id)controller descriptor:(id)descriptor workflowReference:(id)reference database:(id)database;
- (void)stepWithAction:(id)action;
- (void)stopWithError:(id)error;
- (void)synchronouslyPerformWithHost:(id)host;
- (void)synchronouslyPerformWithRunningProgressSuppressionStateMachine:(id)machine;
- (void)transformAction:(id)action completionHandler:(id)handler;
- (void)unaliveProcess;
- (void)updateRunViewSource:(id)source;
- (void)workflowController:(id)controller actionDidRequestWorkflowExit:(id)exit;
- (void)workflowController:(id)controller didFinishRunningWithError:(id)error cancelled:(BOOL)cancelled;
- (void)workflowController:(id)controller didGenerateReversalState:(id)state forAction:(id)action;
- (void)workflowController:(id)controller didRunAction:(id)action error:(id)error completionHandler:(id)handler;
- (void)workflowController:(id)controller handleTestingEvent:(id)event completionHandler:(id)handler;
- (void)workflowController:(id)controller prepareToRunAction:(id)action withInput:(id)input completionHandler:(id)handler;
- (void)workflowController:(id)controller requestToQuarantineWorkflow:(id)workflow;
- (void)workflowControllerWillRun:(id)run;
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
  lockFileFD = [(WFBackgroundShortcutRunner *)self lockFileFD];

  flock(lockFileFD, 5);
}

- (WFDialogTransformer)dialogTransformer
{
  dialogTransformer = self->_dialogTransformer;
  if (dialogTransformer)
  {
    goto LABEL_26;
  }

  currentTestCase = [(WFBackgroundShortcutRunner *)self currentTestCase];

  if (!currentTestCase)
  {
    currentRunRequest = [(WFBackgroundShortcutRunner *)self currentRunRequest];
    remoteDialogPresenterEndpoint = [currentRunRequest remoteDialogPresenterEndpoint];

    if (!remoteDialogPresenterEndpoint)
    {
      currentRunRequest2 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
      presentationMode = [currentRunRequest2 presentationMode];

      if (presentationMode == 3)
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

    siriOptions = [(WFBackgroundShortcutRunner *)self siriOptions];

    if (siriOptions)
    {
      siriOptions2 = [(WFBackgroundShortcutRunner *)self siriOptions];
      LODWORD(siriOptions) = [siriOptions2 disableSiriBehavior];

      siriOptions3 = [(WFBackgroundShortcutRunner *)self siriOptions];
      handlesDialogRequests = [siriOptions3 disableSiriBehavior] ^ 1;
    }

    else
    {
      siriOptions3 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
      handlesDialogRequests = [siriOptions3 handlesDialogRequests];
    }

    if ([(WFBackgroundShortcutRunner *)self forcePersistentModeWhileStepping])
    {
      v28 = +[WFUIPresenter defaultPresenter];
      [(WFUIPresenter *)v28 setDelegate:self];
      if (!siriOptions)
      {
LABEL_15:
        if (!handlesDialogRequests)
        {
          v33 = [WFUIPresenterXPCConnection alloc];
          currentRunRequest3 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
          remoteDialogPresenterEndpoint2 = [currentRunRequest3 remoteDialogPresenterEndpoint];
          v36 = [(WFUIPresenterXPCConnection *)v33 initWithEndpoint:remoteDialogPresenterEndpoint2];

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
      if (!siriOptions)
      {
        goto LABEL_15;
      }
    }

    v15 = +[WFUIPresenter defaultPresenter];

    [(WFUIPresenter *)v15 setDelegate:self];
    if ((handlesDialogRequests & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v29 = objc_alloc(MEMORY[0x1E69E0AF0]);
    currentRunRequest4 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
    remoteDialogPresenterEndpoint3 = [currentRunRequest4 remoteDialogPresenterEndpoint];
    v32 = [v29 initWithEndpoint:remoteDialogPresenterEndpoint3];

    v12 = [objc_alloc(MEMORY[0x1E69E0AE8]) initWithConnection:v32];
    goto LABEL_23;
  }

  currentTestCase2 = [(WFBackgroundShortcutRunner *)self currentTestCase];
  siriInteractions = [currentTestCase2 siriInteractions];
  v7 = [siriInteractions count];

  if (!v7)
  {
    v22 = [WFUIPresenterLocalConnection alloc];
    currentTestCase3 = [(WFBackgroundShortcutRunner *)self currentTestCase];
    v24 = [(WFBackgroundShortcutRunner *)self createTestUIPresenterInterfaceForTestCase:currentTestCase3];
    v25 = [(WFUIPresenterLocalConnection *)v22 initWithPresenter:v24];

    v15 = [[WFUIPresenter alloc] initWithConnection:v25];
    goto LABEL_22;
  }

  v8 = objc_alloc(MEMORY[0x1E69E0D20]);
  currentTestCase4 = [(WFBackgroundShortcutRunner *)self currentTestCase];
  v10 = [(WFBackgroundShortcutRunner *)self createTestSiriUIPresenterInterfaceForTestCase:currentTestCase4];
  v11 = [v8 initWithPresenter:v10];

  v12 = [objc_alloc(MEMORY[0x1E69E0AE8]) initWithConnection:v11];
  workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
  runningContext = [workflowController runningContext];
  [runningContext setShouldForwardSiriActionRequests:1];

LABEL_5:
  v15 = 0;
LABEL_23:
  v37 = [WFDialogTransformer alloc];
  workflowController2 = [(WFBackgroundShortcutRunner *)self workflowController];
  workflow = [workflowController2 workflow];
  workflowController3 = [(WFBackgroundShortcutRunner *)self workflowController];
  runSource = [workflowController3 runSource];
  workflowController4 = [(WFBackgroundShortcutRunner *)self workflowController];
  runningContext2 = [workflowController4 runningContext];
  v44 = [(WFDialogTransformer *)v37 initWithWorkflow:workflow userInterfacePresenter:v15 runSource:runSource runningContext:runningContext2];
  v45 = self->_dialogTransformer;
  self->_dialogTransformer = v44;

  workflowController5 = [(WFBackgroundShortcutRunner *)self workflowController];
  [(WFDialogTransformer *)self->_dialogTransformer setDelegate:workflowController5];

  [(WFDialogTransformer *)self->_dialogTransformer setExternalUIPresenter:v12];
  workflowController6 = [(WFBackgroundShortcutRunner *)self workflowController];
  runViewSource = [workflowController6 runViewSource];
  [(WFDialogTransformer *)self->_dialogTransformer setRunViewSource:runViewSource];

  currentRunRequest5 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  -[WFDialogTransformer setAllowsHandoff:](self->_dialogTransformer, "setAllowsHandoff:", [currentRunRequest5 allowsHandoff]);

  currentRunRequest6 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  -[WFDialogTransformer setPresentationMode:](self->_dialogTransformer, "setPresentationMode:", [currentRunRequest6 presentationMode]);

  siriOptions4 = [(WFBackgroundShortcutRunner *)self siriOptions];
  if (siriOptions4)
  {
    [(WFDialogTransformer *)self->_dialogTransformer setSiriOptions:siriOptions4];
  }

  dialogTransformer = self->_dialogTransformer;
LABEL_26:

  return dialogTransformer;
}

- (BOOL)forcePersistentModeWhileStepping
{
  if (([MEMORY[0x1E695E000] forceSpotlightRunSource] & 1) == 0)
  {
    workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
    runSource = [workflowController runSource];
    v6 = *MEMORY[0x1E69E1410];
    v7 = runSource;
    v8 = v7;
    if (v7 == v6)
    {
      v3 = 1;
      workflowController2 = v7;
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

      workflowController2 = [(WFBackgroundShortcutRunner *)self workflowController];
      runSource2 = [workflowController2 runSource];
      v12 = *MEMORY[0x1E69E13B8];
      v13 = runSource2;
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

  currentRunRequest = [(WFBackgroundShortcutRunner *)self currentRunRequest];

  if (!currentRunRequest)
  {
    return 0;
  }

  currentRunRequest2 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  presentationMode = [currentRunRequest2 presentationMode];

  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  hasSystemAperture = [currentDevice hasSystemAperture];

  if (hasSystemAperture)
  {
    currentRunningContext = [(WFBackgroundShortcutRunner *)self currentRunningContext];
    if ([(WFBackgroundShortcutRunner *)self runRequestOriginatedFromLocalSiri])
    {
      v9 = 1;
LABEL_22:

      return v9;
    }

    automationType = [currentRunningContext automationType];

    if (automationType)
    {
      v9 = 0;
      goto LABEL_22;
    }

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E13A0], *MEMORY[0x1E69E1418], *MEMORY[0x1E69E1408], 0}];
    runSource = [currentRunningContext runSource];
    if ([runSource length])
    {
      runSource2 = [currentRunningContext runSource];
      v15 = [v12 containsObject:runSource2];

      if (v15)
      {
        v9 = presentationMode == 1;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
    }

    v9 = presentationMode != 3 && presentationMode != 0;
    goto LABEL_21;
  }

  return presentationMode == 1;
}

- (BOOL)runRequestOriginatedFromLocalSiri
{
  currentRunRequest = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  if (currentRunRequest && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    runSource = [currentRunRequest runSource];
    v4 = [runSource isEqualToString:*MEMORY[0x1E69E13E8]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)queue_runningProgressSuppressionStateMachine
{
  queue = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_V2(queue);

  runningProgressSuppressionStateMachine = self->_runningProgressSuppressionStateMachine;

  return runningProgressSuppressionStateMachine;
}

- (BOOL)isStepwiseExecution
{
  currentRunRequest = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  isStepwise = [currentRunRequest isStepwise];

  return isStepwise;
}

- (id)siriOptions
{
  currentRunRequest = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  if (currentRunRequest && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    options = [currentRunRequest options];
  }

  else
  {
    options = 0;
  }

  return options;
}

- (WFHarnessTestCase)currentTestCase
{
  v14 = *MEMORY[0x1E69E9840];
  currentRunRequest = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  if (currentRunRequest && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    testRunDescriptor = [currentRunRequest testRunDescriptor];
    v9 = 0;
    v4 = [testRunDescriptor loadTestCaseWithError:&v9];
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

- (id)testingHarnessErrorForWorkflowFinishedError:(id)error
{
  errorCopy = error;
  currentTestCase = [(WFBackgroundShortcutRunner *)self currentTestCase];
  v6 = currentTestCase;
  if (!errorCopy && currentTestCase)
  {
    interactions = [currentTestCase interactions];
    v8 = [interactions mutableCopy];

    handledInteractions = [v6 handledInteractions];
    [v8 minusSet:handledInteractions];

    siriInteractions = [v6 siriInteractions];
    v11 = [siriInteractions mutableCopy];

    handledSiriInteractions = [v6 handledSiriInteractions];
    [v11 minusSet:handledSiriInteractions];

    conditions = [v6 conditions];
    v14 = [conditions mutableCopy];

    handledConditions = [v6 handledConditions];
    [v14 minusSet:handledConditions];

    if ([v8 count] || objc_msgSend(v11, "count") || objc_msgSend(v14, "count"))
    {
      v16 = [WFHarnessTestResult failureWithReason:@"Expected interaction or condition not handled."];
      errorRepresentation = [v16 errorRepresentation];

      goto LABEL_9;
    }
  }

  errorRepresentation = errorCopy;
LABEL_9:

  return errorRepresentation;
}

- (void)handleTestingEventIfTesting:(id)testing completionHandler:(id)handler
{
  testingCopy = testing;
  handlerCopy = handler;
  if ([(WFBackgroundShortcutRunner *)self isTesting])
  {
    action = [testingCopy action];
    v9 = [(WFBackgroundShortcutRunner *)self contextForAction:action];

    currentTestCase = [(WFBackgroundShortcutRunner *)self currentTestCase];
    conditions = [currentTestCase conditions];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __89__WFBackgroundShortcutRunner_TestHarness__handleTestingEventIfTesting_completionHandler___block_invoke;
    v28[3] = &unk_1E8373888;
    v12 = testingCopy;
    v29 = v12;
    v30 = v9;
    v13 = v9;
    v14 = [conditions if_compactMap:v28];

    currentTestCase2 = [(WFBackgroundShortcutRunner *)self currentTestCase];
    handledConditions = [currentTestCase2 handledConditions];
    [handledConditions unionSet:v14];

    v17 = [WFHarnessActionConditionContext alloc];
    workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
    v19 = [(WFHarnessActionConditionContext *)v17 initWithVariableDataSource:workflowController];

    allObjects = [v14 allObjects];
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
    v24 = handlerCopy;
    v23 = v26;
    v21 = v19;
    [allObjects if_enumerateAsynchronously:v25 completionHandler:v22];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
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
  currentTestCase = [(WFBackgroundShortcutRunner *)self currentTestCase];
  v3 = currentTestCase != 0;

  return v3;
}

- (id)contextForAction:(id)action
{
  v23 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFBackgroundShortcutRunner+TestHarness.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  workflowForTesting = [(WFBackgroundShortcutRunner *)self workflowForTesting];
  actions = [workflowForTesting actions];
  v8 = [actions indexOfObject:actionCopy];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      workflowForTesting2 = [(WFBackgroundShortcutRunner *)self workflowForTesting];
      *buf = 136315650;
      v18 = "[WFBackgroundShortcutRunner(TestHarness) contextForAction:]";
      v19 = 2112;
      v20 = actionCopy;
      v21 = 2112;
      v22 = workflowForTesting2;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Can't find executing action %@ in executing workflow %@", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    v12 = [WFHarnessActionContext alloc];
    identifier = [actionCopy identifier];
    v11 = [(WFHarnessActionContext *)v12 initWithIdentifier:identifier indexInWorkflow:v8];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)workflowForTesting
{
  workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
  workflow = [workflowController workflow];

  return workflow;
}

- (id)createTestSiriUIPresenterInterfaceForTestCase:(id)case
{
  caseCopy = case;
  v5 = [[WFTestUIPresenterInterface alloc] initWithTestCase:caseCopy backgroundRunner:self];

  return v5;
}

- (id)createTestUIPresenterInterfaceForTestCase:(id)case
{
  caseCopy = case;
  v5 = [[WFTestUIPresenterInterface alloc] initWithTestCase:caseCopy backgroundRunner:self];

  return v5;
}

- (void)reindexToolKitDatabaseWithRequest:(id)request completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Unsupported runner type";
  v7 = MEMORY[0x1E695DF20];
  handlerCopy = handler;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:94 userInfo:v9];
  (*(handler + 2))(handlerCopy, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)runToolWithInvocation:(id)invocation
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"WFBackgroundShortcutRunner.m" lineNumber:2463 description:@"-[WFBackgroundShortcutRunner runToolWithInvocation:] should be overridden by subclass"];
}

- (void)transformAction:(id)action completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Unsupported runner type";
  v7 = MEMORY[0x1E695DF20];
  handlerCopy = handler;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:94 userInfo:v9];
  (*(handler + 2))(handlerCopy, 0, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchToolInvocationSummaryForInvocation:(id)invocation fetchingDefaultValues:(BOOL)values completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A798];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = @"Unsupported runner type";
  v8 = MEMORY[0x1E695DF20];
  handlerCopy = handler;
  v10 = [v8 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v6 errorWithDomain:v7 code:94 userInfo:v10];
  (*(handler + 2))(handlerCopy, 0, v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)resolveDeferredValueFromEncodedStorage:(id)storage withResolutionRequest:(id)request completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A798];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = @"Unsupported runner type";
  v8 = MEMORY[0x1E695DF20];
  handlerCopy = handler;
  v10 = [v8 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v6 errorWithDomain:v7 code:94 userInfo:v10];
  (*(handler + 2))(handlerCopy, 0, v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)fetchDisplayValueForRequest:(id)request completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Unsupported runner type";
  v7 = MEMORY[0x1E695DF20];
  handlerCopy = handler;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:94 userInfo:v9];
  (*(handler + 2))(handlerCopy, 0, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)performQuery:(id)query inValueSet:(id)set toolInvocation:(id)invocation options:(id)options completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A798];
  v15 = *MEMORY[0x1E696A578];
  v16[0] = @"Unsupported runner type";
  v10 = MEMORY[0x1E695DF20];
  handlerCopy = handler;
  v12 = [v10 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = [v8 errorWithDomain:v9 code:94 userInfo:v12];
  (*(handler + 2))(handlerCopy, 0, v13);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)resolveContent:(id)content completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Unsupported runner type";
  v7 = MEMORY[0x1E695DF20];
  handlerCopy = handler;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:94 userInfo:v9];
  (*(handler + 2))(handlerCopy, 0, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)injectContentAsVariable:(id)variable completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Unsupported runner type";
  v7 = MEMORY[0x1E695DF20];
  handlerCopy = handler;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:94 userInfo:v9];
  (*(handler + 2))(handlerCopy, 0, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchAvailableParameterStatesForEncodedValueSetDefinition:(id)definition searchTerm:(id)term forEncodedToolInvocation:(id)invocation completionHandler:(id)handler
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A798];
  v14 = *MEMORY[0x1E696A578];
  v15[0] = @"Unsupported runner type";
  v9 = MEMORY[0x1E695DF20];
  handlerCopy = handler;
  v11 = [v9 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12 = [v7 errorWithDomain:v8 code:94 userInfo:v11];
  (*(handler + 2))(handlerCopy, 0, v12);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)extractVariableContentFromEncodedReference:(id)reference withResolutionRequest:(id)request completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A798];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = @"Unsupported runner type";
  v8 = MEMORY[0x1E695DF20];
  handlerCopy = handler;
  v10 = [v8 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v6 errorWithDomain:v7 code:94 userInfo:v10];
  (*(handler + 2))(handlerCopy, 0, v11);

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

- (void)assessmentModeManagerDidBecomeActive:(id)active
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[WFBackgroundShortcutRunner assessmentModeManagerDidBecomeActive:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Assessment Mode became active stopping workflow execution.", &v7, 0xCu);
  }

  assessmentModeActiveError = [(WFBackgroundShortcutRunner *)self assessmentModeActiveError];
  [(WFBackgroundShortcutRunner *)self stopWithError:assessmentModeActiveError];

  v6 = *MEMORY[0x1E69E9840];
}

- (WFAssessmentModeManager)assessmentModeManager
{
  assessmentModeManager = self->_assessmentModeManager;
  if (!assessmentModeManager)
  {
    v4 = [WFAssessmentModeManager alloc];
    queue = [(WFBackgroundShortcutRunner *)self queue];
    v6 = [(WFAssessmentModeManager *)v4 initWithQueue:queue delegate:self];
    v7 = self->_assessmentModeManager;
    self->_assessmentModeManager = v6;

    assessmentModeManager = self->_assessmentModeManager;
  }

  return assessmentModeManager;
}

- (void)evaluateRemoteQuarantinePolicyForWorkflow:(id)workflow workflowReference:(id)reference withCompletionHandler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  workflowCopy = workflow;
  referenceCopy = reference;
  handlerCopy = handler;
  v11 = getWFWorkflowExecutionLogObject();
  v12 = v11;
  if (referenceCopy)
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
      identifier = [referenceCopy identifier];
      *buf = 136315394;
      v45 = "[WFBackgroundShortcutRunner evaluateRemoteQuarantinePolicyForWorkflow:workflowReference:withCompletionHandler:]";
      v46 = 2112;
      v47 = identifier;
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Evaluating remote quarantine policy for workflow %@", buf, 0x16u);
    }

    v19 = +[WFRemoteQuarantinePolicyEvaluator sharedEvaluator];
    v20 = [v19 remoteQuarantineHashForWorkflowReference:referenceCopy];
    if ([referenceCopy remoteQuarantineStatus] == 2)
    {
      v21 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        identifier2 = [referenceCopy identifier];
        *buf = 136315394;
        v45 = "[WFBackgroundShortcutRunner evaluateRemoteQuarantinePolicyForWorkflow:workflowReference:withCompletionHandler:]";
        v46 = 2112;
        v47 = identifier2;
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
      remoteQuarantineHash = [referenceCopy remoteQuarantineHash];
      v26 = [remoteQuarantineHash isEqualToData:v20];

      v27 = getWFWorkflowExecutionLogObject();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
      if (!v26)
      {
        if (v28)
        {
          [referenceCopy identifier];
          v31 = v39 = workflowCopy;
          remoteQuarantineHash2 = [referenceCopy remoteQuarantineHash];
          v32 = [remoteQuarantineHash2 debugDescription];
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

          workflowCopy = v39;
        }

        v34 = [WFWorkflowRemoteQuarantineRequest alloc];
        record = [workflowCopy record];
        v36 = [(WFWorkflowRemoteQuarantineRequest *)v34 initWithWorkflowRecord:record];

        [v19 setDelegate:self];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __112__WFBackgroundShortcutRunner_evaluateRemoteQuarantinePolicyForWorkflow_workflowReference_withCompletionHandler___block_invoke;
        v40[3] = &unk_1E8374C00;
        v43 = v13;
        v42 = handlerCopy;
        v41 = v20;
        [v19 evaluatePolicyForRequest:v36 completion:v40];

        goto LABEL_27;
      }

      if (v28)
      {
        identifier3 = [referenceCopy identifier];
        *buf = 136315394;
        v45 = "[WFBackgroundShortcutRunner evaluateRemoteQuarantinePolicyForWorkflow:workflowReference:withCompletionHandler:]";
        v46 = 2112;
        v47 = identifier3;
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_INFO, "%s Skipping remote quarantine policy evaluation for workflow %@, since it has already been checked.", buf, 0x16u);
      }

      v30 = getWFWorkflowExecutionLogObject();
      v24 = v30;
      if (v16 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v30))
      {
LABEL_23:

        (*(handlerCopy + 2))(handlerCopy, 1, v20, 0);
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

  (*(handlerCopy + 2))(handlerCopy, 1, 0, 0);
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

- (id)metricsRunSourceFromEnvironment:(int64_t)environment runSource:(id)source
{
  sourceCopy = source;
  v6 = sourceCopy;
  v7 = *MEMORY[0x1E69E1428];
  if (sourceCopy)
  {
    v8 = sourceCopy;
  }

  else
  {
    v8 = *MEMORY[0x1E69E1428];
  }

  v9 = v8;
  v10 = [v9 isEqualToString:v7];
  if ((environment - 1) <= 4 && v10)
  {
    v11 = **(&unk_1E8374C20 + environment - 1);

    v9 = v11;
  }

  return v9;
}

- (BOOL)launchAppToContinueFromState:(id)state runSource:(id)source withCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  sourceCopy = source;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFBackgroundShortcutRunner.m" lineNumber:2299 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
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

  if (!stateCopy)
  {
    v13 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
      *buf = 136315394;
      v26 = "[WFBackgroundShortcutRunner launchAppToContinueFromState:runSource:withCompletion:]";
      v27 = 2112;
      v28 = workflowController;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s failed to get state from controller (%@)", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v14 = *MEMORY[0x1E69E1388];
  if (sourceCopy)
  {
    v15 = sourceCopy;
  }

  else
  {
    v15 = *MEMORY[0x1E69E1388];
  }

  v13 = [WFHandoffSimulator userActivityForContinuingWorkflowWithState:stateCopy fromSource:v15];
  v16 = objc_alloc(MEMORY[0x1E6996CA0]);
  v17 = [v16 initWithBundleIdentifier:*MEMORY[0x1E69E0FB0] options:0 URL:0 userActivity:v13];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __84__WFBackgroundShortcutRunner_launchAppToContinueFromState_runSource_withCompletion___block_invoke;
  v23[3] = &unk_1E837F0F0;
  v24 = completionCopy;
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

- (void)getCurrentProgressCompletedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
  progress = [workflowController progress];

  v6 = MEMORY[0x1E696AD98];
  [progress fractionCompleted];
  v7 = [v6 numberWithDouble:?];
  handlerCopy[2](handlerCopy, v7, 0);
}

- (void)sendDialogRequestForParameter:(id)parameter action:(id)action dialogRequest:(id)request completion:(id)completion
{
  parameterCopy = parameter;
  actionCopy = action;
  completionCopy = completion;
  requestCopy = request;
  v13 = +[WFRemoteExecutionCoordinator sharedCoordinator];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__WFBackgroundShortcutRunner_sendDialogRequestForParameter_action_dialogRequest_completion___block_invoke;
  v17[3] = &unk_1E8374BD8;
  v19 = actionCopy;
  v20 = completionCopy;
  v18 = parameterCopy;
  v14 = actionCopy;
  v15 = completionCopy;
  v16 = parameterCopy;
  [v13 sendDialogRequest:requestCopy completion:v17];
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

- (void)sendRemoteAskWhenRunRequestWithParameters:(id)parameters action:(id)action completion:(id)completion
{
  parametersCopy = parameters;
  actionCopy = action;
  completionCopy = completion;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__7456;
  v20[4] = __Block_byref_object_dispose__7457;
  v21 = objc_opt_new();
  array = [parametersCopy array];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke;
  v17[3] = &unk_1E8374BB0;
  v17[4] = self;
  v12 = actionCopy;
  v18 = v12;
  v19 = v20;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__WFBackgroundShortcutRunner_sendRemoteAskWhenRunRequestWithParameters_action_completion___block_invoke_3;
  v14[3] = &unk_1E8379020;
  v16 = v20;
  v13 = completionCopy;
  v15 = v13;
  [array if_enumerateAsynchronouslyInSequence:v17 completionHandler:v14];

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

- (void)didFinishActionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer didFinishActionWithIdentifier:identifierCopy];
}

- (void)didStartActionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer didStartActionWithIdentifier:identifierCopy];
}

- (void)openURL:(id)l withBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  lCopy = l;
  identifierCopy = identifier;
  handlerCopy = handler;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  currentAction = [dialogTransformer currentAction];

  if (currentAction)
  {
    v13 = [[WFActionWillOpenURLTestingEvent alloc] initWithAction:currentAction URL:lCopy bundleIdentifier:identifierCopy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__WFBackgroundShortcutRunner_openURL_withBundleIdentifier_completionHandler___block_invoke;
    v15[3] = &unk_1E8374B38;
    v18 = handlerCopy;
    v15[4] = self;
    v16 = lCopy;
    v17 = identifierCopy;
    [(WFBackgroundShortcutRunner *)self handleTestingEventIfTesting:v13 completionHandler:v15];
  }

  else
  {
    dialogTransformer2 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [dialogTransformer2 openURL:lCopy withBundleIdentifier:identifierCopy completionHandler:handlerCopy];
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

- (BOOL)performSiriRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v9 = [dialogTransformer performSiriRequest:requestCopy completionHandler:handlerCopy];

  return v9;
}

- (void)configureIntent:(id)intent
{
  intentCopy = intent;
  if ([(WFBackgroundShortcutRunner *)self isRunningWithSiriUI])
  {
    dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [dialogTransformer configureIntent:intentCopy];
  }
}

- (NSArray)airPlayRouteIDs
{
  siriOptions = [(WFBackgroundShortcutRunner *)self siriOptions];
  v3 = siriOptions;
  if (siriOptions)
  {
    airPlayRouteIDs = [siriOptions airPlayRouteIDs];
  }

  else
  {
    airPlayRouteIDs = 0;
  }

  return airPlayRouteIDs;
}

- (int64_t)executionContext
{
  siriOptions = [(WFBackgroundShortcutRunner *)self siriOptions];
  v3 = siriOptions;
  if (siriOptions)
  {
    executionContext = [siriOptions executionContext];
  }

  else
  {
    executionContext = 0;
  }

  return executionContext;
}

- (BOOL)isRunningWithToolKitClient
{
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  isRunningWithToolKitClient = [dialogTransformer isRunningWithToolKitClient];

  return isRunningWithToolKitClient;
}

- (BOOL)isRunningWithExternalUI
{
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  isRunningWithExternalUI = [dialogTransformer isRunningWithExternalUI];

  return isRunningWithExternalUI;
}

- (BOOL)isRunningWithSiriUI
{
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  isRunningWithSiriUI = [dialogTransformer isRunningWithSiriUI];

  return isRunningWithSiriUI;
}

- (void)requestFileAccessForURLs:(id)ls workflowName:(id)name workflowID:(id)d completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  dCopy = d;
  nameCopy = name;
  lsCopy = ls;
  v14 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[WFBackgroundShortcutRunner requestFileAccessForURLs:workflowName:workflowID:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s requestFileAccessForURLs forwarding to dialogTransformer", buf, 0xCu);
  }

  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__WFBackgroundShortcutRunner_requestFileAccessForURLs_workflowName_workflowID_completionHandler___block_invoke;
  v18[3] = &unk_1E837F0F0;
  v19 = handlerCopy;
  v16 = handlerCopy;
  [dialogTransformer requestFileAccessForURLs:lsCopy workflowName:nameCopy workflowID:dCopy completionHandler:v18];

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

- (void)requestAuthorizationWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer requestAuthorizationWithConfiguration:configurationCopy completionHandler:handlerCopy];
}

- (BOOL)shouldNotHandoff
{
  currentRunRequest = [(WFBackgroundShortcutRunner *)self currentRunRequest];

  if (currentRunRequest)
  {
    currentRunRequest2 = [(WFBackgroundShortcutRunner *)self currentRunRequest];
    v5 = [currentRunRequest2 allowsHandoff] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)pauseWorkflowAndWriteStateToDisk:(id)disk
{
  v20 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  [(WFBackgroundShortcutRunner *)self synchronouslyPerformWithHost:&__block_literal_global_469];
  workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
  [workflowController publishRunningState:3];

  v6 = WFWFWorkflowControllerStateDefaultSerializedURLFromContext(diskCopy);
  if (v6)
  {
    workflowController2 = [(WFBackgroundShortcutRunner *)self workflowController];
    currentState = [workflowController2 currentState];
    v15 = 0;
    v9 = [currentState writeToURL:v6 error:&v15];
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
      v19 = diskCopy;
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

- (void)handleAppProtectionRequestWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer handleAppProtectionRequestWithBundleIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)resolveDescriptor:(id)descriptor completionHandler:(id)handler
{
  handlerCopy = handler;
  descriptorCopy = descriptor;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer resolveDescriptor:descriptorCopy completionHandler:handlerCopy];
}

- (void)dismissPresentedContentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer dismissPresentedContentWithCompletionHandler:handlerCopy];
}

- (void)presentAlertWithSmartPromptConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  if ([(WFBackgroundShortcutRunner *)self requestedFromAnotherDevice])
  {
    v8 = [WFSmartPromptDialogRequest alloc];
    v9 = [MEMORY[0x1E69E0A98] attributionWithAppBundleIdentifier:*MEMORY[0x1E69E0FB0]];
    v10 = [(WFSmartPromptDialogRequest *)v8 initWithConfiguration:configurationCopy attribution:v9];

    v11 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
    v12 = MEMORY[0x1E696AEC0];
    promptForDisplay = [(WFDialogRequest *)v10 promptForDisplay];
    workflowName = [configurationCopy workflowName];

    v15 = [v12 stringWithFormat:promptForDisplay, workflowName];
    [v11 setMessage:v15];

    allowOnceButton = [(WFSmartPromptDialogRequest *)v10 allowOnceButton];

    if (allowOnceButton)
    {
      v17 = MEMORY[0x1E6996C78];
      allowOnceButton2 = [(WFSmartPromptDialogRequest *)v10 allowOnceButton];
      title = [allowOnceButton2 title];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __89__WFBackgroundShortcutRunner_presentAlertWithSmartPromptConfiguration_completionHandler___block_invoke;
      v36[3] = &unk_1E837F4E8;
      v37 = handlerCopy;
      v20 = [v17 buttonWithTitle:title style:0 handler:v36];

      [v11 addButton:v20];
    }

    allowAlwaysButton = [(WFSmartPromptDialogRequest *)v10 allowAlwaysButton];

    if (allowAlwaysButton)
    {
      v22 = MEMORY[0x1E6996C78];
      allowAlwaysButton2 = [(WFSmartPromptDialogRequest *)v10 allowAlwaysButton];
      title2 = [allowAlwaysButton2 title];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __89__WFBackgroundShortcutRunner_presentAlertWithSmartPromptConfiguration_completionHandler___block_invoke_2;
      v34[3] = &unk_1E837F4E8;
      v35 = handlerCopy;
      v25 = [v22 buttonWithTitle:title2 style:0 handler:v34];

      [v11 addButton:v25];
    }

    denyButton = [(WFSmartPromptDialogRequest *)v10 denyButton];

    if (denyButton)
    {
      v27 = MEMORY[0x1E6996C78];
      denyButton2 = [(WFSmartPromptDialogRequest *)v10 denyButton];
      title3 = [denyButton2 title];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __89__WFBackgroundShortcutRunner_presentAlertWithSmartPromptConfiguration_completionHandler___block_invoke_3;
      v32[3] = &unk_1E837F4E8;
      v33 = handlerCopy;
      v30 = [v27 buttonWithTitle:title3 style:1 handler:v32];

      [v11 addButton:v30];
    }

    [(WFBackgroundShortcutRunner *)self presentAlert:v11];
  }

  else
  {
    dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [dialogTransformer presentAlertWithSmartPromptConfiguration:configurationCopy completionHandler:handlerCopy];
  }
}

- (void)showChronoControlOfType:(unint64_t)type identity:(id)identity completionHandler:(id)handler
{
  handlerCopy = handler;
  identityCopy = identity;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer showChronoControlOfType:type identity:identityCopy completionHandler:handlerCopy];
}

- (void)shouldRunFollowUpActionWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier parameterValues:(id)values encodedToolInvocation:(id)invocation showOutputActionOptions:(unint64_t)options completionHandler:(id)handler
{
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  valuesCopy = values;
  invocationCopy = invocation;
  handlerCopy = handler;
  if ([(WFBackgroundShortcutRunner *)self runRequestOriginatedFromLocalSiri])
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [dialogTransformer shouldRunFollowUpActionWithBundleIdentifier:identifierCopy actionIdentifier:actionIdentifierCopy parameterValues:valuesCopy encodedToolInvocation:invocationCopy showOutputActionOptions:options completionHandler:handlerCopy];
  }
}

- (void)showLinkChoice:(id)choice dialog:(id)dialog completionHandler:(id)handler
{
  handlerCopy = handler;
  dialogCopy = dialog;
  choiceCopy = choice;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer showLinkChoice:choiceCopy dialog:dialogCopy completionHandler:handlerCopy];
}

- (void)showSnippetLinkAction:(id)action encodedSnippetActionToolInvocation:(id)invocation completionHandler:(id)handler
{
  handlerCopy = handler;
  invocationCopy = invocation;
  actionCopy = action;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer showSnippetLinkAction:actionCopy encodedSnippetActionToolInvocation:invocationCopy completionHandler:handlerCopy];
}

- (void)showLinkResult:(id)result dialog:(id)dialog encodedSnippetActionToolInvocation:(id)invocation completionHandler:(id)handler
{
  handlerCopy = handler;
  invocationCopy = invocation;
  dialogCopy = dialog;
  resultCopy = result;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer showLinkResult:resultCopy dialog:dialogCopy encodedSnippetActionToolInvocation:invocationCopy completionHandler:handlerCopy];
}

- (void)showLinkParameterConfirmationWithActionMetadata:(id)metadata dialog:(id)dialog dialogString:(id)string viewSnippet:(id)snippet parameterValue:(id)value completionHandler:(id)handler
{
  handlerCopy = handler;
  valueCopy = value;
  snippetCopy = snippet;
  stringCopy = string;
  dialogCopy = dialog;
  metadataCopy = metadata;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer showLinkParameterConfirmationWithActionMetadata:metadataCopy dialog:dialogCopy dialogString:stringCopy viewSnippet:snippetCopy parameterValue:valueCopy completionHandler:handlerCopy];
}

- (void)showLinkActionConfirmationWithActionMetadata:(id)metadata showPrompt:(BOOL)prompt dialog:(id)dialog dialogString:(id)string viewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation confirmationActionName:(id)self0 isContinueInAppRequest:(BOOL)self1 systemStyle:(id)self2 completionHandler:(id)self3
{
  promptCopy = prompt;
  handlerCopy = handler;
  styleCopy = style;
  nameCopy = name;
  invocationCopy = invocation;
  actionCopy = action;
  snippetCopy = snippet;
  stringCopy = string;
  dialogCopy = dialog;
  metadataCopy = metadata;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __243__WFBackgroundShortcutRunner_showLinkActionConfirmationWithActionMetadata_showPrompt_dialog_dialogString_viewSnippet_snippetAction_encodedSnippetActionToolInvocation_confirmationActionName_isContinueInAppRequest_systemStyle_completionHandler___block_invoke;
  v32[3] = &unk_1E8374B10;
  v33 = handlerCopy;
  v28 = handlerCopy;
  LOBYTE(v29) = request;
  [dialogTransformer showLinkActionConfirmationWithActionMetadata:metadataCopy showPrompt:promptCopy dialog:dialogCopy dialogString:stringCopy viewSnippet:snippetCopy snippetAction:actionCopy encodedSnippetActionToolInvocation:invocationCopy confirmationActionName:nameCopy isContinueInAppRequest:v29 systemStyle:styleCopy completionHandler:v32];
}

- (void)showPreviewForContentCollection:(id)collection completionHandler:(id)handler
{
  handlerCopy = handler;
  collectionCopy = collection;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer showPreviewForContentCollection:collectionCopy completionHandler:handlerCopy];
}

- (void)showHandleInteraction:(id)interaction prompt:(id)prompt completionHandler:(id)handler
{
  handlerCopy = handler;
  promptCopy = prompt;
  interactionCopy = interaction;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer showHandleInteraction:interactionCopy prompt:promptCopy completionHandler:handlerCopy];
}

- (void)requestActionInterfacePresentationForActionClassName:(id)name classNamesByType:(id)type completionHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  nameCopy = name;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer requestActionInterfacePresentationForActionClassName:nameCopy classNamesByType:typeCopy completionHandler:handlerCopy];
}

- (void)presentAlert:(id)alert
{
  v17 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
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
    currentRemoteExecutionRunRequest = [(WFBackgroundShortcutRunner *)self currentRemoteExecutionRunRequest];
    identifier = [currentRemoteExecutionRunRequest identifier];
    v9 = [(WFRemoteExecutionAlertRequest *)v6 initWithAlert:alertCopy associatedRunRequestIdentifier:identifier];

    remoteExecutionCoordinator = [(WFBackgroundShortcutRunner *)self remoteExecutionCoordinator];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__WFBackgroundShortcutRunner_presentAlert___block_invoke;
    v13[3] = &unk_1E8374AE8;
    v13[4] = self;
    v14 = alertCopy;
    [remoteExecutionCoordinator sendAlertRequest:v9 completion:v13];
  }

  else
  {
    dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [dialogTransformer presentAlert:alertCopy];
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

- (void)workflowController:(id)controller handleTestingEvent:(id)event completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__WFBackgroundShortcutRunner_workflowController_handleTestingEvent_completionHandler___block_invoke;
  v9[3] = &unk_1E8374AC0;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(WFBackgroundShortcutRunner *)self handleTestingEventIfTesting:event completionHandler:v9];
}

void __86__WFBackgroundShortcutRunner_workflowController_handleTestingEvent_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 errorRepresentation];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)workflowController:(id)controller didGenerateReversalState:(id)state forAction:(id)action
{
  actionCopy = action;
  stateCopy = state;
  actionReversalStates = [(WFBackgroundShortcutRunner *)self actionReversalStates];
  [actionReversalStates setObject:stateCopy forKeyedSubscript:actionCopy];
}

- (id)workflowController:(id)controller actionReversalStateForAction:(id)action
{
  v5 = [(WFBackgroundShortcutRunner *)self workflowController:controller];
  workflow = [v5 workflow];
  actions = [workflow actions];
  v8 = [actions count];

  if (v8 <= 1)
  {
    currentRunRequest = [(WFBackgroundShortcutRunner *)self currentRunRequest];
    if (currentRunRequest && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      action = [currentRunRequest action];
      if (action)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = action;
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

      reversalState = [v13 reversalState];
    }

    else
    {
      reversalState = 0;
    }
  }

  else
  {
    reversalState = 0;
  }

  return reversalState;
}

- (void)action:(id)action provideInputForParameters:(id)parameters withDefaultStates:(id)states prompts:(id)prompts completionHandler:(id)handler
{
  actionCopy = action;
  parametersCopy = parameters;
  statesCopy = states;
  promptsCopy = prompts;
  handlerCopy = handler;
  if ([(WFBackgroundShortcutRunner *)self isInRemoteExecutionEnvironment])
  {
    [(WFBackgroundShortcutRunner *)self sendRemoteAskWhenRunRequestWithParameters:parametersCopy action:actionCopy completion:handlerCopy];
  }

  else
  {
    dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [dialogTransformer action:actionCopy provideInputForParameters:parametersCopy withDefaultStates:statesCopy prompts:promptsCopy completionHandler:handlerCopy];
  }
}

- (id)remoteDialogPresenterEndpointForController:(id)controller
{
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  userInterfacePresenter = [dialogTransformer userInterfacePresenter];

  if (userInterfacePresenter)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = userInterfacePresenter;
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

  endpoint = [v6 endpoint];

  return endpoint;
}

- (void)workflowController:(id)controller requestToQuarantineWorkflow:(id)workflow
{
  workflowCopy = workflow;
  v6 = +[WFDatabaseProxy defaultDatabase];
  reference = [workflowCopy reference];

  [v6 quarantineWorkflowWithReference:reference];
}

- (BOOL)workflowController:(id)controller handleUnsupportedEnvironmentForAction:(id)action currentState:(id)state completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  actionCopy = action;
  stateCopy = state;
  handlerCopy = handler;
  v14 = getWFRunningLifecycleLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [actionCopy description];
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
    runSource = [controllerCopy runSource];
    v16 = WFRemoteExecuteActionIfApplicable(actionCopy, stateCopy, self, self, runSource, handlerCopy);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)workflowController:(id)controller handleUnsupportedUserInterfaceForAction:(id)action currentState:(id)state completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  isRunningWithSiriUI = [(WFBackgroundShortcutRunner *)self isRunningWithSiriUI];
  v11 = getWFRunningLifecycleLogObject();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (isRunningWithSiriUI)
  {
    if (v12)
    {
      *buf = 136315138;
      v20 = "[WFBackgroundShortcutRunner workflowController:handleUnsupportedUserInterfaceForAction:currentState:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s Using new punch out logic", buf, 0xCu);
    }

    v11 = objc_alloc_init(MEMORY[0x1E69E0D08]);
    dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __120__WFBackgroundShortcutRunner_workflowController_handleUnsupportedUserInterfaceForAction_currentState_completionHandler___block_invoke;
    v17[3] = &unk_1E8374A98;
    v17[4] = self;
    v18 = handlerCopy;
    [dialogTransformer performSiriRequest:v11 completionHandler:v17];
  }

  else if (v12)
  {
    v14 = [actionCopy description];
    *buf = 138543362;
    v20 = v14;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ is not supported in the current user interface.", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
  return isRunningWithSiriUI;
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

- (void)workflowController:(id)controller actionDidRequestWorkflowExit:(id)exit
{
  v10 = *MEMORY[0x1E69E9840];
  exitCopy = exit;
  v5 = getWFRunningLifecycleLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [exitCopy description];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ requested shortcut exit.", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)workflowController:(id)controller didRunAction:(id)action error:(id)error completionHandler:(id)handler
{
  v64 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  actionCopy = action;
  errorCopy = error;
  handlerCopy = handler;
  v14 = getWFRunningLifecycleLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [actionCopy description];
    output = [actionCopy output];
    *buf = 138543874;
    v61 = v15;
    v62 = 1026;
    *v63 = errorCopy != 0;
    *&v63[4] = 2112;
    *&v63[6] = output;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "Action finished running %{public}@, error: %{BOOL,public}d, output: %@.", buf, 0x1Cu);
  }

  toolInvocation = [actionCopy toolInvocation];
  if (toolInvocation)
  {
    dispatch_group_enter(self->_exitTaskGroup);
    v18 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__WFBackgroundShortcutRunner_workflowController_didRunAction_error_completionHandler___block_invoke;
    block[3] = &unk_1E837F870;
    v58 = toolInvocation;
    selfCopy = self;
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
      *v63 = errorCopy;
      _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_DEFAULT, "%s [Step-wise] Sending action result (error: %@) out", buf, 0x16u);
    }

    v20 = [actionCopy outputVariableWithVariableProvider:actionCopy UUIDProvider:0];
    v21 = actionCopy;
    v46 = handlerCopy;
    v47 = controllerCopy;
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = objc_alloc(MEMORY[0x1E69E0D60]);
        undoContext = [v21 undoContext];
        didRunOpensIntent = [v21 didRunOpensIntent];
        attribution = [v21 attribution];
        v26 = [v22 initWithUndoContext:undoContext didRunOpensIntent:didRunOpensIntent attribution:attribution];

        v27 = v21;
      }

      else
      {
        v27 = 0;
        v26 = 0;
        undoContext = v21;
      }
    }

    else
    {
      undoContext = 0;
      v27 = 0;
      v26 = 0;
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __86__WFBackgroundShortcutRunner_workflowController_didRunAction_error_completionHandler___block_invoke_439;
    v52[3] = &unk_1E8374A48;
    v53 = v21;
    v31 = errorCopy;
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
        currentRunningWorkflowReference = [(WFBackgroundShortcutRunner *)self currentRunningWorkflowReference];
        standardClient = [MEMORY[0x1E69E0938] standardClient];
        dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
        [dialogTransformer attribution];
        v33 = v43 = v27;
        currentRunningContext = [(WFBackgroundShortcutRunner *)self currentRunningContext];
        [standardClient postNotificationAboutFailure:v31 inWorkflow:currentRunningWorkflowReference dialogAttribution:v33 runningContext:currentRunningContext];

        v27 = v43;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = v31 == 0;
        [(WFBackgroundShortcutRunner *)self dialogTransformer];
        v37 = v36 = v27;
        userInterfacePresenter = [v37 userInterfacePresenter];
        v39 = [MEMORY[0x1E696AD98] numberWithInt:v35];
        currentRunningContext2 = [(WFBackgroundShortcutRunner *)self currentRunningContext];
        [userInterfacePresenter completePersistentModeWithSuccess:v39 runningContext:currentRunningContext2 completionHandler:&__block_literal_global_442];

        v27 = v36;
      }
    }

    handlerCopy = v46;
    v46[2](v46);

    controllerCopy = v47;
  }

  else
  {
    v28 = [WFActionDidRunTestingEvent alloc];
    output2 = [actionCopy output];
    v30 = [(WFActionDidRunTestingEvent *)v28 initWithAction:actionCopy output:output2 error:errorCopy];

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __86__WFBackgroundShortcutRunner_workflowController_didRunAction_error_completionHandler___block_invoke_444;
    v48[3] = &unk_1E8374B38;
    v48[4] = self;
    v51 = handlerCopy;
    v49 = actionCopy;
    v50 = controllerCopy;
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

- (void)workflowController:(id)controller prepareToRunAction:(id)action withInput:(id)input completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  actionCopy = action;
  handlerCopy = handler;
  v12 = getWFRunningLifecycleLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [actionCopy description];
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

  workflow = [controllerCopy workflow];
  actions = [workflow actions];
  v17 = [actions indexOfObject:actionCopy];

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
  v20 = actionCopy;
  v40 = v20;
  selfCopy = self;
  v21 = handlerCopy;
  v42 = v21;
  v22 = _Block_copy(aBlock);
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer setCurrentAction:v20];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __96__WFBackgroundShortcutRunner_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke_3;
  v36[3] = &unk_1E8374A20;
  v24 = v20;
  v37 = v24;
  v25 = controllerCopy;
  v38 = v25;
  [(WFBackgroundShortcutRunner *)self performWithRunningProgressSuppressionStateMachine:v36];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x1E69E0C70] = [MEMORY[0x1E69E0C70] sharedManager];
    [mEMORY[0x1E69E0C70] resignIssuedExtensionsWithReason:@"Runner running Run Workflow"];

    v22[2](v22);
  }

  else
  {
    v27 = NSClassFromString(&cfstr_Wfhealthkitres.isa);
    if (!v27 || ([MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), v27, 0}], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v28 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    }

    resourceManager = [v24 resourceManager];
    v30 = [resourceManager resourceObjectsOfClasses:v28];
    v31 = [v30 if_compactMap:&__block_literal_global_431];

    mEMORY[0x1E69E0C70]2 = [MEMORY[0x1E69E0C70] sharedManager];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __96__WFBackgroundShortcutRunner_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke_5;
    v34[3] = &unk_1E837D0D0;
    v35 = v22;
    [mEMORY[0x1E69E0C70]2 requestSandboxExtensionForRunningActionWithAccessResources:v31 completion:v34];
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

- (void)workflowController:(id)controller didFinishRunningWithError:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v48 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  errorCopy = error;
  if (cancelledCopy)
  {
    v10 = getWFRunningLifecycleLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      workflow = [controllerCopy workflow];
      *buf = 138412290;
      v45 = workflow;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "Shortcut %@ was cancelled.", buf, 0xCu);
    }

    [MEMORY[0x1E696ABC0] userCancelledError];
    errorCopy = v12 = errorCopy;
  }

  else
  {
    v12 = getWFRunningLifecycleLogObject();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (errorCopy)
    {
      if (v13)
      {
        workflow2 = [controllerCopy workflow];
        *buf = 138412547;
        v45 = workflow2;
        v46 = 2113;
        v47 = errorCopy;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "Shortcut %@ failed with error %{private}@.", buf, 0x16u);
      }
    }

    else
    {
      if (v13)
      {
        workflow3 = [controllerCopy workflow];
        output = [controllerCopy output];
        *buf = 138412547;
        v45 = workflow3;
        v46 = 2113;
        v47 = output;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "Shortcut %@ has finished running with output: %{private}@.", buf, 0x16u);
      }

      errorCopy = 0;
    }
  }

  v17 = [(WFBackgroundShortcutRunner *)self testingHarnessErrorForWorkflowFinishedError:errorCopy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke;
  aBlock[3] = &unk_1E8374980;
  v18 = controllerCopy;
  v42 = v18;
  selfCopy = self;
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
    currentRemoteExecutionRunRequest = [(WFBackgroundShortcutRunner *)self currentRemoteExecutionRunRequest];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_5;
    v35[3] = &unk_1E837E1F8;
    v37 = v22;
    v36 = v17;
    [(WFBackgroundShortcutRunner *)self sendResponseForRunRequest:currentRemoteExecutionRunRequest controller:v21 error:v36 completion:v35];
  }

  else if ((([v17 wf_isUnsupportedUserInterfaceError] & 1) != 0 || objc_msgSend(v17, "wf_isUnsupportedEnvironmentError")) && (objc_msgSend(v21, "runningContext"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isShortcutsApp"), v24, (v25 & 1) == 0))
  {
    runningContext = [v21 runningContext];
    copyWithNewIdentity = [runningContext copyWithNewIdentity];

    v28 = [v21 currentStateWithContext:copyWithNewIdentity];
    runSource = [v21 runSource];
    if (v28)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __85__WFBackgroundShortcutRunner_workflowController_didFinishRunningWithError_cancelled___block_invoke_6;
      v32[3] = &unk_1E837E1F8;
      v33 = 0;
      v34 = v22;
      [(WFBackgroundShortcutRunner *)self launchAppToContinueFromState:v28 runSource:runSource withCompletion:v32];

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

- (void)workflowControllerWillRun:(id)run
{
  v33 = *MEMORY[0x1E69E9840];
  runCopy = run;
  v5 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    workflow = [runCopy workflow];
    *buf = 136315394;
    v30 = "[WFBackgroundShortcutRunner workflowControllerWillRun:]";
    v31 = 2112;
    v32 = workflow;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Workflow controller starting for workflow: %@", buf, 0x16u);
  }

  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  attribution = [dialogTransformer attribution];

  dialogTransformer2 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  currentAction = [dialogTransformer2 currentAction];

  if (!currentAction)
  {
    workflow2 = [runCopy workflow];
    actions = [workflow2 actions];
    firstObject = [actions firstObject];
    dialogTransformer3 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [dialogTransformer3 setCurrentAction:firstObject];
  }

  input = [runCopy input];
  requiredResourcesForContent = [input requiredResourcesForContent];

  if (requiredResourcesForContent)
  {
    mEMORY[0x1E69E0C70] = [MEMORY[0x1E69E0C70] sharedManager];
    v28 = 0;
    v18 = [mEMORY[0x1E69E0C70] requestSandboxExtensionForRunningActionWithAccessResources:requiredResourcesForContent error:&v28];
    v19 = v28;

    if ((v18 & 1) == 0)
    {
      v20 = getWFSecurityLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[WFBackgroundShortcutRunner workflowControllerWillRun:]";
        v31 = 2112;
        v32 = requiredResourcesForContent;
        _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s Error consuming sandbox resources %@ required to access shortcut input. The shortcut might have trouble accessing its input.", buf, 0x16u);
      }
    }
  }

  dialogTransformer4 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  [dialogTransformer4 workflowWillBegin];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__WFBackgroundShortcutRunner_workflowControllerWillRun___block_invoke;
  v25[3] = &unk_1E8374938;
  v25[4] = self;
  v26 = attribution;
  v27 = runCopy;
  v22 = runCopy;
  v23 = attribution;
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

- (void)synchronouslyPerformWithRunningProgressSuppressionStateMachine:(id)machine
{
  machineCopy = machine;
  queue = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(WFBackgroundShortcutRunner *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__WFBackgroundShortcutRunner_synchronouslyPerformWithRunningProgressSuppressionStateMachine___block_invoke;
  v8[3] = &unk_1E837E1F8;
  v8[4] = self;
  v9 = machineCopy;
  v7 = machineCopy;
  dispatch_sync(queue2, v8);
}

- (void)performWithRunningProgressSuppressionStateMachine:(id)machine
{
  machineCopy = machine;
  queue = [(WFBackgroundShortcutRunner *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__WFBackgroundShortcutRunner_performWithRunningProgressSuppressionStateMachine___block_invoke;
  v7[3] = &unk_1E837E1F8;
  v7[4] = self;
  v8 = machineCopy;
  v6 = machineCopy;
  dispatch_async(queue, v7);
}

- (void)synchronouslyPerformWithHost:(id)host
{
  hostCopy = host;
  queue = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(WFBackgroundShortcutRunner *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__WFBackgroundShortcutRunner_synchronouslyPerformWithHost___block_invoke;
  v8[3] = &unk_1E837E1F8;
  v8[4] = self;
  v9 = hostCopy;
  v7 = hostCopy;
  dispatch_sync(queue2, v8);
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

- (void)performWithHost:(id)host
{
  hostCopy = host;
  queue = [(WFBackgroundShortcutRunner *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__WFBackgroundShortcutRunner_performWithHost___block_invoke;
  v7[3] = &unk_1E837E1F8;
  v7[4] = self;
  v8 = hostCopy;
  v6 = hostCopy;
  dispatch_async(queue, v7);
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

- (BOOL)allowIncomingRunRequest:(id)request withDescriptor:(id)descriptor accessSpecifier:(id)specifier record:(id)record
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  descriptorCopy = descriptor;
  specifierCopy = specifier;
  if ([specifierCopy allowFullRuntimeAccess])
  {
    LOBYTE(v11) = 1;
    goto LABEL_43;
  }

  v12 = requestCopy;
  v13 = descriptorCopy;
  v14 = v12;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

LABEL_8:
      LOBYTE(v11) = [specifierCopy allowRunningTestHarnessTests];
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

  action = [v17 action];
  if (action)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = action;
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

  associatedAppBundleIdentifier = [v21 associatedAppBundleIdentifier];

  if (associatedAppBundleIdentifier && ([associatedAppBundleIdentifier wf_isEmpty] & 1) == 0 && (objc_msgSend(specifierCopy, "allowLinkContextualActionRunningForBundleIdentifier:", associatedAppBundleIdentifier) & 1) != 0)
  {
    goto LABEL_26;
  }

  if ([specifierCopy allowCustomShortcutRunning])
  {
    v23 = v15;
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();

    if (v24)
    {
      goto LABEL_26;
    }
  }

  if ([specifierCopy allowStepwiseExecution] && (v25 = v15, objc_opt_class(), v26 = objc_opt_isKindOfClass(), v25, (v26 & 1) != 0) || (objc_msgSend(specifierCopy, "allowHomeResidentShortcutRunning") & 1) != 0)
  {
LABEL_26:
    LOBYTE(v11) = 1;
  }

  else
  {
    v27 = v15;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      action2 = [v27 action];
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

            if ([*(*(&v34 + 1) + 8 * i) isEqual:{action2, v34}])
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

- (void)computeFinderResizedSizesForImages:(id)images inSizes:(id)sizes completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  sizesCopy = sizes;
  completionCopy = completion;
  v9 = objc_alloc_init(WFFinderImageResizer);
  v10 = objc_alloc_init(MEMORY[0x1E6996D40]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = imagesCopy;
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
        fileURL = [*(*(&v21 + 1) + 8 * v15) fileURL];
        v18 = [v16 fileWithURL:fileURL options:29];

        [v10 addFile:v18];
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [(WFFinderImageResizer *)v9 computeResizedSizesForImages:v10 inSizes:sizesCopy completion:completionCopy];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)filterContextualActions:(id)actions forContext:(id)context completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  contextCopy = context;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x1E6996D40]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = contextCopy;
  obj = [contextCopy files];
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
        fileURL = [v13 fileURL];
        v16 = MEMORY[0x1E69E0AF8];
        type = [v13 type];
        identifier = [type identifier];
        v19 = [v16 typeWithString:identifier];
        v20 = [v14 fileWithURL:fileURL options:8 ofType:v19];

        [v8 addFile:v20];
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  v21 = [actionsCopy if_map:&__block_literal_global_391];
  v22 = +[WFActionRegistry sharedRegistry];
  v23 = [v22 createActionsWithIdentifiers:v21 serializedParameterArray:0];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __76__WFBackgroundShortcutRunner_filterContextualActions_forContext_completion___block_invoke_2;
  v31[3] = &unk_1E8374910;
  v32 = actionsCopy;
  v33 = v8;
  v24 = v8;
  v25 = actionsCopy;
  [v23 if_mapAsynchronously:v31 completionHandler:completionCopy];

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

- (void)getContextualActionsForContext:(id)context completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
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

        v15 = [*(*(&v17 + 1) + 8 * v14) contextualActionsForSurface:{objc_msgSend(contextCopy, "surface", v17)}];
        [v9 addObjectsFromArray:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  completionCopy[2](completionCopy, v9, 0);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)sendResponseForRunRequest:(id)request controller:(id)controller error:(id)error completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  controllerCopy = controller;
  errorCopy = error;
  completionCopy = completion;
  v14 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    identifier = [requestCopy identifier];
    *buf = 136315650;
    v30 = "[WFBackgroundShortcutRunner sendResponseForRunRequest:controller:error:completion:]";
    v31 = 2114;
    v32 = identifier;
    v33 = 2114;
    v34 = errorCopy;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s <%{public}@> preparing to send response, error: %{public}@", buf, 0x20u);
  }

  identifier2 = [requestCopy identifier];

  if (identifier2)
  {
    v17 = [WFRemoteExecutionRunRequestResponse alloc];
    identifier3 = [requestCopy identifier];
    output = [controllerCopy output];
    v20 = [(WFRemoteExecutionRunRequestResponse *)v17 initWithRunRequestIdentifier:identifier3 variables:0 output:output error:errorCopy];

    remoteExecutionCoordinator = [(WFBackgroundShortcutRunner *)self remoteExecutionCoordinator];
    [v20 setCoordinator:remoteExecutionCoordinator];

    v22 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    v28 = 0;
    [v20 writeTo:v22 error:&v28];
    v23 = v28;
    immutableData = [v22 immutableData];

    if (immutableData)
    {
      remoteExecutionCoordinator2 = [(WFBackgroundShortcutRunner *)self remoteExecutionCoordinator];
      immutableData2 = [v22 immutableData];
      [remoteExecutionCoordinator2 sendRunRequestResponse:immutableData2 completion:completionCopy];
    }

    else
    {
      remoteExecutionCoordinator2 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(remoteExecutionCoordinator2, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v30 = "[WFBackgroundShortcutRunner sendResponseForRunRequest:controller:error:completion:]";
        v31 = 2114;
        v32 = v23;
        _os_log_impl(&dword_1CA256000, remoteExecutionCoordinator2, OS_LOG_TYPE_FAULT, "%s An error occurred while writing the run request data %{public}@", buf, 0x16u);
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

- (void)handleIncomingFileForRemoteExecutionWithURL:(id)l withIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  v8 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[WFBackgroundShortcutRunner handleIncomingFileForRemoteExecutionWithURL:withIdentifier:]";
    v13 = 2112;
    v14 = identifierCopy;
    v15 = 2112;
    v16 = lCopy;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Incoming file with id: %@, at fileURL: %@", &v11, 0x20u);
  }

  fileCoordinator = [(WFBackgroundShortcutRunner *)self fileCoordinator];
  [fileCoordinator handleFile:lCopy withIdentifier:identifierCopy];

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

- (void)presenterRequestedUpdatedRunViewSource:(id)source completionHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__WFBackgroundShortcutRunner_presenterRequestedUpdatedRunViewSource_completionHandler___block_invoke;
  v10[3] = &unk_1E83748C8;
  v11 = sourceCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = sourceCopy;
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

- (void)presenterRequestedWorkflowPauseForContext:(id)context dialogRequest:(id)request
{
  contextCopy = context;
  workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
  runningContext = [workflowController runningContext];
  v10 = contextCopy;
  v8 = runningContext;
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
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  currentAction = [dialogTransformer currentAction];
  workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
  workflow = [workflowController workflow];
  actions = [workflow actions];
  lastObject = [actions lastObject];
  v13 = [v3 numberWithBool:{objc_msgSend(currentAction, "isEqual:", lastObject)}];

  dialogTransformer2 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  userInterfacePresenter = [dialogTransformer2 userInterfacePresenter];
  currentRunningContext = [(WFBackgroundShortcutRunner *)self currentRunningContext];
  [userInterfacePresenter applicationWillLaunchInForegroundForRunningContext:currentRunningContext isLastAction:v13];
}

- (BOOL)progressIsPersistentInSystemAperture
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  hasSystemAperture = [currentDevice hasSystemAperture];

  if (!hasSystemAperture || self->_runningProgressSuppressionStateMachine && [(WFBackgroundShortcutRunner *)self runningProgressSuppressionMachineResolvedAndDeniedProgress]|| ![(WFBackgroundShortcutRunner *)self shortcutShouldShowRunningProgress])
  {
    return 0;
  }

  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  userInterfacePresenter = [dialogTransformer userInterfacePresenter];
  v7 = userInterfacePresenter != 0;

  return v7;
}

- (BOOL)runRequestIsContextualAction
{
  currentRunRequest = [(WFBackgroundShortcutRunner *)self currentRunRequest];
  if (currentRunRequest)
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

- (void)runningProgressSuppressionStateMachine:(id)machine didDecideRunningProgressIsAllowed:(BOOL)allowed dialogAttribution:(id)attribution
{
  v28 = *MEMORY[0x1E69E9840];
  attributionCopy = attribution;
  queue = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_V2(queue);

  runningProgressSuppressionStateMachine = self->_runningProgressSuppressionStateMachine;
  self->_runningProgressSuppressionStateMachine = 0;

  self->_runningProgressSuppressionMachineResolvedAndDeniedProgress = !allowed;
  shortcutShouldShowRunningProgress = [(WFBackgroundShortcutRunner *)self shortcutShouldShowRunningProgress];
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  userInterfacePresenter = [dialogTransformer userInterfacePresenter];

  isStepwiseExecution = [(WFBackgroundShortcutRunner *)self isStepwiseExecution];
  v14 = getWFGeneralLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "[WFBackgroundShortcutRunner runningProgressSuppressionStateMachine:didDecideRunningProgressIsAllowed:dialogAttribution:]";
    v24 = 1024;
    v25 = shortcutShouldShowRunningProgress;
    v26 = 1024;
    v27 = userInterfacePresenter != 0;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s Deciding if persistent mode should be started: shortcutShouldShowRunningProgress: %d, hasUserInterfacePresenter: %d", buf, 0x18u);
  }

  if (userInterfacePresenter != 0 && shortcutShouldShowRunningProgress && !isStepwiseExecution)
  {
    v15 = getWFGeneralLogObject();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (allowed)
    {
      if (v16)
      {
        *buf = 136315138;
        v23 = "[WFBackgroundShortcutRunner runningProgressSuppressionStateMachine:didDecideRunningProgressIsAllowed:dialogAttribution:]";
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, "%s Beginning persistent mode", buf, 0xCu);
      }

      dispatch_group_enter(self->_exitTaskGroup);
      dialogTransformer2 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
      userInterfacePresenter2 = [dialogTransformer2 userInterfacePresenter];
      currentRunningContext = [(WFBackgroundShortcutRunner *)self currentRunningContext];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __121__WFBackgroundShortcutRunner_runningProgressSuppressionStateMachine_didDecideRunningProgressIsAllowed_dialogAttribution___block_invoke;
      v21[3] = &unk_1E837E5E0;
      v21[4] = self;
      [userInterfacePresenter2 beginPersistentModeWithRunningContext:currentRunningContext attribution:attributionCopy completionHandler:v21];
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

- (void)runnerStateMachineDidRequestProcessExit:(id)exit
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

- (void)runnerStateMachine:(id)machine didFinishRunningShortcutWithResult:(id)result
{
  resultCopy = result;
  queue = [(WFBackgroundShortcutRunner *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__WFBackgroundShortcutRunner_runnerStateMachine_didFinishRunningShortcutWithResult___block_invoke;
  v8[3] = &unk_1E837F870;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(queue, v8);
}

void __84__WFBackgroundShortcutRunner_runnerStateMachine_didFinishRunningShortcutWithResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) finishRunningWithResult:*(a1 + 40)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 exitWithReason:@"shortcut finished running"];
}

- (void)runnerStateMachine:(id)machine didRequestStoppingShortcutWithError:(id)error
{
  errorCopy = error;
  workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
  if (!workflowController)
  {
    goto LABEL_4;
  }

  v6 = workflowController;
  workflowController2 = [(WFBackgroundShortcutRunner *)self workflowController];
  workflow = [workflowController2 workflow];

  if (workflow)
  {
    workflowController3 = [(WFBackgroundShortcutRunner *)self workflowController];
    [workflowController3 stopWithError:errorCopy];
  }

  else
  {
LABEL_4:
    completionBlock = [(WFBackgroundShortcutRunner *)self completionBlock];

    if (completionBlock)
    {
      workflowController3 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:errorCopy];
      stateMachine = [(WFBackgroundShortcutRunner *)self stateMachine];
      [stateMachine finishRunningWithReason:@"runner was asked to stop but there's a completion handler and NO workflow" result:workflowController3];
    }

    else
    {
      workflowController3 = [(WFBackgroundShortcutRunner *)self stateMachine];
      [workflowController3 exitWithReason:{@"-stop was called and there is no running shortcut, proceeding directly to stop"}];
    }
  }
}

- (void)finishRunningWithResult:(id)result
{
  resultCopy = result;
  queue = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_V2(queue);

  runEvent = [(WFBackgroundShortcutRunner *)self runEvent];

  if (runEvent)
  {
    error = [resultCopy error];
    if (error)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = +[WFDatabaseProxy defaultDatabase];
    runEvent2 = [(WFBackgroundShortcutRunner *)self runEvent];
    [v9 setOutcome:v8 forRunEvent:runEvent2];

    [(WFBackgroundShortcutRunner *)self setRunEvent:0];
  }

  currentRunningContext = [(WFBackgroundShortcutRunner *)self currentRunningContext];
  if (([resultCopy isCancelled] & 1) == 0)
  {
    error2 = [resultCopy error];
    if (error2 && [currentRunningContext allowsDialogNotifications])
    {
      error3 = [resultCopy error];
      wf_isRequiresShortcutsJrError = [error3 wf_isRequiresShortcutsJrError];

      if (wf_isRequiresShortcutsJrError)
      {
        goto LABEL_12;
      }

      error2 = [(WFBackgroundShortcutRunner *)self currentRunningWorkflowReference];
      standardClient = [MEMORY[0x1E69E0938] standardClient];
      error4 = [resultCopy error];
      dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
      attribution = [dialogTransformer attribution];
      [standardClient postNotificationAboutFailure:error4 inWorkflow:error2 dialogAttribution:attribution runningContext:currentRunningContext];
    }
  }

LABEL_12:
  dialogTransformer2 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  userInterfacePresenter = [dialogTransformer2 userInterfacePresenter];

  if (userInterfacePresenter)
  {
    if ([(WFBackgroundShortcutRunner *)self shortcutShouldShowRunningProgress]&& ![(WFBackgroundShortcutRunner *)self runningProgressSuppressionMachineResolvedAndDeniedProgress])
    {
      dispatch_group_enter(self->_exitTaskGroup);
      dialogTransformer3 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
      userInterfacePresenter2 = [dialogTransformer3 userInterfacePresenter];
      v23 = MEMORY[0x1E696AD98];
      error5 = [resultCopy error];
      if (error5)
      {
        v25 = 0;
      }

      else
      {
        v25 = [resultCopy isCancelled] ^ 1;
      }

      v26 = [v23 numberWithInt:v25];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __54__WFBackgroundShortcutRunner_finishRunningWithResult___block_invoke;
      v29[3] = &unk_1E837E5E0;
      v29[4] = self;
      [userInterfacePresenter2 completePersistentModeWithSuccess:v26 runningContext:currentRunningContext completionHandler:v29];
    }

    else
    {
      dispatch_group_enter(self->_exitTaskGroup);
      dialogTransformer3 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
      userInterfacePresenter2 = [dialogTransformer3 userInterfacePresenter];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __54__WFBackgroundShortcutRunner_finishRunningWithResult___block_invoke_2;
      v28[3] = &unk_1E837E5E0;
      v28[4] = self;
      [userInterfacePresenter2 dismissPresentedContentForRunningContext:currentRunningContext completionHandler:v28];
    }
  }

  [(WFBackgroundShortcutRunner *)self callWorkflowRunningCompletionBlockWithResult:resultCopy];
  workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
  [workflowController reset];

  [(WFBackgroundShortcutRunner *)self setTransaction:0];
  [(WFBackgroundShortcutRunner *)self setCurrentRunRequest:0];
  [(WFBackgroundShortcutRunner *)self setCurrentRunningWorkflowReference:0];
  [(WFBackgroundShortcutRunner *)self setCurrentRunningContext:0];
}

- (void)callWorkflowRunningCompletionBlockWithResult:(id)result
{
  v14 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  queue = [(WFBackgroundShortcutRunner *)self queue];
  dispatch_assert_queue_V2(queue);

  completionBlock = [(WFBackgroundShortcutRunner *)self completionBlock];

  v7 = getWFXPCRunnerLogObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (completionBlock)
  {
    if (v8)
    {
      v12 = 136315138;
      v13 = "[WFBackgroundShortcutRunner callWorkflowRunningCompletionBlockWithResult:]";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Workflow Did Finish: Calling Completion Block", &v12, 0xCu);
    }

    completionBlock2 = [(WFBackgroundShortcutRunner *)self completionBlock];
    (completionBlock2)[2](completionBlock2, resultCopy, 0);

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

- (void)stopWithError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
    workflow = [workflowController workflow];
    v10 = 136315394;
    v11 = "[WFBackgroundShortcutRunner stopWithError:]";
    v12 = 2112;
    v13 = workflow;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Requested stopping workflow run: %@", &v10, 0x16u);
  }

  stateMachine = [(WFBackgroundShortcutRunner *)self stateMachine];
  [stateMachine stopShortcutWithError:errorCopy reason:@"-stop was called"];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)resumeRunningFromContext:(id)context withRequest:(id)request completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  requestCopy = request;
  completionCopy = completion;
  v11 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v11;

  self->_environment = 0;
  objc_storeStrong(&self->_currentRunRequest, request);
  v13 = _Block_copy(completionCopy);

  completionBlock = self->_completionBlock;
  self->_completionBlock = v13;

  stateMachine = [(WFBackgroundShortcutRunner *)self stateMachine];
  contextCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"incoming resume request (%@) with context: %@", requestCopy, contextCopy];
  [stateMachine handlingRequestStateWithReason:contextCopy];

  v17 = WFWFWorkflowControllerStateDefaultSerializedURLFromContext(contextCopy);
  if (v17)
  {
    runSource = [requestCopy runSource];
    v19 = [runSource isEqualToString:*MEMORY[0x1E69E13B0]];

    if (v19)
    {
      [(WFBackgroundShortcutRunner *)self setIsPersonalAutomation:1];
    }

    extensionResourceClasses = [requestCopy extensionResourceClasses];
    v21 = extensionResourceClasses;
    if (extensionResourceClasses)
    {
      v22 = extensionResourceClasses;
    }

    else
    {
      v22 = [MEMORY[0x1E695DFD8] set];
    }

    v28 = v22;

    v29 = [objc_alloc(MEMORY[0x1E69E0C78]) initWithAccessResourceClassNames:v28];
    mEMORY[0x1E69E0C70] = [MEMORY[0x1E69E0C70] sharedManager];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __78__WFBackgroundShortcutRunner_resumeRunningFromContext_withRequest_completion___block_invoke;
    v34[3] = &unk_1E8374838;
    v35 = v17;
    selfCopy = self;
    v37 = contextCopy;
    v38 = requestCopy;
    [mEMORY[0x1E69E0C70] performWithSandboxExtensions:v29 asynchronousBlock:v34];

    stateMachine2 = v35;
  }

  else
  {
    v23 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v42 = "[WFBackgroundShortcutRunner resumeRunningFromContext:withRequest:completion:]";
      v43 = 2112;
      v44 = contextCopy;
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
    stateMachine2 = [(WFBackgroundShortcutRunner *)self stateMachine];
    contextCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to get state URL from context: %@", contextCopy];
    [stateMachine2 finishRunningWithReason:contextCopy2 result:v29];
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

- (void)runActionFromRunRequestData:(id)data runningContext:(id)context completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  dataCopy = data;
  v11 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v11;

  self->_environment = 4;
  v13 = _Block_copy(completionCopy);

  completionBlock = self->_completionBlock;
  self->_completionBlock = v13;

  stateMachine = [(WFBackgroundShortcutRunner *)self stateMachine];
  [stateMachine handlingRequestStateWithReason:@"incoming remote execution request"];

  v39 = 0;
  v16 = [[WFRemoteExecutionRunRequest alloc] initWithData:dataCopy error:&v39];

  v17 = v39;
  if (v16)
  {
    [(WFBackgroundShortcutRunner *)self setCurrentRemoteExecutionRunRequest:v16];
    stateMachine2 = [(WFBackgroundShortcutRunner *)self stateMachine];
    isRunningShortcut = [stateMachine2 isRunningShortcut];

    if (isRunningShortcut)
    {
      v20 = getWFXPCRunnerLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v41 = "[WFBackgroundShortcutRunner runActionFromRunRequestData:runningContext:completion:]";
        _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s BackgroundShortcutRunner asked to run two workflows in parallel which is not supported.", buf, 0xCu);
      }

      v21 = WFBackgroundShortcutRunnerError(3, 0);
      currentRemoteExecutionRunRequest = [(WFBackgroundShortcutRunner *)self currentRemoteExecutionRunRequest];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke;
      v36[3] = &unk_1E837F870;
      v37 = v21;
      selfCopy = self;
      v23 = v21;
      [(WFBackgroundShortcutRunner *)self sendResponseForRunRequest:currentRemoteExecutionRunRequest controller:0 error:v23 completion:v36];
    }

    else
    {
      mEMORY[0x1E69E0C70] = [MEMORY[0x1E69E0C70] sharedManager];
      v30 = [MEMORY[0x1E69E0C78] all];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __84__WFBackgroundShortcutRunner_runActionFromRunRequestData_runningContext_completion___block_invoke_2;
      v32[3] = &unk_1E83747E8;
      v33 = v16;
      selfCopy2 = self;
      v35 = contextCopy;
      [mEMORY[0x1E69E0C70] performWithSandboxExtensions:v30 asynchronousBlock:v32];

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

    stateMachine3 = [(WFBackgroundShortcutRunner *)self stateMachine];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to parse remote execution run request from data, error: %@", v17];
    [stateMachine3 finishRunningWithReason:v28 result:v23];
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

- (void)beginPersistentModeIfNeededWithRunningContext:(id)context action:(id)action attributionBehavior:(int64_t)behavior
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  actionCopy = action;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  userInterfacePresenter = [dialogTransformer userInterfacePresenter];
  currentPersistentRunningContextIdentifier = [userInterfacePresenter currentPersistentRunningContextIdentifier];
  identifier = [contextCopy identifier];
  v14 = currentPersistentRunningContextIdentifier;
  v15 = identifier;
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
      identifier2 = [contextCopy identifier];
      v32 = 136315394;
      v33 = "[WFBackgroundShortcutRunner beginPersistentModeIfNeededWithRunningContext:action:attributionBehavior:]";
      v34 = 2112;
      v35 = identifier2;
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

  workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
  currentAction = [workflowController currentAction];
  v22 = [currentAction shouldAppearAttributedFromSystemSurfacesForBehavior:behavior];

  if ((v22 & 1) == 0)
  {
    dialogTransformer3 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(dialogTransformer3, OS_LOG_TYPE_INFO))
    {
      workflowController2 = [(WFBackgroundShortcutRunner *)self workflowController];
      currentAction2 = [workflowController2 currentAction];
      v32 = 136315394;
      v33 = "[WFBackgroundShortcutRunner beginPersistentModeIfNeededWithRunningContext:action:attributionBehavior:]";
      v34 = 2112;
      v35 = currentAction2;
      _os_log_impl(&dword_1CA256000, dialogTransformer3, OS_LOG_TYPE_INFO, "%s Skipping Spotlight stepping prep for action: %@ because action did not want attribution with behavior", &v32, 0x16u);
    }

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dialogTransformer2 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    [dialogTransformer2 setCurrentAction:actionCopy];

    dialogTransformer3 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    userInterfacePresenter2 = [dialogTransformer3 userInterfacePresenter];
    dialogTransformer4 = [(WFBackgroundShortcutRunner *)self dialogTransformer];
    standaloneActionAttribution = [dialogTransformer4 standaloneActionAttribution];
    [userInterfacePresenter2 beginPersistentModeWithRunningContext:contextCopy attribution:standaloneActionAttribution completionHandler:&__block_literal_global_284_7557];

LABEL_23:
    goto LABEL_19;
  }

  v23 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v32 = 136315394;
    v33 = "[WFBackgroundShortcutRunner beginPersistentModeIfNeededWithRunningContext:action:attributionBehavior:]";
    v34 = 2112;
    v35 = actionCopy;
    _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_DEBUG, "%s Skipping beginning persistent mode for run workflow action since it will handle starting it: %@", &v32, 0x16u);
  }

  [actionCopy beginPersistentModeForSpotlightWhenReady];
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

- (void)prepareForSteppingInPersistentModeWithAction:(id)action
{
  currentRunningContext = [(WFBackgroundShortcutRunner *)self currentRunningContext];
  workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
  currentAction = [workflowController currentAction];
  [(WFBackgroundShortcutRunner *)self beginPersistentModeIfNeededWithRunningContext:currentRunningContext action:currentAction attributionBehavior:0];

  if ([MEMORY[0x1E695E000] forceSpotlightImplicitResult])
  {
    workflowController2 = [(WFBackgroundShortcutRunner *)self workflowController];
    workflow = [workflowController2 workflow];

    v8 = +[WFActionRegistry sharedRegistry];
    v9 = [v8 createActionWithIdentifier:@"is.workflow.actions.showresult" serializedParameters:0];

    [workflow addAction:v9];
    [v9 unlockInputParameter];
    [v9 snapInputParameterIfNecessary];
  }
}

- (void)stepWithAction:(id)action
{
  v18 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if ([actionCopy isMissing])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFBackgroundShortcutRunner.m" lineNumber:636 description:@"Tried to step with an invalid action"];
  }

  workflowController = [(WFBackgroundShortcutRunner *)self workflowController];
  workflow = [workflowController workflow];

  v8 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[WFBackgroundShortcutRunner stepWithAction:]";
    v14 = 2112;
    v15 = actionCopy;
    v16 = 2112;
    v17 = workflow;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Adding action: %@ to workflow: %@", &v12, 0x20u);
  }

  [workflow addAction:actionCopy];
  [(WFBackgroundShortcutRunner *)self prepareForSteppingInPersistentModeWithAction:actionCopy];
  workflowController2 = [(WFBackgroundShortcutRunner *)self workflowController];
  [workflowController2 step];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)runWorkflowWithDescriptor:(id)descriptor request:(id)request inEnvironment:(id)environment runningContext:(id)context completion:(id)completion
{
  v91[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  requestCopy = request;
  environmentCopy = environment;
  contextCopy = context;
  completionCopy = completion;
  if ([requestCopy isStepwise])
  {
    accessSpecifier = [(WFBackgroundShortcutRunner *)self accessSpecifier];
    allowStepwiseExecution = [accessSpecifier allowStepwiseExecution];

    if ((allowStepwiseExecution & 1) == 0)
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
  identifier = [contextCopy identifier];
  v20 = [identifier hash];

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

  stateMachine = [(WFBackgroundShortcutRunner *)self stateMachine];
  isRunningShortcut = [stateMachine isRunningShortcut];

  if (!isRunningShortcut)
  {
    if (+[WFAssessmentModeManager isAssessmentModeSupportedOnCurrentDevice])
    {
      assessmentModeManager = [(WFBackgroundShortcutRunner *)self assessmentModeManager];
      isInAssessmentMode = [assessmentModeManager isInAssessmentMode];

      v31 = getWFXPCRunnerLogObject();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (isInAssessmentMode)
      {
        if (v32)
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "[WFBackgroundShortcutRunner runWorkflowWithDescriptor:request:inEnvironment:runningContext:completion:]";
          _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_DEFAULT, "%s Device is in assessmentMode cancelling shortcut execution.", &buf, 0xCu);
        }

        v33 = objc_alloc(MEMORY[0x1E69E0E28]);
        assessmentModeActiveError = [(WFBackgroundShortcutRunner *)self assessmentModeActiveError];
        v35 = WFBackgroundShortcutRunnerError(16, assessmentModeActiveError);
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

      assessmentModeManager2 = [(WFBackgroundShortcutRunner *)self assessmentModeManager];
      [assessmentModeManager2 startObservingForAssesmentModeChangesIfNeeded];
    }

    stateMachine2 = [(WFBackgroundShortcutRunner *)self stateMachine];
    requestCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"new run request: %@", requestCopy];
    [stateMachine2 handlingRequestStateWithReason:requestCopy];

    v45 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v45;

    self->_environment = [environmentCopy integerValue];
    objc_storeStrong(&self->_currentRunRequest, request);
    v47 = _Block_copy(completionCopy);
    completionBlock = self->_completionBlock;
    self->_completionBlock = v47;

    v27 = +[WFDatabaseProxy defaultDatabase];
    v82 = 0;
    v49 = [descriptorCopy workflowReferenceWithDatabase:v27 error:&v82];
    v50 = v82;
    error3 = v50;
    if (!v49 && v50)
    {
      v51 = objc_alloc(MEMORY[0x1E69E0E28]);
      v52 = WFBackgroundShortcutRunnerError(1, 0);
      v53 = [v51 initWithError:v52];

      error = [v53 error];
      (*(completionCopy + 2))(completionCopy, v53, error);

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

      error2 = [v61 error];
      (*(completionCopy + 2))(completionCopy, v61, error2);

      goto LABEL_46;
    }

    objc_storeStrong(&self->_currentRunningWorkflowReference, v49);
    objc_storeStrong(&self->_currentRunningContext, context);
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
    mEMORY[0x1E69E0C70] = [MEMORY[0x1E69E0C70] sharedManager];
    v68 = [MEMORY[0x1E69E0C78] all];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __104__WFBackgroundShortcutRunner_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke;
    v72[3] = &unk_1E8374798;
    v73 = descriptorCopy;
    v74 = environmentCopy;
    v75 = v27;
    selfCopy = self;
    v81 = a2;
    v77 = requestCopy;
    v78 = contextCopy;
    v79 = v49;
    p_buf = &buf;
    [mEMORY[0x1E69E0C70] performWithSandboxExtensions:v68 asynchronousBlock:v72];

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

  error3 = [v27 error];
  (*(completionCopy + 2))(completionCopy, v27, error3);
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

- (void)startWorkflowExecution:(id)execution workflowController:(id)controller descriptor:(id)descriptor workflowReference:(id)reference database:(id)database
{
  v31 = *MEMORY[0x1E69E9840];
  executionCopy = execution;
  descriptorCopy = descriptor;
  referenceCopy = reference;
  databaseCopy = database;
  controllerCopy = controller;
  v17 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v28 = "[WFBackgroundShortcutRunner startWorkflowExecution:workflowController:descriptor:workflowReference:database:]";
    v29 = 2048;
    v30 = CACurrentMediaTime();
    _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEBUG, "%s [Performance] Starting workflow run, %f", buf, 0x16u);
  }

  [controllerCopy run];
  logRunEvent = [executionCopy logRunEvent];
  if (referenceCopy && logRunEvent)
  {
    runSource = [executionCopy runSource];
    v20 = [databaseCopy logRunOfWorkflow:referenceCopy withSource:runSource triggerID:0];
    [(WFBackgroundShortcutRunner *)self setRunEvent:v20];
  }

  if ([executionCopy donateInteraction])
  {
    v21 = dispatch_get_global_queue(0, 0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __110__WFBackgroundShortcutRunner_startWorkflowExecution_workflowController_descriptor_workflowReference_database___block_invoke;
    v23[3] = &unk_1E837F848;
    v23[4] = self;
    v24 = descriptorCopy;
    v25 = databaseCopy;
    v26 = referenceCopy;
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

- (void)prewarmRunnerWithCompletion:(id)completion
{
  v8 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFBackgroundShortcutRunner prewarmRunnerWithCompletion:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Runner prewarm complete", &v6, 0xCu);
  }

  completionCopy[2](completionCopy, 0);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateRunViewSource:(id)source
{
  sourceCopy = source;
  dialogTransformer = [(WFBackgroundShortcutRunner *)self dialogTransformer];
  userInterfacePresenter = [dialogTransformer userInterfacePresenter];
  [userInterfacePresenter updateRunViewSource:sourceCopy];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
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
  [connectionCopy setInterruptionHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__WFBackgroundShortcutRunner_listener_shouldAcceptNewConnection___block_invoke_196;
  v13[3] = &unk_1E837FA70;
  v13[4] = self;
  [connectionCopy setInvalidationHandler:v13];
  v7 = WFOutOfProcessWorkflowControllerHostXPCInterface();
  [connectionCopy setRemoteObjectInterface:v7];

  v8 = WFOutOfProcessWorkflowControllerVendorXPCInterface();
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];
  [(WFBackgroundShortcutRunner *)self setXpcConnection:connectionCopy];
  v9 = [MEMORY[0x1E69E0910] accessSpecifierForXPCConnection:connectionCopy];

  [(WFBackgroundShortcutRunner *)self setAccessSpecifier:v9];
  stateMachine = [(WFBackgroundShortcutRunner *)self stateMachine];
  [stateMachine idleStateWithReason:@"incoming connection to runner"];

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

- (WFBackgroundShortcutRunner)initWithProcessPolicy:(unint64_t)policy
{
  v25.receiver = self;
  v25.super_class = WFBackgroundShortcutRunner;
  v4 = [(WFBackgroundShortcutRunner *)&v25 init];
  v5 = v4;
  if (v4)
  {
    if (policy)
    {
      if (policy == 1)
      {
        accessSpecifierUnrestricted = [MEMORY[0x1E69E0910] accessSpecifierUnrestricted];
        [(WFBackgroundShortcutRunner *)v5 setAccessSpecifier:accessSpecifierUnrestricted];

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

      standardClient = [MEMORY[0x1E69E0938] standardClient];
      getVaultItemsAccessForBackgroundRunner = [standardClient getVaultItemsAccessForBackgroundRunner];

      [getVaultItemsAccessForBackgroundRunner enumerateObjectsUsingBlock:&__block_literal_global_7653];
      [(WFBackgroundShortcutRunner *)v5 setDataVaultFileURLs:getVaultItemsAccessForBackgroundRunner];
    }

    v10 = [[WFBackgroundShortcutRunnerStateMachine alloc] initWithProcessPolicy:policy];
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