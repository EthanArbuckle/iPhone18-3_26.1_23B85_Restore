@interface REMBaseSectionStorage
+ (NSString)cdEntityName;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
+ (void)cdEntityName;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUnsupported;
- (REMBaseSectionStorage)initWithCoder:(id)coder;
- (REMBaseSectionStorage)initWithObjectID:(id)d accountID:(id)iD parentID:(id)parentID displayName:(id)name;
- (REMResolutionTokenMap)resolutionTokenMap;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)cdKeyToStorageKeyMap;
- (void)encodeWithCoder:(id)coder;
- (void)resolutionTokenMap;
- (void)setStoreGenerationIfNeeded:(unint64_t)needed;
@end

@implementation REMBaseSectionStorage

- (REMBaseSectionStorage)initWithObjectID:(id)d accountID:(id)iD parentID:(id)parentID displayName:(id)name
{
  dCopy = d;
  iDCopy = iD;
  parentIDCopy = parentID;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = REMBaseSectionStorage;
  v15 = [(REMBaseSectionStorage *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_objectID, d);
    objc_storeStrong(&v16->_accountID, iD);
    objc_storeStrong(&v16->_parentID, parentID);
    v17 = objc_alloc_init(REMResolutionTokenMap);
    resolutionTokenMap = v16->_resolutionTokenMap;
    v16->_resolutionTokenMap = v17;

    data = [MEMORY[0x1E695DEF0] data];
    resolutionTokenMapData = v16->_resolutionTokenMapData;
    v16->_resolutionTokenMapData = data;

    objc_storeStrong(&v16->_displayName, name);
    creationDate = v16->_creationDate;
    v16->_creationDate = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  objectID = [(REMBaseSectionStorage *)self objectID];
  accountID = [(REMBaseSectionStorage *)self accountID];
  parentID = [(REMBaseSectionStorage *)self parentID];
  displayName = [(REMBaseSectionStorage *)self displayName];
  v9 = [v4 initWithObjectID:objectID accountID:accountID parentID:parentID displayName:displayName];

  creationDate = [(REMBaseSectionStorage *)self creationDate];
  [v9 setCreationDate:creationDate];

  v11 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  v12 = v9[10];
  v9[10] = v11;

  resolutionTokenMapData = [(REMBaseSectionStorage *)self resolutionTokenMapData];
  [v9 setResolutionTokenMapData:resolutionTokenMapData];

  v9[1] = self->_storeGeneration;
  v9[2] = self->_copyGeneration + 1;
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  v55 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = [(REMBaseSectionStorage *)self objectID];
      objectID2 = [(REMBaseSectionStorage *)v6 objectID];
      v9 = objectID2;
      if (objectID == objectID2)
      {
      }

      else
      {
        objectID3 = [(REMBaseSectionStorage *)self objectID];
        objectID4 = [(REMBaseSectionStorage *)v6 objectID];
        v12 = [objectID3 isEqual:objectID4];

        if (!v12)
        {
          goto LABEL_22;
        }
      }

      accountID = [(REMBaseSectionStorage *)self accountID];
      accountID2 = [(REMBaseSectionStorage *)v6 accountID];
      v16 = accountID2;
      if (accountID == accountID2)
      {
      }

      else
      {
        accountID3 = [(REMBaseSectionStorage *)self accountID];
        accountID4 = [(REMBaseSectionStorage *)v6 accountID];
        v19 = [accountID3 isEqual:accountID4];

        if (!v19)
        {
          goto LABEL_22;
        }
      }

      parentID = [(REMBaseSectionStorage *)self parentID];
      parentID2 = [(REMBaseSectionStorage *)v6 parentID];
      v22 = parentID2;
      if (parentID == parentID2)
      {
      }

      else
      {
        parentID3 = [(REMBaseSectionStorage *)self parentID];
        parentID4 = [(REMBaseSectionStorage *)v6 parentID];
        v25 = [parentID3 isEqual:parentID4];

        if (!v25)
        {
          goto LABEL_22;
        }
      }

      displayName = [(REMBaseSectionStorage *)self displayName];
      displayName2 = [(REMBaseSectionStorage *)v6 displayName];
      v28 = displayName2;
      if (displayName == displayName2)
      {
      }

      else
      {
        displayName3 = [(REMBaseSectionStorage *)self displayName];
        displayName4 = [(REMBaseSectionStorage *)v6 displayName];
        v31 = [displayName3 isEqual:displayName4];

        if (!v31)
        {
          goto LABEL_22;
        }
      }

      creationDate = [(REMBaseSectionStorage *)self creationDate];
      creationDate2 = [(REMBaseSectionStorage *)v6 creationDate];
      v34 = creationDate2;
      if (creationDate == creationDate2)
      {
      }

      else
      {
        creationDate3 = [(REMBaseSectionStorage *)self creationDate];
        creationDate4 = [(REMBaseSectionStorage *)v6 creationDate];
        v37 = [creationDate3 isEqual:creationDate4];

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

      resolutionTokenMap = [(REMBaseSectionStorage *)self resolutionTokenMap];
      resolutionTokenMap2 = [(REMBaseSectionStorage *)v6 resolutionTokenMap];
      if (resolutionTokenMap == resolutionTokenMap2)
      {
        v13 = 1;
      }

      else
      {
        resolutionTokenMap3 = [(REMBaseSectionStorage *)self resolutionTokenMap];
        resolutionTokenMap4 = [(REMBaseSectionStorage *)v6 resolutionTokenMap];
        v13 = [resolutionTokenMap3 isEqual:resolutionTokenMap4];
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
  objectID = [(REMBaseSectionStorage *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMBaseSectionStorage *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, objectID];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  displayName = [(REMBaseSectionStorage *)self displayName];
  objectID = [(REMBaseSectionStorage *)self objectID];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ %@ [%ld.%ld]>", v4, self, displayName, objectID, self->_storeGeneration, self->_copyGeneration];

  return v7;
}

- (void)setStoreGenerationIfNeeded:(unint64_t)needed
{
  if (!self->_storeGeneration)
  {
    self->_storeGeneration = needed;
  }
}

- (REMBaseSectionStorage)initWithCoder:(id)coder
{
  v32 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
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

    selfCopy = 0;
  }

  else
  {
    v14 = [(REMBaseSectionStorage *)self initWithObjectID:v5 accountID:v6 parentID:v7 displayName:v8];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
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

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    [(REMBaseSectionStorage *)v14 setCreationDate:v21];

    self = v14;
    selfCopy = self;
  }

  v22 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMBaseSectionStorage *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  accountID = [(REMBaseSectionStorage *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  parentID = [(REMBaseSectionStorage *)self parentID];
  [coderCopy encodeObject:parentID forKey:@"parentID"];

  displayName = [(REMBaseSectionStorage *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  creationDate = [(REMBaseSectionStorage *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [coderCopy encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMap"];
    resolutionTokenMapData = [(REMBaseSectionStorage *)self resolutionTokenMapData];
    [coderCopy encodeObject:resolutionTokenMapData forKey:@"resolutionTokenMapData"];
  }
}

+ (id)newObjectID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self objectIDWithUUID:uUID];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

  return v6;
}

+ (NSString)cdEntityName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(self);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    +[REMBaseSectionStorage cdEntityName];
  }

  return @"REMCDBaseSection";
}

- (BOOL)isUnsupported
{
  effectiveMinimumSupportedVersion = [(REMBaseSectionStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(effectiveMinimumSupportedVersion);
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
    resolutionTokenMapData = [(REMBaseSectionStorage *)self resolutionTokenMapData];
    if (!resolutionTokenMapData)
    {
      v7 = +[REMLogStore read];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(REMBaseSectionStorage *)self resolutionTokenMap];
      }
    }

    cdKeyToStorageKeyMap = [(REMBaseSectionStorage *)self cdKeyToStorageKeyMap];
    v9 = [REMResolutionTokenMap resolutionTokenMapWithJSONData:resolutionTokenMapData keyMap:cdKeyToStorageKeyMap];

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
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
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
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v3, v4, "rem_log_fault_if (![NSStringFromClass([REMBaseSectionStorage class]) isEqualToString:NSStringFromClass([self class])]) -- A subclass of REMBaseSectionStorage called '- [REMBaseSectionStorage cdKeyToStorageKeyMap]'. The subclass should override this method. {callstack: %@}", v5, v6, v7, v8, 2u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)resolutionTokenMap
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Nil resolutionTokenMapData when reading resolutionTokenMap from account storage. Initialize an empty map {list: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end