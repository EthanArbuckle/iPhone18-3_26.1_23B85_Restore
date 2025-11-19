@interface WFRecordPropertyMapping
- (BOOL)isEqual:(id)a3;
- (SEL)getterSelector;
- (SEL)setterSelector;
- (WFRecordPropertyMapping)initWithSourceObject:(id)a3 property:(id)a4 destinationObject:(id)a5 property:(id)a6;
- (id)destinationObject;
- (id)getterMethodSignature;
- (id)setterMethodSignature;
- (id)sourceObject;
- (unint64_t)hash;
- (void)invokeGetterWithBuffer:(void *)a3 length:(unint64_t *)a4;
- (void)invokeSetterWithBuffer:(void *)a3 length:(unint64_t *)a4;
- (void)propagate:(BOOL)a3;
- (void)propagateUsingKVC;
- (void)propagateUsingSetter;
@end

@implementation WFRecordPropertyMapping

- (SEL)setterSelector
{
  v2 = [(WFRecordPropertyMapping *)self destinationProperty];
  v3 = [v2 setter];
  v4 = NSSelectorFromString(v3);

  return v4;
}

- (void)propagateUsingSetter
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = [(WFRecordPropertyMapping *)self getterMethodSignature];
  if ([v4 methodReturnType])
  {
    v5 = [(WFRecordPropertyMapping *)self setterMethodSignature];
    v6 = [v5 getArgumentTypeAtIndex:2];

    if (v6)
    {
      v7 = [(WFRecordPropertyMapping *)self getterMethodSignature];
      v8 = [v7 methodReturnType];
      v9 = [(WFRecordPropertyMapping *)self setterMethodSignature];
      LODWORD(v8) = strcmp(v8, [v9 getArgumentTypeAtIndex:2]);

      if (v8)
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = [(WFRecordPropertyMapping *)self sourceObject];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [(WFRecordPropertyMapping *)self sourceProperty];
        v28 = [v27 getter];
        v29 = [(WFRecordPropertyMapping *)self destinationObject];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [(WFRecordPropertyMapping *)self destinationProperty];
        v33 = [v32 setter];
        [v24 handleFailureInMethod:a2 object:self file:@"WFRecordPropertyMapping.m" lineNumber:82 description:{@"Property type mismatch between %@ - %@ and %@ - %@.", v26, v28, v31, v33}];
      }

      v10 = [(WFRecordPropertyMapping *)self getterMethodSignature];
      v11 = [v10 methodReturnLength];

      v35 = v11;
      *buf = malloc_type_malloc(v11, 0xDFA3FD25uLL);
      [(WFRecordPropertyMapping *)self invokeGetterWithBuffer:buf length:&v35];
      [(WFRecordPropertyMapping *)self invokeSetterWithBuffer:buf length:&v35];
      free(*buf);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = getWFWFRecordPropertyLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v13 = [(WFRecordPropertyMapping *)self sourceObject];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [(WFRecordPropertyMapping *)self sourceProperty];
    v17 = [v16 getter];
    v18 = [(WFRecordPropertyMapping *)self destinationObject];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [(WFRecordPropertyMapping *)self destinationProperty];
    v22 = [v21 setter];
    *buf = 136316162;
    *&buf[4] = "[WFRecordPropertyMapping propagateUsingSetter]";
    v37 = 2114;
    v38 = v15;
    v39 = 2114;
    v40 = v17;
    v41 = 2114;
    v42 = v20;
    v43 = 2114;
    v44 = v22;
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s PROPERTY NOT SET: %{public}@ - %{public}@ and %{public}@ - %{public}@. Invalid setter or getter", buf, 0x34u);
  }

LABEL_10:
  v23 = *MEMORY[0x1E69E9840];
}

- (id)setterMethodSignature
{
  v3 = [(WFRecordPropertyMapping *)self destinationObject];
  v4 = [v3 methodSignatureForSelector:{-[WFRecordPropertyMapping setterSelector](self, "setterSelector")}];

  return v4;
}

- (id)destinationObject
{
  WeakRetained = objc_loadWeakRetained(&self->_destinationObject);

  return WeakRetained;
}

- (id)getterMethodSignature
{
  v3 = [(WFRecordPropertyMapping *)self sourceObject];
  v4 = [v3 methodSignatureForSelector:{-[WFRecordPropertyMapping getterSelector](self, "getterSelector")}];

  return v4;
}

- (SEL)getterSelector
{
  v2 = [(WFRecordPropertyMapping *)self sourceProperty];
  v3 = [v2 getter];
  v4 = NSSelectorFromString(v3);

  return v4;
}

