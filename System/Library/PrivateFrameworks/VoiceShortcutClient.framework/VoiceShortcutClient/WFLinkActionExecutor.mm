@interface WFLinkActionExecutor
- (WFLinkActionExecutor)initWithLinkAction:(id)a3 appBundleIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 authenticationPolicy:(int64_t)a6 source:(unsigned __int16)a7 sourceOverride:(id)a8 error:(id *)a9;
- (id)executorOptions;
- (void)executor:(id)a3 didPerformActionWithResult:(id)a4 error:(id)a5;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation WFLinkActionExecutor

- (void)executor:(id)a3 didPerformActionWithResult:(id)a4 error:(id)a5
{
  v8 = a5;
  v6 = [(WFLinkActionExecutor *)self completionHandler];

  if (v6)
  {
    v7 = [(WFLinkActionExecutor *)self completionHandler];
    (v7)[2](v7, v8);

    [(WFLinkActionExecutor *)self setCompletionHandler:0];
  }
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E69ACB20];
  v6 = a4;
  v7 = [v4 errorWithDomain:v5 code:2010 userInfo:0];
  [v6 respondWithError:v7];
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E69ACB20];
  v6 = a4;
  v7 = [v4 errorWithDomain:v5 code:2010 userInfo:0];
  [v6 respondWithError:v7];
}

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E69ACB20];
  v6 = a4;
  v7 = [v4 errorWithDomain:v5 code:2010 userInfo:0];
  [v6 respondWithError:v7];
}

- (id)executorOptions
{
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x1E69ACF18]);
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v5 localeIdentifier];
  v7 = [v4 initWithLocaleIdentifier:v6];
  [v3 setEnvironment:v7];

  [v3 setClientLabel:@"App Intent Runner"];
  v8 = 1;
  [v3 setAllowsPrepareBeforePerform:1];
  [v3 setSource:{-[WFLinkActionExecutor source](self, "source")}];
  [v3 setPriority:2];
  v9 = [(WFLinkActionExecutor *)self sourceOverride];
  [v3 setSourceOverride:v9];

  v10 = [(WFLinkActionExecutor *)self authenticationPolicy];
  if (v10 != 1)
  {
    if (v10 != 2)
    {
      goto LABEL_5;
    }

    v8 = 0;
  }

  [v3 setRequestUnlockIfNeeded:v8];
LABEL_5:

  return v3;
}

- (void)performWithCompletionHandler:(id)a3
{
  [(WFLinkActionExecutor *)self setCompletionHandler:a3];
  v14 = objc_opt_new();
  v4 = [(WFLinkActionExecutor *)self extensionBundleIdentifier];
  [v14 setPreferredExtensionBundleIdentifier:v4];

  v5 = MEMORY[0x1E69ACE68];
  v6 = [(WFLinkActionExecutor *)self metadata];
  v7 = [v5 policyWithActionMetadata:v6 signals:v14];

  v8 = [v7 connectionWithError:0];
  v9 = [(WFLinkActionExecutor *)self linkAction];
  v10 = [v9 parameters];
  v11 = [v7 actionWithParameters:v10];

  v12 = [(WFLinkActionExecutor *)self executorOptions];
  v13 = [v8 executorForAction:v11 options:v12 delegate:self];

  [v13 perform];
}

- (WFLinkActionExecutor)initWithLinkAction:(id)a3 appBundleIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 authenticationPolicy:(int64_t)a6 source:(unsigned __int16)a7 sourceOverride:(id)a8 error:(id *)a9
{
  v53[1] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a8;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"WFLinkActionExecutor.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"linkAction"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v49 = [MEMORY[0x1E696AAA8] currentHandler];
  [v49 handleFailureInMethod:a2 object:self file:@"WFLinkActionExecutor.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"appBundleIdentifier"}];

LABEL_3:
  v50.receiver = self;
  v50.super_class = WFLinkActionExecutor;
  v21 = [(WFLinkActionExecutor *)&v50 init];
  v22 = v21;
  if (v21)
  {
    v47 = v20;
    objc_storeStrong(&v21->_linkAction, a3);
    v23 = [v18 copy];
    appBundleIdentifier = v22->_appBundleIdentifier;
    v22->_appBundleIdentifier = v23;

    v22->_source = a7;
    objc_storeStrong(&v22->_sourceOverride, a8);
    v25 = [v19 copy];
    extensionBundleIdentifier = v22->_extensionBundleIdentifier;
    v22->_extensionBundleIdentifier = v25;

    v22->_authenticationPolicy = a6;
    v27 = [objc_alloc(MEMORY[0x1E69ACF60]) initWithOptions:2];
    metadataProvider = v22->_metadataProvider;
    v22->_metadataProvider = v27;

    v29 = v22->_metadataProvider;
    v30 = objc_alloc(MEMORY[0x1E69AC858]);
    v31 = [v17 identifier];
    v32 = [v30 initWithActionIdentifier:v31 bundleIdentifier:v18];
    v53[0] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v34 = [(LNMetadataProvider *)v29 actionsWithFullyQualifiedIdentifiers:v33 error:a9];
    v35 = [v34 objectForKeyedSubscript:v18];
    v36 = [v17 identifier];
    v37 = [v35 objectForKeyedSubscript:v36];
    metadata = v22->_metadata;
    v22->_metadata = v37;

    if (v22->_metadata)
    {
      v39 = v22;
    }

    else
    {
      if (a9)
      {
        v40 = MEMORY[0x1E696ABC0];
        v51 = *MEMORY[0x1E696A578];
        v41 = MEMORY[0x1E696AEC0];
        v42 = [v17 identifier];
        v43 = objc_claimAutoreleasedReturnValue();
        v52 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        *a9 = [v40 errorWithDomain:@"WFLinkActionWorkflowRunnerClientErrorDomain" code:1 userInfo:v44];
      }

      v39 = 0;
    }

    v20 = v47;
  }

  else
  {
    v39 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v39;
}

@end