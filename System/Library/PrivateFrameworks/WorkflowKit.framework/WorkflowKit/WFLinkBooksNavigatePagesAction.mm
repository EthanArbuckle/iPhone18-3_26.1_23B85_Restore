@interface WFLinkBooksNavigatePagesAction
- (id)overrideDefaultValuesByParameter;
- (id)overrideLabelsByParameter;
@end

@implementation WFLinkBooksNavigatePagesAction

- (id)overrideDefaultValuesByParameter
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"direction";
  v6[0] = @"next";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)overrideLabelsByParameter
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"direction";
  v2 = WFLocalizedStringResourceWithKey(@"Direction (direction)", @"Direction");
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end