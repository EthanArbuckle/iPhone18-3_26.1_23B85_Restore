@interface TFFeedbackSession
- (TFFeedbackSession)initWithBetaApplicationIdentifier:(id)identifier;
- (TFFeedbackSessionDelegate)delegate;
- (UIViewController)activeFormViewController;
- (id)_associatePrefilledEmailIfNeeded;
- (id)_currentContextStringDescription;
- (id)_developerName;
- (id)_displayableErrorMessageFromService:(id)service submissionError:(id)error;
- (id)_generateFormForCurrentState;
- (id)createFeedbackViewControllerForCurrentState;
- (id)feedbackAppName;
- (id)feedbackDeveloperName;
- (id)feedbackInitialScreenshotURLs;
- (id)feedbackTesterEmailAddress;
- (id)initForContext:(unint64_t)context betaApplicationBundleURL:(id)l;
- (id)initForContext:(unint64_t)context betaApplicationIdentifier:(id)identifier;
- (id)initForContext:(unint64_t)context betaApplicationLoadableBundleURL:(id)l;
- (id)initForContext:(unint64_t)context withTestingWithLaunchInfo:(id)info;
- (id)launchInfoForFeedbackPopulation;
- (void)_abortFeedbackSubmissionForViewController:(id)controller withError:(id)error;
- (void)_beginFeedbackSubmisionForViewController:(id)controller;
- (void)_finishFeedbackSubmissionForViewController:(id)controller;
- (void)associateComments:(id)comments;
- (void)associateEmail:(id)email;
- (void)associateIncidentId:(id)id;
- (void)associateScreenshotImages:(id)images;
- (void)cancelFeedbackForActiveFormViewController;
- (void)commonInitWithContext:(unint64_t)context;
- (void)dataAggregator:(id)aggregator didCompleteTasks:(id)tasks;
- (void)feedbackWillSendFeedbackSubmissionWithFeedbackText:(id)text emailAddress:(id)address screenshotURLs:(id)ls;
- (void)initiateFeedbackSnapshot;
- (void)submitCrashFeedback;
- (void)submitFeedbackForActiveFormViewController;
@end

@implementation TFFeedbackSession

- (id)initForContext:(unint64_t)context betaApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = TFFeedbackSession;
  v7 = [(TFFeedbackSession *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    [(TFFeedbackSession *)v7 commonInitWithContext:context];
  }

  return v7;
}

- (id)initForContext:(unint64_t)context betaApplicationLoadableBundleURL:(id)l
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = TFFeedbackSession;
  v7 = [(TFFeedbackSession *)&v15 init];
  if (v7)
  {
    v8 = [lCopy copy];
    bundleURL = v7->_bundleURL;
    v7->_bundleURL = v8;

    v10 = [TFBundle bundleIdentifierForBundleURL:lCopy];
    v11 = [v10 copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v11;

    if (!v7->_bundleIdentifier)
    {
      v13 = 0;
      goto LABEL_6;
    }

    [(TFFeedbackSession *)v7 commonInitWithContext:context];
  }

  v13 = v7;
LABEL_6:

  return v13;
}

- (id)initForContext:(unint64_t)context withTestingWithLaunchInfo:(id)info
{
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = TFFeedbackSession;
  v8 = [(TFFeedbackSession *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_launchInfo, info);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleURL = [mainBundle bundleURL];
    bundleURL = v9->_bundleURL;
    v9->_bundleURL = bundleURL;

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle2 bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = bundleIdentifier;

    [(TFFeedbackSession *)v9 commonInitWithContext:context];
  }

  return v9;
}

