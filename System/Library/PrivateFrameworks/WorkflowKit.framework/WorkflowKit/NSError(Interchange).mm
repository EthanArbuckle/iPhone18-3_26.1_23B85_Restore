@interface NSError(Interchange)
+ (id)errorWithInterchangeErrorDictionary:()Interchange;
- (id)interchangeErrorDictionary;
@end

@implementation NSError(Interchange)

- (id)interchangeErrorDictionary
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"errorCode";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "code")}];
  v10[0] = v2;
  v9[1] = @"errorMessage";
  v3 = [a1 localizedDescription];
  v4 = v3;
  if (!v3)
  {
    v4 = [a1 localizedFailureReason];
  }

  v10[1] = v4;
  v9[2] = @"errorDomain";
  v5 = [a1 domain];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  if (!v3)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)errorWithInterchangeErrorDictionary:()Interchange
{
  v4 = a3;
  v5 = [v4 objectForKey:@"errorCode"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKey:@"errorMessage"];
  v8 = [v4 objectForKey:@"errorDomain"];

  v9 = @"InterchangeCallbackErrorDomain";
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696A578], 0}];
  v12 = [a1 errorWithDomain:v10 code:v6 userInfo:v11];

  return v12;
}

@end