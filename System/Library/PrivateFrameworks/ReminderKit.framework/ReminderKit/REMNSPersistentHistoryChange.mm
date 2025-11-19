@interface REMNSPersistentHistoryChange
+ (id)shortStringForChangeType:(int64_t)a3;
+ (id)stringForChangeType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (REMChangeTransaction)internal_ChangeTransaction;
- (REMNSPersistentHistoryChange)initWithCoder:(id)a3;
- (REMNSPersistentHistoryChange)initWithPersistentHistoryChange:(id)a3;
- (REMNSPersistentHistoryChange)initWithStorage:(id)a3;
- (id)changedObjectID;
- (id)copyForCoalescing;
- (id)description;
- (id)tombstone;
- (id)updatedProperties;
- (int64_t)changeID;
- (int64_t)changeType;
- (void)changedObjectID;
- (void)encodeWithCoder:(id)a3;
- (void)resolveObjectIDWithUUID:(id)a3 entityName:(id)a4;
@end

@implementation REMNSPersistentHistoryChange

- (REMNSPersistentHistoryChange)initWithStorage:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = REMNSPersistentHistoryChange;
    v6 = [(REMNSPersistentHistoryChange *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_storage, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (REMNSPersistentHistoryChange)initWithPersistentHistoryChange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(_REMNSPersistentHistoryChangeStorage);
    -[_REMNSPersistentHistoryChangeStorage setChangeID:](v5, "setChangeID:", [v4 changeID]);
    -[_REMNSPersistentHistoryChangeStorage setChangeType:](v5, "setChangeType:", [v4 changeType]);
    v6 = [v4 updatedProperties];
    v7 = [v6 valueForKey:@"name"];
    [(_REMNSPersistentHistoryChangeStorage *)v5 setUpdatedProperties:v7];

    v8 = [REMNSPersistentHistoryChangeTombstone alloc];
    v9 = [v4 tombstone];
    v10 = [(REMNSPersistentHistoryChangeTombstone *)v8 initWithDictionary:v9];
    [(_REMNSPersistentHistoryChangeStorage *)v5 setTombstone:v10];

    [(_REMNSPersistentHistoryChangeStorage *)v5 setChangedObjectIDStorage:0];
    v11 = [(REMNSPersistentHistoryChange *)self initWithStorage:v5];
    if (v11)
    {
      v12 = [v4 changedObjectID];
      persistentHistoryChangeObjectID = v11->_persistentHistoryChangeObjectID;
      v11->_persistentHistoryChangeObjectID = v12;
    }

    self = v11;

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)resolveObjectIDWithUUID:(id)a3 entityName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[_REMChangedObjectIDStorage alloc] initWithUUID:v7 entityName:v6];

  v8 = [(REMNSPersistentHistoryChange *)self storage];
  [v8 setChangedObjectIDStorage:v9];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(REMNSPersistentHistoryChange *)self changeID];
  v5 = [REMNSPersistentHistoryChange shortStringForChangeType:[(REMNSPersistentHistoryChange *)self changeType]];
  v6 = [(REMNSPersistentHistoryChange *)self persistentHistoryChangeObjectID];
  v7 = [(REMNSPersistentHistoryChange *)self storage];
  v8 = [v7 changedObjectIDStorage];
  v9 = [v3 stringWithFormat:@"<REMNSPersistentHistoryChange - changeID(%lld) changeType(%@) mocID(%@) remID(%@)>", v4, v5, v6, v8];

  return v9;
}

- (int64_t)changeID
{
  v2 = [(REMNSPersistentHistoryChange *)self storage];
  v3 = [v2 changeID];

  return v3;
}

- (id)changedObjectID
{
  v3 = [(REMNSPersistentHistoryChange *)self cachedChangedREMObjectID];

  if (v3)
  {
    v4 = [(REMNSPersistentHistoryChange *)self cachedChangedREMObjectID];
    goto LABEL_13;
  }

  v5 = [(REMNSPersistentHistoryChange *)self storage];
  v6 = [v5 changedObjectIDStorage];

  if (!v6)
  {
    v7 = +[REMLog changeTracking];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [REMNSPersistentHistoryChange changedObjectID];
    }

    goto LABEL_11;
  }

  v7 = [v6 entityName];
  if (!v7)
  {
    v10 = +[REMLog changeTracking];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [REMNSPersistentHistoryChange changedObjectID];
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v8 = [v6 uuid];
  v9 = [v6 entityName];
  v4 = [REMObjectID objectIDWithUUID:v8 entityName:v9];

  [(REMNSPersistentHistoryChange *)self setCachedChangedREMObjectID:v4];
LABEL_12:

LABEL_13:

  return v4;
}

- (int64_t)changeType
{
  v2 = [(REMNSPersistentHistoryChange *)self storage];
  v3 = [v2 changeType];

  return v3;
}

- (id)tombstone
{
  v2 = [(REMNSPersistentHistoryChange *)self storage];
  v3 = [v2 tombstone];

  return v3;
}

+ (id)shortStringForChangeType:(int64_t)a3
{
  v3 = [a1 stringForChangeType:a3];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"REMChangeType" withString:&stru_1F0D67F00];

  return v4;
}

+ (id)stringForChangeType:(int64_t)a3
{
  if (a3 < 3)
  {
    return off_1E7508A38[a3];
  }

  v4 = +[REMLog changeTracking];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    +[REMNSPersistentHistoryChange stringForChangeType:];
  }

  return 0;
}

- (id)updatedProperties
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(REMNSPersistentHistoryChange *)self storage];
  v4 = [v3 updatedProperties];

  if (v4)
  {
    [MEMORY[0x1E695DFA8] setWithSet:v4];
  }

  else
  {
    [MEMORY[0x1E695DFA8] set];
  }
  v5 = ;
  if ([(REMNSPersistentHistoryChange *)self isCoalesced])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(REMNSPersistentHistoryChange *)self coalescedChanges];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) updatedProperties];
          if (v11)
          {
            [v5 unionSet:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)copyForCoalescing
{
  v3 = [REMNSPersistentHistoryChange alloc];
  v4 = [(REMNSPersistentHistoryChange *)self storage];
  v5 = [(REMNSPersistentHistoryChange *)v3 initWithStorage:v4];

  v6 = [(REMNSPersistentHistoryChange *)self internal_ChangeTransaction];
  [(REMNSPersistentHistoryChange *)v5 setInternal_ChangeTransaction:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMNSPersistentHistoryChange *)self storage];
  [v4 encodeObject:v5 forKey:@"storage"];
}

- (REMNSPersistentHistoryChange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storage"];

  v6 = [(REMNSPersistentHistoryChange *)self initWithStorage:v5];
  return v6;
}

- (REMChangeTransaction)internal_ChangeTransaction
{
  WeakRetained = objc_loadWeakRetained(&self->_internal_ChangeTransaction);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMNSPersistentHistoryChange *)self storage];
      v8 = [(REMNSPersistentHistoryChange *)v6 storage];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(REMNSPersistentHistoryChange *)self storage];
        v10 = [(REMNSPersistentHistoryChange *)v6 storage];
        v11 = [v9 isEqual:v10];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (void)changedObjectID
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_ERROR, "Cannot convert changedObjectIDStorage to changedObjectID because it is nil in persistentHistoryChange {change: %@}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)stringForChangeType:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "Unexpected REMChangeType {type: %lu}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end