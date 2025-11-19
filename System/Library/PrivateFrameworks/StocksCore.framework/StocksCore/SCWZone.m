@interface SCWZone
- (BOOL)isDirty;
- (BOOL)needsFirstSync;
- (NSArray)clientRecords;
- (SCWZone)initWithSchema:(id)a3 store:(id)a4;
- (SCWZoneDiff)clientDiff;
@end

@implementation SCWZone

- (NSArray)clientRecords
{
  v3 = [(SCWZone *)self schema];
  v4 = [(SCWZone *)self clientDiff];
  v5 = [(SCWZone *)self store];
  v6 = [v5 serverRecords];
  v7 = [v4 applyToRecords:v6];
  v8 = [v3 validateRecords:v7];

  return v8;
}

- (SCWZoneDiff)clientDiff
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [SCWZoneModificationSilo alloc];
  v4 = [(SCWZone *)self schema];
  v5 = [(SCWZone *)self store];
  v6 = [v5 serverRecords];
  v7 = [(SCWZoneModificationSilo *)v3 initWithZoneSchema:v4 contents:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(SCWZone *)self store];
  v9 = [v8 pendingCommands];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v17 + 1) + 8 * i) executeWithZone:v7];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v14 = [(SCWZoneModificationSilo *)v7 diff];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)needsFirstSync
{
  v2 = [(SCWZone *)self store];
  v3 = [v2 lastSyncDate];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)isDirty
{
  v3 = [(SCWZone *)self store];
  v4 = [v3 lastSyncDate];

  v5 = [(SCWZone *)self store];
  v6 = [v5 lastDirtyDate];

  if (v4)
  {
    if (v6)
    {
      v7 = [v6 compare:v4] == 1;
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

- (SCWZone)initWithSchema:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SCWZone;
  v9 = [(SCWZone *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_schema, a3);
    objc_storeStrong(&v10->_store, a4);
  }

  return v10;
}

@end