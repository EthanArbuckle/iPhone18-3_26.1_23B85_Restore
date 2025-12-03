@interface WFFocusConfigurationRequest
- (BOOL)isValid;
- (WFFocusConfigurationRequest)initWithCoder:(id)coder;
- (WFFocusConfigurationRequest)initWithContextualAction:(id)action footerButtons:(id)buttons showsEnablementButton:(BOOL)button isEnabled:(BOOL)enabled mastheadTintColor:(id)color;
- (WFFocusConfigurationRequest)initWithContextualActionOptions:(id)options;
- (WFFocusConfigurationRequest)initWithFocusConfigurationActionIdentifier:(id)identifier action:(id)action suggestionContext:(id)context footerButtons:(id)buttons showsEnablementButton:(BOOL)button isEnabled:(BOOL)enabled;
- (WFFocusConfigurationRequest)initWithOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)loadFocusActionWithCompletion:(id)completion;
@end

@implementation WFFocusConfigurationRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WFFocusConfigurationRequest mode](self forKey:{"mode"), @"mode"}];
  actionIdentifier = [(WFFocusConfigurationRequest *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  action = [(WFFocusConfigurationRequest *)self action];
  [coderCopy encodeObject:action forKey:@"action"];

  suggestionContext = [(WFFocusConfigurationRequest *)self suggestionContext];
  [coderCopy encodeObject:suggestionContext forKey:@"suggestionContext"];

  contextualAction = [(WFFocusConfigurationRequest *)self contextualAction];
  [coderCopy encodeObject:contextualAction forKey:@"contextualAction"];

  footerButtons = [(WFFocusConfigurationRequest *)self footerButtons];
  [coderCopy encodeObject:footerButtons forKey:@"footerButtons"];

  mastheadTintColor = [(WFFocusConfigurationRequest *)self mastheadTintColor];
  [coderCopy encodeObject:mastheadTintColor forKey:@"mastheadTintColor"];

  [coderCopy encodeBool:-[WFFocusConfigurationRequest showsEnablementButton](self forKey:{"showsEnablementButton"), @"showsEnablementButton"}];
  [coderCopy encodeBool:-[WFFocusConfigurationRequest isEnabled](self forKey:{"isEnabled"), @"isEnabled"}];
}

- (WFFocusConfigurationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"mode"];
  v6 = [coderCopy decodeBoolForKey:@"showsEnablementButton"];
  v7 = [coderCopy decodeBoolForKey:@"isEnabled"];
  if (v5 == 1)
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextualAction"];
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"footerButtons"];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mastheadTintColor"];
    self = [(WFFocusConfigurationRequest *)self initWithContextualAction:v10 footerButtons:v24 showsEnablementButton:v6 isEnabled:v7 mastheadTintColor:v25];
  }

  else
  {
    if (v5)
    {
      selfCopy = 0;
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
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:@"actionIdentifier"];
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
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:@"action"];
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
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:@"suggestionContext"];
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"footerButtons"];

    self = [(WFFocusConfigurationRequest *)self initWithFocusConfigurationActionIdentifier:v10 action:v13 suggestionContext:v16 footerButtons:v20 showsEnablementButton:v6 isEnabled:v7];
  }

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (void)loadFocusActionWithCompletion:(id)completion
{
  v27[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  mode = [(WFFocusConfigurationRequest *)self mode];
  if (mode == 1)
  {
    goto LABEL_4;
  }

  if (mode)
  {
    v7 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v8 = WFLocalizedString(@"Invalid focus configuration request.");
    v27[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v10 = [v7 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v9];
    completionCopy[2](completionCopy, v10);

    goto LABEL_9;
  }

  action = [(WFFocusConfigurationRequest *)self action];

  if (action)
  {
LABEL_4:
    completionCopy[2](completionCopy, 0);
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
    actionIdentifier = [(WFFocusConfigurationRequest *)self actionIdentifier];
    v15 = [v13 initWithActionIdentifier:actionIdentifier actionMetadata:0];

    suggestionContext = [(WFFocusConfigurationRequest *)self suggestionContext];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__WFFocusConfigurationRequest_loadFocusActionWithCompletion___block_invoke;
    v18[3] = &unk_1E8307C80;
    v18[4] = self;
    v19 = v15;
    v20 = completionCopy;
    v17 = v15;
    [v17 loadSuggestedFocusActionsWithSuggestionContext:suggestionContext completion:v18];
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
  mode = [(WFFocusConfigurationRequest *)self mode];
  if (mode == 1)
  {
    contextualAction = [(WFFocusConfigurationRequest *)self contextualAction];
    v6 = contextualAction != 0;
LABEL_8:

    return v6;
  }

  if (!mode)
  {
    contextualAction = [(WFFocusConfigurationRequest *)self actionIdentifier];
    if (contextualAction)
    {
      action = [(WFFocusConfigurationRequest *)self action];
      v6 = action != 0;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_8;
  }

  return 0;
}

- (WFFocusConfigurationRequest)initWithContextualAction:(id)action footerButtons:(id)buttons showsEnablementButton:(BOOL)button isEnabled:(BOOL)enabled mastheadTintColor:(id)color
{
  actionCopy = action;
  buttonsCopy = buttons;
  colorCopy = color;
  if (actionCopy)
  {
    if (buttonsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationRequest.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"contextualAction"}];

    if (buttonsCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationRequest.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"footerButtons"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = WFFocusConfigurationRequest;
  v17 = [(WFFocusConfigurationRequest *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_mode = 1;
    objc_storeStrong(&v17->_contextualAction, action);
    objc_storeStrong(&v18->_footerButtons, buttons);
    v18->_showsEnablementButton = button;
    v18->_enabled = enabled;
    objc_storeStrong(&v18->_mastheadTintColor, color);
    v19 = v18;
  }

  return v18;
}

- (WFFocusConfigurationRequest)initWithFocusConfigurationActionIdentifier:(id)identifier action:(id)action suggestionContext:(id)context footerButtons:(id)buttons showsEnablementButton:(BOOL)button isEnabled:(BOOL)enabled
{
  identifierCopy = identifier;
  actionCopy = action;
  contextCopy = context;
  buttonsCopy = buttons;
  v25.receiver = self;
  v25.super_class = WFFocusConfigurationRequest;
  v19 = [(WFFocusConfigurationRequest *)&v25 init];
  v20 = v19;
  if (v19)
  {
    v19->_mode = 0;
    v21 = [actionCopy copy];
    action = v20->_action;
    v20->_action = v21;

    objc_storeStrong(&v20->_actionIdentifier, identifier);
    objc_storeStrong(&v20->_suggestionContext, context);
    objc_storeStrong(&v20->_footerButtons, buttons);
    v20->_showsEnablementButton = button;
    v20->_enabled = enabled;
    v23 = v20;
  }

  return v20;
}

- (WFFocusConfigurationRequest)initWithContextualActionOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationRequest.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  contextualAction = [optionsCopy contextualAction];
  footerButtons = [optionsCopy footerButtons];
  showsEnablementButton = [optionsCopy showsEnablementButton];
  isEnabled = [optionsCopy isEnabled];
  mastheadTintColor = [optionsCopy mastheadTintColor];
  v11 = [(WFFocusConfigurationRequest *)self initWithContextualAction:contextualAction footerButtons:footerButtons showsEnablementButton:showsEnablementButton isEnabled:isEnabled mastheadTintColor:mastheadTintColor];

  return v11;
}

- (WFFocusConfigurationRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationRequest.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  actionIdentifier = [optionsCopy actionIdentifier];
  action = [optionsCopy action];
  suggestionContext = [optionsCopy suggestionContext];
  footerButtons = [optionsCopy footerButtons];
  v10 = -[WFFocusConfigurationRequest initWithFocusConfigurationActionIdentifier:action:suggestionContext:footerButtons:showsEnablementButton:isEnabled:](self, "initWithFocusConfigurationActionIdentifier:action:suggestionContext:footerButtons:showsEnablementButton:isEnabled:", actionIdentifier, action, suggestionContext, footerButtons, [optionsCopy showsEnablementButton], objc_msgSend(optionsCopy, "isEnabled"));

  return v10;
}

@end