- (id)sourceObject
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceObject);

  return WeakRetained;
}

- (void)propagateUsingKVC
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(WFRecordPropertyMapping *)self sourceObject];
  v4 = [(WFRecordPropertyMapping *)self sourceProperty];
  v5 = [v4 name];
  v6 = [v3 valueForKey:v5];

  if (v6)
  {
    v7 = [(WFRecordPropertyMapping *)self destinationObject];
    v8 = [(WFRecordPropertyMapping *)self destinationProperty];
    v9 = [v8 name];
    [v7 setValue:v6 forKey:v9];
  }

  else
  {
    v7 = getWFWFRecordPropertyLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = [(WFRecordPropertyMapping *)self sourceProperty];
      v11 = [v10 name];
      v12 = [(WFRecordPropertyMapping *)self sourceObject];
      v14 = 136315650;
      v15 = "[WFRecordPropertyMapping propagateUsingKVC]";
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s PROPERTY NOT SET: value nil for key: %{public}@ on %{public}@", &v14, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(WFRecordPropertyMapping *)self sourceObject];
  v4 = [v3 hash];
  v5 = [(WFRecordPropertyMapping *)self sourceProperty];
  v6 = [v5 hash] ^ v4;
  v7 = [(WFRecordPropertyMapping *)self destinationObject];
  v8 = [v7 hash];
  v9 = [(WFRecordPropertyMapping *)self destinationProperty];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = [(WFRecordPropertyMapping *)self sourceObject];
    v9 = [v7 sourceObject];
    if ([v8 isEqual:v9])
    {
      v10 = [(WFRecordPropertyMapping *)self sourceProperty];
      v11 = [v7 sourceProperty];
      if ([v10 isEqual:v11])
      {
        v12 = [(WFRecordPropertyMapping *)self destinationObject];
        v13 = [v7 destinationObject];
        if ([v12 isEqual:v13])
        {
          v16 = [(WFRecordPropertyMapping *)self destinationProperty];
          v14 = [v7 destinationProperty];
          v6 = [v16 isEqual:v14];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)invokeSetterWithBuffer:(void *)a3 length:(unint64_t *)a4
{
  v6 = MEMORY[0x1E695DF50];
  v7 = [(WFRecordPropertyMapping *)self setterMethodSignature:a3];
  v9 = [v6 invocationWithMethodSignature:v7];

  [v9 setSelector:{-[WFRecordPropertyMapping setterSelector](self, "setterSelector")}];
  [v9 setArgument:*a3 atIndex:2];
  v8 = [(WFRecordPropertyMapping *)self destinationObject];
  [v9 invokeWithTarget:v8];
}

- (void)invokeGetterWithBuffer:(void *)a3 length:(unint64_t *)a4
{
  v6 = MEMORY[0x1E695DF50];
  v7 = [(WFRecordPropertyMapping *)self getterMethodSignature:a3];
  v9 = [v6 invocationWithMethodSignature:v7];

  [v9 setSelector:{-[WFRecordPropertyMapping getterSelector](self, "getterSelector")}];
  v8 = [(WFRecordPropertyMapping *)self sourceObject];
  [v9 invokeWithTarget:v8];

  [v9 getReturnValue:*a3];
}

- (void)propagate:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFRecordPropertyMapping *)self destinationProperty];
  v6 = [v5 setter];

  if (v6)
  {

    [(WFRecordPropertyMapping *)self propagateUsingSetter];
  }

  else if (v3)
  {

    [(WFRecordPropertyMapping *)self propagateUsingKVC];
  }
}

- (WFRecordPropertyMapping)initWithSourceObject:(id)a3 property:(id)a4 destinationObject:(id)a5 property:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFRecordPropertyMapping.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"sourceObject"}];

    if (v12)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_10:
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"WFRecordPropertyMapping.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"destinationObject"}];

      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"WFRecordPropertyMapping.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"sourceProperty"}];

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_11:
  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"WFRecordPropertyMapping.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"destinationProperty"}];

LABEL_5:
  v23.receiver = self;
  v23.super_class = WFRecordPropertyMapping;
  v15 = [(WFRecordPropertyMapping *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_sourceObject, v11);
    objc_storeStrong(&v16->_sourceProperty, a4);
    objc_storeWeak(&v16->_destinationObject, v13);
    objc_storeStrong(&v16->_destinationProperty, a6);
    v17 = v16;
  }

  return v16;
}

@end