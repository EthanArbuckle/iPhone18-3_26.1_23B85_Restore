@interface NSError(SXAdditions)
+ (id)unknownError;
+ (id)unreachableNetworkError;
@end

@implementation NSError(SXAdditions)

+ (id)unreachableNetworkError
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A578];
  v5[0] = @"Network Unreachable";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = [v0 errorWithDomain:@"SXWebContentErrorDomain" code:-2 userInfo:v1];

  return v2;
}

+ (id)unknownError
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A578];
  v5[0] = @"Unknown Error";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = [v0 errorWithDomain:@"SXWebContentErrorDomain" code:-1 userInfo:v1];

  return v2;
}

@end