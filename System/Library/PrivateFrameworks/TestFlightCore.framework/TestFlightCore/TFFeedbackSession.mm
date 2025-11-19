@interface TFFeedbackSession
- (TFFeedbackSession)initWithBetaApplicationIdentifier:(id)a3;
- (TFFeedbackSessionDelegate)delegate;
- (UIViewController)activeFormViewController;
- (id)_associatePrefilledEmailIfNeeded;
- (id)_currentContextStringDescription;
- (id)_developerName;
- (id)_displayableErrorMessageFromService:(id)a3 submissionError:(id)a4;
- (id)_generateFormForCurrentState;
- (id)createFeedbackViewControllerForCurrentState;
- (id)feedbackAppName;
- (id)feedbackDeveloperName;
- (id)feedbackInitialScreenshotURLs;
- (id)feedbackTesterEmailAddress;
- (id)initForContext:(unint64_t)a3 betaApplicationBundleURL:(id)a4;
- (id)initForContext:(unint64_t)a3 betaApplicationIdentifier:(id)a4;
- (id)initForContext:(unint64_t)a3 betaApplicationLoadableBundleURL:(id)a4;
- (id)initForContext:(unint64_t)a3 withTestingWithLaunchInfo:(id)a4;
- (id)launchInfoForFeedbackPopulation;
- (void)_abortFeedbackSubmissionForViewController:(id)a3 withError:(id)a4;
- (void)_beginFeedbackSubmisionForViewController:(id)a3;
- (void)_finishFeedbackSubmissionForViewController:(id)a3;
- (void)associateComments:(id)a3;
- (void)associateEmail:(id)a3;
- (void)associateIncidentId:(id)a3;
- (void)associateScreenshotImages:(id)a3;
- (void)cancelFeedbackForActiveFormViewController;
- (void)commonInitWithContext:(unint64_t)a3;
- (void)dataAggregator:(id)a3 didCompleteTasks:(id)a4;
- (void)feedbackWillSendFeedbackSubmissionWithFeedbackText:(id)a3 emailAddress:(id)a4 screenshotURLs:(id)a5;
- (void)initiateFeedbackSnapshot;
- (void)submitCrashFeedback;
- (void)submitFeedbackForActiveFormViewController;
@end

@implementation TFFeedbackSession

- (id)initForContext:(unint64_t)a3 betaApplicationIdentifier:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = TFFeedbackSession;
  v7 = [(TFFeedbackSession *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    [(TFFeedbackSession *)v7 commonInitWithContext:a3];
  }

  return v7;
}

- (id)initForContext:(unint64_t)a3 betaApplicationLoadableBundleURL:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = TFFeedbackSession;
  v7 = [(TFFeedbackSession *)&v15 init];
  if (v7)
  {
    v8 = [v6 copy];
    bundleURL = v7->_bundleURL;
    v7->_bundleURL = v8;

    v10 = [TFBundle bundleIdentifierForBundleURL:v6];
    v11 = [v10 copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v11;

    if (!v7->_bundleIdentifier)
    {
      v13 = 0;
      goto LABEL_6;
    }

    [(TFFeedbackSession *)v7 commonInitWithContext:a3];
  }

  v13 = v7;
LABEL_6:

  return v13;
}

- (id)initForContext:(unint64_t)a3 withTestingWithLaunchInfo:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = TFFeedbackSession;
  v8 = [(TFFeedbackSession *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_launchInfo, a4);
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleURL];
    bundleURL = v9->_bundleURL;
    v9->_bundleURL = v11;

    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [v13 bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v14;

    [(TFFeedbackSession *)v9 commonInitWithContext:a3];
  }

  return v9;
}

- (void)commonInitWithContext:(unint64_t)a3
{
  self->_context = a3;
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
  v4 = [v3 generatedLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(TFFeedbackSession *)self bundleIdentifier];
    v8 = [(TFFeedbackSession *)self logKey];
    v11 = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_26D2C7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] initiateFeedbackSnapshot", &v11, 0x20u);
  }

  [(TFFeedbackSession *)self setDidSnapshot:1];
  v9 = [TFDataAggregationTask snapshotTasksForSession:self];
  v10 = [(TFFeedbackSession *)self aggregator];
  [v10 runTasks:v9];
}

- (void)associateIncidentId:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFFeedbackSession *)self bundleIdentifier];
    v10 = [(TFFeedbackSession *)self logKey];
    *buf = 138544130;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] associateIncidentId incidentId=%{public}@", buf, 0x2Au);
  }

  v11 = [(TFFeedbackSession *)self dataContainer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__TFFeedbackSession_associateIncidentId___block_invoke;
  v13[3] = &unk_279D980C8;
  v14 = v4;
  v12 = v4;
  [v11 performBatchUpdates:v13];
}

