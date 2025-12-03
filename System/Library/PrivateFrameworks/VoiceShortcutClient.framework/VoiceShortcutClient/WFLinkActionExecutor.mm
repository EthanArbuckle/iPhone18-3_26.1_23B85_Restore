@interface WFLinkActionExecutor
- (WFLinkActionExecutor)initWithLinkAction:(id)action appBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier authenticationPolicy:(int64_t)policy source:(unsigned __int16)source sourceOverride:(id)override error:(id *)error;
- (id)executorOptions;
- (void)executor:(id)executor didPerformActionWithResult:(id)result error:(id)error;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation WFLinkActionExecutor

- (void)executor:(id)executor didPerformActionWithResult:(id)result error:(id)error
{
  errorCopy = error;
  completionHandler = [(WFLinkActionExecutor *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFLinkActionExecutor *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);

    [(WFLinkActionExecutor *)self setCompletionHandler:0];
  }
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E69ACB20];
  requestCopy = request;
  v7 = [v4 errorWithDomain:v5 code:2010 userInfo:0];
  [requestCopy respondWithError:v7];
}

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E69ACB20];
  requestCopy = request;
  v7 = [v4 errorWithDomain:v5 code:2010 userInfo:0];
  [requestCopy respondWithError:v7];
}

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E69ACB20];
  requestCopy = request;
  v7 = [v4 errorWithDomain:v5 code:2010 userInfo:0];
  [requestCopy respondWithError:v7];
}

- (id)executorOptions
{
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x1E69ACF18]);
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v7 = [v4 initWithLocaleIdentifier:localeIdentifier];
  [v3 setEnvironment:v7];

  [v3 setClientLabel:@"App Intent Runner"];
  v8 = 1;
  [v3 setAllowsPrepareBeforePerform:1];
  [v3 setSource:{-[WFLinkActionExecutor source](self, "source")}];
  [v3 setPriority:2];
  sourceOverride = [(WFLinkActionExecutor *)self sourceOverride];
  [v3 setSourceOverride:sourceOverride];

  authenticationPolicy = [(WFLinkActionExecutor *)self authenticationPolicy];
  if (authenticationPolicy != 1)
  {
    if (authenticationPolicy != 2)
    {
      goto LABEL_5;
    }

    v8 = 0;
  }

  [v3 setRequestUnlockIfNeeded:v8];
LABEL_5:

  return v3;
}

- (void)performWithCompletionHandler:(id)handler
{
  [(WFLinkActionExecutor *)self setCompletionHandler:handler];
  v14 = objc_opt_new();
  extensionBundleIdentifier = [(WFLinkActionExecutor *)self extensionBundleIdentifier];
  [v14 setPreferredExtensionBundleIdentifier:extensionBundleIdentifier];

  v5 = MEMORY[0x1E69ACE68];
  metadata = [(WFLinkActionExecutor *)self metadata];
  v7 = [v5 policyWithActionMetadata:metadata signals:v14];

  v8 = [v7 connectionWithError:0];
  linkAction = [(WFLinkActionExecutor *)self linkAction];
  parameters = [linkAction parameters];
  v11 = [v7 actionWithParameters:parameters];

  executorOptions = [(WFLinkActionExecutor *)self executorOptions];
  v13 = [v8 executorForAction:v11 options:executorOptions delegate:self];

  [v13 perform];
}

- (WFLinkActionExecutor)initWithLinkAction:(id)action appBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier authenticationPolicy:(int64_t)policy source:(unsigned __int16)source sourceOverride:(id)override error:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  overrideCopy = override;
  if (actionCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLinkActionExecutor.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"linkAction"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFLinkActionExecutor.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"appBundleIdentifier"}];

LABEL_3:
  v50.receiver = self;
  v50.super_class = WFLinkActionExecutor;
  v21 = [(WFLinkActionExecutor *)&v50 init];
  v22 = v21;
  if (v21)
  {
    v47 = overrideCopy;
    objc_storeStrong(&v21->_linkAction, action);
    v23 = [identifierCopy copy];
    appBundleIdentifier = v22->_appBundleIdentifier;
    v22->_appBundleIdentifier = v23;

    v22->_source = source;
    objc_storeStrong(&v22->_sourceOverride, override);
    v25 = [bundleIdentifierCopy copy];
    extensionBundleIdentifier = v22->_extensionBundleIdentifier;
    v22->_extensionBundleIdentifier = v25;

    v22->_authenticationPolicy = policy;
    v27 = [objc_alloc(MEMORY[0x1E69ACF60]) initWithOptions:2];
    metadataProvider = v22->_metadataProvider;
    v22->_metadataProvider = v27;

    v29 = v22->_metadataProvider;
    v30 = objc_alloc(MEMORY[0x1E69AC858]);
    identifier = [actionCopy identifier];
    v32 = [v30 initWithActionIdentifier:identifier bundleIdentifier:identifierCopy];
    v53[0] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v34 = [(LNMetadataProvider *)v29 actionsWithFullyQualifiedIdentifiers:v33 error:error];
    v35 = [v34 objectForKeyedSubscript:identifierCopy];
    identifier2 = [actionCopy identifier];
    v37 = [v35 objectForKeyedSubscript:identifier2];
    metadata = v22->_metadata;
    v22->_metadata = v37;

    if (v22->_metadata)
    {
      v39 = v22;
    }

    else
    {
      if (error)
      {
        v40 = MEMORY[0x1E696ABC0];
        v51 = *MEMORY[0x1E696A578];
        v41 = MEMORY[0x1E696AEC0];
        identifier3 = [actionCopy identifier];
        v43 = objc_claimAutoreleasedReturnValue();
        v52 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        *error = [v40 errorWithDomain:@"WFLinkActionWorkflowRunnerClientErrorDomain" code:1 userInfo:v44];
      }

      v39 = 0;
    }

    overrideCopy = v47;
  }

  else
  {
    v39 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v39;
}

@end