- (void)commonInitWithContext:(unint64_t)context
{
  self->_context = context;
  v4 = AMSGenerateLogCorrelationKey();
  logKey = self->_logKey;
  self->_logKey = v4;

  *&self->_didSnapshot = 0;
  self->_currentPhase = 0;
  v6 = [[TFFeedbackDataContainer alloc] initWithName:@"main"];
  dataContainer = self->_dataContainer;
  self->_dataContainer = v6;

  v8 = [[TFDataAggregator alloc] initWithSessionDataContainer:self->_dataContainer];
  aggregator = self->_aggregator;
  self->_aggregator = v8;

  [(TFDataAggregator *)self->_aggregator setDelegate:self];
  v10 = objc_alloc_init(ASDTFFeedbackSubmissionService);
  submissionService = self->_submissionService;
  self->_submissionService = v10;

  objc_storeWeak(&self->_activeFormViewController, 0);
}

- (void)initiateFeedbackSnapshot
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v3 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    v11 = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = bundleIdentifier;
    v15 = 2112;
    v16 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] initiateFeedbackSnapshot", &v11, 0x20u);
  }

  [(TFFeedbackSession *)self setDidSnapshot:1];
  v9 = [TFDataAggregationTask snapshotTasksForSession:self];
  aggregator = [(TFFeedbackSession *)self aggregator];
  [aggregator runTasks:v9];
}

- (void)associateIncidentId:(id)id
{
  v23 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    *buf = 138544130;
    v16 = v7;
    v17 = 2114;
    v18 = bundleIdentifier;
    v19 = 2112;
    v20 = logKey;
    v21 = 2114;
    v22 = idCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] associateIncidentId incidentId=%{public}@", buf, 0x2Au);
  }

  dataContainer = [(TFFeedbackSession *)self dataContainer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__TFFeedbackSession_associateIncidentId___block_invoke;
  v13[3] = &unk_279D980C8;
  v14 = idCopy;
  v12 = idCopy;
  [dataContainer performBatchUpdates:v13];
}

- (void)associateScreenshotImages:(id)images
{
  v21 = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    *buf = 138543874;
    v16 = v7;
    v17 = 2114;
    v18 = bundleIdentifier;
    v19 = 2112;
    v20 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] associateScreenshotImages", buf, 0x20u);
  }

  dataContainer = [(TFFeedbackSession *)self dataContainer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__TFFeedbackSession_associateScreenshotImages___block_invoke;
  v13[3] = &unk_279D980C8;
  v14 = imagesCopy;
  v12 = imagesCopy;
  [dataContainer performBatchUpdates:v13];
}

- (void)associateComments:(id)comments
{
  v23 = *MEMORY[0x277D85DE8];
  commentsCopy = comments;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    *buf = 138544130;
    v16 = v7;
    v17 = 2114;
    v18 = bundleIdentifier;
    v19 = 2112;
    v20 = logKey;
    v21 = 2114;
    v22 = commentsCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] associateComments comments=%{public}@", buf, 0x2Au);
  }

  dataContainer = [(TFFeedbackSession *)self dataContainer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__TFFeedbackSession_associateComments___block_invoke;
  v13[3] = &unk_279D980C8;
  v14 = commentsCopy;
  v12 = commentsCopy;
  [dataContainer performBatchUpdates:v13];
}

- (void)associateEmail:(id)email
{
  v21 = *MEMORY[0x277D85DE8];
  emailCopy = email;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    *buf = 138543874;
    v16 = v7;
    v17 = 2114;
    v18 = bundleIdentifier;
    v19 = 2112;
    v20 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] associateEmail", buf, 0x20u);
  }

  dataContainer = [(TFFeedbackSession *)self dataContainer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__TFFeedbackSession_associateEmail___block_invoke;
  v13[3] = &unk_279D980C8;
  v14 = emailCopy;
  v12 = emailCopy;
  [dataContainer performBatchUpdates:v13];
}

