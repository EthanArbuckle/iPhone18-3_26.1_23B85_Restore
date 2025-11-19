@interface WFNextStaccatoActionStreamObserver
- (BOOL)isObserving;
- (WFNextStaccatoActionStreamObserver)init;
- (WFNextStaccatoActionStreamObserverDelegate)delegate;
- (void)didReceiveNextAction:(id)a3 baseAction:(id)a4 forAppWithBundleIdentifier:(id)a5 associatedLiveActivityIdentifier:(id)a6;
- (void)observingProviderObservationDidInterrupted:(id)a3;
- (void)removeTrackingActivityID:(id)a3;
- (void)startObservingWithCompletion:(id)a3;
- (void)stopObservingWithCompletion:(id)a3;
@end

@implementation WFNextStaccatoActionStreamObserver

- (WFNextStaccatoActionStreamObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observingProviderObservationDidInterrupted:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = "[WFNextStaccatoActionStreamObserver observingProviderObservationDidInterrupted:]";
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_ERROR, "%s Next Action Observation Stream interrupted", &v10, 0xCu);
  }

  v5 = [(WFNextStaccatoActionStreamObserver *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69ACD10] code:1001 userInfo:0];
    v8 = [(WFNextStaccatoActionStreamObserver *)self delegate];
    [v8 nextActionStreamObserver:self didStopObservingWithError:v7];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveNextAction:(id)a3 baseAction:(id)a4 forAppWithBundleIdentifier:(id)a5 associatedLiveActivityIdentifier:(id)a6
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v63 = "[WFNextStaccatoActionStreamObserver didReceiveNextAction:baseAction:forAppWithBundleIdentifier:associatedLiveActivityIdentifier:]";
    _os_log_impl(&dword_1B1DE3000, v14, OS_LOG_TYPE_DEBUG, "%s Received Next Action entry", buf, 0xCu);
  }

  v15 = [(WFNextStaccatoActionStreamObserver *)self baseAction];

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
  v17 = [v16 associatedBundleIdentifier];
  v18 = [v17 isEqualToString:v12];

  if (!v18)
  {
    goto LABEL_25;
  }

  if (v13)
  {
    v19 = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
    if ([v19 containsObject:v13])
    {

LABEL_16:
      v28 = [(WFNextStaccatoActionStreamObserver *)self delegate];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        v30 = [(WFNextStaccatoActionStreamObserver *)self metadataProvider];
        v31 = [v10 identifier];
        v61 = 0;
        v32 = [v30 actionForBundleIdentifier:v12 andActionIdentifier:v31 error:&v61];
        v33 = v61;

        if (v32)
        {
          v59 = v11;
          v34 = +[VCVoiceShortcutClient standardClient];
          v60 = v33;
          v35 = [v34 serializedParametersForLinkAction:v10 actionMetadata:v32 error:&v60];
          v36 = v60;

          if (v35)
          {
            v53 = v36;
            v55 = v34;
            if (v13)
            {
              v37 = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
              v38 = [v37 containsObject:v13];

              if ((v38 & 1) == 0)
              {
                v39 = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
                [v39 addObject:v13];
              }
            }

            v40 = objc_alloc(MEMORY[0x1E696E730]);
            v41 = [v10 identifier];
            v57 = v10;
            v42 = [v40 initWithAppBundleIdentifier:v12 appIntentIdentifier:v41 serializedParameters:v35];

            v43 = [v32 title];
            v44 = [v43 localizedStringForLocaleIdentifier:0];

            v45 = [WFConfiguredActionButtonIntentAction alloc];
            v46 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
            v47 = [v46 previewIcon];
            v48 = [(WFConfiguredStaccatoIntentAction *)v45 initWithIntent:v42 named:v44 previewIcon:v47 appShortcutIdentifier:0 templateParameterValues:0 contextualParameters:0 shortcutsMetadata:0 colorScheme:0];

            v49 = [(WFNextStaccatoActionStreamObserver *)self delegate];
            [v49 nextActionStreamObserver:self didReceiveNextAction:v48 associatedLiveActivityIdentifier:v13];

            v34 = v55;
            v10 = v57;
            v36 = v53;
          }

          v33 = v36;
          v11 = v59;
        }
      }

      goto LABEL_25;
    }

    v54 = v19;
    v56 = v10;
    v58 = v11;
  }

  else
  {
    v56 = v10;
    v58 = v11;
  }

  v20 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
  v21 = [v20 intent];
  v22 = [v21 appIntentIdentifier];
  v23 = [v58 identifier];
  if ([v22 isEqualToString:v23])
  {
    v24 = 0;
  }

  else
  {
    v51 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
    v25 = [v51 intent];
    [v25 appIntentIdentifier];
    v26 = v52 = v20;
    v27 = [v56 identifier];
    v24 = [v26 isEqualToString:v27] ^ 1;

    v20 = v52;
  }

  if (v13)
  {
  }

  v10 = v56;
  v11 = v58;
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_25:

  v50 = *MEMORY[0x1E69E9840];
}

- (void)removeTrackingActivityID:(id)a3
{
  v4 = a3;
  v5 = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
  [v5 removeObject:v4];
}

- (void)stopObservingWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFNextStaccatoActionStreamObserver *)self observingProvider];

  if (v5)
  {
    v6 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[WFNextStaccatoActionStreamObserver stopObservingWithCompletion:]";
      _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_INFO, "%s Stopping Next Action Observation", buf, 0xCu);
    }

    v7 = [(WFNextStaccatoActionStreamObserver *)self observingProvider];
    v8 = [(WFNextStaccatoActionStreamObserver *)self connectionUUID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__WFNextStaccatoActionStreamObserver_stopObservingWithCompletion___block_invoke;
    v10[3] = &unk_1E7B02B00;
    v10[4] = self;
    v11 = v4;
    [v7 stopObservingNextActionStreamWithConnectionUUID:v8 completion:v10];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
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

- (void)startObservingWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69AD060]) initWithObserver:self];
  [(WFNextStaccatoActionStreamObserver *)self setObservingProvider:v5];

  v6 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[WFNextStaccatoActionStreamObserver startObservingWithCompletion:]";
    _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_INFO, "%s Starting Next Action Observation", buf, 0xCu);
  }

  v7 = [(WFNextStaccatoActionStreamObserver *)self observingProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__WFNextStaccatoActionStreamObserver_startObservingWithCompletion___block_invoke;
  v10[3] = &unk_1E7B01C88;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 startObservingNextActionStreamWithCompletion:v10];

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
  v2 = [(WFNextStaccatoActionStreamObserver *)self connectionUUID];
  v3 = v2 != 0;

  return v3;
}

@end