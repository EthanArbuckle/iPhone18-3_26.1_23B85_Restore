@interface WFNetworkExtensionProxy
- (WFNetworkExtensionProxy)initWithIntent:(id)intent remoteWidgetConnection:(id)connection;
- (void)getOptionsForParameterNamed:(id)named searchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFNetworkExtensionProxy

- (void)getOptionsForParameterNamed:(id)named searchTerm:(id)term completionHandler:(id)handler
{
  handlerCopy = handler;
  termCopy = term;
  namedCopy = named;
  intent = [(WFNetworkExtensionProxy *)self intent];
  v12 = [WFRemoteWidgetConfigurationRequest optionsForParameterRequestWithIntent:intent parameterName:namedCopy searchTerm:termCopy];

  remoteWidgetConnection = [(WFNetworkExtensionProxy *)self remoteWidgetConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__WFNetworkExtensionProxy_getOptionsForParameterNamed_searchTerm_completionHandler___block_invoke;
  v15[3] = &unk_1E837C3A8;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [remoteWidgetConnection sendRemoteConfigurationRequest:v12 completion:v15];
}

void __84__WFNetworkExtensionProxy_getOptionsForParameterNamed_searchTerm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 options];
  v4 = [v3 error];

  (*(v2 + 16))(v2, v5, v4);
}

- (WFNetworkExtensionProxy)initWithIntent:(id)intent remoteWidgetConnection:(id)connection
{
  intentCopy = intent;
  connectionCopy = connection;
  if (!connectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFNetworkExtensionProxy.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"remoteWidgetConnection"}];
  }

  v15.receiver = self;
  v15.super_class = WFNetworkExtensionProxy;
  v10 = [(WFNetworkExtensionProxy *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_intent, intent);
    objc_storeStrong(&v11->_remoteWidgetConnection, connection);
    v12 = v11;
  }

  return v11;
}

@end