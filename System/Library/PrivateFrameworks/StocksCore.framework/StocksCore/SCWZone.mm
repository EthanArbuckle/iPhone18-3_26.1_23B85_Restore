@interface SCWZone
- (BOOL)isDirty;
- (BOOL)needsFirstSync;
- (NSArray)clientRecords;
- (SCWZone)initWithSchema:(id)schema store:(id)store;
- (SCWZoneDiff)clientDiff;
@end

@implementation SCWZone

- (NSArray)clientRecords
{
  schema = [(SCWZone *)self schema];
  clientDiff = [(SCWZone *)self clientDiff];
  store = [(SCWZone *)self store];
  serverRecords = [store serverRecords];
  v7 = [clientDiff applyToRecords:serverRecords];
  v8 = [schema validateRecords:v7];

  return v8;
}

- (SCWZoneDiff)clientDiff
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [SCWZoneModificationSilo alloc];
  schema = [(SCWZone *)self schema];
  store = [(SCWZone *)self store];
  serverRecords = [store serverRecords];
  v7 = [(SCWZoneModificationSilo *)v3 initWithZoneSchema:schema contents:serverRecords];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  store2 = [(SCWZone *)self store];
  pendingCommands = [store2 pendingCommands];

  v10 = [pendingCommands countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(pendingCommands);
        }

        [*(*(&v17 + 1) + 8 * i) executeWithZone:v7];
      }

      v11 = [pendingCommands countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  diff = [(SCWZoneModificationSilo *)v7 diff];

  v15 = *MEMORY[0x1E69E9840];

  return diff;
}

- (BOOL)needsFirstSync
{
  store = [(SCWZone *)self store];
  lastSyncDate = [store lastSyncDate];
  v4 = lastSyncDate == 0;

  return v4;
}

- (BOOL)isDirty
{
  store = [(SCWZone *)self store];
  lastSyncDate = [store lastSyncDate];

  store2 = [(SCWZone *)self store];
  lastDirtyDate = [store2 lastDirtyDate];

  if (lastSyncDate)
  {
    if (lastDirtyDate)
    {
      v7 = [lastDirtyDate compare:lastSyncDate] == 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (SCWZone)initWithSchema:(id)schema store:(id)store
{
  schemaCopy = schema;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = SCWZone;
  v9 = [(SCWZone *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_schema, schema);
    objc_storeStrong(&v10->_store, store);
  }

  return v10;
}

@end