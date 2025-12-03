@interface WFRecordPropertyMapping
- (BOOL)isEqual:(id)equal;
- (SEL)getterSelector;
- (SEL)setterSelector;
- (WFRecordPropertyMapping)initWithSourceObject:(id)object property:(id)property destinationObject:(id)destinationObject property:(id)a6;
- (id)destinationObject;
- (id)getterMethodSignature;
- (id)setterMethodSignature;
- (id)sourceObject;
- (unint64_t)hash;
- (void)invokeGetterWithBuffer:(void *)buffer length:(unint64_t *)length;
- (void)invokeSetterWithBuffer:(void *)buffer length:(unint64_t *)length;
- (void)propagate:(BOOL)propagate;
- (void)propagateUsingKVC;
- (void)propagateUsingSetter;
@end

@implementation WFRecordPropertyMapping

- (SEL)setterSelector
{
  destinationProperty = [(WFRecordPropertyMapping *)self destinationProperty];
  setter = [destinationProperty setter];
  v4 = NSSelectorFromString(setter);

  return v4;
}

- (void)propagateUsingSetter
{
  v45 = *MEMORY[0x1E69E9840];
  getterMethodSignature = [(WFRecordPropertyMapping *)self getterMethodSignature];
  if ([getterMethodSignature methodReturnType])
  {
    setterMethodSignature = [(WFRecordPropertyMapping *)self setterMethodSignature];
    v6 = [setterMethodSignature getArgumentTypeAtIndex:2];

    if (v6)
    {
      getterMethodSignature2 = [(WFRecordPropertyMapping *)self getterMethodSignature];
      methodReturnType = [getterMethodSignature2 methodReturnType];
      setterMethodSignature2 = [(WFRecordPropertyMapping *)self setterMethodSignature];
      LODWORD(methodReturnType) = strcmp(methodReturnType, [setterMethodSignature2 getArgumentTypeAtIndex:2]);

      if (methodReturnType)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        sourceObject = [(WFRecordPropertyMapping *)self sourceObject];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        sourceProperty = [(WFRecordPropertyMapping *)self sourceProperty];
        getter = [sourceProperty getter];
        destinationObject = [(WFRecordPropertyMapping *)self destinationObject];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        destinationProperty = [(WFRecordPropertyMapping *)self destinationProperty];
        setter = [destinationProperty setter];
        [currentHandler handleFailureInMethod:a2 object:self file:@"WFRecordPropertyMapping.m" lineNumber:82 description:{@"Property type mismatch between %@ - %@ and %@ - %@.", v26, getter, v31, setter}];
      }

      getterMethodSignature3 = [(WFRecordPropertyMapping *)self getterMethodSignature];
      methodReturnLength = [getterMethodSignature3 methodReturnLength];

      v35 = methodReturnLength;
      *buf = malloc_type_malloc(methodReturnLength, 0xDFA3FD25uLL);
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
    sourceObject2 = [(WFRecordPropertyMapping *)self sourceObject];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    sourceProperty2 = [(WFRecordPropertyMapping *)self sourceProperty];
    getter2 = [sourceProperty2 getter];
    destinationObject2 = [(WFRecordPropertyMapping *)self destinationObject];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    destinationProperty2 = [(WFRecordPropertyMapping *)self destinationProperty];
    setter2 = [destinationProperty2 setter];
    *buf = 136316162;
    *&buf[4] = "[WFRecordPropertyMapping propagateUsingSetter]";
    v37 = 2114;
    v38 = v15;
    v39 = 2114;
    v40 = getter2;
    v41 = 2114;
    v42 = v20;
    v43 = 2114;
    v44 = setter2;
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s PROPERTY NOT SET: %{public}@ - %{public}@ and %{public}@ - %{public}@. Invalid setter or getter", buf, 0x34u);
  }

LABEL_10:
  v23 = *MEMORY[0x1E69E9840];
}

- (id)setterMethodSignature
{
  destinationObject = [(WFRecordPropertyMapping *)self destinationObject];
  v4 = [destinationObject methodSignatureForSelector:{-[WFRecordPropertyMapping setterSelector](self, "setterSelector")}];

  return v4;
}

- (id)destinationObject
{
  WeakRetained = objc_loadWeakRetained(&self->_destinationObject);

  return WeakRetained;
}

- (id)getterMethodSignature
{
  sourceObject = [(WFRecordPropertyMapping *)self sourceObject];
  v4 = [sourceObject methodSignatureForSelector:{-[WFRecordPropertyMapping getterSelector](self, "getterSelector")}];

  return v4;
}

