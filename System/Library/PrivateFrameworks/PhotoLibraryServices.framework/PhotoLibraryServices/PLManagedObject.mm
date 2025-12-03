@interface PLManagedObject
+ (NSExpressionDescription)objectIDDescription;
+ (id)entityInManagedObjectContext:(id)context;
+ (id)entityName;
+ (id)insertInManagedObjectContext:(id)context;
- (BOOL)isRegisteredWithUserInterfaceContext;
- (NSString)shortObjectIDURI;
- (PLPhotoLibrary)photoLibrary;
- (PLPhotoLibraryPathManager)pathManager;
- (float)pl_floatValueForKey:(id)key;
- (id)duplicateSortPropertyNames;
- (id)duplicateSortPropertyNamesSkip;
- (id)pl_committedValueForKey:(id)key;
- (int)pl_int32ValueForKey:(id)key;
- (int64_t)pl_int64ValueForKey:(id)key;
- (signed)pl_int16ValueForKey:(id)key;
- (void)didSave;
- (void)pl_safeSetValue:(id)value forKey:(id)key valueDidChangeHandler:(id)handler;
- (void)pl_setValue:(id)value forKey:(id)key valueDidChangeHandler:(id)handler;
- (void)willSave;
@end

@implementation PLManagedObject

+ (NSExpressionDescription)objectIDDescription
{
  if (objectIDDescription_onceToken != -1)
  {
    dispatch_once(&objectIDDescription_onceToken, &__block_literal_global_39487);
  }

  v3 = objectIDDescription_sObjectIDDescription;

  return v3;
}

uint64_t __38__PLManagedObject_objectIDDescription__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  v1 = objectIDDescription_sObjectIDDescription;
  objectIDDescription_sObjectIDDescription = v0;

  [objectIDDescription_sObjectIDDescription setName:@"objectID"];
  v2 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [objectIDDescription_sObjectIDDescription setExpression:v2];

  v3 = objectIDDescription_sObjectIDDescription;

  return [v3 setExpressionResultType:2000];
}

- (void)willSave
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = ++self->_willSaveCallCount;
  if (v3 == 999)
  {
    if ([(PLManagedObject *)self hasChanges])
    {
      changedValues = [(PLManagedObject *)self changedValues];
      v5 = [changedValues count];

      if (v5)
      {
        v6 = PLBackendGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          objectID = [(PLManagedObject *)self objectID];
          entity = [objectID entity];
          name = [entity name];
          changedValues2 = [(PLManagedObject *)self changedValues];
          allKeys = [changedValues2 allKeys];
          v12 = [allKeys componentsJoinedByString:{@", "}];
          *buf = 138543618;
          v17 = name;
          v18 = 2114;
          v19 = v12;
          _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "will exceed willSave limit on: %{public}@, changedKeys: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  managedObjectContext = [(PLManagedObject *)self managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15.receiver = self;
  v15.super_class = PLManagedObject;
  [(PLManagedObject *)&v15 willSave];
  if (isKindOfClass)
  {
    [managedObjectContext recordManagedObjectWillSave:self];
    if ([(PLManagedObject *)self isSyncableChange])
    {
      [managedObjectContext recordSyncChangeMarker];
    }
  }
}

- (void)didSave
{
  self->_willSaveCallCount = 0;
  v2.receiver = self;
  v2.super_class = PLManagedObject;
  [(PLManagedObject *)&v2 didSave];
}

- (int64_t)pl_int64ValueForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(PLManagedObject *)self valueForKey:keyCopy];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  longLongValue = [v7 longLongValue];
  return longLongValue;
}

- (int)pl_int32ValueForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(PLManagedObject *)self valueForKey:keyCopy];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  intValue = [v7 intValue];
  return intValue;
}

- (signed)pl_int16ValueForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(PLManagedObject *)self valueForKey:keyCopy];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  shortValue = [v7 shortValue];
  return shortValue;
}

- (float)pl_floatValueForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(PLManagedObject *)self valueForKey:keyCopy];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 floatValue];
  v9 = v8;

  return v9;
}

- (id)pl_committedValueForKey:(id)key
{
  v12[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedObject.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  v12[0] = keyCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v7 = [(PLManagedObject *)self committedValuesForKeys:v6];

  v8 = [v7 objectForKeyedSubscript:keyCopy];
  v9 = PLNullToNil();

  return v9;
}

- (void)pl_setValue:(id)value forKey:(id)key valueDidChangeHandler:(id)handler
{
  valueCopy = value;
  keyCopy = key;
  handlerCopy = handler;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedObject.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  [(PLManagedObject *)self willAccessValueForKey:keyCopy];
  v11 = [(PLManagedObject *)self primitiveValueForKey:keyCopy];
  [(PLManagedObject *)self didAccessValueForKey:keyCopy];
  [(PLManagedObject *)self willChangeValueForKey:keyCopy];
  [(PLManagedObject *)self setPrimitiveValue:valueCopy forKey:keyCopy];
  [(PLManagedObject *)self didChangeValueForKey:keyCopy];
  if (handlerCopy && (PLObjectIsEqual() & 1) == 0)
  {
    handlerCopy[2](handlerCopy, v11);
  }
}

- (void)pl_safeSetValue:(id)value forKey:(id)key valueDidChangeHandler:(id)handler
{
  valueCopy = value;
  keyCopy = key;
  handlerCopy = handler;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedObject.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  [(PLManagedObject *)self willAccessValueForKey:keyCopy];
  v11 = [(PLManagedObject *)self primitiveValueForKey:keyCopy];
  [(PLManagedObject *)self didAccessValueForKey:keyCopy];
  if ((PLObjectIsEqual() & 1) == 0)
  {
    [(PLManagedObject *)self willChangeValueForKey:keyCopy];
    [(PLManagedObject *)self setPrimitiveValue:valueCopy forKey:keyCopy];
    [(PLManagedObject *)self didChangeValueForKey:keyCopy];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v11);
    }
  }
}

- (NSString)shortObjectIDURI
{
  objectID = [(PLManagedObject *)self objectID];
  pl_shortURI = [objectID pl_shortURI];

  return pl_shortURI;
}

- (BOOL)isRegisteredWithUserInterfaceContext
{
  managedObjectContext = [(PLManagedObject *)self managedObjectContext];
  isUserInterfaceContext = [managedObjectContext isUserInterfaceContext];

  return isUserInterfaceContext;
}

- (PLPhotoLibrary)photoLibrary
{
  managedObjectContext = [(PLManagedObject *)self managedObjectContext];
  photoLibrary = [managedObjectContext photoLibrary];

  return photoLibrary;
}

- (PLPhotoLibraryPathManager)pathManager
{
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  v5 = photoLibrary;
  if (photoLibrary)
  {
    pathManager = [photoLibrary pathManager];
    if (pathManager)
    {
      goto LABEL_3;
    }
  }

  else
  {
    managedObjectContext = [(PLManagedObject *)self managedObjectContext];
    pathManager = [managedObjectContext pathManager];

    if (pathManager)
    {
      goto LABEL_3;
    }
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedObject.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

LABEL_3:

  return pathManager;
}

+ (id)entityInManagedObjectContext:(id)context
{
  contextCopy = context;
  entityName = [self entityName];
  v6 = PLSafeEntityForNameInManagedObjectContext(entityName, contextCopy, 0);

  return v6;
}

+ (id)insertInManagedObjectContext:(id)context
{
  contextCopy = context;
  entityName = [self entityName];
  v6 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, contextCopy, 0);

  return v6;
}

+ (id)entityName
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)duplicateSortPropertyNamesSkip
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)duplicateSortPropertyNames
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

@end