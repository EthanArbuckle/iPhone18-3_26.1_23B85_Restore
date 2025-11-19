@interface REMHashtag
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHashtag:(id)a3;
- (NSString)description;
- (REMHashtag)initWithCoder:(id)a3;
- (REMHashtag)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 type:(int64_t)a6 name:(id)a7;
- (REMHashtag)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 type:(int64_t)a6 name:(id)a7 creationDate:(id)a8;
- (id)objectIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (REMHashtag)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 type:(int64_t)a6 name:(id)a7
{
  v12 = MEMORY[0x1E695DF00];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 now];
  v18 = [(REMHashtag *)self initWithObjectID:v16 accountID:v15 reminderID:v14 type:a6 name:v13 creationDate:v17];

  return v18;
}

- (REMHashtag)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 type:(int64_t)a6 name:(id)a7 creationDate:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = REMHashtag;
  v18 = [(REMHashtag *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_objectID, a3);
    objc_storeStrong(&v19->_accountID, a4);
    objc_storeStrong(&v19->_reminderID, a5);
    v19->_type = a6;
    objc_storeStrong(&v19->_name, a7);
    objc_storeStrong(&v19->_creationDate, a8);
  }

  return v19;
}

- (REMHashtag)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = REMHashtag;
  v5 = [(REMHashtag *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reminderID"];
    reminderID = v5->_reminderID;
    v5->_reminderID = v10;

    v12 = [v4 decodeIntegerForKey:@"type"];
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
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMHashtag *)self objectID];
  [v4 encodeObject:v5 forKey:@"objectID"];

  v6 = [(REMHashtag *)self accountID];
  [v4 encodeObject:v6 forKey:@"accountID"];

  v7 = [(REMHashtag *)self reminderID];
  [v4 encodeObject:v7 forKey:@"reminderID"];

  [v4 encodeInteger:-[REMHashtag type](self forKey:{"type"), @"type"}];
  v8 = [(REMHashtag *)self name];
  [v4 encodeObject:v8 forKey:@"name"];

  v9 = [(REMHashtag *)self creationDate];
  [v4 encodeObject:v9 forKey:@"creationDate"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);

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

- (BOOL)isEqualToHashtag:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    v7 = [(REMHashtag *)self type];
    if (v7 != [(REMHashtag *)v6 type])
    {
      goto LABEL_19;
    }

    v8 = [(REMHashtag *)self objectID];
    v9 = [(REMHashtag *)v6 objectID];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [(REMHashtag *)self objectID];
      v12 = [(REMHashtag *)v6 objectID];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_19;
      }
    }

    v15 = [(REMHashtag *)self accountID];
    v16 = [(REMHashtag *)v6 accountID];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(REMHashtag *)self accountID];
      v19 = [(REMHashtag *)v6 accountID];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_19;
      }
    }

    v21 = [(REMHashtag *)self reminderID];
    v22 = [(REMHashtag *)v6 reminderID];
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      v24 = [(REMHashtag *)self reminderID];
      v25 = [(REMHashtag *)v6 reminderID];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_19;
      }
    }

    v27 = [(REMHashtag *)self name];
    v28 = [(REMHashtag *)v6 name];
    v29 = v28;
    if (v27 == v28)
    {
    }

    else
    {
      v30 = [(REMHashtag *)self name];
      v31 = [(REMHashtag *)v6 name];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
LABEL_19:
        v14 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    v34 = [(REMHashtag *)self creationDate];
    v35 = [(REMHashtag *)v6 creationDate];
    if (v34 == v35)
    {
      v14 = 1;
    }

    else
    {
      v36 = [(REMHashtag *)self creationDate];
      v37 = [(REMHashtag *)v6 creationDate];
      v14 = [v36 isEqual:v37];
    }

    goto LABEL_20;
  }

  v14 = 1;
LABEL_21:

  return v14 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMHashtag *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMHashtag *)self objectID];
  v6 = [(REMHashtag *)self reminderID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMHashtag type](self, "type")}];
  v8 = [(REMHashtag *)self name];
  v9 = [(REMHashtag *)self creationDate];
  v10 = [v3 stringWithFormat:@"<%@: %p objectID: %@, reminderID: %@, type: %@, name: %@, creation date: %@>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

- (id)objectIdentifier
{
  v2 = [(REMHashtag *)self objectID];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
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