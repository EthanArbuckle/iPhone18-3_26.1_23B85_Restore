@interface WFNextStaccatoActionStreamObserver
- (BOOL)isObserving;
- (WFNextStaccatoActionStreamObserver)init;
- (WFNextStaccatoActionStreamObserverDelegate)delegate;
- (void)didReceiveNextAction:(id)action baseAction:(id)baseAction forAppWithBundleIdentifier:(id)identifier associatedLiveActivityIdentifier:(id)activityIdentifier;
- (void)observingProviderObservationDidInterrupted:(id)interrupted;
- (void)removeTrackingActivityID:(id)d;
- (void)startObservingWithCompletion:(id)completion;
- (void)stopObservingWithCompletion:(id)completion;
@end

@implementation WFNextStaccatoActionStreamObserver

- (WFNextStaccatoActionStreamObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observingProviderObservationDidInterrupted:(id)interrupted
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = "[WFNextStaccatoActionStreamObserver observingProviderObservationDidInterrupted:]";
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_ERROR, "%s Next Action Observation Stream interrupted", &v10, 0xCu);
  }

  delegate = [(WFNextStaccatoActionStreamObserver *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69ACD10] code:1001 userInfo:0];
    delegate2 = [(WFNextStaccatoActionStreamObserver *)self delegate];
    [delegate2 nextActionStreamObserver:self didStopObservingWithError:v7];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveNextAction:(id)action baseAction:(id)baseAction forAppWithBundleIdentifier:(id)identifier associatedLiveActivityIdentifier:(id)activityIdentifier
{
  v64 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  baseActionCopy = baseAction;
  identifierCopy = identifier;
  activityIdentifierCopy = activityIdentifier;
  v14 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v63 = "[WFNextStaccatoActionStreamObserver didReceiveNextAction:baseAction:forAppWithBundleIdentifier:associatedLiveActivityIdentifier:]";
    _os_log_impl(&dword_1B1DE3000, v14, OS_LOG_TYPE_DEBUG, "%s Received Next Action entry", buf, 0xCu);
  }

  baseAction = [(WFNextStaccatoActionStreamObserver *)self baseAction];

  if (!baseAction)
  {
    goto LABEL_16;
  }

  baseAction2 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
  associatedBundleIdentifier = [baseAction2 associatedBundleIdentifier];
  v18 = [associatedBundleIdentifier isEqualToString:identifierCopy];

  if (!v18)
  {
    goto LABEL_25;
  }

  if (activityIdentifierCopy)
  {
    trackingActivityIDs = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
    if ([trackingActivityIDs containsObject:activityIdentifierCopy])
    {

LABEL_16:
      delegate = [(WFNextStaccatoActionStreamObserver *)self delegate];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        metadataProvider = [(WFNextStaccatoActionStreamObserver *)self metadataProvider];
        identifier = [actionCopy identifier];
        v61 = 0;
        v32 = [metadataProvider actionForBundleIdentifier:identifierCopy andActionIdentifier:identifier error:&v61];
        v33 = v61;

        if (v32)
        {
          v59 = baseActionCopy;
          v34 = +[VCVoiceShortcutClient standardClient];
          v60 = v33;
          v35 = [v34 serializedParametersForLinkAction:actionCopy actionMetadata:v32 error:&v60];
          v36 = v60;

          if (v35)
          {
            v53 = v36;
            v55 = v34;
            if (activityIdentifierCopy)
            {
              trackingActivityIDs2 = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
              v38 = [trackingActivityIDs2 containsObject:activityIdentifierCopy];

              if ((v38 & 1) == 0)
              {
                trackingActivityIDs3 = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
                [trackingActivityIDs3 addObject:activityIdentifierCopy];
              }
            }

            v40 = objc_alloc(MEMORY[0x1E696E730]);
            identifier2 = [actionCopy identifier];
            v57 = actionCopy;
            v42 = [v40 initWithAppBundleIdentifier:identifierCopy appIntentIdentifier:identifier2 serializedParameters:v35];

            title = [v32 title];
            v44 = [title localizedStringForLocaleIdentifier:0];

            v45 = [WFConfiguredActionButtonIntentAction alloc];
            baseAction3 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
            previewIcon = [baseAction3 previewIcon];
            v48 = [(WFConfiguredStaccatoIntentAction *)v45 initWithIntent:v42 named:v44 previewIcon:previewIcon appShortcutIdentifier:0 templateParameterValues:0 contextualParameters:0 shortcutsMetadata:0 colorScheme:0];

            delegate2 = [(WFNextStaccatoActionStreamObserver *)self delegate];
            [delegate2 nextActionStreamObserver:self didReceiveNextAction:v48 associatedLiveActivityIdentifier:activityIdentifierCopy];

            v34 = v55;
            actionCopy = v57;
            v36 = v53;
          }

          v33 = v36;
          baseActionCopy = v59;
        }
      }

      goto LABEL_25;
    }

    v54 = trackingActivityIDs;
    v56 = actionCopy;
    v58 = baseActionCopy;
  }

  else
  {
    v56 = actionCopy;
    v58 = baseActionCopy;
  }

  baseAction4 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
  intent = [baseAction4 intent];
  appIntentIdentifier = [intent appIntentIdentifier];
  identifier3 = [v58 identifier];
  if ([appIntentIdentifier isEqualToString:identifier3])
  {
    v24 = 0;
  }

  else
  {
    baseAction5 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
    intent2 = [baseAction5 intent];
    [intent2 appIntentIdentifier];
    v26 = v52 = baseAction4;
    identifier4 = [v56 identifier];
    v24 = [v26 isEqualToString:identifier4] ^ 1;

    baseAction4 = v52;
  }

  if (activityIdentifierCopy)
  {
  }

  actionCopy = v56;
  baseActionCopy = v58;
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_25:

  v50 = *MEMORY[0x1E69E9840];
}

