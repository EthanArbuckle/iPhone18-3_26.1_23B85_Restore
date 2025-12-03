@interface WFSmartPromptsExfiltrationLogger
- (WFSmartPromptsExfiltrationLogger)init;
- (id)attributionSetByRewritingSetWithLoggedCounts:(id)counts forExfiltratingActionUUID:(id)d;
- (unint64_t)countItemsExfiltratedSoFarByActionWithUUID:(id)d contentOrigin:(id)origin;
- (void)logExfiltratedItems:(id)items actionUUID:(id)d contentOrigin:(id)origin;
@end

@implementation WFSmartPromptsExfiltrationLogger

- (id)attributionSetByRewritingSetWithLoggedCounts:(id)counts forExfiltratingActionUUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  dCopy = d;
  if (dCopy)
  {
    attributions = [countsCopy attributions];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __107__WFSmartPromptsExfiltrationLogger_attributionSetByRewritingSetWithLoggedCounts_forExfiltratingActionUUID___block_invoke;
    v17 = &unk_1E8380698;
    selfCopy = self;
    v19 = dCopy;
    v9 = [attributions if_map:&v14];

    v10 = [MEMORY[0x1E6996D38] attributionSetWithAttributions:v9 shouldReduceAttributions:{0, v14, v15, v16, v17, selfCopy}];
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

    v10 = countsCopy;
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

- (unint64_t)countItemsExfiltratedSoFarByActionWithUUID:(id)d contentOrigin:(id)origin
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  originCopy = origin;
  store = [(WFSmartPromptsExfiltrationLogger *)self store];
  v9 = [store objectForKey:dCopy];
  v10 = [v9 objectForKey:originCopy];

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
      v23 = dCopy;
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
    v23 = dCopy;
    v14 = "%s Reporting to the runner that action %@ has no exfiltrated items so far";
    v15 = v12;
    v16 = 22;
    goto LABEL_6;
  }

  v17 = [v10 count];
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)logExfiltratedItems:(id)items actionUUID:(id)d contentOrigin:(id)origin
{
  v29 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dCopy = d;
  originCopy = origin;
  if (itemsCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSmartPromptsExfiltrationLogger.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"actionUUID"}];

    if (originCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSmartPromptsExfiltrationLogger.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"exfiltratedItemsIdentifiers"}];

  if (!dCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (originCopy)
  {
    goto LABEL_4;
  }

LABEL_18:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFSmartPromptsExfiltrationLogger.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"contentOrigin"}];

LABEL_4:
  if ([itemsCopy count])
  {
    store = [(WFSmartPromptsExfiltrationLogger *)self store];
    dictionary = [store objectForKey:dCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      store2 = [(WFSmartPromptsExfiltrationLogger *)self store];
      [store2 setObject:dictionary forKey:dCopy];
    }

    v15 = [dictionary objectForKey:originCopy];
    v16 = v15;
    if (v15)
    {
      [v15 unionSet:itemsCopy];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:itemsCopy];
      [dictionary setObject:v17 forKey:originCopy];
    }

    v18 = getWFSecurityLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v24 = "[WFSmartPromptsExfiltrationLogger logExfiltratedItems:actionUUID:contentOrigin:]";
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = itemsCopy;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_DEBUG, "%s Action %@ has so far exfiltrated items: %@", buf, 0x20u);
    }
  }

  else
  {
    dictionary = getWFSecurityLogObject();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v24 = "[WFSmartPromptsExfiltrationLogger logExfiltratedItems:actionUUID:contentOrigin:]";
      v25 = 2112;
      v26 = dCopy;
      _os_log_impl(&dword_1CA256000, dictionary, OS_LOG_TYPE_DEBUG, "%s Action %@ provided no exfiltratedItemsIdentifiers to log", buf, 0x16u);
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    store = v2->_store;
    v2->_store = dictionary;

    v5 = v2;
  }

  return v2;
}

@end