- (id)createFeedbackViewControllerForCurrentState
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v3 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    v26 = 138543874;
    v27 = v5;
    v28 = 2114;
    v29 = bundleIdentifier;
    v30 = 2112;
    v31 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] createFeedbackViewControllerForCurrentState", &v26, 0x20u);
  }

  if (![(TFFeedbackSession *)self didSnapshot])
  {
    [(TFFeedbackSession *)self initiateFeedbackSnapshot];
  }

  v9 = [TFDataAggregationTask anytimeTasksForSession:self];
  aggregator = [(TFFeedbackSession *)self aggregator];
  [aggregator runTasks:v9];

  _generateFormForCurrentState = [(TFFeedbackSession *)self _generateFormForCurrentState];
  dataContainer = [(TFFeedbackSession *)self dataContainer];
  [dataContainer prepareInitialValuesForForm:_generateFormForCurrentState];

  activeFormViewController = [(TFFeedbackSession *)self activeFormViewController];

  if (activeFormViewController)
  {
    v14 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger2 = [v14 generatedLogger];
    if (os_log_type_enabled(generatedLogger2, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = v16;
      bundleIdentifier2 = [(TFFeedbackSession *)self bundleIdentifier];
      logKey2 = [(TFFeedbackSession *)self logKey];
      v26 = 138543874;
      v27 = v16;
      v28 = 2114;
      v29 = bundleIdentifier2;
      v30 = 2112;
      v31 = logKey2;
      _os_log_impl(&dword_26D2C7000, generatedLogger2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@:%@] Error - createFeedbackViewControllerForCurrentState is called when earlier view controller is still in alive. Deallocate earlier view controller.", &v26, 0x20u);
    }
  }

  [(TFFeedbackSession *)self setCurrentPhase:0];
  v20 = [TFFeedbackFormPresenter alloc];
  dataContainer2 = [(TFFeedbackSession *)self dataContainer];
  v22 = [(TFFeedbackFormPresenter *)v20 initWithForm:_generateFormForCurrentState dataContainer:dataContainer2 session:self];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v24 = [_TtC14TestFlightCore16TestFlightCoreUI generateFeedbackViewWithDelegate:self];
  [(TFFeedbackSession *)self setActiveFormViewController:v24];

  return v24;
}

- (void)submitCrashFeedback
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v3 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    v12 = 138543874;
    v13 = v5;
    v14 = 2114;
    v15 = bundleIdentifier;
    v16 = 2112;
    v17 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] submitCrashFeedback", &v12, 0x20u);
  }

  _associatePrefilledEmailIfNeeded = [(TFFeedbackSession *)self _associatePrefilledEmailIfNeeded];
  if (![(TFFeedbackSession *)self didSnapshot])
  {
    [(TFFeedbackSession *)self initiateFeedbackSnapshot];
  }

  v10 = [TFDataAggregationTask anytimeTasksForSession:self];
  aggregator = [(TFFeedbackSession *)self aggregator];
  [aggregator runTasks:v10];

  [(TFFeedbackSession *)self setCurrentPhase:0];
  [(TFFeedbackSession *)self _beginFeedbackSubmisionForViewController:0];
}

- (void)submitFeedbackForActiveFormViewController
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v3 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    v16 = 138543874;
    v17 = v5;
    v18 = 2114;
    v19 = bundleIdentifier;
    v20 = 2112;
    v21 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] submitFeedbackForActiveFormViewController", &v16, 0x20u);
  }

  activeFormViewController = [(TFFeedbackSession *)self activeFormViewController];

  if (activeFormViewController)
  {
    activeFormViewController2 = [(TFFeedbackSession *)self activeFormViewController];
    [(TFFeedbackSession *)self _beginFeedbackSubmisionForViewController:activeFormViewController2];
  }

  else
  {
    activeFormViewController2 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger2 = [activeFormViewController2 generatedLogger];
    if (os_log_type_enabled(generatedLogger2, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = v12;
      bundleIdentifier2 = [(TFFeedbackSession *)self bundleIdentifier];
      logKey2 = [(TFFeedbackSession *)self logKey];
      v16 = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = bundleIdentifier2;
      v20 = 2112;
      v21 = logKey2;
      _os_log_impl(&dword_26D2C7000, generatedLogger2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@:%@] submitFeedbackForActiveFormViewController called when there was no active UI.", &v16, 0x20u);
    }
  }
}

