@interface SSBag
+ (NSMutableDictionary)cache;
+ (SSBag)bagWithProfileConfig:(id)config;
+ (unint64_t)_AMSBagValueTypeFromSSBagValueType:(unint64_t)type;
- (BOOL)URLIsTrusted:(id)trusted;
- (BOOL)canHandleTrustedDomains;
- (BOOL)isExpired;
- (NSDate)expirationDate;
- (SSBagProfileConfig)profileConfig;
- (id)BOOLForKey:(id)key error:(id *)error;
- (id)BOOLPromiseForKey:(id)key;
- (id)URLForKey:(id)key error:(id *)error;
- (id)URLPromiseForKey:(id)key;
- (id)_AMSBag;
- (id)_initWithProfile:(id)profile profileVersion:(id)version;
- (id)arrayForKey:(id)key error:(id *)error;
- (id)arrayPromiseForKey:(id)key;
- (id)description;
- (id)dictionaryForKey:(id)key error:(id *)error;
- (id)dictionaryPromiseForKey:(id)key;
- (id)doubleForKey:(id)key error:(id *)error;
- (id)doublePromiseForKey:(id)key;
- (id)integerForKey:(id)key error:(id *)error;
- (id)integerPromiseForKey:(id)key;
- (id)stringForKey:(id)key error:(id *)error;
- (id)stringPromiseForKey:(id)key;
- (void)BOOLForKey:(id)key withCompletion:(id)completion;
- (void)URLForKey:(id)key withCompletion:(id)completion;
- (void)_bagChanged:(id)changed;
- (void)arrayForKey:(id)key withCompletion:(id)completion;
- (void)dealloc;
- (void)dictionaryForKey:(id)key withCompletion:(id)completion;
- (void)doubleForKey:(id)key withCompletion:(id)completion;
- (void)integerForKey:(id)key withCompletion:(id)completion;
- (void)stringForKey:(id)key withCompletion:(id)completion;
@end

@implementation SSBag

+ (SSBag)bagWithProfileConfig:(id)config
{
  v35 = *MEMORY[0x1E69E9840];
  configCopy = config;
  v29 = objc_alloc_init(MEMORY[0x1E698CA40]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  bagKeys = [configCopy bagKeys];
  v6 = [bagKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(bagKeys);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [configCopy bagKeyForStringRepresentation:v9];
        v11 = v10;
        if (v10)
        {
          v12 = [self _AMSBagValueTypeFromSSBagValueType:{objc_msgSend(v10, "valueType")}];
          defaultValue = [v11 defaultValue];
          [v29 addBagKey:v9 valueType:v12 defaultValue:defaultValue];
        }
      }

      v6 = [bagKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v14 = MEMORY[0x1E698C7E0];
  profile = [configCopy profile];
  profileVersion = [configCopy profileVersion];
  [v14 registerBagKeySet:v29 forProfile:profile profileVersion:profileVersion];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = MEMORY[0x1E696AEC0];
  profile2 = [configCopy profile];
  profileVersion2 = [configCopy profileVersion];
  v21 = [v18 stringWithFormat:@"%@:%@", profile2, profileVersion2];

  cache = [selfCopy cache];
  v23 = [cache objectForKeyedSubscript:v21];

  if (!v23)
  {
    v24 = [selfCopy alloc];
    profile3 = [configCopy profile];
    profileVersion3 = [configCopy profileVersion];
    v23 = [v24 _initWithProfile:profile3 profileVersion:profileVersion3];

    cache2 = [selfCopy cache];
    [cache2 setObject:v23 forKeyedSubscript:v21];
  }

  objc_sync_exit(selfCopy);

  return v23;
}

- (id)_initWithProfile:(id)profile profileVersion:(id)version
{
  profileCopy = profile;
  versionCopy = version;
  v15.receiver = self;
  v15.super_class = SSBag;
  v9 = [(SSBag *)&v15 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, profile);
    objc_storeStrong(p_isa + 2, version);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = *MEMORY[0x1E698C500];
    _AMSBag = [p_isa _AMSBag];
    [defaultCenter addObserver:p_isa selector:sel__bagChanged_ name:v12 object:_AMSBag];
  }

  return p_isa;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SSBag;
  [(SSBag *)&v4 dealloc];
}

+ (NSMutableDictionary)cache
{
  if (cache_ss_once_token___COUNTER__ != -1)
  {
    +[SSBag cache];
  }

  v3 = cache_ss_once_object___COUNTER__;

  return v3;
}

void __14__SSBag_cache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = cache_ss_once_object___COUNTER__;
  cache_ss_once_object___COUNTER__ = v0;
}

- (NSDate)expirationDate
{
  _AMSBag = [(SSBag *)self _AMSBag];
  expirationDate = [_AMSBag expirationDate];

  return expirationDate;
}

- (BOOL)isExpired
{
  _AMSBag = [(SSBag *)self _AMSBag];
  isExpired = [_AMSBag isExpired];

  return isExpired;
}

