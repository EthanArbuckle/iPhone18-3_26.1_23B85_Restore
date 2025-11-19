@interface REMBaseSectionStorage
+ (NSString)cdEntityName;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
+ (void)cdEntityName;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUnsupported;
- (REMBaseSectionStorage)initWithCoder:(id)a3;
- (REMBaseSectionStorage)initWithObjectID:(id)a3 accountID:(id)a4 parentID:(id)a5 displayName:(id)a6;
- (REMResolutionTokenMap)resolutionTokenMap;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)cdKeyToStorageKeyMap;
- (void)encodeWithCoder:(id)a3;
- (void)resolutionTokenMap;
- (void)setStoreGenerationIfNeeded:(unint64_t)a3;
@end

@implementation REMBaseSectionStorage

- (REMBaseSectionStorage)initWithObjectID:(id)a3 accountID:(id)a4 parentID:(id)a5 displayName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = REMBaseSectionStorage;
  v15 = [(REMBaseSectionStorage *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_objectID, a3);
    objc_storeStrong(&v16->_accountID, a4);
    objc_storeStrong(&v16->_parentID, a5);
    v17 = objc_alloc_init(REMResolutionTokenMap);
    resolutionTokenMap = v16->_resolutionTokenMap;
    v16->_resolutionTokenMap = v17;

    v19 = [MEMORY[0x1E695DEF0] data];
    resolutionTokenMapData = v16->_resolutionTokenMapData;
    v16->_resolutionTokenMapData = v19;

    objc_storeStrong(&v16->_displayName, a6);
    creationDate = v16->_creationDate;
    v16->_creationDate = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(REMBaseSectionStorage *)self objectID];
  v6 = [(REMBaseSectionStorage *)self accountID];
  v7 = [(REMBaseSectionStorage *)self parentID];
  v8 = [(REMBaseSectionStorage *)self displayName];
  v9 = [v4 initWithObjectID:v5 accountID:v6 parentID:v7 displayName:v8];

  v10 = [(REMBaseSectionStorage *)self creationDate];
  [v9 setCreationDate:v10];

  v11 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  v12 = v9[10];
  v9[10] = v11;

  v13 = [(REMBaseSectionStorage *)self resolutionTokenMapData];
  [v9 setResolutionTokenMapData:v13];

  v9[1] = self->_storeGeneration;
  v9[2] = self->_copyGeneration + 1;
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMBaseSectionStorage *)self objectID];
      v8 = [(REMBaseSectionStorage *)v6 objectID];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMBaseSectionStorage *)self objectID];
        v11 = [(REMBaseSectionStorage *)v6 objectID];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_22;
        }
      }

      v14 = [(REMBaseSectionStorage *)self accountID];
      v15 = [(REMBaseSectionStorage *)v6 accountID];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(REMBaseSectionStorage *)self accountID];
        v18 = [(REMBaseSectionStorage *)v6 accountID];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_22;
        }
      }

      v20 = [(REMBaseSectionStorage *)self parentID];
      v21 = [(REMBaseSectionStorage *)v6 parentID];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(REMBaseSectionStorage *)self parentID];
        v24 = [(REMBaseSectionStorage *)v6 parentID];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_22;
        }
      }

      v26 = [(REMBaseSectionStorage *)self displayName];
      v27 = [(REMBaseSectionStorage *)v6 displayName];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(REMBaseSectionStorage *)self displayName];
        v30 = [(REMBaseSectionStorage *)v6 displayName];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_22;
        }
      }

      v32 = [(REMBaseSectionStorage *)self creationDate];
      v33 = [(REMBaseSectionStorage *)v6 creationDate];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(REMBaseSectionStorage *)self creationDate];
        v36 = [(REMBaseSectionStorage *)v6 creationDate];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_22;
        }
      }

      if (!self->_resolutionTokenMap || v6->_resolutionTokenMap)
      {
        v40 = +[REMLogStore read];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          resolutionTokenMap = self->_resolutionTokenMap;
          v48 = v6->_resolutionTokenMap;
          v49 = 138543874;
          v50 = v46;
          v51 = 2112;
          v52 = resolutionTokenMap;
          v53 = 2112;
          v54 = v48;
          _os_log_error_impl(&dword_19A0DB000, v40, OS_LOG_TYPE_ERROR, "You are about to trigger decoding the resolution token map from JSON data. This is probably not what you want for performance to trigger it from -isEqual:, unless you are running Tests then it's fine {class: %{public}@, self-map: %@, other-map: %@}", &v49, 0x20u);
        }
      }

      v41 = [(REMBaseSectionStorage *)self resolutionTokenMap];
      v42 = [(REMBaseSectionStorage *)v6 resolutionTokenMap];
      if (v41 == v42)
      {
        v13 = 1;
      }

      else
      {
        v43 = [(REMBaseSectionStorage *)self resolutionTokenMap];
        v44 = [(REMBaseSectionStorage *)v6 resolutionTokenMap];
        v13 = [v43 isEqual:v44];
      }

      goto LABEL_23;
    }

LABEL_22:
    v13 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v13 = 1;
