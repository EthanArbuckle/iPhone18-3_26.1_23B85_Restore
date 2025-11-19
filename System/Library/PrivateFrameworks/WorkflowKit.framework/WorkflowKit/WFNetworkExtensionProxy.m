@interface WFNetworkExtensionProxy
- (WFNetworkExtensionProxy)initWithIntent:(id)a3 remoteWidgetConnection:(id)a4;
- (void)getOptionsForParameterNamed:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
@end

@implementation WFNetworkExtensionProxy

- (void)getOptionsForParameterNamed:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WFNetworkExtensionProxy *)self intent];
  v12 = [WFRemoteWidgetConfigurationRequest optionsForParameterRequestWithIntent:v11 parameterName:v10 searchTerm:v9];

  v13 = [(WFNetworkExtensionProxy *)self remoteWidgetConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__WFNetworkExtensionProxy_getOptionsForParameterNamed_searchTerm_completionHandler___block_invoke;
  v15[3] = &unk_1E837C3A8;
  v16 = v8;
  v14 = v8;
  [v13 sendRemoteConfigurationRequest:v12 completion:v15];
}

void __84__WFNetworkExtensionProxy_getOptionsForParameterNamed_searchTerm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 options];
  v4 = [v3 error];

  (*(v2 + 16))(v2, v5, v4);
}

- (WFNetworkExtensionProxy)initWithIntent:(id)a3 remoteWidgetConnection:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFNetworkExtensionProxy.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"remoteWidgetConnection"}];
  }

  v15.receiver = self;
  v15.super_class = WFNetworkExtensionProxy;
  v10 = [(WFNetworkExtensionProxy *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_intent, a3);
    objc_storeStrong(&v11->_remoteWidgetConnection, a4);
    v12 = v11;
  }

  return v11;
}

@end