- (SSBagProfileConfig)profileConfig
{
  v3 = objc_alloc_init(SSMutableBagProfileConfig);
  _AMSBag = [(SSBag *)self _AMSBag];
  profile = [_AMSBag profile];
  [(SSBagProfileConfig *)v3 setProfile:profile];

  _AMSBag2 = [(SSBag *)self _AMSBag];
  profileVersion = [_AMSBag2 profileVersion];
  [(SSBagProfileConfig *)v3 setProfileVersion:profileVersion];

  v8 = [(SSMutableBagProfileConfig *)v3 copy];

  return v8;
}

- (BOOL)URLIsTrusted:(id)trusted
{
  v44 = *MEMORY[0x1E69E9840];
  trustedCopy = trusted;
  scheme = [trustedCopy scheme];
  v6 = [scheme isEqualToString:@"data"];

  if (v6)
  {
    LOBYTE(v7) = 1;
    goto LABEL_35;
  }

  host = [trustedCopy host];
  v9 = objc_alloc_init(SSPromise);
  completionHandlerAdapter = [(SSPromise *)v9 completionHandlerAdapter];
  [(SSBag *)self arrayForKey:@"trustedDomains" withCompletion:completionHandlerAdapter];

  v38 = 0;
  v11 = [(SSPromise *)v9 resultWithError:&v38];
  v12 = v38;
  if (v12)
  {
    v13 = +[SSLogConfig sharedBagCacheConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (!v17)
    {
      goto LABEL_15;
    }

    v33 = v11;
    v18 = objc_opt_class();
    v40 = 138543618;
    v41 = v18;
    v42 = 2114;
    v43 = v12;
    v19 = v18;
    LODWORD(v32) = 22;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v40, v32}];
      free(v7);
      SSFileLog(v13, @"%@", v20, v21, v22, v23, v24, v25, oSLogObject);
      v11 = v33;
LABEL_15:

LABEL_30:
      LOBYTE(v7) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v11;
    v26 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (!v26)
    {
      goto LABEL_30;
    }

    v27 = v26;
    v33 = v11;
    v28 = *v35;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v13);
        }

        v30 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v30 length])
        {
          if ([v30 hasPrefix:@"."])
          {
            if ([host hasSuffix:v30])
            {
              goto LABEL_31;
            }
          }

          else if (![host caseInsensitiveCompare:v30])
          {
LABEL_31:
            LOBYTE(v7) = 1;
            goto LABEL_32;
          }
        }
      }

      v27 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

    LOBYTE(v7) = 0;
  }

LABEL_32:
  v11 = v33;
LABEL_33:

  if (v12)
  {
    LOBYTE(v7) = 0;
  }

LABEL_35:

  return v7;
}

- (void)arrayForKey:(id)key withCompletion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  _AMSBag = [(SSBag *)self _AMSBag];
  v9 = [_AMSBag arrayForKey:keyCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__SSBag_arrayForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEE58;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 valueWithCompletion:v11];
}

uint64_t __36__SSBag_arrayForKey_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)BOOLForKey:(id)key withCompletion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  _AMSBag = [(SSBag *)self _AMSBag];
  v9 = [_AMSBag BOOLForKey:keyCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__SSBag_BOOLForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEE80;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 valueWithCompletion:v11];
}

uint64_t __35__SSBag_BOOLForKey_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)dictionaryForKey:(id)key withCompletion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  _AMSBag = [(SSBag *)self _AMSBag];
  v9 = [_AMSBag dictionaryForKey:keyCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__SSBag_dictionaryForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEEA8;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 valueWithCompletion:v11];
}

uint64_t __41__SSBag_dictionaryForKey_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)doubleForKey:(id)key withCompletion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  _AMSBag = [(SSBag *)self _AMSBag];
  v9 = [_AMSBag doubleForKey:keyCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__SSBag_doubleForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEE80;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 valueWithCompletion:v11];
}

uint64_t __37__SSBag_doubleForKey_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)integerForKey:(id)key withCompletion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  _AMSBag = [(SSBag *)self _AMSBag];
  v9 = [_AMSBag integerForKey:keyCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__SSBag_integerForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEE80;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 valueWithCompletion:v11];
}

uint64_t __38__SSBag_integerForKey_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)stringForKey:(id)key withCompletion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  _AMSBag = [(SSBag *)self _AMSBag];
  v9 = [_AMSBag stringForKey:keyCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__SSBag_stringForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEED0;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 valueWithCompletion:v11];
}

uint64_t __37__SSBag_stringForKey_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)URLForKey:(id)key withCompletion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  _AMSBag = [(SSBag *)self _AMSBag];
  v9 = [_AMSBag URLForKey:keyCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__SSBag_URLForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEEF8;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 valueWithCompletion:v11];
}

uint64_t __34__SSBag_URLForKey_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (id)description
{
  _AMSBag = [(SSBag *)self _AMSBag];
  v3 = [_AMSBag description];

  return v3;
}

