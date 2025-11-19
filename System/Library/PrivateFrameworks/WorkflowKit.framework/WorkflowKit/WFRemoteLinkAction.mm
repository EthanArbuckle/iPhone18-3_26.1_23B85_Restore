@interface WFRemoteLinkAction
- (WFRemoteLinkAction)initWithActionIdentifier:(id)a3 bundleIdentifier:(id)a4 metadata:(id)a5 serializedParameters:(id)a6 fullyQualifiedActionIdentifier:(id)a7 remoteWidgetConnection:(id)a8;
- (WFRemoteLinkAction)linkActionWithParameters:(id)a3;
- (void)loadDefaultResultForEnumeration:(id)a3 completionHandler:(id)a4;
- (void)loadDynamicResultForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
@end

@implementation WFRemoteLinkAction

- (void)loadDynamicResultForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__WFRemoteLinkAction_loadDynamicResultForEnumeration_searchTerm_completionHandler___block_invoke;
  v14[3] = &unk_1E837C3D0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(WFAppIntentExecutionAction *)self getLinkActionForArchivingWithCompletionHandler:v14];
}

void __83__WFRemoteLinkAction_loadDynamicResultForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = *(a1 + 56);
    v4 = [*(a1 + 32) localizedErrorWithLinkError:?];
    (*(v3 + 16))(v3, 0, v4);
  }

  v5 = [*(a1 + 32) identifier];
  v6 = [*(a1 + 32) serializedParameters];
  v7 = [*(a1 + 40) key];
  v8 = [WFRemoteWidgetConfigurationRequest lnOptionsForParameterRequesttWithActionIdentifier:v5 serializedParameters:v6 parameterName:v7 searchTerm:*(a1 + 48)];

  v9 = [*(a1 + 32) remoteWidgetConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__WFRemoteLinkAction_loadDynamicResultForEnumeration_searchTerm_completionHandler___block_invoke_2;
  v10[3] = &unk_1E837C3A8;
  v11 = *(a1 + 56);
  [v9 sendRemoteConfigurationRequest:v8 completion:v10];
}

void __83__WFRemoteLinkAction_loadDynamicResultForEnumeration_searchTerm_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 result];
  v4 = [v3 error];

  (*(v2 + 16))(v2, v5, v4);
}

- (void)loadDefaultResultForEnumeration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WFAction *)self shouldSkipLoadingAsynchronousDefaultValue]|| [(WFAction *)self isRunning])
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    v8 = [(WFAction *)self identifier];
    v9 = [(WFAction *)self serializedParameters];
    v10 = [v6 key];
    v11 = [WFRemoteWidgetConfigurationRequest defaultLNOptionForParameterRequestWithActionIdentifier:v8 serializedParameters:v9 parameterName:v10];

    v12 = [(WFRemoteLinkAction *)self remoteWidgetConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__WFRemoteLinkAction_loadDefaultResultForEnumeration_completionHandler___block_invoke;
    v13[3] = &unk_1E837C3A8;
    v14 = v7;
    [v12 sendRemoteConfigurationRequest:v11 completion:v13];
  }
}

void __72__WFRemoteLinkAction_loadDefaultResultForEnumeration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 defaultOption];
  v4 = [v3 error];

  (*(v2 + 16))(v2, v5, v4);
}

- (WFRemoteLinkAction)linkActionWithParameters:(id)a3
{
  v4 = MEMORY[0x1E69AC648];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(WFAction *)self identifier];
  v8 = [v6 initWithIdentifier:v7 mangledTypeName:0 openAppWhenRun:0 outputFlags:0 outputType:0 systemProtocols:MEMORY[0x1E695E0F0] parameters:v5];

  return v8;
}

- (WFRemoteLinkAction)initWithActionIdentifier:(id)a3 bundleIdentifier:(id)a4 metadata:(id)a5 serializedParameters:(id)a6 fullyQualifiedActionIdentifier:(id)a7 remoteWidgetConnection:(id)a8
{
  v35[1] = *MEMORY[0x1E69E9840];
  v32 = a8;
  v14 = MEMORY[0x1E696E740];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[v14 alloc] initWithIntentIdentifier:&stru_1F4A1C408 localizedName:0 bundleIdentifier:v18 extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 supportedIntents:0 supportedEntities:0 bundleURL:0 documentTypes:0];

  v21 = [WFActionDefinition alloc];
  v34 = @"AppDefinition";
  v22 = [v20 serializedRepresentation];
  v35[0] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v24 = [(WFActionDefinition *)v21 initWithDictionary:v23];

  v33.receiver = self;
  v33.super_class = WFRemoteLinkAction;
  v25 = [(WFLinkAction *)&v33 initWithIdentifier:v19 metadata:v17 definition:v24 serializedParameters:v16 appIntentDescriptor:v20 fullyQualifiedActionIdentifier:v15];

  if (v25)
  {
    objc_storeStrong(&v25->_remoteWidgetConnection, a8);
    v26 = *MEMORY[0x1E69AC158];
    v27 = [(WFAppIntentExecutionAction *)v25 actionConfigurationContext];
    [v27 setOrigin:v26];

    v28 = v25;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v25;
}

@end