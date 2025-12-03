@interface WFLinkShortcutsDeleteWorkflowAction
- (id)inputDictionary;
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkShortcutsDeleteWorkflowAction

- (id)inputDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = WFLinkShortcutsDeleteWorkflowAction;
  inputDictionary = [(WFLinkAction *)&v15 inputDictionary];
  v4 = [inputDictionary mutableCopy];

  v5 = [v4 objectForKey:@"Types"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (![v7 count])
  {
    v8 = getWFActionsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v17 = "[WFLinkShortcutsDeleteWorkflowAction inputDictionary]";
      v18 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Unable to construct input type for %@", buf, 0x16u);
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  v9 = [v7 mutableCopy];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 insertObject:v11 atIndex:0];

  v12 = [v9 copy];
  [v4 setObject:v12 forKey:@"Types"];

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"ShortcutsSubcategoryShortcuts", @"Shortcuts");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end