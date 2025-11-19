@interface SSBag
+ (NSMutableDictionary)cache;
+ (SSBag)bagWithProfileConfig:(id)a3;
+ (unint64_t)_AMSBagValueTypeFromSSBagValueType:(unint64_t)a3;
- (BOOL)URLIsTrusted:(id)a3;
- (BOOL)canHandleTrustedDomains;
- (BOOL)isExpired;
- (NSDate)expirationDate;
- (SSBagProfileConfig)profileConfig;
- (id)BOOLForKey:(id)a3 error:(id *)a4;
- (id)BOOLPromiseForKey:(id)a3;
- (id)URLForKey:(id)a3 error:(id *)a4;
- (id)URLPromiseForKey:(id)a3;
- (id)_AMSBag;
- (id)_initWithProfile:(id)a3 profileVersion:(id)a4;
- (id)arrayForKey:(id)a3 error:(id *)a4;
- (id)arrayPromiseForKey:(id)a3;
- (id)description;
- (id)dictionaryForKey:(id)a3 error:(id *)a4;
- (id)dictionaryPromiseForKey:(id)a3;
- (id)doubleForKey:(id)a3 error:(id *)a4;
- (id)doublePromiseForKey:(id)a3;
- (id)integerForKey:(id)a3 error:(id *)a4;
- (id)integerPromiseForKey:(id)a3;
- (id)stringForKey:(id)a3 error:(id *)a4;
- (id)stringPromiseForKey:(id)a3;
- (void)BOOLForKey:(id)a3 withCompletion:(id)a4;
- (void)URLForKey:(id)a3 withCompletion:(id)a4;
- (void)_bagChanged:(id)a3;
- (void)arrayForKey:(id)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)dictionaryForKey:(id)a3 withCompletion:(id)a4;
- (void)doubleForKey:(id)a3 withCompletion:(id)a4;
- (void)integerForKey:(id)a3 withCompletion:(id)a4;
- (void)stringForKey:(id)a3 withCompletion:(id)a4;
@end

@implementation SSBag

+ (SSBag)bagWithProfileConfig:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = objc_alloc_init(MEMORY[0x1E698CA40]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [v4 bagKeys];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v4 bagKeyForStringRepresentation:v9];
        v11 = v10;
        if (v10)
        {
          v12 = [a1 _AMSBagValueTypeFromSSBagValueType:{objc_msgSend(v10, "valueType")}];
          v13 = [v11 defaultValue];
          [v29 addBagKey:v9 valueType:v12 defaultValue:v13];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v14 = MEMORY[0x1E698C7E0];
  v15 = [v4 profile];
  v16 = [v4 profileVersion];
  [v14 registerBagKeySet:v29 forProfile:v15 profileVersion:v16];

  v17 = a1;
  objc_sync_enter(v17);
  v18 = MEMORY[0x1E696AEC0];
  v19 = [v4 profile];
  v20 = [v4 profileVersion];
  v21 = [v18 stringWithFormat:@"%@:%@", v19, v20];

  v22 = [v17 cache];
  v23 = [v22 objectForKeyedSubscript:v21];

  if (!v23)
  {
    v24 = [v17 alloc];
    v25 = [v4 profile];
    v26 = [v4 profileVersion];
    v23 = [v24 _initWithProfile:v25 profileVersion:v26];

    v27 = [v17 cache];
    [v27 setObject:v23 forKeyedSubscript:v21];
  }

  objc_sync_exit(v17);

  return v23;
}

- (id)_initWithProfile:(id)a3 profileVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SSBag;
  v9 = [(SSBag *)&v15 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, a3);
    objc_storeStrong(p_isa + 2, a4);
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = *MEMORY[0x1E698C500];
    v13 = [p_isa _AMSBag];
    [v11 addObserver:p_isa selector:sel__bagChanged_ name:v12 object:v13];
  }

  return p_isa;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v2 = [(SSBag *)self _AMSBag];
  v3 = [v2 expirationDate];

  return v3;
}

- (BOOL)isExpired
{
  v2 = [(SSBag *)self _AMSBag];
  v3 = [v2 isExpired];

  return v3;
}

- (SSBagProfileConfig)profileConfig
{
  v3 = objc_alloc_init(SSMutableBagProfileConfig);
  v4 = [(SSBag *)self _AMSBag];
  v5 = [v4 profile];
  [(SSBagProfileConfig *)v3 setProfile:v5];

  v6 = [(SSBag *)self _AMSBag];
  v7 = [v6 profileVersion];
  [(SSBagProfileConfig *)v3 setProfileVersion:v7];

  v8 = [(SSMutableBagProfileConfig *)v3 copy];

  return v8;
}

- (BOOL)URLIsTrusted:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 scheme];
  v6 = [v5 isEqualToString:@"data"];

  if (v6)
  {
    LOBYTE(v7) = 1;
    goto LABEL_35;
  }

  v8 = [v4 host];
  v9 = objc_alloc_init(SSPromise);
  v10 = [(SSPromise *)v9 completionHandlerAdapter];
  [(SSBag *)self arrayForKey:@"trustedDomains" withCompletion:v10];

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

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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
      v16 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v40, v32}];
      free(v7);
      SSFileLog(v13, @"%@", v20, v21, v22, v23, v24, v25, v16);
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
            if ([v8 hasSuffix:v30])
            {
              goto LABEL_31;
            }
          }

          else if (![v8 caseInsensitiveCompare:v30])
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