- (void)associateScreenshotImages:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFFeedbackSession *)self bundleIdentifier];
    v10 = [(TFFeedbackSession *)self logKey];
    *buf = 138543874;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] associateScreenshotImages", buf, 0x20u);
  }

  v11 = [(TFFeedbackSession *)self dataContainer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__TFFeedbackSession_associateScreenshotImages___block_invoke;
  v13[3] = &unk_279D980C8;
  v14 = v4;
  v12 = v4;
  [v11 performBatchUpdates:v13];
}

- (void)associateComments:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFFeedbackSession *)self bundleIdentifier];
    v10 = [(TFFeedbackSession *)self logKey];
    *buf = 138544130;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] associateComments comments=%{public}@", buf, 0x2Au);
  }

  v11 = [(TFFeedbackSession *)self dataContainer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__TFFeedbackSession_associateComments___block_invoke;
  v13[3] = &unk_279D980C8;
  v14 = v4;
  v12 = v4;
  [v11 performBatchUpdates:v13];
}

- (void)associateEmail:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFFeedbackSession *)self bundleIdentifier];
    v10 = [(TFFeedbackSession *)self logKey];
    *buf = 138543874;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] associateEmail", buf, 0x20u);
  }

  v11 = [(TFFeedbackSession *)self dataContainer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__TFFeedbackSession_associateEmail___block_invoke;
  v13[3] = &unk_279D980C8;
  v14 = v4;
  v12 = v4;
  [v11 performBatchUpdates:v13];
}

- (id)createFeedbackViewControllerForCurrentState
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  v4 = [v3 generatedLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(TFFeedbackSession *)self bundleIdentifier];
    v8 = [(TFFeedbackSession *)self logKey];
    v26 = 138543874;
    v27 = v5;
    v28 = 2114;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_26D2C7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] createFeedbackViewControllerForCurrentState", &v26, 0x20u);
  }

  if (![(TFFeedbackSession *)self didSnapshot])
  {
    [(TFFeedbackSession *)self initiateFeedbackSnapshot];
  }

  v9 = [TFDataAggregationTask anytimeTasksForSession:self];
  v10 = [(TFFeedbackSession *)self aggregator];
  [v10 runTasks:v9];

  v11 = [(TFFeedbackSession *)self _generateFormForCurrentState];
  v12 = [(TFFeedbackSession *)self dataContainer];
  [v12 prepareInitialValuesForForm:v11];

  v13 = [(TFFeedbackSession *)self activeFormViewController];

  if (v13)
  {
    v14 = +[TFLogConfiguration defaultConfiguration];
    v15 = [v14 generatedLogger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = [(TFFeedbackSession *)self bundleIdentifier];
      v19 = [(TFFeedbackSession *)self logKey];
      v26 = 138543874;
      v27 = v16;
      v28 = 2114;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_26D2C7000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@:%@] Error - createFeedbackViewControllerForCurrentState is called when earlier view controller is still in alive. Deallocate earlier view controller.", &v26, 0x20u);
    }
  }

  [(TFFeedbackSession *)self setCurrentPhase:0];
  v20 = [TFFeedbackFormPresenter alloc];
  v21 = [(TFFeedbackSession *)self dataContainer];
  v22 = [(TFFeedbackFormPresenter *)v20 initWithForm:v11 dataContainer:v21 session:self];

  v23 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v24 = [_TtC14TestFlightCore16TestFlightCoreUI generateFeedbackViewWithDelegate:self];
  [(TFFeedbackSession *)self setActiveFormViewController:v24];

  return v24;
}

- (void)submitCrashFeedback
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  v4 = [v3 generatedLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(TFFeedbackSession *)self bundleIdentifier];
    v8 = [(TFFeedbackSession *)self logKey];
    v12 = 138543874;
    v13 = v5;
    v14 = 2114;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_26D2C7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] submitCrashFeedback", &v12, 0x20u);
  }

  v9 = [(TFFeedbackSession *)self _associatePrefilledEmailIfNeeded];
  if (![(TFFeedbackSession *)self didSnapshot])
  {
    [(TFFeedbackSession *)self initiateFeedbackSnapshot];
  }

  v10 = [TFDataAggregationTask anytimeTasksForSession:self];
  v11 = [(TFFeedbackSession *)self aggregator];
  [v11 runTasks:v10];

  [(TFFeedbackSession *)self setCurrentPhase:0];
  [(TFFeedbackSession *)self _beginFeedbackSubmisionForViewController:0];
}

