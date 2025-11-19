@interface WFCoreDataChangeNotification
- (BOOL)appliesToResultState:(id)a3;
- (BOOL)hasChanges;
- (WFCoreDataChangeNotification)initWithDictionaryRepresentation:(id)a3;
- (WFCoreDataChangeNotification)initWithInvalidatedAllObjects:(BOOL)a3 updated:(id)a4 inserted:(id)a5 deleted:(id)a6 processIdentifier:(int)a7;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (id)notificationByMergingChangesFromNotification:(id)a3;
@end

@implementation WFCoreDataChangeNotification

- (BOOL)hasChanges
{
  if ([(WFCoreDataChangeNotification *)self invalidatedAllObjects])
  {
    return 1;
  }

  v4 = [(WFCoreDataChangeNotification *)self updated];
  if ([v4 count])
  {
    v3 = 1;
  }

  else
  {
    v5 = [(WFCoreDataChangeNotification *)self inserted];
    if ([v5 count])
    {
      v3 = 1;
    }

    else
    {
      v6 = [(WFCoreDataChangeNotification *)self deleted];
      v3 = [v6 count] != 0;
    }
  }

  return v3;
}

- (id)debugDescription
{
  v2 = [(WFCoreDataChangeNotification *)self dictionaryRepresentation];
  v3 = [v2 debugDescription];

  return v3;
}

- (BOOL)appliesToResultState:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(WFCoreDataChangeNotification *)self invalidatedAllObjects])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [(WFCoreDataChangeNotification *)self inserted];
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v26 + 1) + 8 * i) objectType];
          if (v11 == [v4 objectType])
          {
LABEL_22:
            LOBYTE(v5) = 1;
            goto LABEL_23;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [(WFCoreDataChangeNotification *)self updated];
    v13 = [(WFCoreDataChangeNotification *)self deleted];
    v6 = [v12 setByAddingObjectsFromSet:v13];

    v5 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v5)
    {
      v14 = *v23;
      while (2)
      {
        for (j = 0; j != v5; ++j)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v6);
          }

          v16 = *(*(&v22 + 1) + 8 * j);
          v17 = [v4 state];
          if ([v17 containsObject:v16])
          {

            goto LABEL_22;
          }

          v18 = [v4 state];
          v19 = [v18 count];

          if (!v19)
          {
            goto LABEL_22;
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)dictionaryRepresentation
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"invalidatedAllObjects";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFCoreDataChangeNotification invalidatedAllObjects](self, "invalidatedAllObjects")}];
  v15[0] = v3;
  v14[1] = @"updated";
  v4 = [(WFCoreDataChangeNotification *)self updated];
  v5 = WFArrayFromChanges(v4);
  v15[1] = v5;
  v14[2] = @"inserted";
  v6 = [(WFCoreDataChangeNotification *)self inserted];
  v7 = WFArrayFromChanges(v6);
  v15[2] = v7;
  v14[3] = @"deleted";
  v8 = [(WFCoreDataChangeNotification *)self deleted];
  v9 = WFArrayFromChanges(v8);
  v15[3] = v9;
  v14[4] = @"processIdentifier";
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[WFCoreDataChangeNotification processIdentifier](self, "processIdentifier")}];
  v15[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)notificationByMergingChangesFromNotification:(id)a3
{
  v4 = a3;
  v16 = [WFCoreDataChangeNotification alloc];
  if ([(WFCoreDataChangeNotification *)self invalidatedAllObjects])
  {
    v15 = 1;
  }

  else
  {
    v15 = [v4 invalidatedAllObjects];
  }

  v17 = [(WFCoreDataChangeNotification *)self updated];
  v5 = [v4 updated];
  v6 = [v17 setByAddingObjectsFromSet:v5];
  v7 = [(WFCoreDataChangeNotification *)self inserted];
  v8 = [v4 inserted];
  v9 = [v7 setByAddingObjectsFromSet:v8];
  v10 = [(WFCoreDataChangeNotification *)self deleted];
  v11 = [v4 deleted];
  v12 = [v10 setByAddingObjectsFromSet:v11];
  v13 = [(WFCoreDataChangeNotification *)v16 initWithInvalidatedAllObjects:v15 updated:v6 inserted:v9 deleted:v12 processIdentifier:[(WFCoreDataChangeNotification *)self processIdentifier]];

  return v13;
}

- (WFCoreDataChangeNotification)initWithDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"invalidatedAllObjects"];
  v5 = [v4 BOOLValue];
  v6 = [v3 objectForKeyedSubscript:@"updated"];
  v7 = WFChangesFromArray(v6);
  v8 = [v3 objectForKeyedSubscript:@"inserted"];
  v9 = WFChangesFromArray(v8);
  v10 = [v3 objectForKeyedSubscript:@"deleted"];
  v11 = WFChangesFromArray(v10);
  v12 = [v3 objectForKeyedSubscript:@"processIdentifier"];

  v13 = -[WFCoreDataChangeNotification initWithInvalidatedAllObjects:updated:inserted:deleted:processIdentifier:](self, "initWithInvalidatedAllObjects:updated:inserted:deleted:processIdentifier:", v5, v7, v9, v11, [v12 integerValue]);
  return v13;
}

- (WFCoreDataChangeNotification)initWithInvalidatedAllObjects:(BOOL)a3 updated:(id)a4 inserted:(id)a5 deleted:(id)a6 processIdentifier:(int)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = WFCoreDataChangeNotification;
  v15 = [(WFCoreDataChangeNotification *)&v25 init];
  v16 = v15;
  if (v15)
  {
    v15->_invalidatedAllObjects = a3;
    v17 = [v12 copy];
    updated = v16->_updated;
    v16->_updated = v17;

    v19 = [v13 copy];
    inserted = v16->_inserted;
    v16->_inserted = v19;

    v21 = [v14 copy];
    deleted = v16->_deleted;
    v16->_deleted = v21;

    v16->_processIdentifier = a7;
    v23 = v16;
  }

  return v16;
}

@end