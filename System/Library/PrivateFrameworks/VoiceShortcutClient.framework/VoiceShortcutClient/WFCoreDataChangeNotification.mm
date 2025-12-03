@interface WFCoreDataChangeNotification
- (BOOL)appliesToResultState:(id)state;
- (BOOL)hasChanges;
- (WFCoreDataChangeNotification)initWithDictionaryRepresentation:(id)representation;
- (WFCoreDataChangeNotification)initWithInvalidatedAllObjects:(BOOL)objects updated:(id)updated inserted:(id)inserted deleted:(id)deleted processIdentifier:(int)identifier;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (id)notificationByMergingChangesFromNotification:(id)notification;
@end

@implementation WFCoreDataChangeNotification

- (BOOL)hasChanges
{
  if ([(WFCoreDataChangeNotification *)self invalidatedAllObjects])
  {
    return 1;
  }

  updated = [(WFCoreDataChangeNotification *)self updated];
  if ([updated count])
  {
    v3 = 1;
  }

  else
  {
    inserted = [(WFCoreDataChangeNotification *)self inserted];
    if ([inserted count])
    {
      v3 = 1;
    }

    else
    {
      deleted = [(WFCoreDataChangeNotification *)self deleted];
      v3 = [deleted count] != 0;
    }
  }

  return v3;
}

- (id)debugDescription
{
  dictionaryRepresentation = [(WFCoreDataChangeNotification *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation debugDescription];

  return v3;
}

- (BOOL)appliesToResultState:(id)state
{
  v32 = *MEMORY[0x1E69E9840];
  stateCopy = state;
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
    inserted = [(WFCoreDataChangeNotification *)self inserted];
    v7 = [inserted countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(inserted);
          }

          objectType = [*(*(&v26 + 1) + 8 * i) objectType];
          if (objectType == [stateCopy objectType])
          {
LABEL_22:
            LOBYTE(v5) = 1;
            goto LABEL_23;
          }
        }

        v8 = [inserted countByEnumeratingWithState:&v26 objects:v31 count:16];
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
    updated = [(WFCoreDataChangeNotification *)self updated];
    deleted = [(WFCoreDataChangeNotification *)self deleted];
    inserted = [updated setByAddingObjectsFromSet:deleted];

    v5 = [inserted countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v5)
    {
      v14 = *v23;
      while (2)
      {
        for (j = 0; j != v5; ++j)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(inserted);
          }

          v16 = *(*(&v22 + 1) + 8 * j);
          state = [stateCopy state];
          if ([state containsObject:v16])
          {

            goto LABEL_22;
          }

          state2 = [stateCopy state];
          v19 = [state2 count];

          if (!v19)
          {
            goto LABEL_22;
          }
        }

        v5 = [inserted countByEnumeratingWithState:&v22 objects:v30 count:16];
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
  updated = [(WFCoreDataChangeNotification *)self updated];
  v5 = WFArrayFromChanges(updated);
  v15[1] = v5;
  v14[2] = @"inserted";
  inserted = [(WFCoreDataChangeNotification *)self inserted];
  v7 = WFArrayFromChanges(inserted);
  v15[2] = v7;
  v14[3] = @"deleted";
  deleted = [(WFCoreDataChangeNotification *)self deleted];
  v9 = WFArrayFromChanges(deleted);
  v15[3] = v9;
  v14[4] = @"processIdentifier";
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[WFCoreDataChangeNotification processIdentifier](self, "processIdentifier")}];
  v15[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)notificationByMergingChangesFromNotification:(id)notification
{
  notificationCopy = notification;
  v16 = [WFCoreDataChangeNotification alloc];
  if ([(WFCoreDataChangeNotification *)self invalidatedAllObjects])
  {
    invalidatedAllObjects = 1;
  }

  else
  {
    invalidatedAllObjects = [notificationCopy invalidatedAllObjects];
  }

  updated = [(WFCoreDataChangeNotification *)self updated];
  updated2 = [notificationCopy updated];
  v6 = [updated setByAddingObjectsFromSet:updated2];
  inserted = [(WFCoreDataChangeNotification *)self inserted];
  inserted2 = [notificationCopy inserted];
  v9 = [inserted setByAddingObjectsFromSet:inserted2];
  deleted = [(WFCoreDataChangeNotification *)self deleted];
  deleted2 = [notificationCopy deleted];
  v12 = [deleted setByAddingObjectsFromSet:deleted2];
  v13 = [(WFCoreDataChangeNotification *)v16 initWithInvalidatedAllObjects:invalidatedAllObjects updated:v6 inserted:v9 deleted:v12 processIdentifier:[(WFCoreDataChangeNotification *)self processIdentifier]];

  return v13;
}

- (WFCoreDataChangeNotification)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKeyedSubscript:@"invalidatedAllObjects"];
  bOOLValue = [v4 BOOLValue];
  v6 = [representationCopy objectForKeyedSubscript:@"updated"];
  v7 = WFChangesFromArray(v6);
  v8 = [representationCopy objectForKeyedSubscript:@"inserted"];
  v9 = WFChangesFromArray(v8);
  v10 = [representationCopy objectForKeyedSubscript:@"deleted"];
  v11 = WFChangesFromArray(v10);
  v12 = [representationCopy objectForKeyedSubscript:@"processIdentifier"];

  v13 = -[WFCoreDataChangeNotification initWithInvalidatedAllObjects:updated:inserted:deleted:processIdentifier:](self, "initWithInvalidatedAllObjects:updated:inserted:deleted:processIdentifier:", bOOLValue, v7, v9, v11, [v12 integerValue]);
  return v13;
}

- (WFCoreDataChangeNotification)initWithInvalidatedAllObjects:(BOOL)objects updated:(id)updated inserted:(id)inserted deleted:(id)deleted processIdentifier:(int)identifier
{
  updatedCopy = updated;
  insertedCopy = inserted;
  deletedCopy = deleted;
  v25.receiver = self;
  v25.super_class = WFCoreDataChangeNotification;
  v15 = [(WFCoreDataChangeNotification *)&v25 init];
  v16 = v15;
  if (v15)
  {
    v15->_invalidatedAllObjects = objects;
    v17 = [updatedCopy copy];
    updated = v16->_updated;
    v16->_updated = v17;

    v19 = [insertedCopy copy];
    inserted = v16->_inserted;
    v16->_inserted = v19;

    v21 = [deletedCopy copy];
    deleted = v16->_deleted;
    v16->_deleted = v21;

    v16->_processIdentifier = identifier;
    v23 = v16;
  }

  return v16;
}

@end