- (void)arrayForKey:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSBag *)self _AMSBag];
  v9 = [v8 arrayForKey:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__SSBag_arrayForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEE58;
  v12 = v6;
  v10 = v6;
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

- (void)BOOLForKey:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSBag *)self _AMSBag];
  v9 = [v8 BOOLForKey:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__SSBag_BOOLForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEE80;
  v12 = v6;
  v10 = v6;
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

- (void)dictionaryForKey:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSBag *)self _AMSBag];
  v9 = [v8 dictionaryForKey:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__SSBag_dictionaryForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEEA8;
  v12 = v6;
  v10 = v6;
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

- (void)doubleForKey:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSBag *)self _AMSBag];
  v9 = [v8 doubleForKey:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__SSBag_doubleForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEE80;
  v12 = v6;
  v10 = v6;
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

- (void)integerForKey:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSBag *)self _AMSBag];
  v9 = [v8 integerForKey:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__SSBag_integerForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEE80;
  v12 = v6;
  v10 = v6;
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

- (void)stringForKey:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSBag *)self _AMSBag];
  v9 = [v8 stringForKey:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__SSBag_stringForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEED0;
  v12 = v6;
  v10 = v6;
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

- (void)URLForKey:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSBag *)self _AMSBag];
  v9 = [v8 URLForKey:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__SSBag_URLForKey_withCompletion___block_invoke;
  v11[3] = &unk_1E84AEEF8;
  v12 = v6;
  v10 = v6;
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
  v2 = [(SSBag *)self _AMSBag];
  v3 = [v2 description];

  return v3;
}

- (id)arrayPromiseForKey:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SSPromise);
  v6 = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self arrayForKey:v4 withCompletion:v6];

  return v5;
}

- (id)BOOLPromiseForKey:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SSPromise);
  v6 = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self BOOLForKey:v4 withCompletion:v6];

  return v5;
}

- (id)dictionaryPromiseForKey:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SSPromise);
  v6 = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self dictionaryForKey:v4 withCompletion:v6];

  return v5;
}

- (id)doublePromiseForKey:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SSPromise);
  v6 = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self doubleForKey:v4 withCompletion:v6];

  return v5;
}

- (id)integerPromiseForKey:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SSPromise);
  v6 = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self integerForKey:v4 withCompletion:v6];

  return v5;
}

- (id)stringPromiseForKey:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SSPromise);
  v6 = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self stringForKey:v4 withCompletion:v6];

  return v5;
}

- (id)URLPromiseForKey:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SSPromise);
  v6 = [(SSPromise *)v5 nilValueCompletionHandlerAdapter];
  [(SSBag *)self URLForKey:v4 withCompletion:v6];

  return v5;
}

- (id)arrayForKey:(id)a3 error:(id *)a4
{
  v5 = [(SSBag *)self arrayPromiseForKey:a3];
  v6 = [v5 resultWithError:a4];

  v7 = [MEMORY[0x1E695DFB0] null];
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:v8])
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

- (id)BOOLForKey:(id)a3 error:(id *)a4
{
  v5 = [(SSBag *)self BOOLPromiseForKey:a3];
  v6 = [v5 resultWithError:a4];

  v7 = [MEMORY[0x1E695DFB0] null];
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:v8])
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

- (id)dictionaryForKey:(id)a3 error:(id *)a4
{
  v5 = [(SSBag *)self dictionaryPromiseForKey:a3];
  v6 = [v5 resultWithError:a4];

  v7 = [MEMORY[0x1E695DFB0] null];
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:v8])
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

- (id)doubleForKey:(id)a3 error:(id *)a4
{
  v5 = [(SSBag *)self doublePromiseForKey:a3];
  v6 = [v5 resultWithError:a4];

  v7 = [MEMORY[0x1E695DFB0] null];
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:v8])
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

- (id)integerForKey:(id)a3 error:(id *)a4
{
  v5 = [(SSBag *)self integerPromiseForKey:a3];
  v6 = [v5 resultWithError:a4];

  v7 = [MEMORY[0x1E695DFB0] null];
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:v8])
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

- (id)stringForKey:(id)a3 error:(id *)a4
{
  v5 = [(SSBag *)self stringPromiseForKey:a3];
  v6 = [v5 resultWithError:a4];

  v7 = [MEMORY[0x1E695DFB0] null];
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:v8])
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

- (id)URLForKey:(id)a3 error:(id *)a4
{
  v5 = [(SSBag *)self URLPromiseForKey:a3];
  v6 = [v5 resultWithError:a4];

  v7 = [MEMORY[0x1E695DFB0] null];
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    if ([v6 isEqual:v8])
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
  v4 = [(SSBag *)self profile];
  v5 = [(SSBag *)self profileVersion];
  v6 = [v3 bagForProfile:v4 profileVersion:v5];

  return v6;
}

+ (unint64_t)_AMSBagValueTypeFromSSBagValueType:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_1D4B38E80[a3 - 1];
  }
}

- (void)_bagChanged:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"SSBagChangedNotification" object:self];
}

@end