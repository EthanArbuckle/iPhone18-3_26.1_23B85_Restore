@interface SearchUIMediaHandler
- (void)executeFallbackPath;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
- (void)performIntent:(id)intent withBundleIdentifier:(id)identifier;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
@end

@implementation SearchUIMediaHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  v6 = [(SearchUIMediaHandler *)self clientSelectedBundleIdentifier:command];
  if ([v6 length])
  {
    intent = [(SearchUIMediaHandler *)self intent];
    [(SearchUIMediaHandler *)self performIntent:intent withBundleIdentifier:v6];
  }

  else
  {
    mediaMetadata = [(SearchUIMediaHandler *)self mediaMetadata];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__SearchUIMediaHandler_performCommand_triggerEvent_environment___block_invoke;
    v10[3] = &unk_1E85B3930;
    v11 = mediaMetadata;
    selfCopy = self;
    v9 = mediaMetadata;
    [SearchUIMediaUtilities predictionForMediaMetadata:v9 completion:v10];
  }
}

void __64__SearchUIMediaHandler_performCommand_triggerEvent_environment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SearchUIMediaHandler_performCommand_triggerEvent_environment___block_invoke_2;
  v7[3] = &unk_1E85B26A8;
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v7];
}

void __64__SearchUIMediaHandler_performCommand_triggerEvent_environment___block_invoke_2(id *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] selectedBundleIdentifier];
  if (v2 && (v3 = v2, [a1[5] bundleIdentifiersToExclude], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1[4], "selectedBundleIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "containsObject:", v5), v5, v4, v3, (v6 & 1) == 0))
  {
    v8 = SearchUITapLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = [a1[4] selectedBundleIdentifier];
      *buf = 138412546;
      v57 = v9;
      v58 = 2112;
      v59 = v10;
      _os_log_impl(&dword_1DA169000, v8, OS_LOG_TYPE_DEFAULT, "%@: performing intent with selectedBundleIdentifier: %@", buf, 0x16u);
    }

    v11 = a1[6];
    v12 = [v11 intent];
    v13 = [a1[4] selectedBundleIdentifier];
    [v11 performIntent:v12 withBundleIdentifier:v13];
  }

  else
  {
    v7 = [SearchUIMediaUtilities mediaDestinationsForMediaMetadata:a1[5]];
    if ([v7 count])
    {

LABEL_9:
      v16 = objc_opt_new();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v17 = [a1[4] disambiguateBundleIdentifiers];
      v18 = [v17 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v51;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v51 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v50 + 1) + 8 * i);
            v23 = [a1[5] bundleIdentifiersToExclude];
            v24 = [v23 containsObject:v22];

            if ((v24 & 1) == 0)
            {
              v25 = objc_opt_new();
              [v25 setAppBundleIdentifier:v22];
              [v25 setMediaMetadata:a1[5]];
              [v16 addObject:v25];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v19);
      }

      v26 = [SearchUIMediaUtilities mediaDestinationsForMediaMetadata:a1[5]];
      [v16 addObjectsFromArray:v26];

      v27 = SearchUITapLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        v29 = a1[5];
        *buf = 138412546;
        v57 = v28;
        v58 = 2112;
        v59 = v29;
        _os_log_impl(&dword_1DA169000, v27, OS_LOG_TYPE_DEFAULT, "%@: adding disambiguationUI for bundleIdentifiers: %@", buf, 0x16u);
      }

      v30 = MEMORY[0x1E69DC650];
      v31 = [a1[5] disambiguationTitle];
      v32 = [v30 alertControllerWithTitle:v31 message:0 preferredStyle:0];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v12 = v16;
      v33 = [v12 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v47;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v47 != v35)
            {
              objc_enumerationMutation(v12);
            }

            v37 = *(*(&v46 + 1) + 8 * j);
            v38 = MEMORY[0x1E69DC648];
            v39 = [v37 title];
            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __64__SearchUIMediaHandler_performCommand_triggerEvent_environment___block_invoke_63;
            v45[3] = &unk_1E85B3538;
            v40 = a1[6];
            v45[4] = v37;
            v45[5] = v40;
            v41 = [v38 actionWithTitle:v39 style:0 handler:v45];

            [v32 addAction:v41];
          }

          v34 = [v12 countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v34);
      }

      v42 = MEMORY[0x1E69DC648];
      v43 = [SearchUIUtilities localizedStringForKey:@"CANCEL"];
      v44 = [v42 actionWithTitle:v43 style:1 handler:0];
      [v32 addAction:v44];

      [a1[6] requestAuthIfNecessaryAndPresentViewController:v32 animated:1];
      goto LABEL_28;
    }

    v14 = [a1[4] disambiguateBundleIdentifiers];
    v15 = [v14 count];

    if (v15)
    {
      goto LABEL_9;
    }

    v12 = SearchUITapLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __64__SearchUIMediaHandler_performCommand_triggerEvent_environment___block_invoke_2_cold_1(v12);
    }
  }

LABEL_28:
}

void __64__SearchUIMediaHandler_performCommand_triggerEvent_environment___block_invoke_63(uint64_t a1)
{
  v2 = [*(a1 + 32) command];
  v3 = [*(a1 + 40) environment];
  v4 = [SearchUICommandHandler handlerForCommand:v2 environment:v3];

  [v4 executeWithTriggerEvent:2];
}

- (void)performIntent:(id)intent withBundleIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  identifierCopy = identifier;
  objc_storeStrong(&self->_clientSelectedBundleIdentifier, identifier);
  v8 = SearchUITapLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = identifierCopy;
    _os_log_impl(&dword_1DA169000, v8, OS_LOG_TYPE_DEFAULT, "media bundle identifier selected %@", &v10, 0xCu);
  }

  if ([(SearchUIMediaHandler *)self supportsIntentPath])
  {
    [intentCopy _setLaunchId:identifierCopy];
    v9 = [objc_alloc(MEMORY[0x1E69E0D58]) initWithIntent:intentCopy];
    [v9 setDelegate:self];
    [v9 start];
    [(SearchUIMediaHandler *)self setWorkflowClient:v9];
    objc_storeStrong(&s_activeHandler_0, self);
  }

  else
  {
    [(SearchUIMediaHandler *)self executeFallbackPath];
    v9 = SearchUITapLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SearchUIMediaHandler performIntent:withBundleIdentifier:];
    }
  }
}

- (void)executeFallbackPath
{
  v8 = *MEMORY[0x1E69E9840];
  mediaMetadata = [self mediaMetadata];
  mediaPunchouts = [mediaMetadata mediaPunchouts];
  firstObject = [mediaPunchouts firstObject];
  preferredOpenableURL = [firstObject preferredOpenableURL];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "No clientSelectedBundleIDentifier, running first media punchout %@", v7, 0xCu);
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  errorCopy = error;
  v8 = SearchUITapLog();
  v9 = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SearchUIMediaHandler workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:];
    }

    [(SearchUIMediaHandler *)self executeFallbackPath];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DA169000, v9, OS_LOG_TYPE_DEFAULT, "Audio played successfully", v11, 2u);
    }
  }

  v10 = s_activeHandler_0;
  s_activeHandler_0 = 0;
}

@end