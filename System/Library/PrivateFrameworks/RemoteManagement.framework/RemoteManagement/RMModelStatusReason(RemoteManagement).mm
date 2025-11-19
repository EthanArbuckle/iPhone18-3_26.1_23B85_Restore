@interface RMModelStatusReason(RemoteManagement)
+ (id)reasonWithCode:()RemoteManagement description:details:;
+ (id)reasonWithCode:()RemoteManagement description:underlyingError:;
+ (id)reasonWithError:()RemoteManagement;
- (uint64_t)isEqual:()RemoteManagement;
- (uint64_t)isEqualToStatusReason:()RemoteManagement;
@end

@implementation RMModelStatusReason(RemoteManagement)

+ (id)reasonWithCode:()RemoteManagement description:details:
{
  if (a5)
  {
    v8 = MEMORY[0x1E69C6D90];
    v9 = a4;
    v10 = a3;
    v11 = [v8 buildFromDictionary:a5];
    v12 = [a1 buildWithCode:v10 description:v9 details:v11];
  }

  else
  {
    v10 = a4;
    v11 = a3;
    v12 = [a1 buildWithCode:v11 description:v10 details:0];
  }

  return v12;
}

+ (id)reasonWithCode:()RemoteManagement description:underlyingError:
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (v8)
  {
    v11 = [v8 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A278]];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v16 = [v8 localizedDescription];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [v8 localizedFailureReason];
      }

      v14 = v18;
    }

    v22 = @"Error";
    v23[0] = v14;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v15 = [a1 reasonWithCode:v10 description:v9 details:v19];
  }

  else
  {
    v15 = [a1 reasonWithCode:v10 description:v9 details:0];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)reasonWithError:()RemoteManagement
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"RMErrorUserInfoKeyDescriptionKey"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A278]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [v4 localizedDescription];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v4 localizedFailureReason];
    }

    v10 = v13;
  }

  if ([v6 length])
  {
    v14 = [a1 buildWithCode:v6 description:v10 details:0];
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"An unknown error occurred: %@", v10];
    v16 = MEMORY[0x1E69C6D90];
    v23[0] = @"Domain";
    v17 = [v4 domain];
    v23[1] = @"Code";
    v24[0] = v17;
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "code")}];
    v24[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v20 = [v16 buildFromDictionary:v19];
    v14 = [a1 buildWithCode:@"Error.Unknown" description:v15 details:v20];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

- (uint64_t)isEqual:()RemoteManagement
{
  v4 = a3;
  if (a1 == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 isEqualToStatusReason:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)isEqualToStatusReason:()RemoteManagement
{
  v4 = a3;
  v5 = [a1 statusCode];
  v6 = [v4 statusCode];
  if ([v5 isEqualToString:v6])
  {
    v7 = [a1 statusDescription];
    v8 = [v4 statusDescription];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    v14 = [a1 statusDetails];
    v15 = [v14 dictKeys];
    v16 = [v4 statusDetails];
    v13 = v15;
    v17 = v16;
    v18 = v17;
    if (v13 == v17)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v13 && v17)
      {
        v12 = [v13 isEqual:v17];
      }
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

@end