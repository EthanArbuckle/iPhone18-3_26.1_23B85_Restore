@interface TransparencyError
+ (BOOL)hasUnknownSPKIHashError:(id)error;
+ (id)diagnosticError:(id)error depth:(unint64_t)depth;
+ (id)diagnosticUserInfo:(id)info depth:(unint64_t)depth;
+ (id)diagnosticUserInfoValue:(id)value depth:(unint64_t)depth;
+ (id)errorWithDomain:(id)domain code:(int64_t)code description:(id)description;
+ (id)errorWithDomain:(id)domain code:(int64_t)code errorLevel:(unint64_t)level underlyingError:(id)error description:(id)description;
+ (id)errorWithDomain:(id)domain code:(int64_t)code errorLevel:(unint64_t)level underlyingError:(id)error userinfo:(id)userinfo description:(id)description;
+ (id)errorWithDomain:(id)domain code:(int64_t)code errorLevel:(unint64_t)level underlyingError:(id)error userinfo:(id)userinfo description:(id)description arguments:(char *)arguments;
+ (id)errorWithDomain:(id)domain code:(int64_t)code underlyingError:(id)error description:(id)description;
+ (id)errorWithError:(id)error underlyingError:(id)underlyingError;
+ (id)truncateUnderlyingErrorDepth:(id)depth maxDepth:(unint64_t)maxDepth;
@end

@implementation TransparencyError

+ (id)truncateUnderlyingErrorDepth:(id)depth maxDepth:(unint64_t)maxDepth
{
  depthCopy = depth;
  if (depthCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (maxDepth)
    {
      userInfo = [depthCopy userInfo];
      v7 = *MEMORY[0x1E696AA08];
      v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
      domain2 = [TransparencyError truncateUnderlyingErrorDepth:v8 maxDepth:maxDepth - 1];

      v10 = MEMORY[0x1E695DF90];
      userInfo2 = [depthCopy userInfo];
      v12 = [v10 dictionaryWithDictionary:userInfo2];

      [v12 setObject:domain2 forKeyedSubscript:v7];
      v13 = MEMORY[0x1E696ABC0];
      domain = [depthCopy domain];
      v15 = [v13 errorWithDomain:domain code:objc_msgSend(depthCopy userInfo:{"code"), v12}];
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      domain2 = [depthCopy domain];
      v15 = [v16 errorWithDomain:domain2 code:objc_msgSend(depthCopy userInfo:{"code"), 0}];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code errorLevel:(unint64_t)level underlyingError:(id)error userinfo:(id)userinfo description:(id)description arguments:(char *)arguments
{
  domainCopy = domain;
  errorCopy = error;
  userinfoCopy = userinfo;
  descriptionCopy = description;
  if (userinfoCopy)
  {
    dictionary = [userinfoCopy mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v19 = dictionary;
  if (errorCopy)
  {
    v20 = [TransparencyError truncateUnderlyingErrorDepth:errorCopy maxDepth:10];
    [v19 setObject:v20 forKey:*MEMORY[0x1E696AA08]];
  }

  if (descriptionCopy)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:descriptionCopy arguments:arguments];
    [v19 setObject:v21 forKey:*MEMORY[0x1E696A578]];
  }

  v22 = [MEMORY[0x1E696ABC0] errorWithDomain:domainCopy code:code userInfo:v19];
  if (level == 6)
  {
    v23 = 1;
  }

  else
  {
    if (level != 5)
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

+ (id)errorWithDomain:(id)domain code:(int64_t)code errorLevel:(unint64_t)level underlyingError:(id)error userinfo:(id)userinfo description:(id)description
{
  v8 = [TransparencyError errorWithDomain:domain code:code errorLevel:level underlyingError:error userinfo:userinfo description:description arguments:&v11, &v11];

  return v8;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code errorLevel:(unint64_t)level underlyingError:(id)error description:(id)description
{
  v7 = [TransparencyError errorWithDomain:domain code:code errorLevel:level underlyingError:error description:description arguments:&v10];

  return v7;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code underlyingError:(id)error description:(id)description
{
  v6 = [TransparencyError errorWithDomain:domain code:code errorLevel:4 underlyingError:error description:description arguments:&v9];

  return v6;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code description:(id)description
{
  v5 = [TransparencyError errorWithDomain:domain code:code errorLevel:4 underlyingError:0 description:description arguments:&v8];

  return v5;
}

+ (BOOL)hasUnknownSPKIHashError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    LOBYTE(v7) = 0;
    goto LABEL_18;
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:@"TransparencyErrorVerify"])
  {

LABEL_7:
    userInfo = [v4 userInfo];
    v9 = userInfo;
    if (userInfo)
    {
      v10 = *MEMORY[0x1E696AA08];
      v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      if (v7)
      {
        v11 = [v9 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          domain2 = [v11 domain];
          if ([domain2 isEqualToString:@"TransparencyErrorVerify"])
          {
            code = [v11 code];

            if (code == -9)
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

  code2 = [v4 code];

  if (code2 != -9)
  {
    goto LABEL_7;
  }

  LOBYTE(v7) = 1;
LABEL_18:

  return v7;
}

+ (id)errorWithError:(id)error underlyingError:(id)underlyingError
{
  errorCopy = error;
  underlyingErrorCopy = underlyingError;
  v7 = underlyingErrorCopy;
  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];
    v9 = *MEMORY[0x1E696AA08];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    domain = [errorCopy domain];
    code = [errorCopy code];
    if (v10)
    {
      userInfo2 = [errorCopy userInfo];
      v14 = [userInfo2 objectForKeyedSubscript:v9];
      v15 = [TransparencyError errorWithError:v14 underlyingError:v7];
      v16 = [TransparencyError errorWithDomain:domain code:code underlyingError:v15 description:0];
    }

    else
    {
      v16 = [TransparencyError errorWithDomain:domain code:code underlyingError:v7 description:0];
    }
  }

  else
  {
    v16 = underlyingErrorCopy;
  }

  return v16;
}

+ (id)diagnosticUserInfoValue:(id)value depth:(unint64_t)depth
{
  v22 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  array = 0;
  if (valueCopy && depth <= 5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = valueCopy;
LABEL_6:
      array = v8;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      array = [MEMORY[0x1E695DF70] array];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = valueCopy;
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

            v16 = [self diagnosticUserInfoValue:*(*(&v17 + 1) + 8 * i) depth:{depth + 1, v17}];
            if (v16)
            {
              [(__CFString *)array addObject:v16];
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
        v8 = [self diagnosticUserInfo:valueCopy depth:depth + 1];
        goto LABEL_6;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [self diagnosticError:valueCopy depth:depth + 1];
        goto LABEL_6;
      }

      if (objc_opt_respondsToSelector())
      {
        v8 = [valueCopy description];
        goto LABEL_6;
      }

      array = @"unknown";
    }
  }

LABEL_7:

  v9 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)diagnosticUserInfo:(id)info depth:(unint64_t)depth
{
  v24 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (depth <= 5)
  {
    depthCopy = depth;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = infoCopy;
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
            v15 = [self diagnosticUserInfoValue:v14 depth:depthCopy + 1];
            [dictionary setObject:v15 forKeyedSubscript:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  else
  {
    dictionary = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (id)diagnosticError:(id)error depth:(unint64_t)depth
{
  v16[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (depth <= 5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15[0] = @"domain";
    domain = [errorCopy domain];
    v15[1] = @"code";
    v16[0] = domain;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    v16[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v10 = [v9 mutableCopy];

    userInfo = [errorCopy userInfo];
    v12 = [self diagnosticUserInfo:userInfo depth:depth + 1];
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