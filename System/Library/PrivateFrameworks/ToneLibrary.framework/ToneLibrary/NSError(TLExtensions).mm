@interface NSError(TLExtensions)
+ (id)tl_errorWithDomain:()TLExtensions description:;
- (id)tl_nonRedundantDescription;
@end

@implementation NSError(TLExtensions)

+ (id)tl_errorWithDomain:()TLExtensions description:
{
  v21[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (a4)
  {
    v19 = &a9;
    v12 = MEMORY[0x1E696AEC0];
    v13 = a4;
    v14 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

    if (v14)
    {
      v20 = *MEMORY[0x1E696A578];
      v21[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [self errorWithDomain:v11 code:0 userInfo:{v15, v19}];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)tl_nonRedundantDescription
{
  v2 = [self description];
  userInfo = [self userInfo];
  v4 = *MEMORY[0x1E696A578];
  v5 = [userInfo objectForKey:*MEMORY[0x1E696A578]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@, ", v4, v5];
    v7 = [v2 stringByReplacingOccurrencesOfString:v6 withString:&stru_1F54CFF40];

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", v4, v5];

    v2 = [v7 stringByReplacingOccurrencesOfString:v8 withString:&stru_1F54CFF40];
  }

  return v2;
}

@end