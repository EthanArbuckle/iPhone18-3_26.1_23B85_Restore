@interface _REMChangedObjectIDStorage
- (BOOL)isEqual:(id)a3;
- (_REMChangedObjectIDStorage)initWithCoder:(id)a3;
- (_REMChangedObjectIDStorage)initWithUUID:(id)a3 entityName:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _REMChangedObjectIDStorage

- (_REMChangedObjectIDStorage)initWithUUID:(id)a3 entityName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v9 = +[REMLog changeTracking];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(_REMChangedObjectIDStorage *)v6 initWithUUID:v8 entityName:v9];
    }
  }

  v16.receiver = self;
  v16.super_class = _REMChangedObjectIDStorage;
  v10 = [(_REMChangedObjectIDStorage *)&v16 init];
  if (v10)
  {
    v11 = [v6 copy];
    uuid = v10->_uuid;
    v10->_uuid = v11;

    v13 = [v8 copy];
    entityName = v10->_entityName;
    v10->_entityName = v13;
  }

  return v10;
}

- (_REMChangedObjectIDStorage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];

  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    self = [(_REMChangedObjectIDStorage *)self initWithUUID:v6 entityName:v5];
    v8 = self;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_REMChangedObjectIDStorage *)self entityName];
  [v4 encodeObject:v5 forKey:@"entityName"];

  v6 = [(_REMChangedObjectIDStorage *)self uuid];
  [v4 encodeObject:v6 forKey:@"uuid"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(_REMChangedObjectIDStorage *)self entityName];
      v8 = [(_REMChangedObjectIDStorage *)v6 entityName];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(_REMChangedObjectIDStorage *)self entityName];
        v11 = [(_REMChangedObjectIDStorage *)v6 entityName];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [(_REMChangedObjectIDStorage *)self uuid];
      v15 = [(_REMChangedObjectIDStorage *)v6 uuid];
      if (v14 == v15)
      {
        v13 = 1;
      }

      else
      {
        v16 = [(_REMChangedObjectIDStorage *)self uuid];
        v17 = [(_REMChangedObjectIDStorage *)v6 uuid];
        v13 = [v16 isEqual:v17];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 1;
LABEL_13:

  return v13 & 1;
}

- (void)initWithUUID:(NSObject *)a3 entityName:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 UUIDString];
  OUTLINED_FUNCTION_2();
  v8 = 2114;
  v9 = a2;
  _os_log_fault_impl(&dword_19A0DB000, a3, OS_LOG_TYPE_FAULT, "_REMChangedObjectIDStorage: nil value passed to non-nil parameter. Something must have gone wrong. {uuid: %{public}@, entityName: %{public}@}", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end