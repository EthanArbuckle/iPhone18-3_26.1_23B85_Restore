@interface WFUnavailableResource
- (void)refreshAvailability;
@end

@implementation WFUnavailableResource

- (void)refreshAvailability
{
  v13[1] = *MEMORY[0x1E69E9840];
  definition = [(WFResource *)self definition];
  v4 = [definition objectForKey:@"WFUnavailableResourceReason"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = WFLocalizedString(@"This action is no longer available.");
  }

  v7 = v6;

  v8 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A588];
  v13[0] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v8 errorWithDomain:@"ResourceErrorDomain" code:0 userInfo:v9];

  [(WFResource *)self updateAvailability:0 withError:v10];
  v11 = *MEMORY[0x1E69E9840];
}

@end