@interface ICAMSBagAdapter
+ (BOOL)_value:(id)a3 matchesExpectedType:(unint64_t)a4;
+ (id)_valueForBagKey:(id)a3 valueType:(unint64_t)a4 fromURLBag:(id)a5 urlBagLoadingError:(id)a6 valueRetrievingError:(id *)a7;
+ (id)_valueFromICURLBag:(id)a3 forKeyPath:(id)a4 valueType:(unint64_t)a5;
- (BOOL)isExpired;
- (ICAMSBagAdapter)initWithRequestContext:(id)a3;
- (NSDate)expirationDate;
- (NSString)profile;
- (NSString)profileVersion;
- (id)_bagValueForKey:(id)a3 valueType:(unint64_t)a4;
- (void)_didFinishLoadingBag:(id)a3 error:(id)a4;
- (void)createSnapshotWithCompletion:(id)a3;
@end

@implementation ICAMSBagAdapter

- (void)_didFinishLoadingBag:(id)a3 error:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_urlBag, a3);
  objc_storeStrong(&self->_urlBagLoadingError, a4);
  v9 = [(NSMutableArray *)self->_pendingBagValuePromises copy];
  pendingBagValuePromises = self->_pendingBagValuePromises;
  self->_pendingBagValuePromises = 0;

  os_unfair_lock_unlock(&self->_lock);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = objc_opt_class();
        v17 = [v15 bagKey];
        v18 = [v15 bagValueType];
        v22 = 0;
        v19 = [v16 _valueForBagKey:v17 valueType:v18 fromURLBag:v7 urlBagLoadingError:v8 valueRetrievingError:&v22];
        v20 = v22;

        if (v20)
        {
          [v15 finishWithError:v20];
        }

        else
        {
          [v15 finishWithResult:v19];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }
}

- (id)_bagValueForKey:(id)a3 valueType:(unint64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (*&self->_urlBag == 0)
  {
    if (!self->_pendingBagValuePromises)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      pendingBagValuePromises = self->_pendingBagValuePromises;
      self->_pendingBagValuePromises = v14;
    }

    v11 = [[ICAMSBagValuePromise alloc] initWithBagKey:v6 bagValueType:a4];
    [(NSMutableArray *)self->_pendingBagValuePromises addObject:v11];
    if ([(NSMutableArray *)self->_pendingBagValuePromises count]== 1)
    {
      v16 = +[ICURLBagProvider sharedBagProvider];
      requestContext = self->_requestContext;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __45__ICAMSBagAdapter__bagValueForKey_valueType___block_invoke;
      v18[3] = &unk_1E7BFA500;
      v18[4] = self;
      [v16 getBagForRequestContext:requestContext withCompletionHandler:v18];
    }

    v12 = [MEMORY[0x1E698C7E8] bagValueWithKey:v6 valueType:a4 valuePromise:v11];
  }

  else
  {
    v7 = objc_opt_class();
    urlBag = self->_urlBag;
    urlBagLoadingError = self->_urlBagLoadingError;
    v19 = 0;
    v10 = [v7 _valueForBagKey:v6 valueType:a4 fromURLBag:urlBag urlBagLoadingError:urlBagLoadingError valueRetrievingError:&v19];
    v11 = v19;
    if (v11)
    {
      [MEMORY[0x1E698C7E8] failingBagValueWithKey:v6 valueType:a4 error:v11];
    }

    else
    {
      [MEMORY[0x1E698C7E8] frozenBagValueWithKey:v6 value:v10 valueType:a4];
    }
    v12 = ;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__ICAMSBagAdapter_createSnapshotWithCompletion___block_invoke;
  v12[3] = &unk_1E7BF9EC8;
  v12[4] = self;
  v5 = v4;
  v13 = v5;
  v6 = MEMORY[0x1B8C781E0](v12);
  v7 = v6;
  if (*&self->_urlBag == 0)
  {
    v8 = +[ICURLBagProvider sharedBagProvider];
    requestContext = self->_requestContext;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__ICAMSBagAdapter_createSnapshotWithCompletion___block_invoke_3;
    v10[3] = &unk_1E7BF68D8;
    v10[4] = self;
    v11 = v7;
    [v8 getBagForRequestContext:requestContext withCompletionHandler:v10];
  }

  else
  {
    (*(v6 + 16))(v6);
  }
}

void __48__ICAMSBagAdapter_createSnapshotWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __48__ICAMSBagAdapter_createSnapshotWithCompletion___block_invoke_2;
    v3[3] = &unk_1E7BF4EC0;
    v4 = *(a1 + 40);
    [v1 createAMSSnapshotBagWithCompletion:v3];
  }

  else
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }
}

uint64_t __48__ICAMSBagAdapter_createSnapshotWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _didFinishLoadingBag:a2 error:a3];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (NSString)profileVersion
{
  v2 = [(ICRequestContext *)self->_requestContext clientInfo];
  v3 = [v2 bagProfileVersion];

  return v3;
}

