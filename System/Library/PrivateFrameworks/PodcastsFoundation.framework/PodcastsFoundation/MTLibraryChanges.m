@interface MTLibraryChanges
- (BOOL)hasChanges;
- (BOOL)hasChangesForEntityNames:(id)a3;
- (BOOL)hasDeletes;
- (BOOL)hasDeletesForEntityNames:(id)a3;
- (BOOL)hasInserts;
- (BOOL)hasInsertsForEntityNames:(id)a3;
- (BOOL)hasUpdates;
- (BOOL)hasUpdatesForEntityNames:(id)a3;
- (MTLibraryChanges)initWithContextName:(id)a3;
- (id)changesForEntityName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)entityNames;
- (void)combineChanges:(id)a3;
- (void)removeAllChanges;
@end

@implementation MTLibraryChanges

- (BOOL)hasChanges
{
  v2 = self;
  v3 = [(MTLibraryChanges *)self changesByEntityName];
  v4 = [v3 allKeys];

  LOBYTE(v2) = [(MTLibraryChanges *)v2 hasChangesForEntityNames:v4];
  return v2;
}

- (MTLibraryChanges)initWithContextName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MTLibraryChanges;
  v5 = [(MTLibraryChanges *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    contextName = v5->_contextName;
    v5->_contextName = v6;

    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    changesByEntityName = v5->_changesByEntityName;
    v5->_changesByEntityName = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = [(MTLibraryChanges *)self changesByEntityName];
  v7 = [v5 initWithDictionary:v6 copyItems:1];
  [v4 setChangesByEntityName:v7];

  return v4;
}

- (id)description
{
  v2 = [(MTLibraryChanges *)self changesByEntityName];
  v3 = [v2 allValues];
  v4 = [v3 componentsJoinedByString:@"\n\t"];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"library changes: {\n\t%@\n}", v4];

  return v5;
}

- (id)changesForEntityName:(id)a3
{
  v4 = a3;
  v5 = [(MTLibraryChanges *)self changesByEntityName];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)entityNames
{
  v2 = [(MTLibraryChanges *)self changesByEntityName];
  v3 = [v2 allKeys];

  return v3;
}

- (void)removeAllChanges
{
  v2 = [(MTLibraryChanges *)self changesByEntityName];
  [v2 removeAllObjects];
}

- (void)combineChanges:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 entityNames];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 changesForEntityName:v10];
        v12 = [(MTLibraryChanges *)self changesForEntityName:v10];
        if (!v12)
        {
          v12 = [[MTLibraryEntityChanges alloc] initWithEntityName:v10];
          v13 = [(MTLibraryChanges *)self changesByEntityName];
          [v13 setObject:v12 forKeyedSubscript:v10];
        }

        [(MTLibraryEntityChanges *)v12 combineChanges:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasInserts
{
  v2 = self;
  v3 = [(MTLibraryChanges *)self changesByEntityName];
  v4 = [v3 allKeys];

  LOBYTE(v2) = [(MTLibraryChanges *)v2 hasInsertsForEntityNames:v4];
  return v2;
}

- (BOOL)hasDeletes
{
  v2 = self;
  v3 = [(MTLibraryChanges *)self changesByEntityName];
  v4 = [v3 allKeys];

  LOBYTE(v2) = [(MTLibraryChanges *)v2 hasDeletesForEntityNames:v4];
  return v2;
}

- (BOOL)hasUpdates
{
  v2 = self;
  v3 = [(MTLibraryChanges *)self changesByEntityName];
  v4 = [v3 allKeys];

  LOBYTE(v2) = [(MTLibraryChanges *)v2 hasUpdatesForEntityNames:v4];
  return v2;
}

- (BOOL)hasChangesForEntityNames:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(MTLibraryChanges *)self changesForEntityName:*(*(&v14 + 1) + 8 * i), v14];
        v10 = [v9 hasChanges];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)hasInsertsForEntityNames:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(MTLibraryChanges *)self changesForEntityName:*(*(&v14 + 1) + 8 * i), v14];
        v10 = [v9 hasInserts];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)hasDeletesForEntityNames:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(MTLibraryChanges *)self changesForEntityName:*(*(&v14 + 1) + 8 * i), v14];
        v10 = [v9 hasDeletes];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)hasUpdatesForEntityNames:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(MTLibraryChanges *)self changesForEntityName:*(*(&v14 + 1) + 8 * i), v14];
        v10 = [v9 hasUpdates];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end