- (void)cancelFeedbackForActiveFormViewController
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v3 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    v16 = 138543874;
    v17 = v5;
    v18 = 2114;
    v19 = bundleIdentifier;
    v20 = 2112;
    v21 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] cancelFeedbackForActiveFormViewController", &v16, 0x20u);
  }

  [(TFFeedbackSession *)self setCurrentPhase:0];
  delegate = [(TFFeedbackSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  delegate2 = [(TFFeedbackSession *)self delegate];
  delegate3 = delegate2;
  if (v10)
  {
    [delegate2 sessionDidCancelFeedback:self];
  }

  else
  {
    v13 = objc_opt_respondsToSelector();

    delegate3 = [(TFFeedbackSession *)self delegate];
    if (v13)
    {
      activeFormViewController = [(TFFeedbackSession *)self activeFormViewController];
      [delegate3 session:self didCancelFeedbackFromViewController:activeFormViewController];
    }

    else
    {
      v15 = objc_opt_respondsToSelector();

      if ((v15 & 1) == 0)
      {
        return;
      }

      delegate3 = [(TFFeedbackSession *)self delegate];
      activeFormViewController = [(TFFeedbackSession *)self activeFormViewController];
      [delegate3 session:self didSubmitFeedbackFromViewController:activeFormViewController];
    }
  }
}

- (id)_developerName
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
  v13 = 0;
  v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v13];
  v6 = v13;

  if (!v5)
  {
    v7 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger = [v7 generatedLogger];
    if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_ERROR))
    {
      bundleIdentifier2 = [(TFFeedbackSession *)self bundleIdentifier];
      *buf = 138412546;
      v15 = bundleIdentifier2;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_ERROR, "Failed to load application record for %@: %@", buf, 0x16u);
    }
  }

  iTunesMetadata = [v5 iTunesMetadata];
  artistName = [iTunesMetadata artistName];

  return artistName;
}

