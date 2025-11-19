@interface PLManagedObject
+ (NSExpressionDescription)objectIDDescription;
+ (id)entityInManagedObjectContext:(id)a3;
+ (id)entityName;
+ (id)insertInManagedObjectContext:(id)a3;
- (BOOL)isRegisteredWithUserInterfaceContext;
- (NSString)shortObjectIDURI;
- (PLPhotoLibrary)photoLibrary;
- (PLPhotoLibraryPathManager)pathManager;
- (float)pl_floatValueForKey:(id)a3;
- (id)duplicateSortPropertyNames;
- (id)duplicateSortPropertyNamesSkip;
- (id)pl_committedValueForKey:(id)a3;
- (int)pl_int32ValueForKey:(id)a3;
- (int64_t)pl_int64ValueForKey:(id)a3;
- (signed)pl_int16ValueForKey:(id)a3;
- (void)didSave;
- (void)pl_safeSetValue:(id)a3 forKey:(id)a4 valueDidChangeHandler:(id)a5;
- (void)pl_setValue:(id)a3 forKey:(id)a4 valueDidChangeHandler:(id)a5;
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
      v4 = [(PLManagedObject *)self changedValues];
      v5 = [v4 count];

      if (v5)
      {
        v6 = PLBackendGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = [(PLManagedObject *)self objectID];
          v8 = [v7 entity];
          v9 = [v8 name];
          v10 = [(PLManagedObject *)self changedValues];
          v11 = [v10 allKeys];
          v12 = [v11 componentsJoinedByString:{@", "}];
          *buf = 138543618;
          v17 = v9;
          v18 = 2114;
          v19 = v12;
          _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "will exceed willSave limit on: %{public}@, changedKeys: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v13 = [(PLManagedObject *)self managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15.receiver = self;
  v15.super_class = PLManagedObject;
  [(PLManagedObject *)&v15 willSave];
  if (isKindOfClass)
  {
    [v13 recordManagedObjectWillSave:self];
    if ([(PLManagedObject *)self isSyncableChange])
    {
      [v13 recordSyncChangeMarker];
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

- (int64_t)pl_int64ValueForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(PLManagedObject *)self valueForKey:v4];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 longLongValue];
  return v8;
}

- (int)pl_int32ValueForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(PLManagedObject *)self valueForKey:v4];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 intValue];
  return v8;
}

- (signed)pl_int16ValueForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(PLManagedObject *)self valueForKey:v4];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 shortValue];
  return v8;
}

- (float)pl_floatValueForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(PLManagedObject *)self valueForKey:v4];

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

- (id)pl_committedValueForKey:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLManagedObject.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v7 = [(PLManagedObject *)self committedValuesForKeys:v6];

  v8 = [v7 objectForKeyedSubscript:v5];
  v9 = PLNullToNil();

  return v9;
}

- (void)pl_setValue:(id)a3 forKey:(id)a4 valueDidChangeHandler:(id)a5
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLManagedObject.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  [(PLManagedObject *)self willAccessValueForKey:v9];
  v11 = [(PLManagedObject *)self primitiveValueForKey:v9];
  [(PLManagedObject *)self didAccessValueForKey:v9];
  [(PLManagedObject *)self willChangeValueForKey:v9];
  [(PLManagedObject *)self setPrimitiveValue:v13 forKey:v9];
  [(PLManagedObject *)self didChangeValueForKey:v9];
  if (v10 && (PLObjectIsEqual() & 1) == 0)
  {
    v10[2](v10, v11);
  }
}

- (void)pl_safeSetValue:(id)a3 forKey:(id)a4 valueDidChangeHandler:(id)a5
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLManagedObject.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  [(PLManagedObject *)self willAccessValueForKey:v9];
  v11 = [(PLManagedObject *)self primitiveValueForKey:v9];
  [(PLManagedObject *)self didAccessValueForKey:v9];
  if ((PLObjectIsEqual() & 1) == 0)
  {
    [(PLManagedObject *)self willChangeValueForKey:v9];
    [(PLManagedObject *)self setPrimitiveValue:v13 forKey:v9];
    [(PLManagedObject *)self didChangeValueForKey:v9];
    if (v10)
    {
      v10[2](v10, v11);
    }
  }
}

- (NSString)shortObjectIDURI
{
  v2 = [(PLManagedObject *)self objectID];
  v3 = [v2 pl_shortURI];

  return v3;
}

- (BOOL)isRegisteredWithUserInterfaceContext
{
  v2 = [(PLManagedObject *)self managedObjectContext];
  v3 = [v2 isUserInterfaceContext];

  return v3;
}

- (PLPhotoLibrary)photoLibrary
{
  v2 = [(PLManagedObject *)self managedObjectContext];
  v3 = [v2 photoLibrary];

  return v3;
}

- (PLPhotoLibraryPathManager)pathManager
{
  v4 = [(PLManagedObject *)self photoLibrary];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 pathManager];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [(PLManagedObject *)self managedObjectContext];
    v6 = [v8 pathManager];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PLManagedObject.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

LABEL_3:

  return v6;
}

+ (id)entityInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [a1 entityName];
  v6 = PLSafeEntityForNameInManagedObjectContext(v5, v4, 0);

  return v6;
}

+ (id)insertInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [a1 entityName];
  v6 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v5, v4, 0);

  return v6;
}

+ (id)entityName
{
  v2 = a1;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)duplicateSortPropertyNamesSkip
{
  v2 = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)duplicateSortPropertyNames
{
  v2 = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

@end