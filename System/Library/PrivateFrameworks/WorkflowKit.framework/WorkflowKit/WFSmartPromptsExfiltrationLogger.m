@interface WFSmartPromptsExfiltrationLogger
- (WFSmartPromptsExfiltrationLogger)init;
- (id)attributionSetByRewritingSetWithLoggedCounts:(id)a3 forExfiltratingActionUUID:(id)a4;
- (unint64_t)countItemsExfiltratedSoFarByActionWithUUID:(id)a3 contentOrigin:(id)a4;
- (void)logExfiltratedItems:(id)a3 actionUUID:(id)a4 contentOrigin:(id)a5;
@end

@implementation WFSmartPromptsExfiltrationLogger

- (id)attributionSetByRewritingSetWithLoggedCounts:(id)a3 forExfiltratingActionUUID:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 attributions];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __107__WFSmartPromptsExfiltrationLogger_attributionSetByRewritingSetWithLoggedCounts_forExfiltratingActionUUID___block_invoke;
    v17 = &unk_1E8380698;
    v18 = self;
    v19 = v7;
    v9 = [v8 if_map:&v14];

    v10 = [MEMORY[0x1E6996D38] attributionSetWithAttributions:v9 shouldReduceAttributions:{0, v14, v15, v16, v17, v18}];
  }

  else
  {
    v11 = getWFSecurityLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[WFSmartPromptsExfiltrationLogger attributionSetByRewritingSetWithLoggedCounts:forExfiltratingActionUUID:]";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s attributionSetByRewritingSetWithLoggedCounts was called by a WFAction with nil UUID!", buf, 0xCu);
    }

    v10 = v6;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

id __107__WFSmartPromptsExfiltrationLogger_attributionSetByRewritingSetWithLoggedCounts_forExfiltratingActionUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v4 origin];
  v6 = [v2 countItemsExfiltratedSoFarByActionWithUUID:v3 contentOrigin:v5];

  v7 = [v4 attributionByUpdatingItemsCount:{objc_msgSend(v4, "count") + v6}];

  return v7;
}

- (unint64_t)countItemsExfiltratedSoFarByActionWithUUID:(id)a3 contentOrigin:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFSmartPromptsExfiltrationLogger *)self store];
  v9 = [v8 objectForKey:v6];
  v10 = [v9 objectForKey:v7];

  v11 = [v10 count];
  v12 = getWFSecurityLogObject();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v13)
    {
      v20 = 136315650;
      v21 = "[WFSmartPromptsExfiltrationLogger countItemsExfiltratedSoFarByActionWithUUID:contentOrigin:]";
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v10;
      v14 = "%s Reporting to the runner that action %@ has so far exfiltrated items: %@";
      v15 = v12;
      v16 = 32;
LABEL_6:
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEBUG, v14, &v20, v16);
    }
  }

  else if (v13)
  {
    v20 = 136315394;
    v21 = "[WFSmartPromptsExfiltrationLogger countItemsExfiltratedSoFarByActionWithUUID:contentOrigin:]";
    v22 = 2112;
    v23 = v6;
    v14 = "%s Reporting to the runner that action %@ has no exfiltrated items so far";
    v15 = v12;
    v16 = 22;
    goto LABEL_6;
  }

  v17 = [v10 count];
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)logExfiltratedItems:(id)a3 actionUUID:(id)a4 contentOrigin:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_17:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFSmartPromptsExfiltrationLogger.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"actionUUID"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"WFSmartPromptsExfiltrationLogger.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"exfiltratedItemsIdentifiers"}];

  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_18:
  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"WFSmartPromptsExfiltrationLogger.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"contentOrigin"}];

LABEL_4:
  if ([v9 count])
  {
    v12 = [(WFSmartPromptsExfiltrationLogger *)self store];
    v13 = [v12 objectForKey:v10];

    if (!v13)
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];
      v14 = [(WFSmartPromptsExfiltrationLogger *)self store];
      [v14 setObject:v13 forKey:v10];
    }

    v15 = [v13 objectForKey:v11];
    v16 = v15;
    if (v15)
    {
      [v15 unionSet:v9];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v9];
      [v13 setObject:v17 forKey:v11];
    }

    v18 = getWFSecurityLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v24 = "[WFSmartPromptsExfiltrationLogger logExfiltratedItems:actionUUID:contentOrigin:]";
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_DEBUG, "%s Action %@ has so far exfiltrated items: %@", buf, 0x20u);
    }
  }

  else
  {
    v13 = getWFSecurityLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v24 = "[WFSmartPromptsExfiltrationLogger logExfiltratedItems:actionUUID:contentOrigin:]";
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEBUG, "%s Action %@ provided no exfiltratedItemsIdentifiers to log", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (WFSmartPromptsExfiltrationLogger)init
{
  v7.receiver = self;
  v7.super_class = WFSmartPromptsExfiltrationLogger;
  v2 = [(WFSmartPromptsExfiltrationLogger *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    store = v2->_store;
    v2->_store = v3;

    v5 = v2;
  }

  return v2;
}

@end