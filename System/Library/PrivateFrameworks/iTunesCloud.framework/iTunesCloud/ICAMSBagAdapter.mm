@interface ICAMSBagAdapter
+ (BOOL)_value:(id)_value matchesExpectedType:(unint64_t)type;
+ (id)_valueForBagKey:(id)key valueType:(unint64_t)type fromURLBag:(id)bag urlBagLoadingError:(id)error valueRetrievingError:(id *)retrievingError;
+ (id)_valueFromICURLBag:(id)bag forKeyPath:(id)path valueType:(unint64_t)type;
- (BOOL)isExpired;
- (ICAMSBagAdapter)initWithRequestContext:(id)context;
- (NSDate)expirationDate;
- (NSString)profile;
- (NSString)profileVersion;
- (id)_bagValueForKey:(id)key valueType:(unint64_t)type;
- (void)_didFinishLoadingBag:(id)bag error:(id)error;
- (void)createSnapshotWithCompletion:(id)completion;
@end

@implementation ICAMSBagAdapter

- (void)_didFinishLoadingBag:(id)bag error:(id)error
{
  v28 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_urlBag, bag);
  objc_storeStrong(&self->_urlBagLoadingError, error);
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
        bagKey = [v15 bagKey];
        bagValueType = [v15 bagValueType];
        v22 = 0;
        v19 = [v16 _valueForBagKey:bagKey valueType:bagValueType fromURLBag:bagCopy urlBagLoadingError:errorCopy valueRetrievingError:&v22];
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

- (id)_bagValueForKey:(id)key valueType:(unint64_t)type
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  if (*&self->_urlBag == 0)
  {
    if (!self->_pendingBagValuePromises)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      pendingBagValuePromises = self->_pendingBagValuePromises;
      self->_pendingBagValuePromises = v14;
    }

    v11 = [[ICAMSBagValuePromise alloc] initWithBagKey:keyCopy bagValueType:type];
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

    v12 = [MEMORY[0x1E698C7E8] bagValueWithKey:keyCopy valueType:type valuePromise:v11];
  }

  else
  {
    v7 = objc_opt_class();
    urlBag = self->_urlBag;
    urlBagLoadingError = self->_urlBagLoadingError;
    v19 = 0;
    v10 = [v7 _valueForBagKey:keyCopy valueType:type fromURLBag:urlBag urlBagLoadingError:urlBagLoadingError valueRetrievingError:&v19];
    v11 = v19;
    if (v11)
    {
      [MEMORY[0x1E698C7E8] failingBagValueWithKey:keyCopy valueType:type error:v11];
    }

    else
    {
      [MEMORY[0x1E698C7E8] frozenBagValueWithKey:keyCopy value:v10 valueType:type];
    }
    v12 = ;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__ICAMSBagAdapter_createSnapshotWithCompletion___block_invoke;
  v12[3] = &unk_1E7BF9EC8;
  v12[4] = self;
  v5 = completionCopy;
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
  clientInfo = [(ICRequestContext *)self->_requestContext clientInfo];
  bagProfileVersion = [clientInfo bagProfileVersion];

  return bagProfileVersion;
}

- (NSString)profile
{
  clientInfo = [(ICRequestContext *)self->_requestContext clientInfo];
  bagProfile = [clientInfo bagProfile];

  return bagProfile;
}

- (NSDate)expirationDate
{
  os_unfair_lock_lock(&self->_lock);
  urlBag = self->_urlBag;
  if (urlBag)
  {
    expirationDate = [(ICURLBag *)urlBag expirationDate];
  }

  else
  {
    expirationDate = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return expirationDate;
}

- (BOOL)isExpired
{
  os_unfair_lock_lock(&self->_lock);
  urlBag = self->_urlBag;
  if (urlBag)
  {
    isExpired = [(ICURLBag *)urlBag isExpired];
  }

  else
  {
    isExpired = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return isExpired;
}

- (ICAMSBagAdapter)initWithRequestContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICAMSBagAdapter;
  v6 = [(ICAMSBagAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_requestContext, context);
  }

  return v7;
}

+ (BOOL)_value:(id)_value matchesExpectedType:(unint64_t)type
{
  _valueCopy = _value;
  v6 = 0;
  if (type > 3)
  {
    switch(type)
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
    if (type - 1 < 3)
    {
      isKindOfClass = _NSIsNSNumber();
LABEL_12:
      v6 = isKindOfClass;
      goto LABEL_13;
    }

    if (!type)
    {
      isKindOfClass = _NSIsNSArray();
      goto LABEL_12;
    }
  }

LABEL_13:

  return v6 & 1;
}

+ (id)_valueFromICURLBag:(id)bag forKeyPath:(id)path valueType:(unint64_t)type
{
  v29 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  pathCopy = path;
  v10 = [pathCopy componentsSeparatedByString:@"/"];
  v11 = [v10 objectAtIndexedSubscript:0];
  if (v11)
  {
    v12 = v11;
    if ([v10 count] != 1)
    {
      v16 = [bagCopy dictionaryForBagKey:v12];
      if ([v10 count] < 2)
      {
        v13 = 0;
        goto LABEL_27;
      }

      selfCopy = self;
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
            v26 = selfCopy;
            v27 = 2114;
            v28 = pathCopy;
            _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Encountered missing bag value at key path %{public}@", buf, 0x16u);
          }

LABEL_27:
LABEL_28:
          if (type == 5 && v13 && _NSIsNSString())
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
    if (type <= 2)
    {
      if (!type)
      {
        v14 = [bagCopy arrayForBagKey:v12];
        goto LABEL_33;
      }

      if (type != 1 && type != 2)
      {
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    if (type <= 4)
    {
      if (type != 3)
      {
        v14 = [bagCopy stringForBagKey:v12];
LABEL_33:
        v13 = v14;
        goto LABEL_34;
      }

LABEL_20:
      v14 = [bagCopy numberForBagKey:v12];
      goto LABEL_33;
    }

    if (type == 5)
    {
      v13 = [bagCopy urlForBagKey:v12];
      goto LABEL_28;
    }

    if (type == 6)
    {
      v14 = [bagCopy dictionaryForBagKey:v12];
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

+ (id)_valueForBagKey:(id)key valueType:(unint64_t)type fromURLBag:(id)bag urlBagLoadingError:(id)error valueRetrievingError:(id *)retrievingError
{
  v30[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  bagCopy = bag;
  errorCopy = error;
  v15 = errorCopy;
  if (bagCopy)
  {
    v16 = [self _valueFromICURLBag:bagCopy forKeyPath:keyCopy valueType:type];
    if (!v16)
    {
      v24 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A278];
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No value for bag key '%@'", keyCopy];
      v30[0] = keyCopy;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v21 = v24;
      v22 = -7201;
      goto LABEL_8;
    }

    v17 = v16;
    if (([self _value:v16 matchesExpectedType:type] & 1) == 0)
    {

      v18 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A278];
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"value for bag key '%@' is unexpected type '%@'", keyCopy, objc_opt_class()];
      v28 = keyCopy;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v21 = v18;
      v22 = -7202;
LABEL_8:
      v23 = [v21 errorWithDomain:@"ICError" code:v22 userInfo:v20];

LABEL_9:
      v17 = 0;
      if (!retrievingError)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (errorCopy)
    {
      v23 = errorCopy;
      goto LABEL_9;
    }

    v17 = 0;
  }

  v23 = 0;
  if (retrievingError)
  {
LABEL_10:
    v25 = v23;
    *retrievingError = v23;
  }

LABEL_11:

  return v17;
}

@end