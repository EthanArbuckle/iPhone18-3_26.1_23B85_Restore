@interface VUIActionAlert
- (VUIActionAlert)initWithContextData:(id)a3 appContext:(id)a4 controllerClass:(Class)a5;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionAlert

- (VUIActionAlert)initWithContextData:(id)a3 appContext:(id)a4 controllerClass:(Class)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v49 = a4;
  v57.receiver = self;
  v57.super_class = VUIActionAlert;
  v9 = [(VUIActionAlert *)&v57 init];
  if (v9)
  {
    v10 = [v8 vui_stringForKey:@"title"];
    title = v9->_title;
    v9->_title = v10;

    v12 = [v8 vui_stringForKey:@"description"];
    descriptionString = v9->_descriptionString;
    v9->_descriptionString = v12;

    v14 = [v8 vui_dictionaryForKey:@"metrics"];
    dialogMetrics = v9->_dialogMetrics;
    v9->_dialogMetrics = v14;

    objc_storeStrong(&v9->_controllerClass, a5);
    v16 = [v8 vui_stringForKey:@"dismissButtonTitle"];
    if ([v16 length])
    {
      v17 = v16;
      dismissButtonTitle = v9->_dismissButtonTitle;
      v9->_dismissButtonTitle = v17;
    }

    else
    {
      dismissButtonTitle = +[VUILocalizationManager sharedInstance];
      v19 = [dismissButtonTitle localizedStringForKey:@"OK"];
      v20 = v9->_dismissButtonTitle;
      v9->_dismissButtonTitle = v19;
    }

    v21 = [v8 vui_stringForKey:@"style"];
    v22 = ![v21 length] || (objc_msgSend(v21, "isEqualToString:", @"actionSheet") & 1) == 0;
    v9->_style = v22;
    v23 = [v8 vui_arrayForKey:@"actionItems"];
    if ([v23 count])
    {
      v44 = v21;
      v45 = v16;
      v46 = v8;
      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      actionItems = v9->_actionItems;
      v9->_actionItems = v24;

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v43 = v23;
      obj = v23;
      v50 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v50)
      {
        v48 = *v54;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v54 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v53 + 1) + 8 * i);
            v28 = [v27 vui_stringForKey:{@"title", v43}];
            v29 = [v27 vui_stringForKey:@"titleImage"];
            v30 = [v29 stringByReplacingOccurrencesOfString:@"symbol://" withString:&stru_1F5DB25C0];

            v31 = [v27 vui_dictionaryForKey:@"action"];
            v32 = [v31 vui_dictionaryForKey:@"actionDataSource"];
            v33 = [v32 vui_dictionaryForKey:@"contextData"];
            v34 = [v33 vui_dictionaryForKey:@"metrics"];
            v35 = [VUIAction actionWithDictionary:v32 appContext:v49];
            if (v35)
            {
              v51 = v31;
              v52 = v30;
              if (v30)
              {
                v30 = [MEMORY[0x1E69DCAB8] vuiSystemImageNamed:v30 withConfiguration:0 accessibilityDescription:0];
              }

              v36 = v9->_actionItems;
              v37 = v28;
              v38 = [[VUIActionAlertActionItem alloc] initWithTitle:v28 titleImage:v30 action:v35 metrics:v34];
              [(NSMutableArray *)v36 addObject:v38];

              v28 = v37;
              v31 = v51;
              v30 = v52;
            }
          }

          v50 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v50);
      }

      v16 = v45;
      v8 = v46;
      v23 = v43;
      v21 = v44;
    }

    v39 = [v8 vui_dictionaryForKey:{@"cancelAction", v43}];
    if (v39)
    {
      v40 = [VUIAction actionWithDictionary:v39 appContext:v49];
      cancelAction = v9->_cancelAction;
      v9->_cancelAction = v40;
    }
  }

  return v9;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v31 = a4;
  v33 = [(objc_class *)self->_controllerClass vui_alertControllerWithTitle:self->_title message:self->_descriptionString preferredStyle:self->_style];
  v6 = [(VUIActionAlert *)self dialogMetrics];
  v29 = self;
  [(VUIActionAlert *)self actionItems];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v48 = 0u;
  v7 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        v12 = [v11 title];
        v13 = [v11 titleImage];
        v14 = [v11 metrics];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __63__VUIActionAlert_performWithTargetResponder_completionHandler___block_invoke;
        v41[3] = &unk_1E8732E80;
        v41[4] = v11;
        v42 = v6;
        v43 = v32;
        v44 = v31;
        v15 = [VUIAlertAction vui_actionWithTitle:v12 titleImage:v13 style:0 metrics:v14 handler:v41];

        [v33 vui_addAction:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v8);
  }

  v16 = [(VUIActionAlert *)v29 cancelAction];
  v17 = [(VUIActionAlert *)v29 dismissButtonTitle];
  dismissButtonTitle = v29->_dismissButtonTitle;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __63__VUIActionAlert_performWithTargetResponder_completionHandler___block_invoke_2;
  v34[3] = &unk_1E8732EA8;
  v19 = obj;
  v35 = v19;
  v20 = v17;
  v36 = v20;
  v21 = v6;
  v37 = v21;
  v22 = v16;
  v38 = v22;
  v23 = v32;
  v39 = v23;
  v24 = v31;
  v40 = v24;
  v25 = [VUIAlertAction vui_actionWithTitle:dismissButtonTitle titleImage:0 style:1 handler:v34];
  [v33 vui_addAction:v25 isPreferred:0];
  v26 = +[VUIApplicationRouter topPresentedViewController];
  [v33 vui_presentAlertFromPresentingController:v26 animated:1 completion:0];
  if (v21)
  {
    v27 = +[VUIMetricsController sharedInstance];
    [v27 recordDialog:v21];
  }

  if (v24)
  {
    v28 = [(VUIActionAlert *)v29 cancelAction];

    if (!v28)
    {
      (*(v24 + 2))(v24, 1);
    }
  }
}

