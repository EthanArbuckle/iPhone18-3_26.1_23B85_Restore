@interface NSError(Metrics)
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
@end

@implementation NSError(Metrics)

- (id)metricsAdditionalData
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"code";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "code")}];
  v15[0] = v2;
  v14[1] = @"domain";
  domain = [self domain];
  v4 = domain;
  v5 = &stru_1F548B930;
  if (domain)
  {
    v5 = domain;
  }

  v15[1] = v5;
  v14[2] = @"user_info";
  userInfo = [self userInfo];
  v7 = userInfo;
  v8 = MEMORY[0x1E695E0F8];
  if (userInfo)
  {
    v8 = userInfo;
  }

  v15[2] = v8;
  v14[3] = @"call_stack";
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  v10 = [callStackSymbols description];
  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)metricsContentIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  code = [self code];
  domain = [self domain];
  v5 = [v2 stringWithFormat:@"NSError: %ld-%@", code, domain];

  return v5;
}

@end