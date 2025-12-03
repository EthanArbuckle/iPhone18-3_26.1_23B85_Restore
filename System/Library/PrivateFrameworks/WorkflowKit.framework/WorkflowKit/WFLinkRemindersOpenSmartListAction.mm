@interface WFLinkRemindersOpenSmartListAction
- (id)parameterOverrides;
@end

@implementation WFLinkRemindersOpenSmartListAction

- (id)parameterOverrides
{
  v11[3] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = WFLinkRemindersOpenSmartListAction;
  parameterOverrides = [(WFOverridableLinkAction *)&v9 parameterOverrides];
  v3 = [parameterOverrides mutableCopy];

  v10[0] = @"Class";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v11[0] = v5;
  v11[1] = @"targetEntity";
  v10[1] = @"KeyForSerialization";
  v10[2] = @"LegacyKey";
  v11[2] = @"target";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  WFAddEntriesToDictionary(v3, @"target", v6);

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

@end