@interface WFFocusConfigurationOptions
- (WFFocusConfigurationOptions)initWithFocusConfigurationAction:(id)a3;
- (WFFocusConfigurationOptions)initWithFocusConfigurationActionIdentifier:(id)a3 action:(id)a4;
- (WFFocusConfigurationOptions)initWithFocusConfigurationActionIdentifier:(id)a3 action:(id)a4 suggestionContext:(id)a5 footerButtons:(id)a6 showsEnablementButton:(BOOL)a7 isEnabled:(BOOL)a8;
@end

@implementation WFFocusConfigurationOptions

- (WFFocusConfigurationOptions)initWithFocusConfigurationActionIdentifier:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v11 = [(WFFocusConfigurationOptions *)self initWithFocusConfigurationActionIdentifier:v6 action:v7 suggestionContext:v10];

  return v11;
}

- (WFFocusConfigurationOptions)initWithFocusConfigurationAction:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = [v4 identifier];
  v7 = [v6 componentsSeparatedByString:@"."];
  v8 = [v5 arrayWithArray:v7];

  v9 = [v8 lastObject];
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
  v13 = [[v11 alloc] initWithActionIdentifier:v9 bundleIdentifier:v10];
  v14 = [(WFFocusConfigurationOptions *)self initWithFocusConfigurationActionIdentifier:v13 action:v4];

  return v14;
}

- (WFFocusConfigurationOptions)initWithFocusConfigurationActionIdentifier:(id)a3 action:(id)a4 suggestionContext:(id)a5 footerButtons:(id)a6 showsEnablementButton:(BOOL)a7 isEnabled:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v25.receiver = self;
  v25.super_class = WFFocusConfigurationOptions;
  v19 = [(WFFocusConfigurationOptions *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_actionIdentifier, a3);
    v21 = [v16 copy];
    action = v20->_action;
    v20->_action = v21;

    objc_storeStrong(&v20->_suggestionContext, a5);
    objc_storeStrong(&v20->_footerButtons, a6);
    v20->_showsEnablementButton = a7;
    v20->_enabled = a8;
    v23 = v20;
  }

  return v20;
}

@end