- (id)arrayPromiseForKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(SSPromise);
  nilValueCompletionHandlerAdapter = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self arrayForKey:keyCopy withCompletion:nilValueCompletionHandlerAdapter];

  return v5;
}

- (id)BOOLPromiseForKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(SSPromise);
  nilValueCompletionHandlerAdapter = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self BOOLForKey:keyCopy withCompletion:nilValueCompletionHandlerAdapter];

  return v5;
}

- (id)dictionaryPromiseForKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(SSPromise);
  nilValueCompletionHandlerAdapter = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self dictionaryForKey:keyCopy withCompletion:nilValueCompletionHandlerAdapter];

  return v5;
}

- (id)doublePromiseForKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(SSPromise);
  nilValueCompletionHandlerAdapter = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self doubleForKey:keyCopy withCompletion:nilValueCompletionHandlerAdapter];

  return v5;
}

- (id)integerPromiseForKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(SSPromise);
  nilValueCompletionHandlerAdapter = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self integerForKey:keyCopy withCompletion:nilValueCompletionHandlerAdapter];

  return v5;
}

- (id)stringPromiseForKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(SSPromise);
  nilValueCompletionHandlerAdapter = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self stringForKey:keyCopy withCompletion:nilValueCompletionHandlerAdapter];

  return v5;
}

- (id)URLPromiseForKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(SSPromise);
  nilValueCompletionHandlerAdapter = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self URLForKey:keyCopy withCompletion:nilValueCompletionHandlerAdapter];

  return v5;
}

- (id)arrayForKey:(id)key error:(id *)error
{
  v5 = [(SSBag *)self arrayPromiseForKey:key];
  v6 = [v5 resultWithError:error];

  null = [MEMORY[0x1E695DFB0] null];
  if (v6 == null)
  {
    v10 = 0;
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:null2])
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  return v10;
}

- (id)BOOLForKey:(id)key error:(id *)error
{
  v5 = [(SSBag *)self BOOLPromiseForKey:key];
  v6 = [v5 resultWithError:error];

  null = [MEMORY[0x1E695DFB0] null];
  if (v6 == null)
  {
    v10 = 0;
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:null2])
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  return v10;
}

- (id)dictionaryForKey:(id)key error:(id *)error
{
  v5 = [(SSBag *)self dictionaryPromiseForKey:key];
  v6 = [v5 resultWithError:error];

  null = [MEMORY[0x1E695DFB0] null];
  if (v6 == null)
  {
    v10 = 0;
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:null2])
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  return v10;
}

- (id)doubleForKey:(id)key error:(id *)error
{
  v5 = [(SSBag *)self doublePromiseForKey:key];
  v6 = [v5 resultWithError:error];

  null = [MEMORY[0x1E695DFB0] null];
  if (v6 == null)
  {
    v10 = 0;
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:null2])
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  return v10;
}

- (id)integerForKey:(id)key error:(id *)error
{
  v5 = [(SSBag *)self integerPromiseForKey:key];
  v6 = [v5 resultWithError:error];

  null = [MEMORY[0x1E695DFB0] null];
  if (v6 == null)
  {
    v10 = 0;
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:null2])
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  return v10;
}

- (id)stringForKey:(id)key error:(id *)error
{
  v5 = [(SSBag *)self stringPromiseForKey:key];
  v6 = [v5 resultWithError:error];

  null = [MEMORY[0x1E695DFB0] null];
  if (v6 == null)
  {
    v10 = 0;
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:null2])
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  return v10;
}

- (id)URLForKey:(id)key error:(id *)error
{
  v5 = [(SSBag *)self URLPromiseForKey:key];
  v6 = [v5 resultWithError:error];

  null = [MEMORY[0x1E695DFB0] null];
  if (v6 == null)
  {
    v10 = 0;
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:null2])
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  return v10;
}

- (BOOL)canHandleTrustedDomains
{
  v3 = objc_alloc_init(SSPromise);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__SSBag_canHandleTrustedDomains__block_invoke;
  v10[3] = &unk_1E84AEF20;
  v4 = v3;
  v11 = v4;
  [(SSBag *)self arrayForKey:@"trustedDomains" withCompletion:v10];
  v9 = 0;
  v5 = [(SSPromise *)v4 resultWithError:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 count] != 0;
  }

  return v7;
}

uint64_t __32__SSBag_canHandleTrustedDomains__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return [v3 finishWithResult:v5];
}

- (id)_AMSBag
{
  v3 = MEMORY[0x1E698C7D8];
  profile = [(SSBag *)self profile];
  profileVersion = [(SSBag *)self profileVersion];
  v6 = [v3 bagForProfile:profile profileVersion:profileVersion];

  return v6;
}

+ (unint64_t)_AMSBagValueTypeFromSSBagValueType:(unint64_t)type
{
  if (type - 1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_1D4B38E80[type - 1];
  }
}

- (void)_bagChanged:(id)changed
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SSBagChangedNotification" object:self];
}

@end