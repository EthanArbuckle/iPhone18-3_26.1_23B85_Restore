@interface STTestSyncableObject
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)updateWithDictionaryRepresentation:(id)a3;
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)a3;
@end

@implementation STTestSyncableObject

- (void)didChangeValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"identifier"])
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  v5.receiver = self;
  v5.super_class = STTestSyncableObject;
  [(STTestSyncableObject *)&v5 didChangeValueForKey:v4];
}

- (id)computeUniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() serializableClassName];
  v5 = [(STTestSyncableObject *)self identifier];
  v6 = [v3 stringWithFormat:@"%@:%@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(STTestSyncableObject *)self subobjects];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

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
        v11 = [v10 identifier];
        v26[1] = @"active";
        v27[0] = v11;
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
  v14 = [(STUniquedManagedObject *)&v21 dictionaryRepresentation];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[STTestSyncableObject enabled](self, "enabled")}];
  [v14 setObject:v15 forKeyedSubscript:@"enabled"];

  v16 = [(STTestSyncableObject *)self identifier];
  [v14 setObject:v16 forKeyedSubscript:@"identifier"];

  [v14 setObject:v5 forKeyedSubscript:@"subobjects"];
  v17 = [v14 copy];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)updateWithDictionaryRepresentation:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"enabled"];
  v24 = self;
  -[STTestSyncableObject setEnabled:](self, "setEnabled:", [v5 BOOLValue]);

  [v4 objectForKeyedSubscript:@"subobjects"];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v22 = v4;
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
        v14 = [v13 BOOLValue];

        v15 = +[STTestSyncableSubObject fetchRequest];
        v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v12];
        [v15 setPredicate:v16];

        v26 = v10;
        v17 = [v15 execute:&v26];
        v8 = v26;

        v18 = [v17 firstObject];
        v19 = v18;
        if (v18)
        {
          [v18 setActive:v14];
          [v19 setRoot:v24];
        }

        ++v9;
        v10 = v8;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);

    v4 = v22;
  }

  v20 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v31 = a4;
  v9 = [v8 objectForKeyedSubscript:@"identifier"];
  v10 = [a1 fetchRequest];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v9];
  [v10 setPredicate:v11];

  v12 = [v10 execute:a5];
  if (v12)
  {
    v27 = v10;
    v28 = v9;
    v26 = v12;
    v30 = [v12 firstObject];
    if (!v30)
    {
      v13 = [[STTestSyncableObject alloc] initWithContext:v31];
      v14 = [v8 objectForKeyedSubscript:@"identifier"];
      v30 = v13;
      [(STTestSyncableObject *)v13 setIdentifier:v14];
    }

    v29 = v8;
    [v8 objectForKeyedSubscript:@"subobjects"];
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

          v22 = [v20 execute:a5];
          v23 = [v22 firstObject];
          if (!v23)
          {
            v23 = [[STTestSyncableSubObject alloc] initWithContext:v31];
            [(STTestSyncableSubObject *)v23 setIdentifier:v19];
            [(STTestSyncableSubObject *)v23 setRoot:v30];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    v9 = v28;
    v8 = v29;
    v12 = v26;
    v10 = v27;
  }

  else
  {
    v30 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v30;
}

@end