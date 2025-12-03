@interface STTestSyncableObject
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)key;
@end

@implementation STTestSyncableObject

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"identifier"])
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  v5.receiver = self;
  v5.super_class = STTestSyncableObject;
  [(STTestSyncableObject *)&v5 didChangeValueForKey:keyCopy];
}

- (id)computeUniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  serializableClassName = [objc_opt_class() serializableClassName];
  identifier = [(STTestSyncableObject *)self identifier];
  v6 = [v3 stringWithFormat:@"%@:%@", serializableClassName, identifier];

  return v6;
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  subobjects = [(STTestSyncableObject *)self subobjects];
  v5 = [v3 initWithCapacity:{objc_msgSend(subobjects, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(STTestSyncableObject *)self subobjects];
  v6 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v26[0] = @"identifier";
        identifier = [v10 identifier];
        v26[1] = @"active";
        v27[0] = identifier;
        v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "active")}];
        v27[1] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
        [v5 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  v21.receiver = self;
  v21.super_class = STTestSyncableObject;
  dictionaryRepresentation = [(STUniquedManagedObject *)&v21 dictionaryRepresentation];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[STTestSyncableObject enabled](self, "enabled")}];
  [dictionaryRepresentation setObject:v15 forKeyedSubscript:@"enabled"];

  identifier2 = [(STTestSyncableObject *)self identifier];
  [dictionaryRepresentation setObject:identifier2 forKeyedSubscript:@"identifier"];

  [dictionaryRepresentation setObject:v5 forKeyedSubscript:@"subobjects"];
  v17 = [dictionaryRepresentation copy];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  v32 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"enabled"];
  selfCopy = self;
  -[STTestSyncableObject setEnabled:](self, "setEnabled:", [v5 BOOLValue]);

  [representationCopy objectForKeyedSubscript:@"subobjects"];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v22 = representationCopy;
    v8 = 0;
    v25 = *v28;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v9);
        v12 = [v11 objectForKeyedSubscript:@"identifier"];
        v13 = [v11 objectForKeyedSubscript:@"active"];
        bOOLValue = [v13 BOOLValue];

        v15 = +[STTestSyncableSubObject fetchRequest];
        v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v12];
        [v15 setPredicate:v16];

        v26 = v10;
        v17 = [v15 execute:&v26];
        v8 = v26;

        firstObject = [v17 firstObject];
        v19 = firstObject;
        if (firstObject)
        {
          [firstObject setActive:bOOLValue];
          [v19 setRoot:selfCopy];
        }

        ++v9;
        v10 = v8;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);

    representationCopy = v22;
  }

  v20 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  contextCopy = context;
  v9 = [representationCopy objectForKeyedSubscript:@"identifier"];
  fetchRequest = [self fetchRequest];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v9];
  [fetchRequest setPredicate:v11];

  v12 = [fetchRequest execute:error];
  if (v12)
  {
    v27 = fetchRequest;
    v28 = v9;
    v26 = v12;
    firstObject = [v12 firstObject];
    if (!firstObject)
    {
      v13 = [[STTestSyncableObject alloc] initWithContext:contextCopy];
      v14 = [representationCopy objectForKeyedSubscript:@"identifier"];
      firstObject = v13;
      [(STTestSyncableObject *)v13 setIdentifier:v14];
    }

    v29 = representationCopy;
    [representationCopy objectForKeyedSubscript:@"subobjects"];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v15 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [*(*(&v33 + 1) + 8 * i) objectForKeyedSubscript:@"identifier"];
          v20 = +[STTestSyncableSubObject fetchRequest];
          v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v19];
          [v20 setPredicate:v21];

          v22 = [v20 execute:error];
          firstObject2 = [v22 firstObject];
          if (!firstObject2)
          {
            firstObject2 = [[STTestSyncableSubObject alloc] initWithContext:contextCopy];
            [(STTestSyncableSubObject *)firstObject2 setIdentifier:v19];
            [(STTestSyncableSubObject *)firstObject2 setRoot:firstObject];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    v9 = v28;
    representationCopy = v29;
    v12 = v26;
    fetchRequest = v27;
  }

  else
  {
    firstObject = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return firstObject;
}

@end