@interface REMHashtag
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHashtag:(id)hashtag;
- (NSString)description;
- (REMHashtag)initWithCoder:(id)coder;
- (REMHashtag)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID type:(int64_t)type name:(id)name;
- (REMHashtag)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID type:(int64_t)type name:(id)name creationDate:(id)date;
- (id)objectIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMHashtag

id __85__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDBlock__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v31[0] = v8;
  v9 = MEMORY[0x1E695DEC8];
  v10 = a4;
  v11 = [v9 arrayWithObjects:v31 count:1];
  v24 = 0;
  v12 = [v10 fetchHashtagsWithObjectIDs:v11 includeConcealedObjects:a3 error:&v24];

  v13 = v24;
  if ([v12 count] >= 2)
  {
    __85__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDBlock__block_invoke_cold_1();
  }

  v14 = [v12 anyObject];
  if (v13 && [v13 code] == -3000 || !objc_msgSend(v12, "count"))
  {
    v15 = +[REMLog changeTracking];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AD98] numberWithBool:a3];
      v21 = [v13 localizedDescription];
      *buf = 138543874;
      v26 = v8;
      v27 = 2114;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      _os_log_error_impl(&dword_19A0DB000, v15, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper:_REMDAChangeTrackableModel: ERROR: LOOKATME Requested REMHashtag not found {objectID: %{public}@, includeConcealedObjects: %{public}@, error: %@}.", buf, 0x20u);
    }
  }

  if (v13 && [v13 code] != -3000)
  {
    v16 = +[REMLog changeTracking];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AD98] numberWithBool:a3];
      v23 = [v13 localizedDescription];
      *buf = 138543874;
      v26 = v8;
      v27 = 2114;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      _os_log_error_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper:_REMDAChangeTrackableModel: ERROR: LOOKATME Failed to fetch REMHashtag {objectID: %{public}@, includeConcealedObjects: %{public}@, error: %@}.", buf, 0x20u);
    }
  }

  if (a5)
  {
    v17 = v13;
    *a5 = v13;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

id __86__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = [v7 dictionary];
  v18 = 0;
  v10 = [v8 fetchHashtagsWithObjectIDs:v6 includeConcealedObjects:0 error:&v18];

  v11 = v18;
  if (v11)
  {
    v12 = +[REMLog changeTracking];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __86__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_cold_1();
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_400;
  v16[3] = &unk_1E7508F88;
  v13 = v9;
  v17 = v13;
  [v10 enumerateObjectsUsingBlock:v16];
  if (a4)
  {
    v14 = v11;
    *a4 = v11;
  }

  return v13;
}

void __86__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_400(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 objectID];
  [v2 setObject:v3 forKey:v4];
}

REMDAHashtagTombstone *__93__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromTombstoneBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(REMDAHashtagTombstone);
  v4 = [v2 objectIdentifier];
  [(REMDAHashtagTombstone *)v3 setObjectIdentifier:v4];

  v5 = [v2 hashtagName];
  [(REMDAHashtagTombstone *)v3 setName:v5];

  v6 = [v2 hashtagReminderIdentifier];

  [(REMDAHashtagTombstone *)v3 setReminderIdentifier:v6];

  return v3;
}

REMDAHashtagTombstone *__104__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = REMCheckedDynamicCast(v3, v2);
  if (v4)
  {
    v5 = objc_alloc_init(REMDAHashtagTombstone);
    v6 = [v4 objectID];
    v7 = [v6 uuid];
    [(REMDAHashtagTombstone *)v5 setObjectIdentifier:v7];

    v8 = [v4 name];
    [(REMDAHashtagTombstone *)v5 setName:v8];

    v9 = [v4 reminderID];
    v10 = [v9 uuid];
    [(REMDAHashtagTombstone *)v5 setReminderIdentifier:v10];
  }

  else
  {
    v11 = +[REMLog changeTracking];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __104__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke_cold_1();
    }

    v5 = 0;
  }

  return v5;
}

- (REMHashtag)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID type:(int64_t)type name:(id)name
{
  v12 = MEMORY[0x1E695DF00];
  nameCopy = name;
  reminderIDCopy = reminderID;
  iDCopy = iD;
  dCopy = d;
  v17 = [v12 now];
  v18 = [(REMHashtag *)self initWithObjectID:dCopy accountID:iDCopy reminderID:reminderIDCopy type:type name:nameCopy creationDate:v17];

  return v18;
}

- (REMHashtag)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID type:(int64_t)type name:(id)name creationDate:(id)date
{
  dCopy = d;
  iDCopy = iD;
  reminderIDCopy = reminderID;
  nameCopy = name;
  dateCopy = date;
  v23.receiver = self;
  v23.super_class = REMHashtag;
  v18 = [(REMHashtag *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_objectID, d);
    objc_storeStrong(&v19->_accountID, iD);
    objc_storeStrong(&v19->_reminderID, reminderID);
    v19->_type = type;
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_creationDate, date);
  }

  return v19;
}

