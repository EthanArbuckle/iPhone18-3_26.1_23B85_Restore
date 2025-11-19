@interface WFLinkFavoriteEntityAction
- (id)overrideDefaultValuesByParameter;
- (id)overrideLabelsByParameter;
@end

@implementation WFLinkFavoriteEntityAction

- (id)overrideDefaultValuesByParameter
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"operation";
  v6[0] = @"add";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)overrideLabelsByParameter
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFLinkEntityAction *)self entityName];

  if (v3)
  {
    v8 = @"entities";
    v4 = [(WFLinkEntityAction *)self entityName];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end