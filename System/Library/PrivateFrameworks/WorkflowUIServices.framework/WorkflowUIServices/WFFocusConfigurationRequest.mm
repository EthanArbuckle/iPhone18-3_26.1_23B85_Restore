@interface WFFocusConfigurationRequest
- (BOOL)isValid;
- (WFFocusConfigurationRequest)initWithCoder:(id)a3;
- (WFFocusConfigurationRequest)initWithContextualAction:(id)a3 footerButtons:(id)a4 showsEnablementButton:(BOOL)a5 isEnabled:(BOOL)a6 mastheadTintColor:(id)a7;
- (WFFocusConfigurationRequest)initWithContextualActionOptions:(id)a3;
- (WFFocusConfigurationRequest)initWithFocusConfigurationActionIdentifier:(id)a3 action:(id)a4 suggestionContext:(id)a5 footerButtons:(id)a6 showsEnablementButton:(BOOL)a7 isEnabled:(BOOL)a8;
- (WFFocusConfigurationRequest)initWithOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadFocusActionWithCompletion:(id)a3;
@end

@implementation WFFocusConfigurationRequest

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeInteger:-[WFFocusConfigurationRequest mode](self forKey:{"mode"), @"mode"}];
  v4 = [(WFFocusConfigurationRequest *)self actionIdentifier];
  [v10 encodeObject:v4 forKey:@"actionIdentifier"];

  v5 = [(WFFocusConfigurationRequest *)self action];
  [v10 encodeObject:v5 forKey:@"action"];

  v6 = [(WFFocusConfigurationRequest *)self suggestionContext];
  [v10 encodeObject:v6 forKey:@"suggestionContext"];

  v7 = [(WFFocusConfigurationRequest *)self contextualAction];
  [v10 encodeObject:v7 forKey:@"contextualAction"];

  v8 = [(WFFocusConfigurationRequest *)self footerButtons];
  [v10 encodeObject:v8 forKey:@"footerButtons"];

  v9 = [(WFFocusConfigurationRequest *)self mastheadTintColor];
  [v10 encodeObject:v9 forKey:@"mastheadTintColor"];

  [v10 encodeBool:-[WFFocusConfigurationRequest showsEnablementButton](self forKey:{"showsEnablementButton"), @"showsEnablementButton"}];
  [v10 encodeBool:-[WFFocusConfigurationRequest isEnabled](self forKey:{"isEnabled"), @"isEnabled"}];
}

- (WFFocusConfigurationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"mode"];
  v6 = [v4 decodeBoolForKey:@"showsEnablementButton"];
  v7 = [v4 decodeBoolForKey:@"isEnabled"];
  if (v5 == 1)
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextualAction"];
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"footerButtons"];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mastheadTintColor"];
    self = [(WFFocusConfigurationRequest *)self initWithContextualAction:v10 footerButtons:v24 showsEnablementButton:v6 isEnabled:v7 mastheadTintColor:v25];
  }

  else
  {
    if (v5)
    {
      v26 = 0;
      goto LABEL_13;
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v8 = getLNFullyQualifiedActionIdentifierClass_softClass_1399;
    v36 = getLNFullyQualifiedActionIdentifierClass_softClass_1399;
    if (!getLNFullyQualifiedActionIdentifierClass_softClass_1399)
    {
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __getLNFullyQualifiedActionIdentifierClass_block_invoke_1400;
      v31 = &unk_1E8308088;
      v32 = &v33;
      __getLNFullyQualifiedActionIdentifierClass_block_invoke_1400(&v28);
      v8 = v34[3];
    }

    v9 = v8;
    _Block_object_dispose(&v33, 8);
    v10 = [v4 decodeObjectOfClass:v8 forKey:@"actionIdentifier"];
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v11 = getLNActionClass_softClass;
    v36 = getLNActionClass_softClass;
    if (!getLNActionClass_softClass)
    {
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __getLNActionClass_block_invoke;
      v31 = &unk_1E8308088;
      v32 = &v33;
      __getLNActionClass_block_invoke(&v28);
      v11 = v34[3];
    }

    v12 = v11;
    _Block_object_dispose(&v33, 8);
    v13 = [v4 decodeObjectOfClass:v11 forKey:@"action"];
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v14 = getLNFocusConfigurationSuggestionContextClass_softClass_1401;
    v36 = getLNFocusConfigurationSuggestionContextClass_softClass_1401;
    if (!getLNFocusConfigurationSuggestionContextClass_softClass_1401)
    {
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __getLNFocusConfigurationSuggestionContextClass_block_invoke_1402;
      v31 = &unk_1E8308088;
      v32 = &v33;
      __getLNFocusConfigurationSuggestionContextClass_block_invoke_1402(&v28);
      v14 = v34[3];
    }

    v15 = v14;
    _Block_object_dispose(&v33, 8);
    v16 = [v4 decodeObjectOfClass:v14 forKey:@"suggestionContext"];
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"footerButtons"];

    self = [(WFFocusConfigurationRequest *)self initWithFocusConfigurationActionIdentifier:v10 action:v13 suggestionContext:v16 footerButtons:v20 showsEnablementButton:v6 isEnabled:v7];
  }

  v26 = self;
LABEL_13:

  return v26;
}

