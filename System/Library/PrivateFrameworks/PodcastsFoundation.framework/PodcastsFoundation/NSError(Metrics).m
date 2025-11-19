@interface NSError(Metrics)
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
@end

@implementation NSError(Metrics)

- (id)metricsAdditionalData
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"code";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "code")}];
  v15[0] = v2;
  v14[1] = @"domain";
  v3 = [a1 domain];
  v4 = v3;
  v5 = &stru_1F548B930;
  if (v3)
  {
    v5 = v3;
  }

  v15[1] = v5;
  v14[2] = @"user_info";
  v6 = [a1 userInfo];
  v7 = v6;
  v8 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    v8 = v6;
  }

  v15[2] = v8;
  v14[3] = @"call_stack";
  v9 = [MEMORY[0x1E696AF00] callStackSymbols];
  v10 = [v9 description];
  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)metricsContentIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 code];
  v4 = [a1 domain];
  v5 = [v2 stringWithFormat:@"NSError: %ld-%@", v3, v4];

  return v5;
}

@end