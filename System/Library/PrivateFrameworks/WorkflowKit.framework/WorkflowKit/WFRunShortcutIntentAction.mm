@interface WFRunShortcutIntentAction
- (id)parameterOverrides;
@end

@implementation WFRunShortcutIntentAction

- (id)parameterOverrides
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = WFRunShortcutIntentAction;
  v2 = [(WFOverridableLinkAction *)&v9 parameterOverrides];
  v3 = [v2 mutableCopy];

  v10 = @"Class";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  WFAddEntriesToDictionary(v3, @"shortcut", v6);

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

@end