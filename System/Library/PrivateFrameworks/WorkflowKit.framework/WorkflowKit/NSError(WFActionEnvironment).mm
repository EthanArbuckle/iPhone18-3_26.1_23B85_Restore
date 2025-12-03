@interface NSError(WFActionEnvironment)
+ (id)wfUnsupportedEnvironmentError;
- (BOOL)wf_isUnsupportedEnvironmentError;
@end

@implementation NSError(WFActionEnvironment)

- (BOOL)wf_isUnsupportedEnvironmentError
{
  domain = [self domain];
  if ([domain isEqualToString:@"WFActionErrorDomain"])
  {
    v3 = [self code] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)wfUnsupportedEnvironmentError
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E696A578];
  v0 = WFLocalizedString(@"This action cannot be run in the current environment.");
  v6[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:2 userInfo:v1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end