- (void)loadFocusActionWithCompletion:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFFocusConfigurationRequest *)self mode];
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    v7 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v8 = WFLocalizedString(@"Invalid focus configuration request.");
    v27[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v10 = [v7 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v9];
    v4[2](v4, v10);

    goto LABEL_9;
  }

  v6 = [(WFFocusConfigurationRequest *)self action];

  if (v6)
  {
LABEL_4:
    v4[2](v4, 0);
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v11 = getLNActionDefaultValueProviderClass_softClass;
    v25 = getLNActionDefaultValueProviderClass_softClass;
    if (!getLNActionDefaultValueProviderClass_softClass)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __getLNActionDefaultValueProviderClass_block_invoke;
      v21[3] = &unk_1E8308088;
      v21[4] = &v22;
      __getLNActionDefaultValueProviderClass_block_invoke(v21);
      v11 = v23[3];
    }

    v12 = v11;
    _Block_object_dispose(&v22, 8);
    v13 = [v11 alloc];
    v14 = [(WFFocusConfigurationRequest *)self actionIdentifier];
    v15 = [v13 initWithActionIdentifier:v14 actionMetadata:0];

    v16 = [(WFFocusConfigurationRequest *)self suggestionContext];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__WFFocusConfigurationRequest_loadFocusActionWithCompletion___block_invoke;
    v18[3] = &unk_1E8307C80;
    v18[4] = self;
    v19 = v15;
    v20 = v4;
    v17 = v15;
    [v17 loadSuggestedFocusActionsWithSuggestionContext:v16 completion:v18];
  }

LABEL_9:
}

void __61__WFFocusConfigurationRequest_loadFocusActionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 && v6)
  {
    v8 = getWFFocusConfigurationLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[WFFocusConfigurationRequest loadFocusActionWithCompletion:]_block_invoke";
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1C830A000, v8, OS_LOG_TYPE_ERROR, "%s Failed to load suggested focus actions with error: %@", buf, 0x16u);
    }
  }

  v9 = [v5 firstObject];
  if (v9)
  {
    [*(a1 + 32) setAction:v9];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__WFFocusConfigurationRequest_loadFocusActionWithCompletion___block_invoke_64;
    v11[3] = &unk_1E8307C58;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 48);
    [v10 loadDefaultValuesWithCompletionHandler:v11];
  }
}

void __61__WFFocusConfigurationRequest_loadFocusActionWithCompletion___block_invoke_64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setAction:a2];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)isValid
{
  v3 = [(WFFocusConfigurationRequest *)self mode];
  if (v3 == 1)
  {
    v4 = [(WFFocusConfigurationRequest *)self contextualAction];
    v6 = v4 != 0;
LABEL_8:

    return v6;
  }

  if (!v3)
  {
    v4 = [(WFFocusConfigurationRequest *)self actionIdentifier];
    if (v4)
    {
      v5 = [(WFFocusConfigurationRequest *)self action];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_8;
  }

  return 0;
}

- (WFFocusConfigurationRequest)initWithContextualAction:(id)a3 footerButtons:(id)a4 showsEnablementButton:(BOOL)a5 isEnabled:(BOOL)a6 mastheadTintColor:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationRequest.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"contextualAction"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationRequest.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"footerButtons"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = WFFocusConfigurationRequest;
  v17 = [(WFFocusConfigurationRequest *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_mode = 1;
    objc_storeStrong(&v17->_contextualAction, a3);
    objc_storeStrong(&v18->_footerButtons, a4);
    v18->_showsEnablementButton = a5;
    v18->_enabled = a6;
    objc_storeStrong(&v18->_mastheadTintColor, a7);
    v19 = v18;
  }

  return v18;
}

- (WFFocusConfigurationRequest)initWithFocusConfigurationActionIdentifier:(id)a3 action:(id)a4 suggestionContext:(id)a5 footerButtons:(id)a6 showsEnablementButton:(BOOL)a7 isEnabled:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v25.receiver = self;
  v25.super_class = WFFocusConfigurationRequest;
  v19 = [(WFFocusConfigurationRequest *)&v25 init];
  v20 = v19;
  if (v19)
  {
    v19->_mode = 0;
    v21 = [v16 copy];
    action = v20->_action;
    v20->_action = v21;

    objc_storeStrong(&v20->_actionIdentifier, a3);
    objc_storeStrong(&v20->_suggestionContext, a5);
    objc_storeStrong(&v20->_footerButtons, a6);
    v20->_showsEnablementButton = a7;
    v20->_enabled = a8;
    v23 = v20;
  }

  return v20;
}

- (WFFocusConfigurationRequest)initWithContextualActionOptions:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationRequest.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v6 = [v5 contextualAction];
  v7 = [v5 footerButtons];
  v8 = [v5 showsEnablementButton];
  v9 = [v5 isEnabled];
  v10 = [v5 mastheadTintColor];
  v11 = [(WFFocusConfigurationRequest *)self initWithContextualAction:v6 footerButtons:v7 showsEnablementButton:v8 isEnabled:v9 mastheadTintColor:v10];

  return v11;
}

- (WFFocusConfigurationRequest)initWithOptions:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationRequest.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v6 = [v5 actionIdentifier];
  v7 = [v5 action];
  v8 = [v5 suggestionContext];
  v9 = [v5 footerButtons];
  v10 = -[WFFocusConfigurationRequest initWithFocusConfigurationActionIdentifier:action:suggestionContext:footerButtons:showsEnablementButton:isEnabled:](self, "initWithFocusConfigurationActionIdentifier:action:suggestionContext:footerButtons:showsEnablementButton:isEnabled:", v6, v7, v8, v9, [v5 showsEnablementButton], objc_msgSend(v5, "isEnabled"));

  return v10;
}

@end