- (NSString)profile
{
  v2 = [(ICRequestContext *)self->_requestContext clientInfo];
  v3 = [v2 bagProfile];

  return v3;
}

- (NSDate)expirationDate
{
  os_unfair_lock_lock(&self->_lock);
  urlBag = self->_urlBag;
  if (urlBag)
  {
    v4 = [(ICURLBag *)urlBag expirationDate];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)isExpired
{
  os_unfair_lock_lock(&self->_lock);
  urlBag = self->_urlBag;
  if (urlBag)
  {
    v4 = [(ICURLBag *)urlBag isExpired];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (ICAMSBagAdapter)initWithRequestContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICAMSBagAdapter;
  v6 = [(ICAMSBagAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_requestContext, a3);
  }

  return v7;
}

+ (BOOL)_value:(id)a3 matchesExpectedType:(unint64_t)a4
{
  v5 = a3;
  v6 = 0;
  if (a4 > 3)
  {
    switch(a4)
    {
      case 4uLL:
        isKindOfClass = _NSIsNSString();
        goto LABEL_12;
      case 5uLL:
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        goto LABEL_12;
      case 6uLL:
        isKindOfClass = _NSIsNSDictionary();
        goto LABEL_12;
    }
  }

  else
  {
    if (a4 - 1 < 3)
    {
      isKindOfClass = _NSIsNSNumber();
LABEL_12:
      v6 = isKindOfClass;
      goto LABEL_13;
    }

    if (!a4)
    {
      isKindOfClass = _NSIsNSArray();
      goto LABEL_12;
    }
  }

LABEL_13:

  return v6 & 1;
}

+ (id)_valueFromICURLBag:(id)a3 forKeyPath:(id)a4 valueType:(unint64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 componentsSeparatedByString:@"/"];
  v11 = [v10 objectAtIndexedSubscript:0];
  if (v11)
  {
    v12 = v11;
    if ([v10 count] != 1)
    {
      v16 = [v8 dictionaryForBagKey:v12];
      if ([v10 count] < 2)
      {
        v13 = 0;
        goto LABEL_27;
      }

      v24 = a1;
      v13 = 0;
      v17 = 1;
      while (1)
      {
        v18 = v12;
        v19 = v16;
        v12 = [v10 objectAtIndexedSubscript:v17];

        v16 = [v16 objectForKeyedSubscript:v12];

        if (v17 == [v10 count] - 1)
        {
          v20 = v16;

          v13 = v20;
        }

        else if (!v16 || (_NSIsNSDictionary() & 1) == 0)
        {
          v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v26 = v24;
            v27 = 2114;
            v28 = v9;
            _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Encountered missing bag value at key path %{public}@", buf, 0x16u);
          }

LABEL_27:
LABEL_28:
          if (a5 == 5 && v13 && _NSIsNSString())
          {
            v22 = [MEMORY[0x1E695DFF8] URLWithString:v13];

            v13 = v22;
          }

          goto LABEL_34;
        }

        if (++v17 >= [v10 count])
        {
          goto LABEL_27;
        }
      }
    }

    v13 = 0;
    if (a5 <= 2)
    {
      if (!a5)
      {
        v14 = [v8 arrayForBagKey:v12];
        goto LABEL_33;
      }

      if (a5 != 1 && a5 != 2)
      {
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    if (a5 <= 4)
    {
      if (a5 != 3)
      {
        v14 = [v8 stringForBagKey:v12];
LABEL_33:
        v13 = v14;
        goto LABEL_34;
      }

LABEL_20:
      v14 = [v8 numberForBagKey:v12];
      goto LABEL_33;
    }

    if (a5 == 5)
    {
      v13 = [v8 urlForBagKey:v12];
      goto LABEL_28;
    }

    if (a5 == 6)
    {
      v14 = [v8 dictionaryForBagKey:v12];
      goto LABEL_33;
    }

LABEL_34:
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_valueForBagKey:(id)a3 valueType:(unint64_t)a4 fromURLBag:(id)a5 urlBagLoadingError:(id)a6 valueRetrievingError:(id *)a7
{
  v30[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v13)
  {
    v16 = [a1 _valueFromICURLBag:v13 forKeyPath:v12 valueType:a4];
    if (!v16)
    {
      v24 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A278];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No value for bag key '%@'", v12];
      v30[0] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v21 = v24;
      v22 = -7201;
      goto LABEL_8;
    }

    v17 = v16;
    if (([a1 _value:v16 matchesExpectedType:a4] & 1) == 0)
    {

      v18 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A278];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"value for bag key '%@' is unexpected type '%@'", v12, objc_opt_class()];
      v28 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v21 = v18;
      v22 = -7202;
LABEL_8:
      v23 = [v21 errorWithDomain:@"ICError" code:v22 userInfo:v20];

LABEL_9:
      v17 = 0;
      if (!a7)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v14)
    {
      v23 = v14;
      goto LABEL_9;
    }

    v17 = 0;
  }

  v23 = 0;
  if (a7)
  {
LABEL_10:
    v25 = v23;
    *a7 = v23;
  }

LABEL_11:

  return v17;
}

@end