LABEL_24:

  v38 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMBaseSectionStorage *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMBaseSectionStorage *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMBaseSectionStorage *)self displayName];
  v6 = [(REMBaseSectionStorage *)self objectID];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ %@ [%ld.%ld]>", v4, self, v5, v6, self->_storeGeneration, self->_copyGeneration];

  return v7;
}

- (void)setStoreGenerationIfNeeded:(unint64_t)a3
{
  if (!self->_storeGeneration)
  {
    self->_storeGeneration = a3;
  }
}

- (REMBaseSectionStorage)initWithCoder:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v9 = v8;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v8 == 0)
  {
    v12 = +[REMLogStore read];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v24 = 138544131;
      v25 = v5;
      v26 = 2114;
      v27 = v6;
      v28 = 2114;
      v29 = v7;
      v30 = 2117;
      v31 = v9;
      _os_log_fault_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_FAULT, "Attempted to decode REMBaseSectionStorage missing objectID, accountID, displayName {objectID: %{public}@, accountID:%{public}@ parentID:%{public}@ displayName: %{sensitive}@}", &v24, 0x2Au);
    }

    v13 = 0;
  }

  else
  {
    v14 = [(REMBaseSectionStorage *)self initWithObjectID:v5 accountID:v6 parentID:v7 displayName:v8];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v14->_resolutionTokenMap, v16);
      resolutionTokenMapData = v14->_resolutionTokenMapData;
      v14->_resolutionTokenMapData = 0;
    }

    else
    {
      resolutionTokenMap = v14->_resolutionTokenMap;
      v14->_resolutionTokenMap = 0;

      v20 = v15;
      resolutionTokenMapData = v14->_resolutionTokenMapData;
      v14->_resolutionTokenMapData = v20;
    }

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    [(REMBaseSectionStorage *)v14 setCreationDate:v21];

    self = v14;
    v13 = self;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(REMBaseSectionStorage *)self objectID];
  [v11 encodeObject:v4 forKey:@"objectID"];

  v5 = [(REMBaseSectionStorage *)self accountID];
  [v11 encodeObject:v5 forKey:@"accountID"];

  v6 = [(REMBaseSectionStorage *)self parentID];
  [v11 encodeObject:v6 forKey:@"parentID"];

  v7 = [(REMBaseSectionStorage *)self displayName];
  [v11 encodeObject:v7 forKey:@"displayName"];

  v8 = [(REMBaseSectionStorage *)self creationDate];
  [v11 encodeObject:v8 forKey:@"creationDate"];

  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [v11 encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [v11 encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [v11 encodeObject:0 forKey:@"resolutionTokenMap"];
    v10 = [(REMBaseSectionStorage *)self resolutionTokenMapData];
    [v11 encodeObject:v10 forKey:@"resolutionTokenMapData"];
  }
}

+ (id)newObjectID
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

  return v6;
}

+ (NSString)cdEntityName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(a1);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    +[REMBaseSectionStorage cdEntityName];
  }

  return @"REMCDBaseSection";
}

- (BOOL)isUnsupported
{
  v2 = [(REMBaseSectionStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(v2);
}

- (id)cdKeyToStorageKeyMap
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [REMBaseSectionStorage cdKeyToStorageKeyMap];
  }

  return MEMORY[0x1E695E0F8];
}

- (REMResolutionTokenMap)resolutionTokenMap
{
  p_resolutionTokenMap = &self->_resolutionTokenMap;
  v4 = self->_resolutionTokenMap;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(REMBaseSectionStorage *)self resolutionTokenMapData];
    if (!v6)
    {
      v7 = +[REMLogStore read];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(REMBaseSectionStorage *)self resolutionTokenMap];
      }
    }

    v8 = [(REMBaseSectionStorage *)self cdKeyToStorageKeyMap];
    v9 = [REMResolutionTokenMap resolutionTokenMapWithJSONData:v6 keyMap:v8];

    objc_storeStrong(p_resolutionTokenMap, v9);
    v5 = v9;
  }

  return v5;
}

+ (void)cdEntityName
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore read];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v2 = [MEMORY[0x1E696AF00] callStackSymbols];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v3, v4, "rem_log_fault_if (![NSStringFromClass([REMBaseSectionStorage class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMBaseSectionStorage called '- [REMBaseSectionStorage cdEntityName]'. The subclass should override this method. {callstack: %@}", v5, v6, v7, v8, 2u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)cdKeyToStorageKeyMap
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore read];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v2 = [MEMORY[0x1E696AF00] callStackSymbols];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v3, v4, "rem_log_fault_if (![NSStringFromClass([REMBaseSectionStorage class]) isEqualToString:NSStringFromClass([self class])]) -- A subclass of REMBaseSectionStorage called '- [REMBaseSectionStorage cdKeyToStorageKeyMap]'. The subclass should override this method. {callstack: %@}", v5, v6, v7, v8, 2u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)resolutionTokenMap
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Nil resolutionTokenMapData when reading resolutionTokenMap from account storage. Initialize an empty map {list: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end