- (id)_associatePrefilledEmailIfNeeded
{
  v28 = *MEMORY[0x277D85DE8];
  launchInfo = [(TFFeedbackSession *)self launchInfo];
  testerEmail = [launchInfo testerEmail];
  v5 = testerEmail;
  if (testerEmail)
  {
    v6 = testerEmail;
  }

  else
  {
    v6 = &stru_287EAC508;
  }

  v7 = v6;

  mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
  bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
  v10 = [mEMORY[0x277CEC4C0] getEmailAddressForBundleID:bundleIdentifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_287EAC508;
  }

  v13 = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v26[0] = v7;
  v26[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:{2, 0}];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if (v19 && [*(*(&v22 + 1) + 8 * i) length])
        {
          [(TFFeedbackSession *)self associateEmail:v19];
          v20 = v19;
          goto LABEL_18;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (id)_generateFormForCurrentState
{
  v3 = objc_alloc_init(TFFeedbackFormBuilder);
  _developerName = [(TFFeedbackSession *)self _developerName];
  _associatePrefilledEmailIfNeeded = [(TFFeedbackSession *)self _associatePrefilledEmailIfNeeded];
  dataContainer = [(TFFeedbackSession *)self dataContainer];
  v7 = [dataContainer imageCollectionForIdentifer:@"c"];

  v8 = MEMORY[0x277CBEBF8];
  if (v7)
  {
    v9 = [v7 count];
    v10 = v9 != 0;
    if (v9)
    {
      v8 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  [(TFFeedbackSession *)self associateScreenshotImages:v8];
  v11 = [(TFFeedbackFormBuilder *)v3 buildFormForContext:[(TFFeedbackSession *)self context] withDeveloperName:_developerName prefilledEmail:_associatePrefilledEmailIfNeeded hasScreenshots:v10];

  return v11;
}

- (void)_beginFeedbackSubmisionForViewController:(id)controller
{
  v36 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    _currentContextStringDescription = [(TFFeedbackSession *)self _currentContextStringDescription];
    *buf = 138544386;
    v27 = v7;
    v28 = 2114;
    v29 = bundleIdentifier;
    v30 = 2112;
    v31 = logKey;
    v32 = 2112;
    v33 = controllerCopy;
    v34 = 2112;
    v35 = _currentContextStringDescription;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] _beginFeedbackSubmisionForViewController: formViewController=%@ context=%@", buf, 0x34u);
  }

  [(TFFeedbackSession *)self setCurrentPhase:1];
  dataContainer = [(TFFeedbackSession *)self dataContainer];
  isLoading = [dataContainer isLoading];

  if (isLoading)
  {
    v14 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger2 = [v14 generatedLogger];
    if (os_log_type_enabled(generatedLogger2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      bundleIdentifier2 = [(TFFeedbackSession *)self bundleIdentifier];
      logKey2 = [(TFFeedbackSession *)self logKey];
      *buf = 138543874;
      v27 = v16;
      v28 = 2114;
      v29 = bundleIdentifier2;
      v30 = 2112;
      v31 = logKey2;
      _os_log_impl(&dword_26D2C7000, generatedLogger2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] Waiting for aggregator to complete", buf, 0x20u);
    }

    [(TFFeedbackSession *)self setWaitingOnAggregatorForSubmission:1];
  }

  else
  {
    objc_initWeak(buf, self);
    submissionService = [(TFFeedbackSession *)self submissionService];
    bundleIdentifier3 = [(TFFeedbackSession *)self bundleIdentifier];
    dataContainer2 = [(TFFeedbackSession *)self dataContainer];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__TFFeedbackSession__beginFeedbackSubmisionForViewController___block_invoke;
    v23[3] = &unk_279D98588;
    objc_copyWeak(&v25, buf);
    v24 = controllerCopy;
    [submissionService submitFeedbackForBundleId:bundleIdentifier3 withContentsOfDataSource:dataContainer2 completionHandler:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

void __62__TFFeedbackSession__beginFeedbackSubmisionForViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TFFeedbackSession__beginFeedbackSubmisionForViewController___block_invoke_2;
  block[3] = &unk_279D98560;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __62__TFFeedbackSession__beginFeedbackSubmisionForViewController___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 40);
  v5 = WeakRetained;
  if (v2)
  {
    [WeakRetained _abortFeedbackSubmissionForViewController:v4 withError:*(a1 + 32)];
  }

  else
  {
    [WeakRetained _finishFeedbackSubmissionForViewController:v4];
  }
}

- (void)_abortFeedbackSubmissionForViewController:(id)controller withError:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  errorCopy = error;
  v8 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v8 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = controllerCopy;
    v11 = objc_opt_class();
    v28 = v11;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    _currentContextStringDescription = [(TFFeedbackSession *)self _currentContextStringDescription];
    localizedDescription = [errorCopy localizedDescription];
    *buf = 138544642;
    v32 = v11;
    controllerCopy = v10;
    v33 = 2114;
    v34 = bundleIdentifier;
    v35 = 2112;
    v36 = logKey;
    v37 = 2112;
    v38 = v10;
    v39 = 2112;
    v40 = _currentContextStringDescription;
    v41 = 2112;
    v42 = localizedDescription;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] _abortFeedbackSubmissionForViewController:withError: formViewController=%@ context=%@ | error=%@", buf, 0x3Eu);
  }

  [(TFFeedbackSession *)self setCurrentPhase:0];
  activeFormViewController = [(TFFeedbackSession *)self activeFormViewController];

  if (activeFormViewController)
  {
    submissionService = [(TFFeedbackSession *)self submissionService];
    v18 = [(TFFeedbackSession *)self _displayableErrorMessageFromService:submissionService submissionError:errorCopy];

    activeFormViewController2 = [(TFFeedbackSession *)self activeFormViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      activeFormViewController3 = [(TFFeedbackSession *)self activeFormViewController];
      presenter = [activeFormViewController3 presenter];
      [presenter showSubmissionFailureWithMessage:v18];
    }

    else
    {
      activeFormViewController3 = [MEMORY[0x277CCAB98] defaultCenter];
      v29 = @"message";
      v30 = v18;
      presenter = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      [activeFormViewController3 postNotificationName:@"com.apple.TestFlightCore.UpdateSubmitErrorPresentationNotification" object:self userInfo:presenter];
    }
  }

  delegate = [(TFFeedbackSession *)self delegate];
  v24 = objc_opt_respondsToSelector();

  delegate2 = [(TFFeedbackSession *)self delegate];
  delegate3 = delegate2;
  if (v24)
  {
    [delegate2 sessionDidFailToSubmit:self withError:errorCopy];
LABEL_12:

    goto LABEL_13;
  }

  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    delegate3 = [(TFFeedbackSession *)self delegate];
    [delegate3 session:self failedToSubmitFeedbackFromViewController:controllerCopy withError:errorCopy];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_finishFeedbackSubmissionForViewController:(id)controller
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    logKey = [(TFFeedbackSession *)self logKey];
    _currentContextStringDescription = [(TFFeedbackSession *)self _currentContextStringDescription];
    v17 = 138544386;
    v18 = v7;
    v19 = 2114;
    v20 = bundleIdentifier;
    v21 = 2112;
    v22 = logKey;
    v23 = 2112;
    v24 = controllerCopy;
    v25 = 2112;
    v26 = _currentContextStringDescription;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] _finishFeedbackSubmissionForViewController: formViewController=%@ context=%@", &v17, 0x34u);
  }

  [(TFFeedbackSession *)self setCurrentPhase:2];
  delegate = [(TFFeedbackSession *)self delegate];
  v13 = objc_opt_respondsToSelector();

  delegate2 = [(TFFeedbackSession *)self delegate];
  delegate3 = delegate2;
  if (v13)
  {
    [delegate2 sessionDidSubmitFeedback:self];
LABEL_7:

    goto LABEL_8;
  }

  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate3 = [(TFFeedbackSession *)self delegate];
    [delegate3 session:self didSubmitFeedbackFromViewController:controllerCopy];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)dataAggregator:(id)aggregator didCompleteTasks:(id)tasks
{
  if ([(TFFeedbackSession *)self currentPhase:aggregator]== 1)
  {
    v5 = ![(TFFeedbackSession *)self isWaitingOnAggregatorForSubmission];
  }

  else
  {
    v5 = 1;
  }

  dataContainer = [(TFFeedbackSession *)self dataContainer];
  isLoading = [dataContainer isLoading];

  if ((v5 & 1) == 0 && (isLoading & 1) == 0)
  {
    [(TFFeedbackSession *)self submitFeedbackForActiveFormViewController];

    [(TFFeedbackSession *)self setWaitingOnAggregatorForSubmission:0];
  }
}

