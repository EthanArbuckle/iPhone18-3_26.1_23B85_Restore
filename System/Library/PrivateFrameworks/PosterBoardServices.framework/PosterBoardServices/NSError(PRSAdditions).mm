@interface NSError(PRSAdditions)
+ (id)prs_entitlementFailureErrorWithFile:()PRSAdditions line:;
+ (id)prs_errorWithCode:()PRSAdditions;
+ (id)prs_errorWithCode:()PRSAdditions underlyingError:userInfo:;
@end

@implementation NSError(PRSAdditions)

+ (id)prs_errorWithCode:()PRSAdditions
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = @"the 'currentConfiguration' argument was invalid.";
  if (a3 != 1)
  {
    v5 = @"Unknown error.";
  }

  if (a3 == 2)
  {
    v5 = @"an entitlement was not found which was needed.";
  }

  v12 = *MEMORY[0x1E696A588];
  v13[0] = v5;
  v6 = MEMORY[0x1E695DF20];
  v7 = v5;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [self prs_errorWithCode:a3 underlyingError:0 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)prs_errorWithCode:()PRSAdditions underlyingError:userInfo:
{
  v8 = a4;
  v9 = [a5 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v13 = @"Unknown error.";
  if (a3 == 1)
  {
    v13 = @"the 'currentConfiguration' argument was invalid.";
  }

  if (a3 == 2)
  {
    v14 = @"an entitlement was not found which was needed.";
  }

  else
  {
    v14 = v13;
  }

  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696A588]];
  v15 = [self errorWithDomain:@"com.apple.PosterBoardServices.errorDomain" code:a3 userInfo:v12];

  return v15;
}

+ (id)prs_entitlementFailureErrorWithFile:()PRSAdditions line:
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%u", a3, a4];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [self prs_errorWithCode:2 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end