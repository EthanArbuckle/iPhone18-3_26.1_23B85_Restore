@interface WFFocusConfigurationOptions
- (WFFocusConfigurationOptions)initWithFocusConfigurationAction:(id)action;
- (WFFocusConfigurationOptions)initWithFocusConfigurationActionIdentifier:(id)identifier action:(id)action;
- (WFFocusConfigurationOptions)initWithFocusConfigurationActionIdentifier:(id)identifier action:(id)action suggestionContext:(id)context footerButtons:(id)buttons showsEnablementButton:(BOOL)button isEnabled:(BOOL)enabled;
@end

@implementation WFFocusConfigurationOptions

- (WFFocusConfigurationOptions)initWithFocusConfigurationActionIdentifier:(id)identifier action:(id)action
{
  identifierCopy = identifier;
  actionCopy = action;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v8 = getLNFocusConfigurationSuggestionContextClass_softClass;
  v17 = getLNFocusConfigurationSuggestionContextClass_softClass;
  if (!getLNFocusConfigurationSuggestionContextClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getLNFocusConfigurationSuggestionContextClass_block_invoke;
    v13[3] = &unk_1E8308088;
    v13[4] = &v14;
    __getLNFocusConfigurationSuggestionContextClass_block_invoke(v13);
    v8 = v15[3];
  }

  v9 = v8;
  _Block_object_dispose(&v14, 8);
  v10 = objc_opt_new();
  v11 = [(WFFocusConfigurationOptions *)self initWithFocusConfigurationActionIdentifier:identifierCopy action:actionCopy suggestionContext:v10];

  return v11;
}

- (WFFocusConfigurationOptions)initWithFocusConfigurationAction:(id)action
{
  actionCopy = action;
  v5 = MEMORY[0x1E695DF70];
  identifier = [actionCopy identifier];
  v7 = [identifier componentsSeparatedByString:@"."];
  v8 = [v5 arrayWithArray:v7];

  lastObject = [v8 lastObject];
  [v8 removeLastObject];
  v10 = [v8 componentsJoinedByString:@"."];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v11 = getLNFullyQualifiedActionIdentifierClass_softClass;
  v20 = getLNFullyQualifiedActionIdentifierClass_softClass;
  if (!getLNFullyQualifiedActionIdentifierClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getLNFullyQualifiedActionIdentifierClass_block_invoke;
    v16[3] = &unk_1E8308088;
    v16[4] = &v17;
    __getLNFullyQualifiedActionIdentifierClass_block_invoke(v16);
    v11 = v18[3];
  }

  v12 = v11;
  _Block_object_dispose(&v17, 8);
  v13 = [[v11 alloc] initWithActionIdentifier:lastObject bundleIdentifier:v10];
  v14 = [(WFFocusConfigurationOptions *)self initWithFocusConfigurationActionIdentifier:v13 action:actionCopy];

  return v14;
}

- (WFFocusConfigurationOptions)initWithFocusConfigurationActionIdentifier:(id)identifier action:(id)action suggestionContext:(id)context footerButtons:(id)buttons showsEnablementButton:(BOOL)button isEnabled:(BOOL)enabled
{
  identifierCopy = identifier;
  actionCopy = action;
  contextCopy = context;
  buttonsCopy = buttons;
  v25.receiver = self;
  v25.super_class = WFFocusConfigurationOptions;
  v19 = [(WFFocusConfigurationOptions *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_actionIdentifier, identifier);
    v21 = [actionCopy copy];
    action = v20->_action;
    v20->_action = v21;

    objc_storeStrong(&v20->_suggestionContext, context);
    objc_storeStrong(&v20->_footerButtons, buttons);
    v20->_showsEnablementButton = button;
    v20->_enabled = enabled;
    v23 = v20;
  }

  return v20;
}

@end