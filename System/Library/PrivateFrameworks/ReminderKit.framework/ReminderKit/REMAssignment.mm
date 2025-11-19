@interface REMAssignment
+ (NSArray)rem_DA_propertiesAffectingIsConcealed;
+ (double)orderValueWithAssignedDate:(id)a3 objectIdentifier:(id)a4;
+ (id)newObjectID;
+ (id)nullifiedOriginatorAssignmentWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 assigneeID:(id)a6 status:(int64_t)a7 assignedDate:(id)a8;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAssignment:(id)a3;
- (BOOL)isOriginatorNullified;
- (NSString)description;
- (REMAssignment)initWithCoder:(id)a3;
- (REMAssignment)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 assigneeID:(id)a6 originatorID:(id)a7 status:(int64_t)a8;
- (REMAssignment)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 assigneeID:(id)a6 originatorID:(id)a7 status:(int64_t)a8 assignedDate:(id)a9;
- (double)orderValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAssignment

+ (NSArray)rem_DA_propertiesAffectingIsConcealed
{
  v2 = _defaultPropertiesAffectingIsConcealed();
  v3 = [v2 arrayByAddingObject:@"assignee"];

  return v3;
}

id __88__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDBlock__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v31[0] = v8;
  v9 = MEMORY[0x1E695DEC8];
  v10 = a4;
  v11 = [v9 arrayWithObjects:v31 count:1];
  v24 = 0;
  v12 = [v10 fetchAssignmentsWithObjectIDs:v11 includeConcealedObjects:a3 error:&v24];

  v13 = v24;
  if ([v12 count] >= 2)
  {
    __88__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDBlock__block_invoke_cold_1();
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
      _os_log_error_impl(&dword_19A0DB000, v15, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper:_REMDAChangeTrackableModel: ERROR: LOOKATME Requested REMAssignment not found {objectID: %{public}@, includeConcealedObjects: %{public}@, error: %@}.", buf, 0x20u);
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
      _os_log_error_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper:_REMDAChangeTrackableModel: ERROR: LOOKATME Failed to fetch REMAssignment {objectID: %{public}@, includeConcealedObjects: %{public}@, error: %@}.", buf, 0x20u);
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

id __89__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = [v7 dictionary];
  v18 = 0;
  v10 = [v8 fetchAssignmentsWithObjectIDs:v6 includeConcealedObjects:0 error:&v18];

  v11 = v18;
  if (v11)
  {
    v12 = +[REMLog changeTracking];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __89__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_cold_1();
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_370;
  v16[3] = &unk_1E7508F60;
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

void __89__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_370(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 objectID];
  [v2 setObject:v3 forKey:v4];
}

REMDAAssignmentTombstone *__96__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromTombstoneBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(REMDAAssignmentTombstone);
  v4 = [v2 objectIdentifier];
  [(REMDAAssignmentTombstone *)v3 setObjectIdentifier:v4];

  v5 = [v2 assignmentOwningReminderIdentifier];

  [(REMDAAssignmentTombstone *)v3 setOwningReminderIdentifier:v5];

  return v3;
}

REMDAAssignmentTombstone *__107__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = REMCheckedDynamicCast(v3, v2);
  if (v4)
  {
    v5 = objc_alloc_init(REMDAAssignmentTombstone);
    v6 = [v4 objectID];
    v7 = [v6 uuid];
    [(REMDAAssignmentTombstone *)v5 setObjectIdentifier:v7];

    v8 = [v4 reminderID];
    v9 = [v8 uuid];
    [(REMDAAssignmentTombstone *)v5 setOwningReminderIdentifier:v9];
  }

  else
  {
    v10 = +[REMLog changeTracking];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __107__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke_cold_1();
    }

    v5 = 0;
  }

  return v5;
}

- (REMAssignment)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 assigneeID:(id)a6 originatorID:(id)a7 status:(int64_t)a8
{
  v14 = MEMORY[0x1E695DF00];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v14 now];
  v21 = [(REMAssignment *)self initWithObjectID:v19 accountID:v18 reminderID:v17 assigneeID:v16 originatorID:v15 status:a8 assignedDate:v20];

  return v21;
}

- (REMAssignment)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 assigneeID:(id)a6 originatorID:(id)a7 status:(int64_t)a8 assignedDate:(id)a9
{
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = REMAssignment;
  v18 = [(REMAssignment *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_objectID, a3);
    objc_storeStrong(&v19->_accountID, a4);
    objc_storeStrong(&v19->_reminderID, a5);
    objc_storeStrong(&v19->_assigneeID, a6);
    objc_storeStrong(&v19->_originatorID, a7);
    v19->_status = a8;
    objc_storeStrong(&v19->_assignedDate, a9);
    *&v19->__debug_cdAssigneeLinked = 257;
  }

  return v19;
}

