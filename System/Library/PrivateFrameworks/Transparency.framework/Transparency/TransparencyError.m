@interface TransparencyError
+ (BOOL)hasUnknownSPKIHashError:(id)a3;
+ (id)diagnosticError:(id)a3 depth:(unint64_t)a4;
+ (id)diagnosticUserInfo:(id)a3 depth:(unint64_t)a4;
+ (id)diagnosticUserInfoValue:(id)a3 depth:(unint64_t)a4;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 errorLevel:(unint64_t)a5 underlyingError:(id)a6 description:(id)a7;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 errorLevel:(unint64_t)a5 underlyingError:(id)a6 userinfo:(id)a7 description:(id)a8;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 errorLevel:(unint64_t)a5 underlyingError:(id)a6 userinfo:(id)a7 description:(id)a8 arguments:(char *)a9;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 description:(id)a6;
+ (id)errorWithError:(id)a3 underlyingError:(id)a4;
+ (id)truncateUnderlyingErrorDepth:(id)a3 maxDepth:(unint64_t)a4;
@end

@implementation TransparencyError

+ (id)truncateUnderlyingErrorDepth:(id)a3 maxDepth:(unint64_t)a4
{
  v5 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (a4)
    {
      v6 = [v5 userInfo];
      v7 = *MEMORY[0x1E696AA08];
      v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
      v9 = [TransparencyError truncateUnderlyingErrorDepth:v8 maxDepth:a4 - 1];

      v10 = MEMORY[0x1E695DF90];
      v11 = [v5 userInfo];
      v12 = [v10 dictionaryWithDictionary:v11];

      [v12 setObject:v9 forKeyedSubscript:v7];
      v13 = MEMORY[0x1E696ABC0];
      v14 = [v5 domain];
      v15 = [v13 errorWithDomain:v14 code:objc_msgSend(v5 userInfo:{"code"), v12}];
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v9 = [v5 domain];
      v15 = [v16 errorWithDomain:v9 code:objc_msgSend(v5 userInfo:{"code"), 0}];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 errorLevel:(unint64_t)a5 underlyingError:(id)a6 userinfo:(id)a7 description:(id)a8 arguments:(char *)a9
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (v16)
  {
    v18 = [v16 mutableCopy];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
  }

  v19 = v18;
  if (v15)
  {
    v20 = [TransparencyError truncateUnderlyingErrorDepth:v15 maxDepth:10];
    [v19 setObject:v20 forKey:*MEMORY[0x1E696AA08]];
  }

  if (v17)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v17 arguments:a9];
    [v19 setObject:v21 forKey:*MEMORY[0x1E696A578]];
  }

  v22 = [MEMORY[0x1E696ABC0] errorWithDomain:v14 code:a4 userInfo:v19];
  if (a5 == 6)
  {
    v23 = 1;
  }

  else
  {
    if (a5 != 5)
    {
      goto LABEL_13;
    }

    v23 = 0;
  }

  v24 = +[TransparencyAnalytics logger];
  [v24 logResultForEvent:@"errorEvent" hardFailure:v23 result:v22];

LABEL_13:

  return v22;
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 errorLevel:(unint64_t)a5 underlyingError:(id)a6 userinfo:(id)a7 description:(id)a8
{
  v8 = [TransparencyError errorWithDomain:a3 code:a4 errorLevel:a5 underlyingError:a6 userinfo:a7 description:a8 arguments:&v11, &v11];

  return v8;
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 errorLevel:(unint64_t)a5 underlyingError:(id)a6 description:(id)a7
{
  v7 = [TransparencyError errorWithDomain:a3 code:a4 errorLevel:a5 underlyingError:a6 description:a7 arguments:&v10];

  return v7;
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 description:(id)a6
{
  v6 = [TransparencyError errorWithDomain:a3 code:a4 errorLevel:4 underlyingError:a5 description:a6 arguments:&v9];

  return v6;
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5
{
  v5 = [TransparencyError errorWithDomain:a3 code:a4 errorLevel:4 underlyingError:0 description:a5 arguments:&v8];

  return v5;
}

+ (BOOL)hasUnknownSPKIHashError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    LOBYTE(v7) = 0;
    goto LABEL_18;
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:@"TransparencyErrorVerify"])
  {

LABEL_7:
    v8 = [v4 userInfo];
    v9 = v8;
    if (v8)
    {
      v10 = *MEMORY[0x1E696AA08];
      v7 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      if (v7)
      {
        v11 = [v9 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 domain];
          if ([v12 isEqualToString:@"TransparencyErrorVerify"])
          {
            v13 = [v11 code];

            if (v13 == -9)
            {
              LOBYTE(v7) = 1;
LABEL_16:

              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        LOBYTE(v7) = 0;
        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  v6 = [v4 code];

  if (v6 != -9)
  {
    goto LABEL_7;
  }

  LOBYTE(v7) = 1;
LABEL_18:

  return v7;
}

+ (id)errorWithError:(id)a3 underlyingError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 userInfo];
    v9 = *MEMORY[0x1E696AA08];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v11 = [v5 domain];
    v12 = [v5 code];
    if (v10)
    {
      v13 = [v5 userInfo];
      v14 = [v13 objectForKeyedSubscript:v9];
      v15 = [TransparencyError errorWithError:v14 underlyingError:v7];
      v16 = [TransparencyError errorWithDomain:v11 code:v12 underlyingError:v15 description:0];
    }

    else
    {
      v16 = [TransparencyError errorWithDomain:v11 code:v12 underlyingError:v7 description:0];
    }
  }

  else
  {
    v16 = v6;
  }

  return v16;
}

+ (id)diagnosticUserInfoValue:(id)a3 depth:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = 0;
  if (v6 && a4 <= 5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = v6;
LABEL_6:
      v7 = v8;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x1E695DF70] array];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [a1 diagnosticUserInfoValue:*(*(&v17 + 1) + 8 * i) depth:{a4 + 1, v17}];
            if (v16)
            {
              [(__CFString *)v7 addObject:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [a1 diagnosticUserInfo:v6 depth:a4 + 1];
        goto LABEL_6;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [a1 diagnosticError:v6 depth:a4 + 1];
        goto LABEL_6;
      }

      if (objc_opt_respondsToSelector())
      {
        v8 = [v6 description];
        goto LABEL_6;
      }

      v7 = @"unknown";
    }
  }

LABEL_7:

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)diagnosticUserInfo:(id)a3 depth:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 <= 5)
  {
    v7 = a4;
    v18 = [MEMORY[0x1E695DF90] dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v8 objectForKeyedSubscript:v13];
            v15 = [a1 diagnosticUserInfoValue:v14 depth:v7 + 1];
            [v18 setObject:v15 forKeyedSubscript:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v18 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)diagnosticError:(id)a3 depth:(unint64_t)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 <= 5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15[0] = @"domain";
    v7 = [v6 domain];
    v15[1] = @"code";
    v16[0] = v7;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "code")}];
    v16[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v10 = [v9 mutableCopy];

    v11 = [v6 userInfo];
    v12 = [a1 diagnosticUserInfo:v11 depth:a4 + 1];
    [v10 setObject:v12 forKeyedSubscript:@"userInfo"];
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

@end