- (void)submitFeedbackForActiveFormViewController
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  v4 = [v3 generatedLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(TFFeedbackSession *)self bundleIdentifier];
    v8 = [(TFFeedbackSession *)self logKey];
    v16 = 138543874;
    v17 = v5;
    v18 = 2114;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_26D2C7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] submitFeedbackForActiveFormViewController", &v16, 0x20u);
  }

  v9 = [(TFFeedbackSession *)self activeFormViewController];

  if (v9)
  {
    v10 = [(TFFeedbackSession *)self activeFormViewController];
    [(TFFeedbackSession *)self _beginFeedbackSubmisionForViewController:v10];
  }

  else
  {
    v10 = +[TFLogConfiguration defaultConfiguration];
    v11 = [v10 generatedLogger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = [(TFFeedbackSession *)self bundleIdentifier];
      v15 = [(TFFeedbackSession *)self logKey];
      v16 = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_26D2C7000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@:%@] submitFeedbackForActiveFormViewController called when there was no active UI.", &v16, 0x20u);
    }
  }
}

- (void)cancelFeedbackForActiveFormViewController
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  v4 = [v3 generatedLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(TFFeedbackSession *)self bundleIdentifier];
    v8 = [(TFFeedbackSession *)self logKey];
    v16 = 138543874;
    v17 = v5;
    v18 = 2114;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_26D2C7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] cancelFeedbackForActiveFormViewController", &v16, 0x20u);
  }

  [(TFFeedbackSession *)self setCurrentPhase:0];
  v9 = [(TFFeedbackSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = [(TFFeedbackSession *)self delegate];
  v12 = v11;
  if (v10)
  {
    [v11 sessionDidCancelFeedback:self];
  }

  else
  {
    v13 = objc_opt_respondsToSelector();

    v12 = [(TFFeedbackSession *)self delegate];
    if (v13)
    {
      v14 = [(TFFeedbackSession *)self activeFormViewController];
      [v12 session:self didCancelFeedbackFromViewController:v14];
    }

    else
    {
      v15 = objc_opt_respondsToSelector();

      if ((v15 & 1) == 0)
      {
        return;
      }

      v12 = [(TFFeedbackSession *)self delegate];
      v14 = [(TFFeedbackSession *)self activeFormViewController];
      [v12 session:self didSubmitFeedbackFromViewController:v14];
    }
  }
}

- (id)_developerName
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  v4 = [(TFFeedbackSession *)self bundleIdentifier];
  v13 = 0;
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v13];
  v6 = v13;

  if (!v5)
  {
    v7 = +[TFLogConfiguration defaultConfiguration];
    v8 = [v7 generatedLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(TFFeedbackSession *)self bundleIdentifier];
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_26D2C7000, v8, OS_LOG_TYPE_ERROR, "Failed to load application record for %@: %@", buf, 0x16u);
    }
  }

  v10 = [v5 iTunesMetadata];
  v11 = [v10 artistName];

  return v11;
}

- (id)_associatePrefilledEmailIfNeeded
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(TFFeedbackSession *)self launchInfo];
  v4 = [v3 testerEmail];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_287EAC508;
  }

  v7 = v6;

  v8 = [MEMORY[0x277CEC4C0] sharedInstance];
  v9 = [(TFFeedbackSession *)self bundleIdentifier];
  v10 = [v8 getEmailAddressForBundleID:v9];
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
  v4 = [(TFFeedbackSession *)self _developerName];
  v5 = [(TFFeedbackSession *)self _associatePrefilledEmailIfNeeded];
  v6 = [(TFFeedbackSession *)self dataContainer];
  v7 = [v6 imageCollectionForIdentifer:@"c"];

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
  v11 = [(TFFeedbackFormBuilder *)v3 buildFormForContext:[(TFFeedbackSession *)self context] withDeveloperName:v4 prefilledEmail:v5 hasScreenshots:v10];

  return v11;
}