- (REMAssignment)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = REMAssignment;
  v5 = [(REMAssignment *)&v21 init];
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

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assigneeID"];
    assigneeID = v5->_assigneeID;
    v5->_assigneeID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatorID"];
    originatorID = v5->_originatorID;
    v5->_originatorID = v14;

    v16 = [v4 decodeIntegerForKey:@"status"];
    if (v16 >= 2)
    {
      v17 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(REMAssignment *)v16 initWithCoder:v17];
      }

      v16 = 0;
    }

    v5->_status = v16;
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assignedDate"];
    assignedDate = v5->_assignedDate;
    v5->_assignedDate = v18;

    v5->__debug_cdAssigneeLinked = [v4 decodeBoolForKey:@"_debug_cdAssigneeLinked"];
    v5->__debug_cdOriginatorLinked = [v4 decodeBoolForKey:@"_debug_cdOriginatorLinked"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(REMAssignment *)self objectID];
  [v10 encodeObject:v4 forKey:@"objectID"];

  v5 = [(REMAssignment *)self accountID];
  [v10 encodeObject:v5 forKey:@"accountID"];

  v6 = [(REMAssignment *)self reminderID];
  [v10 encodeObject:v6 forKey:@"reminderID"];

  v7 = [(REMAssignment *)self assigneeID];
  [v10 encodeObject:v7 forKey:@"assigneeID"];

  v8 = [(REMAssignment *)self originatorID];
  [v10 encodeObject:v8 forKey:@"originatorID"];

  [v10 encodeInteger:-[REMAssignment status](self forKey:{"status"), @"status"}];
  v9 = [(REMAssignment *)self assignedDate];
  [v10 encodeObject:v9 forKey:@"assignedDate"];

  [v10 encodeBool:-[REMAssignment _debug_cdAssigneeLinked](self forKey:{"_debug_cdAssigneeLinked"), @"_debug_cdAssigneeLinked"}];
  [v10 encodeBool:-[REMAssignment _debug_cdOriginatorLinked](self forKey:{"_debug_cdOriginatorLinked"), @"_debug_cdOriginatorLinked"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);

  if (v6)
  {
    v7 = [(REMAssignment *)self isEqualToAssignment:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToAssignment:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_23;
    }

    v7 = [(REMAssignment *)self status];
    if (v7 != [(REMAssignment *)v6 status])
    {
      goto LABEL_23;
    }

    v8 = [(REMAssignment *)self objectID];
    v9 = [(REMAssignment *)v6 objectID];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [(REMAssignment *)self objectID];
      v12 = [(REMAssignment *)v6 objectID];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_23;
      }
    }

    v15 = [(REMAssignment *)self accountID];
    v16 = [(REMAssignment *)v6 accountID];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(REMAssignment *)self accountID];
      v19 = [(REMAssignment *)v6 accountID];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_23;
      }
    }

    v21 = [(REMAssignment *)self reminderID];
    v22 = [(REMAssignment *)v6 reminderID];
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      v24 = [(REMAssignment *)self reminderID];
      v25 = [(REMAssignment *)v6 reminderID];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_23;
      }
    }

    v27 = [(REMAssignment *)self assigneeID];
    v28 = [(REMAssignment *)v6 assigneeID];
    v29 = v28;
    if (v27 == v28)
    {
    }

    else
    {
      v30 = [(REMAssignment *)self assigneeID];
      v31 = [(REMAssignment *)v6 assigneeID];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
        goto LABEL_23;
      }
    }

    v33 = [(REMAssignment *)self originatorID];
    v34 = [(REMAssignment *)v6 originatorID];
    v35 = v34;
    if (v33 == v34)
    {
    }

    else
    {
      v36 = [(REMAssignment *)self originatorID];
      v37 = [(REMAssignment *)v6 originatorID];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
LABEL_23:
        v14 = 0;
LABEL_24:

        goto LABEL_25;
      }
    }

    v40 = [(REMAssignment *)self assignedDate];
    v41 = [(REMAssignment *)v6 assignedDate];
    if (v40 == v41)
    {
      v14 = 1;
    }

    else
    {
      v42 = [(REMAssignment *)self assignedDate];
      v43 = [(REMAssignment *)v6 assignedDate];
      v14 = [v42 isEqual:v43];
    }

    goto LABEL_24;
  }

  v14 = 1;
LABEL_25:

  return v14 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMAssignment *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(REMAssignment *)self objectID];
  v5 = [(REMAssignment *)self reminderID];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMAssignment status](self, "status")}];
  v7 = [(REMAssignment *)self assignedDate];
  v8 = [(REMAssignment *)self originatorID];
  v9 = [(REMAssignment *)self assigneeID];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMAssignment _debug_cdOriginatorLinked](self, "_debug_cdOriginatorLinked")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMAssignment _debug_cdAssigneeLinked](self, "_debug_cdAssigneeLinked")}];
  v12 = [v14 stringWithFormat:@"<%@: %p objectID: %@, reminderID: %@, status: %@, date: %@, originatorID: %@, assigneeID: %@, originatorLinked: %@, assigneeLinked: %@>", v3, self, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isOriginatorNullified
{
  v2 = [(REMAssignment *)self originatorID];
  v3 = +[REMSharee nullifiedAssignmentOriginatorID];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (double)orderValue
{
  v3 = [(REMAssignment *)self assignedDate];
  v4 = [(REMAssignment *)self objectID];
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  [REMAssignment orderValueWithAssignedDate:v3 objectIdentifier:v6];
  v8 = v7;

  return v8;
}

+ (double)orderValueWithAssignedDate:(id)a3 objectIdentifier:(id)a4
{
  if (!a3)
  {
    return [a4 hash];
  }

  [a3 timeIntervalSinceReferenceDate];
  return result;
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

+ (id)nullifiedOriginatorAssignmentWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 assigneeID:(id)a6 status:(int64_t)a7 assignedDate:(id)a8
{
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [REMAssignment alloc];
  v19 = +[REMSharee nullifiedAssignmentOriginatorID];
  v20 = [(REMAssignment *)v18 initWithObjectID:v17 accountID:v16 reminderID:v15 assigneeID:v14 originatorID:v19 status:a7 assignedDate:v13];

  return v20;
}

void __88__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDBlock__block_invoke_cold_1()
{
  v1 = +[REMLog changeTracking];
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __89__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_4_3(v1 v2)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __107__REMAssignment_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "REMDAChangeTrackingHelper:_REMDAChangeTrackableModel: LOOKATME: Can't cast concealed object to REMAssignment {concealedObject: %@}.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMAssignmentStatus %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end