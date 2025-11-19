@interface CRTTCompatibleDocument
- (CRTTCompatibleDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6;
- (CRTTCompatibleDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6 topoTimestamp:(id)a7;
- (unint64_t)mergeResultForMergingWithDocument:(id)a3;
- (void)mergeTimestampWithDocument:(id)a3;
- (void)realizeLocalChanges;
@end

@implementation CRTTCompatibleDocument

- (CRTTCompatibleDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[TTCRVectorMultiTimestamp alloc] initWithCapacity:2];
  v15 = [(CRTTCompatibleDocument *)self initWithVersion:v13 startVersion:v12 rootObject:v11 replica:v10 topoTimestamp:v14];

  return v15;
}

- (CRTTCompatibleDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6 topoTimestamp:(id)a7
{
  v12 = a7;
  v18.receiver = self;
  v18.super_class = CRTTCompatibleDocument;
  v13 = [(CRDocument *)&v18 initWithVersion:a3 startVersion:a4 rootObject:a5 replica:a6];
  v14 = v13;
  if (v13)
  {
    [(CRTTCompatibleDocument *)v13 setSharedTopotextTimestamp:v12];
    v15 = [MEMORY[0x1E695DF70] array];
    [(CRTTCompatibleDocument *)v14 setStringsWithClocksNeedingUpdating:v15];

    v16 = [MEMORY[0x1E695DF70] array];
    [(CRTTCompatibleDocument *)v14 setStringsWithClocksToResetAfterRealizingLocalChanges:v16];
  }

  return v14;
}

- (unint64_t)mergeResultForMergingWithDocument:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);
  if (v6 && (-[CRTTCompatibleDocument sharedTopotextTimestamp](self, "sharedTopotextTimestamp"), v7 = objc_claimAutoreleasedReturnValue(), [v6 sharedTopotextTimestamp], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "compareTo:", v8), v8, v7, (v9 & 1) != 0))
  {
    v10 = 2;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CRTTCompatibleDocument;
    v10 = [(CRDocument *)&v12 mergeResultForMergingWithDocument:v4];
  }

  return v10;
}

- (void)mergeTimestampWithDocument:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CRTTCompatibleDocument;
  [(CRDocument *)&v21 mergeTimestampWithDocument:v4];
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);
  if (v6)
  {
    v7 = [(CRTTCompatibleDocument *)self sharedTopotextTimestamp];
    v8 = [v6 sharedTopotextTimestamp];
    [v7 mergeWithTimestamp:v8];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(CRTTCompatibleDocument *)self stringsWithClocksNeedingUpdating];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
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

          v14 = *(*(&v17 + 1) + 8 * i);
          [v14 updateClock];
          [v14 checkTimestampLogStyleErrors:1];
          [v14 resetLocalReplicaClocksToTimestampValues];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }

    v15 = [(CRTTCompatibleDocument *)self stringsWithClocksNeedingUpdating];
    [v15 removeAllObjects];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)realizeLocalChanges
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CRTTCompatibleDocument;
  [(CRDocument *)&v16 realizeLocalChanges];
  v3 = [(CRTTCompatibleDocument *)self stringsWithClocksToResetAfterRealizingLocalChanges];
  v4 = [v3 copy];

  v5 = [(CRTTCompatibleDocument *)self stringsWithClocksToResetAfterRealizingLocalChanges];
  [v5 removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) resetLocalReplicaClocksToTimestampValues];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end