- (id)launchInfoForFeedbackPopulation
{
  launchInfo = [(TFFeedbackSession *)self launchInfo];

  if (launchInfo)
  {
    launchInfo2 = [(TFFeedbackSession *)self launchInfo];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CC1E70]);
    bundleIdentifier = [(TFFeedbackSession *)self bundleIdentifier];
    v11 = 0;
    v7 = [v5 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v11];

    mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
    bundleIdentifier2 = [v7 bundleIdentifier];
    launchInfo2 = [mEMORY[0x277CEC4C0] getLaunchInfoForBundleID:bundleIdentifier2];
  }

  return launchInfo2;
}

- (id)feedbackAppName
{
  launchInfoForFeedbackPopulation = [(TFFeedbackSession *)self launchInfoForFeedbackPopulation];
  displayNames = [launchInfoForFeedbackPopulation displayNames];
  v4 = [TFLocale preferredLocalizedDisplayNameFromDisplayNames:displayNames];

  return v4;
}

- (id)feedbackDeveloperName
{
  launchInfoForFeedbackPopulation = [(TFFeedbackSession *)self launchInfoForFeedbackPopulation];
  artistName = [launchInfoForFeedbackPopulation artistName];

  return artistName;
}

- (id)feedbackTesterEmailAddress
{
  launchInfoForFeedbackPopulation = [(TFFeedbackSession *)self launchInfoForFeedbackPopulation];
  testerEmail = [launchInfoForFeedbackPopulation testerEmail];

  return testerEmail;
}

