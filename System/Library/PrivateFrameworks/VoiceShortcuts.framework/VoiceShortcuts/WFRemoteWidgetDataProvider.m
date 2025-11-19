@interface WFRemoteWidgetDataProvider
+ (id)enumerationParameterWithKey:(id)a3 action:(id)a4;
+ (id)linkActionFromRequest:(id)a3;
+ (void)handleReceivedData:(id)a3 responseHandler:(id)a4;
- (WFRemoteWidgetDataProvider)init;
- (void)startNetworkListenerWithType:(int64_t)a3;
@end

@implementation WFRemoteWidgetDataProvider

- (void)startNetworkListenerWithType:(int64_t)a3
{
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v5 = [(WFRemoteWidgetDataProvider *)self connections];
  v6 = [v5 objectForKey:v9];

  if (!v6)
  {
    v7 = [MEMORY[0x277D7C7D0] startListeningForIncomingConfigurationsWithConnectionType:a3];
    [v7 setDelegate:self];
    v8 = [(WFRemoteWidgetDataProvider *)self connections];
    [v8 setObject:v7 forKey:v9];
  }
}

- (WFRemoteWidgetDataProvider)init
{
  v7.receiver = self;
  v7.super_class = WFRemoteWidgetDataProvider;
  v2 = [(WFRemoteWidgetDataProvider *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    connections = v2->_connections;
    v2->_connections = v3;

    v5 = v2;
  }

  return v2;
}

+ (void)handleReceivedData:(id)a3 responseHandler:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277D7C800] fromSecureData:a3];
  v7 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v49 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]";
    v50 = 2114;
    v51 = v6;
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetDataProvider received a request: %{public}@", buf, 0x16u);
  }

  v8 = [v6 requestType];
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_36;
      }

      v13 = [v6 intent];
      if (v13)
      {
        v9 = v13;
        v10 = [objc_alloc(MEMORY[0x277D7C538]) initWithIntent:v13 donateInteraction:0 groupIdentifier:0 requiresTrustCheck:0];
        v14 = [v6 parameterName];
        v15 = [v6 searchTerm];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __65__WFRemoteWidgetDataProvider_handleReceivedData_responseHandler___block_invoke;
        v45[3] = &unk_2788FEA90;
        v46 = v5;
        [v10 getDynamicOptionsForParameterNamed:v14 searchTerm:v15 completionHandler:v45];

LABEL_22:
LABEL_35:

        goto LABEL_36;
      }

      v35 = getWFWidgetConfigurationLogObject();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
LABEL_34:

        (*(v5 + 2))(v5, 0);
        v9 = 0;
        goto LABEL_35;
      }

      *buf = 136315394;
      v49 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]";
      v50 = 2114;
      v51 = v6;
      v36 = "%s WFRemoteWidgetDataProvider received a nil intent. Unable to provide dynamic options. Request: %{public}@";
    }

    else
    {
      v26 = [v6 intent];
      if (v26)
      {
        v9 = v26;
        v38 = [MEMORY[0x277CBEAF8] currentLocale];
        v27 = [v38 languageCode];
        v28 = objc_opt_new();
        [v28 setLanguageCode:v27];
        v47 = 0;
        v29 = [v9 widgetPlistableRepresentationWithParameters:v28 error:&v47];
        v30 = v47;
        v31 = [objc_alloc(MEMORY[0x277D7C7F0]) initWithLocalizedIntentRepresentation:v29 languageCode:v27 error:v30];
        v32 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v49 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]";
          v50 = 2114;
          v51 = v31;
          _os_log_impl(&dword_23103C000, v32, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetDataProvider is sending a response: %{public}@", buf, 0x16u);
        }

        v33 = [v31 secureData];
        (*(v5 + 2))(v5, v33);

        goto LABEL_35;
      }

      v35 = getWFWidgetConfigurationLogObject();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 136315394;
      v49 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]";
      v50 = 2114;
      v51 = v6;
      v36 = "%s WFRemoteWidgetDataProvider received a nil intent. Unable to localize. Request: %{public}@";
    }

    _os_log_impl(&dword_23103C000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x16u);
    goto LABEL_34;
  }

  switch(v8)
  {
    case 2:
      v9 = [WFRemoteWidgetDataProvider linkActionFromRequest:v6];
      v16 = [v9 metadata];
      v17 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v49 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]";
        v50 = 2114;
        v51 = v16;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetDataProvider retrieved metadata: %{public}@", buf, 0x16u);
      }

      v18 = [objc_alloc(MEMORY[0x277D7C7E0]) initWithMetadata:v16 error:0];
      v19 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v49 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]";
        v50 = 2114;
        v51 = v18;
        _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetDataProvider is sending a response: %{public}@", buf, 0x16u);
      }

      v20 = MEMORY[0x277D23910];
      v21 = [MEMORY[0x277CBEAF8] currentLocale];
      v22 = [v21 localeIdentifier];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __65__WFRemoteWidgetDataProvider_handleReceivedData_responseHandler___block_invoke_179;
      v43[3] = &unk_2788FEAB8;
      v23 = v18;
      v44 = v23;
      v24 = [v20 prelocalizeUsingLocaleIdentifier:v22 block:v43];

      if (v24)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v34 = v25;

      (*(v5 + 2))(v5, v34);
      goto LABEL_35;
    case 3:
      v9 = [v6 parameterName];
      v10 = [WFRemoteWidgetDataProvider linkActionFromRequest:v6];
      v11 = [WFRemoteWidgetDataProvider enumerationParameterWithKey:v9 action:v10];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __65__WFRemoteWidgetDataProvider_handleReceivedData_responseHandler___block_invoke_2;
      v41[3] = &unk_2788FEAE0;
      v42 = v5;
      [v10 loadDefaultResultForEnumeration:v11 completionHandler:v41];

      goto LABEL_21;
    case 4:
      v9 = [v6 parameterName];
      v10 = [v6 searchTerm];
      v11 = [WFRemoteWidgetDataProvider linkActionFromRequest:v6];
      v12 = [WFRemoteWidgetDataProvider enumerationParameterWithKey:v9 action:v11];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __65__WFRemoteWidgetDataProvider_handleReceivedData_responseHandler___block_invoke_184;
      v39[3] = &unk_2788FEB08;
      v40 = v5;
      [v11 loadDynamicResultForEnumeration:v12 searchTerm:v10 completionHandler:v39];

