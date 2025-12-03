@interface _REMNSPersistentHistoryChangeStorage
- (BOOL)isEqual:(id)equal;
- (_REMNSPersistentHistoryChangeStorage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _REMNSPersistentHistoryChangeStorage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[_REMNSPersistentHistoryChangeStorage changeID](self forKey:{"changeID"), @"changeID"}];
  changedObjectIDStorage = [(_REMNSPersistentHistoryChangeStorage *)self changedObjectIDStorage];
  [coderCopy encodeObject:changedObjectIDStorage forKey:@"changedObjectID"];

  [coderCopy encodeInteger:-[_REMNSPersistentHistoryChangeStorage changeType](self forKey:{"changeType"), @"changeType"}];
  tombstone = [(_REMNSPersistentHistoryChangeStorage *)self tombstone];
  [coderCopy encodeObject:tombstone forKey:@"tombstone"];

  updatedProperties = [(_REMNSPersistentHistoryChangeStorage *)self updatedProperties];
  [coderCopy encodeObject:updatedProperties forKey:@"updatedProperties"];
}

- (_REMNSPersistentHistoryChangeStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _REMNSPersistentHistoryChangeStorage;
  v5 = [(_REMNSPersistentHistoryChangeStorage *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changedObjectID"];
    changedObjectIDStorage = v5->_changedObjectIDStorage;
    v5->_changedObjectIDStorage = v6;
    v8 = v6;

    v5->_changeID = [coderCopy decodeInt64ForKey:@"changeID"];
    v9 = [coderCopy decodeIntegerForKey:@"changeType"];
    if (v9 >= 3)
    {
      v10 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [_REMNSPersistentHistoryChangeStorage initWithCoder:];
      }

      v9 = 1;
    }

    v5->_changeType = v9;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tombstone"];
    tombstone = v5->_tombstone;
    v5->_tombstone = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"updatedProperties"];
    updatedProperties = v5->_updatedProperties;
    v5->_updatedProperties = v16;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    changeID = [(_REMNSPersistentHistoryChangeStorage *)self changeID];
    if (changeID != [(_REMNSPersistentHistoryChangeStorage *)v6 changeID])
    {
      goto LABEL_12;
    }

    changedObjectIDStorage = [(_REMNSPersistentHistoryChangeStorage *)self changedObjectIDStorage];
    changedObjectIDStorage2 = [(_REMNSPersistentHistoryChangeStorage *)v6 changedObjectIDStorage];
    v10 = changedObjectIDStorage2;
    if (changedObjectIDStorage == changedObjectIDStorage2)
    {
    }

    else
    {
      changedObjectIDStorage3 = [(_REMNSPersistentHistoryChangeStorage *)self changedObjectIDStorage];
      changedObjectIDStorage4 = [(_REMNSPersistentHistoryChangeStorage *)v6 changedObjectIDStorage];
      v13 = [changedObjectIDStorage3 isEqual:changedObjectIDStorage4];

      if (!v13)
      {
        goto LABEL_12;
      }
    }

    changeType = [(_REMNSPersistentHistoryChangeStorage *)self changeType];
    if (changeType == [(_REMNSPersistentHistoryChangeStorage *)v6 changeType])
    {
      tombstone = [(_REMNSPersistentHistoryChangeStorage *)self tombstone];
      tombstone2 = [(_REMNSPersistentHistoryChangeStorage *)v6 tombstone];
      v18 = tombstone2;
      if (tombstone == tombstone2)
      {
      }

      else
      {
        tombstone3 = [(_REMNSPersistentHistoryChangeStorage *)self tombstone];
        tombstone4 = [(_REMNSPersistentHistoryChangeStorage *)v6 tombstone];
        v21 = [tombstone3 isEqual:tombstone4];

        if (!v21)
        {
          goto LABEL_12;
        }
      }

      updatedProperties = [(_REMNSPersistentHistoryChangeStorage *)self updatedProperties];
      updatedProperties2 = [(_REMNSPersistentHistoryChangeStorage *)v6 updatedProperties];
      if (updatedProperties == updatedProperties2)
      {
        v14 = 1;
      }

      else
      {
        updatedProperties3 = [(_REMNSPersistentHistoryChangeStorage *)self updatedProperties];
        updatedProperties4 = [(_REMNSPersistentHistoryChangeStorage *)v6 updatedProperties];
        v14 = [updatedProperties3 isEqual:updatedProperties4];
      }

      goto LABEL_13;
    }

LABEL_12:
    v14 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v14 = 1;
LABEL_14:

  return v14 & 1;
}

- (void)initWithCoder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "Unknown REMChangeType %ld", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end