- (void)_beginFeedbackSubmisionForViewController:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFFeedbackSession *)self bundleIdentifier];
    v10 = [(TFFeedbackSession *)self logKey];
    v11 = [(TFFeedbackSession *)self _currentContextStringDescription];
    *buf = 138544386;
    v27 = v7;
    v28 = 2114;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v4;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] _beginFeedbackSubmisionForViewController: formViewController=%@ context=%@", buf, 0x34u);
  }

  [(TFFeedbackSession *)self setCurrentPhase:1];
  v12 = [(TFFeedbackSession *)self dataContainer];
  v13 = [v12 isLoading];

  if (v13)
  {
    v14 = +[TFLogConfiguration defaultConfiguration];
    v15 = [v14 generatedLogger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = [(TFFeedbackSession *)self bundleIdentifier];
      v19 = [(TFFeedbackSession *)self logKey];
      *buf = 138543874;
      v27 = v16;
      v28 = 2114;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_26D2C7000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] Waiting for aggregator to complete", buf, 0x20u);
    }

    [(TFFeedbackSession *)self setWaitingOnAggregatorForSubmission:1];
  }

  else
  {
    objc_initWeak(buf, self);
    v20 = [(TFFeedbackSession *)self submissionService];
    v21 = [(TFFeedbackSession *)self bundleIdentifier];
    v22 = [(TFFeedbackSession *)self dataContainer];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__TFFeedbackSession__beginFeedbackSubmisionForViewController___block_invoke;
    v23[3] = &unk_279D98588;
    objc_copyWeak(&v25, buf);
    v24 = v4;
    [v20 submitFeedbackForBundleId:v21 withContentsOfDataSource:v22 completionHandler:v23];

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

- (void)_abortFeedbackSubmissionForViewController:(id)a3 withError:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[TFLogConfiguration defaultConfiguration];
  v9 = [v8 generatedLogger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v6;
    v11 = objc_opt_class();
    v28 = v11;
    v12 = [(TFFeedbackSession *)self bundleIdentifier];
    v13 = [(TFFeedbackSession *)self logKey];
    v14 = [(TFFeedbackSession *)self _currentContextStringDescription];
    v15 = [v7 localizedDescription];
    *buf = 138544642;
    v32 = v11;
    v6 = v10;
    v33 = 2114;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    v37 = 2112;
    v38 = v10;
    v39 = 2112;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    _os_log_impl(&dword_26D2C7000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] _abortFeedbackSubmissionForViewController:withError: formViewController=%@ context=%@ | error=%@", buf, 0x3Eu);
  }

  [(TFFeedbackSession *)self setCurrentPhase:0];
  v16 = [(TFFeedbackSession *)self activeFormViewController];

  if (v16)
  {
    v17 = [(TFFeedbackSession *)self submissionService];
    v18 = [(TFFeedbackSession *)self _displayableErrorMessageFromService:v17 submissionError:v7];

    v19 = [(TFFeedbackSession *)self activeFormViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v21 = [(TFFeedbackSession *)self activeFormViewController];
      v22 = [v21 presenter];
      [v22 showSubmissionFailureWithMessage:v18];
    }

    else
    {
      v21 = [MEMORY[0x277CCAB98] defaultCenter];
      v29 = @"message";
      v30 = v18;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      [v21 postNotificationName:@"com.apple.TestFlightCore.UpdateSubmitErrorPresentationNotification" object:self userInfo:v22];
    }
  }

  v23 = [(TFFeedbackSession *)self delegate];
  v24 = objc_opt_respondsToSelector();

  v25 = [(TFFeedbackSession *)self delegate];
  v26 = v25;
  if (v24)
  {
    [v25 sessionDidFailToSubmit:self withError:v7];
LABEL_12:

    goto LABEL_13;
  }

  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    v26 = [(TFFeedbackSession *)self delegate];
    [v26 session:self failedToSubmitFeedbackFromViewController:v6 withError:v7];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_finishFeedbackSubmissionForViewController:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFFeedbackSession *)self bundleIdentifier];
    v10 = [(TFFeedbackSession *)self logKey];
    v11 = [(TFFeedbackSession *)self _currentContextStringDescription];
    v17 = 138544386;
    v18 = v7;
    v19 = 2114;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v4;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] _finishFeedbackSubmissionForViewController: formViewController=%@ context=%@", &v17, 0x34u);
  }

  [(TFFeedbackSession *)self setCurrentPhase:2];
  v12 = [(TFFeedbackSession *)self delegate];
  v13 = objc_opt_respondsToSelector();

  v14 = [(TFFeedbackSession *)self delegate];
  v15 = v14;
  if (v13)
  {
    [v14 sessionDidSubmitFeedback:self];
LABEL_7:

    goto LABEL_8;
  }

  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v15 = [(TFFeedbackSession *)self delegate];
    [v15 session:self didSubmitFeedbackFromViewController:v4];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)dataAggregator:(id)a3 didCompleteTasks:(id)a4
{
  if ([(TFFeedbackSession *)self currentPhase:a3]== 1)
  {
    v5 = ![(TFFeedbackSession *)self isWaitingOnAggregatorForSubmission];
  }

  else
  {
    v5 = 1;
  }

  v6 = [(TFFeedbackSession *)self dataContainer];
  v7 = [v6 isLoading];

  if ((v5 & 1) == 0 && (v7 & 1) == 0)
  {
    [(TFFeedbackSession *)self submitFeedbackForActiveFormViewController];

    [(TFFeedbackSession *)self setWaitingOnAggregatorForSubmission:0];
  }
}