- (void)removeTrackingActivityID:(id)d
{
  dCopy = d;
  trackingActivityIDs = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
  [trackingActivityIDs removeObject:dCopy];
}

- (void)stopObservingWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  observingProvider = [(WFNextStaccatoActionStreamObserver *)self observingProvider];

  if (observingProvider)
  {
    v6 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[WFNextStaccatoActionStreamObserver stopObservingWithCompletion:]";
      _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_INFO, "%s Stopping Next Action Observation", buf, 0xCu);
    }

    observingProvider2 = [(WFNextStaccatoActionStreamObserver *)self observingProvider];
    connectionUUID = [(WFNextStaccatoActionStreamObserver *)self connectionUUID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__WFNextStaccatoActionStreamObserver_stopObservingWithCompletion___block_invoke;
    v10[3] = &unk_1E7B02B00;
    v10[4] = self;
    v11 = completionCopy;
    [observingProvider2 stopObservingNextActionStreamWithConnectionUUID:connectionUUID completion:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __66__WFNextStaccatoActionStreamObserver_stopObservingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFStaccatoLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[WFNextStaccatoActionStreamObserver stopObservingWithCompletion:]_block_invoke";
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_ERROR, "%s Failed to stop Next Action Observation: %@", &v11, 0x16u);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[WFNextStaccatoActionStreamObserver stopObservingWithCompletion:]_block_invoke";
      _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_INFO, "%s Next Action Observation stopped successfully", &v11, 0xCu);
    }

    [*(a1 + 32) setObservingProvider:0];
    [*(a1 + 32) setConnectionUUID:0];
    v7 = [*(a1 + 32) delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [*(a1 + 32) delegate];
      [v9 nextActionStreamObserver:*(a1 + 32) didStopObservingWithError:0];
    }

    v6 = *(*(a1 + 40) + 16);
  }

  v6();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)startObservingWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x1E69AD060]) initWithObserver:self];
  [(WFNextStaccatoActionStreamObserver *)self setObservingProvider:v5];

  v6 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[WFNextStaccatoActionStreamObserver startObservingWithCompletion:]";
    _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_INFO, "%s Starting Next Action Observation", buf, 0xCu);
  }

  observingProvider = [(WFNextStaccatoActionStreamObserver *)self observingProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__WFNextStaccatoActionStreamObserver_startObservingWithCompletion___block_invoke;
  v10[3] = &unk_1E7B01C88;
  v10[4] = self;
  v11 = completionCopy;
  v8 = completionCopy;
  [observingProvider startObservingNextActionStreamWithCompletion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __67__WFNextStaccatoActionStreamObserver_startObservingWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) setConnectionUUID:a2];
  v6 = [*(a1 + 32) connectionUUID];

  v7 = getWFStaccatoLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[WFNextStaccatoActionStreamObserver startObservingWithCompletion:]_block_invoke";
      v9 = "%s Next Action Observation started successfully";
      v10 = v8;
      v11 = OS_LOG_TYPE_INFO;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1B1DE3000, v10, v11, v9, &v16, v12);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[WFNextStaccatoActionStreamObserver startObservingWithCompletion:]_block_invoke";
    v18 = 2112;
    v19 = v5;
    v9 = "%s Failed to start Next Action Observation: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v13, v14);
  v15 = *MEMORY[0x1E69E9840];
}

- (WFNextStaccatoActionStreamObserver)init
{
  v9.receiver = self;
  v9.super_class = WFNextStaccatoActionStreamObserver;
  v2 = [(WFNextStaccatoActionStreamObserver *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69ACF60]) initWithOptions:0];
    metadataProvider = v2->_metadataProvider;
    v2->_metadataProvider = v3;

    v5 = objc_opt_new();
    trackingActivityIDs = v2->_trackingActivityIDs;
    v2->_trackingActivityIDs = v5;

    v7 = v2;
  }

  return v2;
}

- (BOOL)isObserving
{
  connectionUUID = [(WFNextStaccatoActionStreamObserver *)self connectionUUID];
  v3 = connectionUUID != 0;

  return v3;
}

@end