@interface SCKZone
- (BOOL)isDirty;
- (BOOL)needsFirstSync;
- (NSArray)clientRecords;
- (SCKZone)initWithSchema:(id)a3 store:(id)a4;
- (SCKZoneDiff)clientDiff;
@end

@implementation SCKZone

- (SCKZone)initWithSchema:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SCKZone;
  v9 = [(SCKZone *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_schema, a3);
    objc_storeStrong(&v10->_store, a4);
  }

  return v10;
}

- (NSArray)clientRecords
{
  v3 = [(SCKZone *)self schema];
  v4 = [(SCKZone *)self clientDiff];
  v5 = [(SCKZone *)self store];
  v6 = [v5 serverRecords];
  v7 = [v4 applyToRecords:v6];
  v8 = [v3 validateRecords:v7];

  return v8;
}

- (SCKZoneDiff)clientDiff
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [SCKZoneModificationSilo alloc];
  v4 = [(SCKZone *)self schema];
  v5 = [(SCKZone *)self store];
  v6 = [v5 serverRecords];
  v7 = [(SCKZoneModificationSilo *)v3 initWithZoneSchema:v4 contents:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SCKZone *)self store];
  v9 = [v8 pendingCommands];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * i) executeWithZone:v7];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [(SCKZoneModificationSilo *)v7 diff];

  return v14;
}

- (BOOL)needsFirstSync
{
  v2 = [(SCKZone *)self store];
  v3 = [v2 lastSyncDate];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)isDirty
{
  v3 = [(SCKZone *)self store];
  v4 = [v3 lastSyncDate];

  v5 = [(SCKZone *)self store];
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

@end