- (id)launchInfoForFeedbackPopulation
{
  v3 = [(TFFeedbackSession *)self launchInfo];

  if (v3)
  {
    v4 = [(TFFeedbackSession *)self launchInfo];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CC1E70]);
    v6 = [(TFFeedbackSession *)self bundleIdentifier];
    v11 = 0;
    v7 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v11];

    v8 = [MEMORY[0x277CEC4C0] sharedInstance];
    v9 = [v7 bundleIdentifier];
    v4 = [v8 getLaunchInfoForBundleID:v9];
  }

  return v4;
}

- (id)feedbackAppName
{
  v2 = [(TFFeedbackSession *)self launchInfoForFeedbackPopulation];
  v3 = [v2 displayNames];
  v4 = [TFLocale preferredLocalizedDisplayNameFromDisplayNames:v3];

  return v4;
}

- (id)feedbackDeveloperName
{
  v2 = [(TFFeedbackSession *)self launchInfoForFeedbackPopulation];
  v3 = [v2 artistName];

  return v3;
}

- (id)feedbackTesterEmailAddress
{
  v2 = [(TFFeedbackSession *)self launchInfoForFeedbackPopulation];
  v3 = [v2 testerEmail];

  return v3;
}

- (id)feedbackInitialScreenshotURLs
{
  v19 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(TFFeedbackSession *)self dataContainer];
  v5 = [v4 imageCollectionForIdentifer:@"c"];

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

          v15 = [v19 temporaryDirectory];
          v16 = [v15 URLByAppendingPathComponent:v14];

          v17 = [v16 URLByAppendingPathExtension:@"png"];

          [v11 writeToURL:v17 atomically:1];
          [v3 addObject:v17];
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

  return v3;
}

- (void)feedbackWillSendFeedbackSubmissionWithFeedbackText:(id)a3 emailAddress:(id)a4 screenshotURLs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TFFeedbackSession *)self dataContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__TFFeedbackSession_feedbackWillSendFeedbackSubmissionWithFeedbackText_emailAddress_screenshotURLs___block_invoke;
  v15[3] = &unk_279D985B0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performBatchUpdates:v15];

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

- (id)_displayableErrorMessageFromService:(id)a3 submissionError:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = TFLocalizedString(@"NUMBER_OF_CHARACTERS");
  v9 = [v6 stringWithFormat:v8, objc_msgSend(v7, "maxNumberOfCommentSymbolsAllowed")];

  v10 = MEMORY[0x277CCACA8];
  v11 = TFLocalizedString(@"NUMBER_OF_IMAGES");
  v12 = [v7 maxNumberOfScreenshotsAllowed];

  v13 = [v10 stringWithFormat:v11, v12];

  v14 = [v5 code];
  if (v14 > 400)
  {
    switch(v14)
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
        v15 = [v5 userInfo];
        v16 = [v15 objectForKeyedSubscript:@"TFErrorImageName"];

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

  if (v14 == 302)
  {
    v20 = @"ALERT_SUBMIT_FAILURE_MALFORMED_EMAIL";
  }

  else
  {
    if (v14 != 303)
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
  v4 = [(TFFeedbackSession *)self context];

  return [v3 objectAtIndexedSubscript:v4];
}

void __53__TFFeedbackSession__currentContextStringDescription__block_invoke()
{
  v0 = _currentContextStringDescription_contextDescriptors;
  _currentContextStringDescription_contextDescriptors = &unk_287EB4708;
}

- (TFFeedbackSession)initWithBetaApplicationIdentifier:(id)a3
{
  v4 = MEMORY[0x277CEE620];
  v5 = a3;
  v6 = [v4 currentProcess];
  v7 = [v6 bundleIdentifier];
  v8 = -[TFFeedbackSession initForContext:betaApplicationIdentifier:](self, "initForContext:betaApplicationIdentifier:", [v7 containsString:@"Screenshot"], v5);

  return v8;
}

- (id)initForContext:(unint64_t)a3 betaApplicationBundleURL:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = TFFeedbackSession;
  v7 = [(TFFeedbackSession *)&v14 init];
  if (v7)
  {
    v8 = [v6 copy];
    bundleURL = v7->_bundleURL;
    v7->_bundleURL = v8;

    v10 = [TFBundle bundleIdentifierForBundleURL:v6];
    v11 = [v10 copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v11;

    [(TFFeedbackSession *)v7 commonInitWithContext:a3];
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