- (id)feedbackInitialScreenshotURLs
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  array = [MEMORY[0x277CBEB18] array];
  dataContainer = [(TFFeedbackSession *)self dataContainer];
  v5 = [dataContainer imageCollectionForIdentifer:@"c"];

  v6 = [v5 count];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      v9 = [v5 objectAtIndex:v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(TFFeedbackSession *)self _dataForImage:v9];
LABEL_7:
        v11 = v10;
        if (v10)
        {
          v12 = MEMORY[0x277CCACA8];
          v13 = TFLocalizedString(@"SCREEN_SHOT_FILE_NAME");
          v14 = [v12 stringWithFormat:v13, v8 + 1];

          temporaryDirectory = [defaultManager temporaryDirectory];
          v16 = [temporaryDirectory URLByAppendingPathComponent:v14];

          v17 = [v16 URLByAppendingPathExtension:@"png"];

          [v11 writeToURL:v17 atomically:1];
          [array addObject:v17];
        }

        goto LABEL_10;
      }

      v11 = 0;
LABEL_10:

      if (v7 == ++v8)
      {
        goto LABEL_11;
      }
    }

    v10 = v9;
    goto LABEL_7;
  }

LABEL_11:

  return array;
}

- (void)feedbackWillSendFeedbackSubmissionWithFeedbackText:(id)text emailAddress:(id)address screenshotURLs:(id)ls
{
  textCopy = text;
  addressCopy = address;
  lsCopy = ls;
  dataContainer = [(TFFeedbackSession *)self dataContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__TFFeedbackSession_feedbackWillSendFeedbackSubmissionWithFeedbackText_emailAddress_screenshotURLs___block_invoke;
  v15[3] = &unk_279D985B0;
  v16 = textCopy;
  v17 = addressCopy;
  v18 = lsCopy;
  v12 = lsCopy;
  v13 = addressCopy;
  v14 = textCopy;
  [dataContainer performBatchUpdates:v15];

  [(TFFeedbackSession *)self submitFeedbackForActiveFormViewController];
}

void __100__TFFeedbackSession_feedbackWillSendFeedbackSubmissionWithFeedbackText_emailAddress_screenshotURLs___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 setStringForIdentifier:@"b" toValue:?];
  }

  if (*(a1 + 40))
  {
    [v4 setStringForIdentifier:@"a" toValue:?];
  }

  if (*(a1 + 48))
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = *(a1 + 48);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:{*(*(&v13 + 1) + 8 * v10), v13}];
          v12 = [MEMORY[0x277D755B8] imageWithData:v11];
          [v5 addObject:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v4 setImageCollectionForIdentifier:@"c" toValue:v5];
  }
}

