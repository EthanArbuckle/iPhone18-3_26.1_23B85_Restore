@interface WFRemoteLinkAction
- (WFRemoteLinkAction)initWithActionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier metadata:(id)metadata serializedParameters:(id)parameters fullyQualifiedActionIdentifier:(id)actionIdentifier remoteWidgetConnection:(id)connection;
- (WFRemoteLinkAction)linkActionWithParameters:(id)parameters;
- (void)loadDefaultResultForEnumeration:(id)enumeration completionHandler:(id)handler;
- (void)loadDynamicResultForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFRemoteLinkAction

- (void)loadDynamicResultForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler
{
  enumerationCopy = enumeration;
  termCopy = term;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__WFRemoteLinkAction_loadDynamicResultForEnumeration_searchTerm_completionHandler___block_invoke;
  v14[3] = &unk_1E837C3D0;
  v14[4] = self;
  v15 = enumerationCopy;
  v16 = termCopy;
  v17 = handlerCopy;
  v11 = termCopy;
  v12 = enumerationCopy;
  v13 = handlerCopy;
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

- (void)loadDefaultResultForEnumeration:(id)enumeration completionHandler:(id)handler
{
  enumerationCopy = enumeration;
  handlerCopy = handler;
  if ([(WFAction *)self shouldSkipLoadingAsynchronousDefaultValue]|| [(WFAction *)self isRunning])
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    identifier = [(WFAction *)self identifier];
    serializedParameters = [(WFAction *)self serializedParameters];
    v10 = [enumerationCopy key];
    v11 = [WFRemoteWidgetConfigurationRequest defaultLNOptionForParameterRequestWithActionIdentifier:identifier serializedParameters:serializedParameters parameterName:v10];

    remoteWidgetConnection = [(WFRemoteLinkAction *)self remoteWidgetConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__WFRemoteLinkAction_loadDefaultResultForEnumeration_completionHandler___block_invoke;
    v13[3] = &unk_1E837C3A8;
    v14 = handlerCopy;
    [remoteWidgetConnection sendRemoteConfigurationRequest:v11 completion:v13];
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

- (WFRemoteLinkAction)linkActionWithParameters:(id)parameters
{
  v4 = MEMORY[0x1E69AC648];
  parametersCopy = parameters;
  v6 = [v4 alloc];
  identifier = [(WFAction *)self identifier];
  v8 = [v6 initWithIdentifier:identifier mangledTypeName:0 openAppWhenRun:0 outputFlags:0 outputType:0 systemProtocols:MEMORY[0x1E695E0F0] parameters:parametersCopy];

  return v8;
}

- (WFRemoteLinkAction)initWithActionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier metadata:(id)metadata serializedParameters:(id)parameters fullyQualifiedActionIdentifier:(id)actionIdentifier remoteWidgetConnection:(id)connection
{
  v35[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v14 = MEMORY[0x1E696E740];
  actionIdentifierCopy = actionIdentifier;
  parametersCopy = parameters;
  metadataCopy = metadata;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v20 = [[v14 alloc] initWithIntentIdentifier:&stru_1F4A1C408 localizedName:0 bundleIdentifier:bundleIdentifierCopy extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 supportedIntents:0 supportedEntities:0 bundleURL:0 documentTypes:0];

  v21 = [WFActionDefinition alloc];
  v34 = @"AppDefinition";
  serializedRepresentation = [v20 serializedRepresentation];
  v35[0] = serializedRepresentation;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v24 = [(WFActionDefinition *)v21 initWithDictionary:v23];

  v33.receiver = self;
  v33.super_class = WFRemoteLinkAction;
  v25 = [(WFLinkAction *)&v33 initWithIdentifier:identifierCopy metadata:metadataCopy definition:v24 serializedParameters:parametersCopy appIntentDescriptor:v20 fullyQualifiedActionIdentifier:actionIdentifierCopy];

  if (v25)
  {
    objc_storeStrong(&v25->_remoteWidgetConnection, connection);
    v26 = *MEMORY[0x1E69AC158];
    actionConfigurationContext = [(WFAppIntentExecutionAction *)v25 actionConfigurationContext];
    [actionConfigurationContext setOrigin:v26];

    v28 = v25;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v25;
}

@end