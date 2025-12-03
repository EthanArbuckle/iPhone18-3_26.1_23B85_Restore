@interface REMNSPersistentHistoryChange
+ (id)shortStringForChangeType:(int64_t)type;
+ (id)stringForChangeType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (REMChangeTransaction)internal_ChangeTransaction;
- (REMNSPersistentHistoryChange)initWithCoder:(id)coder;
- (REMNSPersistentHistoryChange)initWithPersistentHistoryChange:(id)change;
- (REMNSPersistentHistoryChange)initWithStorage:(id)storage;
- (id)changedObjectID;
- (id)copyForCoalescing;
- (id)description;
- (id)tombstone;
- (id)updatedProperties;
- (int64_t)changeID;
- (int64_t)changeType;
- (void)changedObjectID;
- (void)encodeWithCoder:(id)coder;
- (void)resolveObjectIDWithUUID:(id)d entityName:(id)name;
@end

@implementation REMNSPersistentHistoryChange

- (REMNSPersistentHistoryChange)initWithStorage:(id)storage
{
  storageCopy = storage;
  if (storageCopy)
  {
    v10.receiver = self;
    v10.super_class = REMNSPersistentHistoryChange;
    v6 = [(REMNSPersistentHistoryChange *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_storage, storage);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (REMNSPersistentHistoryChange)initWithPersistentHistoryChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    v5 = objc_alloc_init(_REMNSPersistentHistoryChangeStorage);
    -[_REMNSPersistentHistoryChangeStorage setChangeID:](v5, "setChangeID:", [changeCopy changeID]);
    -[_REMNSPersistentHistoryChangeStorage setChangeType:](v5, "setChangeType:", [changeCopy changeType]);
    updatedProperties = [changeCopy updatedProperties];
    v7 = [updatedProperties valueForKey:@"name"];
    [(_REMNSPersistentHistoryChangeStorage *)v5 setUpdatedProperties:v7];

    v8 = [REMNSPersistentHistoryChangeTombstone alloc];
    tombstone = [changeCopy tombstone];
    v10 = [(REMNSPersistentHistoryChangeTombstone *)v8 initWithDictionary:tombstone];
    [(_REMNSPersistentHistoryChangeStorage *)v5 setTombstone:v10];

    [(_REMNSPersistentHistoryChangeStorage *)v5 setChangedObjectIDStorage:0];
    v11 = [(REMNSPersistentHistoryChange *)self initWithStorage:v5];
    if (v11)
    {
      changedObjectID = [changeCopy changedObjectID];
      persistentHistoryChangeObjectID = v11->_persistentHistoryChangeObjectID;
      v11->_persistentHistoryChangeObjectID = changedObjectID;
    }

    self = v11;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)resolveObjectIDWithUUID:(id)d entityName:(id)name
{
  nameCopy = name;
  dCopy = d;
  v9 = [[_REMChangedObjectIDStorage alloc] initWithUUID:dCopy entityName:nameCopy];

  storage = [(REMNSPersistentHistoryChange *)self storage];
  [storage setChangedObjectIDStorage:v9];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  changeID = [(REMNSPersistentHistoryChange *)self changeID];
  v5 = [REMNSPersistentHistoryChange shortStringForChangeType:[(REMNSPersistentHistoryChange *)self changeType]];
  persistentHistoryChangeObjectID = [(REMNSPersistentHistoryChange *)self persistentHistoryChangeObjectID];
  storage = [(REMNSPersistentHistoryChange *)self storage];
  changedObjectIDStorage = [storage changedObjectIDStorage];
  v9 = [v3 stringWithFormat:@"<REMNSPersistentHistoryChange - changeID(%lld) changeType(%@) mocID(%@) remID(%@)>", changeID, v5, persistentHistoryChangeObjectID, changedObjectIDStorage];

  return v9;
}

- (int64_t)changeID
{
  storage = [(REMNSPersistentHistoryChange *)self storage];
  changeID = [storage changeID];

  return changeID;
}

- (id)changedObjectID
{
  cachedChangedREMObjectID = [(REMNSPersistentHistoryChange *)self cachedChangedREMObjectID];

  if (cachedChangedREMObjectID)
  {
    cachedChangedREMObjectID2 = [(REMNSPersistentHistoryChange *)self cachedChangedREMObjectID];
    goto LABEL_13;
  }

  storage = [(REMNSPersistentHistoryChange *)self storage];
  changedObjectIDStorage = [storage changedObjectIDStorage];

  if (!changedObjectIDStorage)
  {
    entityName = +[REMLog changeTracking];
    if (os_log_type_enabled(entityName, OS_LOG_TYPE_ERROR))
    {
      [REMNSPersistentHistoryChange changedObjectID];
    }

    goto LABEL_11;
  }

  entityName = [changedObjectIDStorage entityName];
  if (!entityName)
  {
    v10 = +[REMLog changeTracking];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [REMNSPersistentHistoryChange changedObjectID];
    }

LABEL_11:
    cachedChangedREMObjectID2 = 0;
    goto LABEL_12;
  }

  uuid = [changedObjectIDStorage uuid];
  entityName2 = [changedObjectIDStorage entityName];
  cachedChangedREMObjectID2 = [REMObjectID objectIDWithUUID:uuid entityName:entityName2];

  [(REMNSPersistentHistoryChange *)self setCachedChangedREMObjectID:cachedChangedREMObjectID2];
LABEL_12:

LABEL_13:

  return cachedChangedREMObjectID2;
}

- (int64_t)changeType
{
  storage = [(REMNSPersistentHistoryChange *)self storage];
  changeType = [storage changeType];

  return changeType;
}

- (id)tombstone
{
  storage = [(REMNSPersistentHistoryChange *)self storage];
  tombstone = [storage tombstone];

  return tombstone;
}

+ (id)shortStringForChangeType:(int64_t)type
{
  v3 = [self stringForChangeType:type];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"REMChangeType" withString:&stru_1F0D67F00];

  return v4;
}