LABEL_21:
      goto LABEL_22;
  }

LABEL_36:

  v37 = *MEMORY[0x277D85DE8];
}

void __65__WFRemoteWidgetDataProvider_handleReceivedData_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]_block_invoke";
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetDataProvider retrieved the dynamic options: %{public}@", &v12, 0x16u);
  }

  v8 = [objc_alloc(MEMORY[0x277D7C7F8]) initWithOptions:v5 error:v6];
  v9 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]_block_invoke";
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetDataProvider is sending a response: %{public}@", &v12, 0x16u);
  }

  v10 = [v8 secureData];
  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __65__WFRemoteWidgetDataProvider_handleReceivedData_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]_block_invoke_2";
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetDataProvider retrieved the default option: %{public}@", &v12, 0x16u);
  }

  v8 = [objc_alloc(MEMORY[0x277D7C7D8]) initWithDefaultOption:v5 error:v6];
  v9 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]_block_invoke";
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetDataProvider is sending a response: %{public}@", &v12, 0x16u);
  }

  v10 = [v8 secureData];
  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __65__WFRemoteWidgetDataProvider_handleReceivedData_responseHandler___block_invoke_184(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]_block_invoke";
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetDataProvider retrieved dynamic options: %{public}@", &v12, 0x16u);
  }

  v8 = [objc_alloc(MEMORY[0x277D7C7E8]) initWithResult:v5 error:v6];
  v9 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[WFRemoteWidgetDataProvider handleReceivedData:responseHandler:]_block_invoke";
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetDataProvider is sending a response: %{public}@", &v12, 0x16u);
  }

  v10 = [v8 secureData];
  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)enumerationParameterWithKey:(id)a3 action:(id)a4
{
  v5 = a3;
  v6 = [a4 parameters];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__WFRemoteWidgetDataProvider_enumerationParameterWithKey_action___block_invoke;
  v10[3] = &unk_2788FEA68;
  v11 = v5;
  v7 = v5;
  v8 = [v6 if_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __65__WFRemoteWidgetDataProvider_enumerationParameterWithKey_action___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 key];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (id)linkActionFromRequest:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 actionIdentifier];
  v5 = [v3 serializedParameters];

  v6 = objc_alloc(MEMORY[0x277D7C598]);
  v7 = [objc_alloc(MEMORY[0x277D23C38]) initWithOptions:2];
  v8 = [v6 initWithMetadataProvider:v7];

  v9 = [objc_alloc(MEMORY[0x277D7C0D8]) initWithActionIdentifier:v4 serializedParameters:v5];
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v8 createActionsForRequests:v10];

  v11 = [v9 result];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

@end