@interface _REMChangedObjectIDStorage
- (BOOL)isEqual:(id)equal;
- (_REMChangedObjectIDStorage)initWithCoder:(id)coder;
- (_REMChangedObjectIDStorage)initWithUUID:(id)d entityName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _REMChangedObjectIDStorage

- (_REMChangedObjectIDStorage)initWithUUID:(id)d entityName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v8 = nameCopy;
  if (!dCopy || !nameCopy)
  {
    v9 = +[REMLog changeTracking];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(_REMChangedObjectIDStorage *)dCopy initWithUUID:v8 entityName:v9];
    }
  }

  v16.receiver = self;
  v16.super_class = _REMChangedObjectIDStorage;
  v10 = [(_REMChangedObjectIDStorage *)&v16 init];
  if (v10)
  {
    v11 = [dCopy copy];
    uuid = v10->_uuid;
    v10->_uuid = v11;

    v13 = [v8 copy];
    entityName = v10->_entityName;
    v10->_entityName = v13;
  }

  return v10;
}

- (_REMChangedObjectIDStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(_REMChangedObjectIDStorage *)self initWithUUID:v6 entityName:v5];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entityName = [(_REMChangedObjectIDStorage *)self entityName];
  [coderCopy encodeObject:entityName forKey:@"entityName"];

  uuid = [(_REMChangedObjectIDStorage *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      entityName = [(_REMChangedObjectIDStorage *)self entityName];
      entityName2 = [(_REMChangedObjectIDStorage *)v6 entityName];
      v9 = entityName2;
      if (entityName == entityName2)
      {
      }

      else
      {
        entityName3 = [(_REMChangedObjectIDStorage *)self entityName];
        entityName4 = [(_REMChangedObjectIDStorage *)v6 entityName];
        v12 = [entityName3 isEqual:entityName4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      uuid = [(_REMChangedObjectIDStorage *)self uuid];
      uuid2 = [(_REMChangedObjectIDStorage *)v6 uuid];
      if (uuid == uuid2)
      {
        v13 = 1;
      }

      else
      {
        uuid3 = [(_REMChangedObjectIDStorage *)self uuid];
        uuid4 = [(_REMChangedObjectIDStorage *)v6 uuid];
        v13 = [uuid3 isEqual:uuid4];
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