- (id)_displayableErrorMessageFromService:(id)service submissionError:(id)error
{
  errorCopy = error;
  v6 = MEMORY[0x277CCACA8];
  serviceCopy = service;
  v8 = TFLocalizedString(@"NUMBER_OF_CHARACTERS");
  v9 = [v6 stringWithFormat:v8, objc_msgSend(serviceCopy, "maxNumberOfCommentSymbolsAllowed")];

  v10 = MEMORY[0x277CCACA8];
  v11 = TFLocalizedString(@"NUMBER_OF_IMAGES");
  maxNumberOfScreenshotsAllowed = [serviceCopy maxNumberOfScreenshotsAllowed];

  v13 = [v10 stringWithFormat:v11, maxNumberOfScreenshotsAllowed];

  code = [errorCopy code];
  if (code > 400)
  {
    switch(code)
    {
      case 401:
        v21 = MEMORY[0x277CCACA8];
        v16 = TFLocalizedString(@"ALERT_SUBMIT_FAILURE_TOO_MANY_IMAGES_MESSAGE_TEMPLATE");
        [v21 stringWithFormat:v16, v13];
        break;
      case 402:
        v22 = MEMORY[0x277CCACA8];
        v16 = TFLocalizedString(@"ALERT_SUBMIT_FAILURE_TOO_MANY_CHARACTERS_MESSAGE_TEMPLATE");
        [v22 stringWithFormat:v16, v9];
        break;
      case 404:
        userInfo = [errorCopy userInfo];
        v16 = [userInfo objectForKeyedSubscript:@"TFErrorImageName"];

        if (v16)
        {
          v17 = MEMORY[0x277CCACA8];
          v18 = TFLocalizedString(@"ALERT_SUBMIT_FAILURE_TOO_LARGE_NAMED_IMAGE_MESSAGE_TEMPLATE");
          v19 = [v17 stringWithFormat:v18, v16];

LABEL_14:
          goto LABEL_18;
        }

        v23 = TFLocalizedString(@"ALERT_SUBMIT_FAILURE_TOO_LARGE_UNNAMED_IMAGE_MESSAGE_TEMPLATE");
LABEL_13:
        v19 = v23;
        goto LABEL_14;
      default:
        goto LABEL_16;
    }
    v23 = ;
    goto LABEL_13;
  }

  if (code == 302)
  {
    v20 = @"ALERT_SUBMIT_FAILURE_MALFORMED_EMAIL";
  }

  else
  {
    if (code != 303)
    {
LABEL_16:
      v20 = @"ALERT_SUBMIT_FAILURE_GENERIC_MESSAGE";
      goto LABEL_17;
    }

    v20 = @"ALERT_SUBMIT_FAILURE_MISSING_USER_DATA_MESSAGE";
  }

LABEL_17:
  v19 = TFLocalizedString(v20);
LABEL_18:

  return v19;
}

- (id)_currentContextStringDescription
{
  if (_currentContextStringDescription_onceToken != -1)
  {
    [TFFeedbackSession _currentContextStringDescription];
  }

  v3 = _currentContextStringDescription_contextDescriptors;
  context = [(TFFeedbackSession *)self context];

  return [v3 objectAtIndexedSubscript:context];
}

void __53__TFFeedbackSession__currentContextStringDescription__block_invoke()
{
  v0 = _currentContextStringDescription_contextDescriptors;
  _currentContextStringDescription_contextDescriptors = &unk_287EB4708;
}

- (TFFeedbackSession)initWithBetaApplicationIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CEE620];
  identifierCopy = identifier;
  currentProcess = [v4 currentProcess];
  bundleIdentifier = [currentProcess bundleIdentifier];
  v8 = -[TFFeedbackSession initForContext:betaApplicationIdentifier:](self, "initForContext:betaApplicationIdentifier:", [bundleIdentifier containsString:@"Screenshot"], identifierCopy);

  return v8;
}

- (id)initForContext:(unint64_t)context betaApplicationBundleURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = TFFeedbackSession;
  v7 = [(TFFeedbackSession *)&v14 init];
  if (v7)
  {
    v8 = [lCopy copy];
    bundleURL = v7->_bundleURL;
    v7->_bundleURL = v8;

    v10 = [TFBundle bundleIdentifierForBundleURL:lCopy];
    v11 = [v10 copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v11;

    [(TFFeedbackSession *)v7 commonInitWithContext:context];
  }

  return v7;
}

- (TFFeedbackSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)activeFormViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_activeFormViewController);

  return WeakRetained;
}

@end