void __63__VUIActionAlert_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) metrics];
  v3 = [v2 vui_dictionaryForKey:@"click"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
    v5 = v4;
    if (*(a1 + 40))
    {
      [v4 addEntriesFromDictionary:?];
    }

    else
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __63__VUIActionAlert_performWithTargetResponder_completionHandler___block_invoke_cold_1(v6);
      }
    }

    v7 = +[VUIMetricsController sharedInstance];
    [v7 recordClick:v5];
  }

  v8 = [*(a1 + 32) action];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__VUIActionAlert_performWithTargetResponder_completionHandler___block_invoke_76;
  v10[3] = &unk_1E872D790;
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  [VUIApplicationRouter invokeAction:v8 targetResponder:v9 documentOptions:0 completion:v10];
}

uint64_t __63__VUIActionAlert_performWithTargetResponder_completionHandler___block_invoke_2(uint64_t a1)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) firstObject];
  v3 = [v2 metrics];
  v4 = [v3 vui_dictionaryForKey:@"click"];

  if (v4)
  {
    v5 = MEMORY[0x1E695DF90];
    v14[0] = @"targetId";
    v14[1] = @"targetType";
    v15[0] = @"cancel";
    v15[1] = @"button";
    v15[2] = @"cancel";
    v14[2] = @"actionType";
    v14[3] = @"actionDetails";
    v6 = &stru_1F5DB25C0;
    if (*(a1 + 40))
    {
      v6 = *(a1 + 40);
    }

    v12 = @"name";
    v13 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v15[3] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
    v9 = [v5 dictionaryWithDictionary:v8];

    if (*(a1 + 48))
    {
      [v9 addEntriesFromDictionary:?];
    }

    v10 = +[VUIMetricsController sharedInstance];
    [v10 recordClick:v9];
  }

  return [*(a1 + 56) performWithTargetResponder:*(a1 + 64) completionHandler:*(a1 + 72)];
}

@end