- (SEL)getterSelector
{
  sourceProperty = [(WFRecordPropertyMapping *)self sourceProperty];
  getter = [sourceProperty getter];
  v4 = NSSelectorFromString(getter);

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
  sourceObject = [(WFRecordPropertyMapping *)self sourceObject];
  sourceProperty = [(WFRecordPropertyMapping *)self sourceProperty];
  name = [sourceProperty name];
  v6 = [sourceObject valueForKey:name];

  if (v6)
  {
    destinationObject = [(WFRecordPropertyMapping *)self destinationObject];
    destinationProperty = [(WFRecordPropertyMapping *)self destinationProperty];
    name2 = [destinationProperty name];
    [destinationObject setValue:v6 forKey:name2];
  }

  else
  {
    destinationObject = getWFWFRecordPropertyLogObject();
    if (os_log_type_enabled(destinationObject, OS_LOG_TYPE_FAULT))
    {
      sourceProperty2 = [(WFRecordPropertyMapping *)self sourceProperty];
      name3 = [sourceProperty2 name];
      sourceObject2 = [(WFRecordPropertyMapping *)self sourceObject];
      v14 = 136315650;
      v15 = "[WFRecordPropertyMapping propagateUsingKVC]";
      v16 = 2114;
      v17 = name3;
      v18 = 2114;
      v19 = sourceObject2;
      _os_log_impl(&dword_1CA256000, destinationObject, OS_LOG_TYPE_FAULT, "%s PROPERTY NOT SET: value nil for key: %{public}@ on %{public}@", &v14, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  sourceObject = [(WFRecordPropertyMapping *)self sourceObject];
  v4 = [sourceObject hash];
  sourceProperty = [(WFRecordPropertyMapping *)self sourceProperty];
  v6 = [sourceProperty hash] ^ v4;
  destinationObject = [(WFRecordPropertyMapping *)self destinationObject];
  v8 = [destinationObject hash];
  destinationProperty = [(WFRecordPropertyMapping *)self destinationProperty];
  v10 = v8 ^ [destinationProperty hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    sourceObject = [(WFRecordPropertyMapping *)self sourceObject];
    sourceObject2 = [v7 sourceObject];
    if ([sourceObject isEqual:sourceObject2])
    {
      sourceProperty = [(WFRecordPropertyMapping *)self sourceProperty];
      sourceProperty2 = [v7 sourceProperty];
      if ([sourceProperty isEqual:sourceProperty2])
      {
        destinationObject = [(WFRecordPropertyMapping *)self destinationObject];
        destinationObject2 = [v7 destinationObject];
        if ([destinationObject isEqual:destinationObject2])
        {
          destinationProperty = [(WFRecordPropertyMapping *)self destinationProperty];
          destinationProperty2 = [v7 destinationProperty];
          v6 = [destinationProperty isEqual:destinationProperty2];
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

- (void)invokeSetterWithBuffer:(void *)buffer length:(unint64_t *)length
{
  v6 = MEMORY[0x1E695DF50];
  v7 = [(WFRecordPropertyMapping *)self setterMethodSignature:buffer];
  v9 = [v6 invocationWithMethodSignature:v7];

  [v9 setSelector:{-[WFRecordPropertyMapping setterSelector](self, "setterSelector")}];
  [v9 setArgument:*buffer atIndex:2];
  destinationObject = [(WFRecordPropertyMapping *)self destinationObject];
  [v9 invokeWithTarget:destinationObject];
}

- (void)invokeGetterWithBuffer:(void *)buffer length:(unint64_t *)length
{
  v6 = MEMORY[0x1E695DF50];
  v7 = [(WFRecordPropertyMapping *)self getterMethodSignature:buffer];
  v9 = [v6 invocationWithMethodSignature:v7];

  [v9 setSelector:{-[WFRecordPropertyMapping getterSelector](self, "getterSelector")}];
  sourceObject = [(WFRecordPropertyMapping *)self sourceObject];
  [v9 invokeWithTarget:sourceObject];

  [v9 getReturnValue:*buffer];
}

- (void)propagate:(BOOL)propagate
{
  propagateCopy = propagate;
  destinationProperty = [(WFRecordPropertyMapping *)self destinationProperty];
  setter = [destinationProperty setter];

  if (setter)
  {

    [(WFRecordPropertyMapping *)self propagateUsingSetter];
  }

  else if (propagateCopy)
  {

    [(WFRecordPropertyMapping *)self propagateUsingKVC];
  }
}

- (WFRecordPropertyMapping)initWithSourceObject:(id)object property:(id)property destinationObject:(id)destinationObject property:(id)a6
{
  objectCopy = object;
  propertyCopy = property;
  destinationObjectCopy = destinationObject;
  v14 = a6;
  if (objectCopy)
  {
    if (propertyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRecordPropertyMapping.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"sourceObject"}];

    if (propertyCopy)
    {
LABEL_3:
      if (destinationObjectCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRecordPropertyMapping.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"destinationObject"}];

      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFRecordPropertyMapping.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"sourceProperty"}];

  if (!destinationObjectCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"WFRecordPropertyMapping.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"destinationProperty"}];

LABEL_5:
  v23.receiver = self;
  v23.super_class = WFRecordPropertyMapping;
  v15 = [(WFRecordPropertyMapping *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_sourceObject, objectCopy);
    objc_storeStrong(&v16->_sourceProperty, property);
    objc_storeWeak(&v16->_destinationObject, destinationObjectCopy);
    objc_storeStrong(&v16->_destinationProperty, a6);
    v17 = v16;
  }

  return v16;
}

@end