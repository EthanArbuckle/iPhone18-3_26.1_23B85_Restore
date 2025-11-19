@interface WFLinkWritingToolsProofreadAction
- (id)parameterOverrides;
@end

@implementation WFLinkWritingToolsProofreadAction

- (id)parameterOverrides
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = WFLinkWritingToolsProofreadAction;
  v2 = [(WFOverridableLinkAction *)&v7 parameterOverrides];
  v3 = [v2 mutableCopy];

  v8 = @"Hidden";
  v9[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  WFAddEntriesToDictionary(v3, @"processInstanceIdentifier", v4);

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

@end