- (REMHashtag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = REMHashtag;
  v5 = [(REMHashtag *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderID"];
    reminderID = v5->_reminderID;
    v5->_reminderID = v10;

    v12 = [coderCopy decodeIntegerForKey:@"type"];
    if (v12 >= 2)
    {
      v13 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(REMHashtag *)v12 initWithCoder:v13];
      }

      v12 = 0;
    }

    v5->_type = v12;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMHashtag *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  accountID = [(REMHashtag *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  reminderID = [(REMHashtag *)self reminderID];
  [coderCopy encodeObject:reminderID forKey:@"reminderID"];

  [coderCopy encodeInteger:-[REMHashtag type](self forKey:{"type"), @"type"}];
  name = [(REMHashtag *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  creationDate = [(REMHashtag *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, equalCopy);

  if (v6)
  {
    v7 = [(REMHashtag *)self isEqualToHashtag:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToHashtag:(id)hashtag
{
  hashtagCopy = hashtag;
  v5 = hashtagCopy;
  if (hashtagCopy != self)
  {
    v6 = hashtagCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    type = [(REMHashtag *)self type];
    if (type != [(REMHashtag *)v6 type])
    {
      goto LABEL_19;
    }

    objectID = [(REMHashtag *)self objectID];
    objectID2 = [(REMHashtag *)v6 objectID];
    v10 = objectID2;
    if (objectID == objectID2)
    {
    }

    else
    {
      objectID3 = [(REMHashtag *)self objectID];
      objectID4 = [(REMHashtag *)v6 objectID];
      v13 = [objectID3 isEqual:objectID4];

      if (!v13)
      {
        goto LABEL_19;
      }
    }

    accountID = [(REMHashtag *)self accountID];
    accountID2 = [(REMHashtag *)v6 accountID];
    v17 = accountID2;
    if (accountID == accountID2)
    {
    }

    else
    {
      accountID3 = [(REMHashtag *)self accountID];
      accountID4 = [(REMHashtag *)v6 accountID];
      v20 = [accountID3 isEqual:accountID4];

      if (!v20)
      {
        goto LABEL_19;
      }
    }

    reminderID = [(REMHashtag *)self reminderID];
    reminderID2 = [(REMHashtag *)v6 reminderID];
    v23 = reminderID2;
    if (reminderID == reminderID2)
    {
    }

    else
    {
      reminderID3 = [(REMHashtag *)self reminderID];
      reminderID4 = [(REMHashtag *)v6 reminderID];
      v26 = [reminderID3 isEqual:reminderID4];

      if (!v26)
      {
        goto LABEL_19;
      }
    }

    name = [(REMHashtag *)self name];
    name2 = [(REMHashtag *)v6 name];
    v29 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(REMHashtag *)self name];
      name4 = [(REMHashtag *)v6 name];
      v32 = [name3 isEqual:name4];

      if (!v32)
      {
LABEL_19:
        v14 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    creationDate = [(REMHashtag *)self creationDate];
    creationDate2 = [(REMHashtag *)v6 creationDate];
    if (creationDate == creationDate2)
    {
      v14 = 1;
    }

    else
    {
      creationDate3 = [(REMHashtag *)self creationDate];
      creationDate4 = [(REMHashtag *)v6 creationDate];
      v14 = [creationDate3 isEqual:creationDate4];
    }

    goto LABEL_20;
  }

  v14 = 1;
LABEL_21:

  return v14 & 1;
}

- (unint64_t)hash
{
  objectID = [(REMHashtag *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMHashtag *)self objectID];
  reminderID = [(REMHashtag *)self reminderID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMHashtag type](self, "type")}];
  name = [(REMHashtag *)self name];
  creationDate = [(REMHashtag *)self creationDate];
  v10 = [v3 stringWithFormat:@"<%@: %p objectID: %@, reminderID: %@, type: %@, name: %@, creation date: %@>", v4, self, objectID, reminderID, v7, name, creationDate];

  return v10;
}

- (id)objectIdentifier
{
  objectID = [(REMHashtag *)self objectID];
  uuid = [objectID uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
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

void __85__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDBlock__block_invoke_cold_1()
{
  v1 = +[REMLog changeTracking];
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __86__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_4_3(v1 v2)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __104__REMHashtag_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "REMDAChangeTrackingHelper:_REMDAChangeTrackableModel: LOOKATME: Can't cast concealed object to REMHashtag {concealedObject: %@}.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMHashtagType %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end