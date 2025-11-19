@interface _REMNSPersistentHistoryChangeStorage
- (BOOL)isEqual:(id)a3;
- (_REMNSPersistentHistoryChangeStorage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _REMNSPersistentHistoryChangeStorage

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[_REMNSPersistentHistoryChangeStorage changeID](self forKey:{"changeID"), @"changeID"}];
  v5 = [(_REMNSPersistentHistoryChangeStorage *)self changedObjectIDStorage];
  [v4 encodeObject:v5 forKey:@"changedObjectID"];

  [v4 encodeInteger:-[_REMNSPersistentHistoryChangeStorage changeType](self forKey:{"changeType"), @"changeType"}];
  v6 = [(_REMNSPersistentHistoryChangeStorage *)self tombstone];
  [v4 encodeObject:v6 forKey:@"tombstone"];

  v7 = [(_REMNSPersistentHistoryChangeStorage *)self updatedProperties];
  [v4 encodeObject:v7 forKey:@"updatedProperties"];
}

- (_REMNSPersistentHistoryChangeStorage)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _REMNSPersistentHistoryChangeStorage;
  v5 = [(_REMNSPersistentHistoryChangeStorage *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changedObjectID"];
    changedObjectIDStorage = v5->_changedObjectIDStorage;
    v5->_changedObjectIDStorage = v6;
    v8 = v6;

    v5->_changeID = [v4 decodeInt64ForKey:@"changeID"];
    v9 = [v4 decodeIntegerForKey:@"changeType"];
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
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tombstone"];
    tombstone = v5->_tombstone;
    v5->_tombstone = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"updatedProperties"];
    updatedProperties = v5->_updatedProperties;
    v5->_updatedProperties = v16;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v7 = [(_REMNSPersistentHistoryChangeStorage *)self changeID];
    if (v7 != [(_REMNSPersistentHistoryChangeStorage *)v6 changeID])
    {
      goto LABEL_12;
    }

    v8 = [(_REMNSPersistentHistoryChangeStorage *)self changedObjectIDStorage];
    v9 = [(_REMNSPersistentHistoryChangeStorage *)v6 changedObjectIDStorage];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [(_REMNSPersistentHistoryChangeStorage *)self changedObjectIDStorage];
      v12 = [(_REMNSPersistentHistoryChangeStorage *)v6 changedObjectIDStorage];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_12;
      }
    }

    v15 = [(_REMNSPersistentHistoryChangeStorage *)self changeType];
    if (v15 == [(_REMNSPersistentHistoryChangeStorage *)v6 changeType])
    {
      v16 = [(_REMNSPersistentHistoryChangeStorage *)self tombstone];
      v17 = [(_REMNSPersistentHistoryChangeStorage *)v6 tombstone];
      v18 = v17;
      if (v16 == v17)
      {
      }

      else
      {
        v19 = [(_REMNSPersistentHistoryChangeStorage *)self tombstone];
        v20 = [(_REMNSPersistentHistoryChangeStorage *)v6 tombstone];
        v21 = [v19 isEqual:v20];

        if (!v21)
        {
          goto LABEL_12;
        }
      }

      v23 = [(_REMNSPersistentHistoryChangeStorage *)self updatedProperties];
      v24 = [(_REMNSPersistentHistoryChangeStorage *)v6 updatedProperties];
      if (v23 == v24)
      {
        v14 = 1;
      }

      else
      {
        v25 = [(_REMNSPersistentHistoryChangeStorage *)self updatedProperties];
        v26 = [(_REMNSPersistentHistoryChangeStorage *)v6 updatedProperties];
        v14 = [v25 isEqual:v26];
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