+ (id)stringForChangeType:(int64_t)type
{
  if (type < 3)
  {
    return off_1E7508A38[type];
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
  storage = [(REMNSPersistentHistoryChange *)self storage];
  updatedProperties = [storage updatedProperties];

  if (updatedProperties)
  {
    [MEMORY[0x1E695DFA8] setWithSet:updatedProperties];
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
    coalescedChanges = [(REMNSPersistentHistoryChange *)self coalescedChanges];
    v7 = [coalescedChanges countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(coalescedChanges);
          }

          updatedProperties2 = [*(*(&v14 + 1) + 8 * i) updatedProperties];
          if (updatedProperties2)
          {
            [v5 unionSet:updatedProperties2];
          }
        }

        v8 = [coalescedChanges countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  storage = [(REMNSPersistentHistoryChange *)self storage];
  v5 = [(REMNSPersistentHistoryChange *)v3 initWithStorage:storage];

  internal_ChangeTransaction = [(REMNSPersistentHistoryChange *)self internal_ChangeTransaction];
  [(REMNSPersistentHistoryChange *)v5 setInternal_ChangeTransaction:internal_ChangeTransaction];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  storage = [(REMNSPersistentHistoryChange *)self storage];
  [coderCopy encodeObject:storage forKey:@"storage"];
}

- (REMNSPersistentHistoryChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storage"];

  v6 = [(REMNSPersistentHistoryChange *)self initWithStorage:v5];
  return v6;
}

- (REMChangeTransaction)internal_ChangeTransaction
{
  WeakRetained = objc_loadWeakRetained(&self->_internal_ChangeTransaction);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      storage = [(REMNSPersistentHistoryChange *)self storage];
      storage2 = [(REMNSPersistentHistoryChange *)v6 storage];
      if (storage == storage2)
      {
        v11 = 1;
      }

      else
      {
        storage3 = [(REMNSPersistentHistoryChange *)self storage];
        storage4 = [(REMNSPersistentHistoryChange *)v6 storage];
        v11 = [storage3 isEqual:storage4];
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