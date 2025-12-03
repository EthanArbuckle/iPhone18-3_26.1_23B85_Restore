@interface REMAssignment
+ (NSArray)rem_DA_propertiesAffectingIsConcealed;
+ (double)orderValueWithAssignedDate:(id)date objectIdentifier:(id)identifier;
+ (id)newObjectID;
+ (id)nullifiedOriginatorAssignmentWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID assigneeID:(id)assigneeID status:(int64_t)status assignedDate:(id)date;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAssignment:(id)assignment;
- (BOOL)isOriginatorNullified;
- (NSString)description;
- (REMAssignment)initWithCoder:(id)coder;
- (REMAssignment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID assigneeID:(id)assigneeID originatorID:(id)originatorID status:(int64_t)status;
- (REMAssignment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID assigneeID:(id)assigneeID originatorID:(id)originatorID status:(int64_t)status assignedDate:(id)date;
- (double)orderValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (REMAssignment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID assigneeID:(id)assigneeID originatorID:(id)originatorID status:(int64_t)status
{
  v14 = MEMORY[0x1E695DF00];
  originatorIDCopy = originatorID;
  assigneeIDCopy = assigneeID;
  reminderIDCopy = reminderID;
  iDCopy = iD;
  dCopy = d;
  v20 = [v14 now];
  v21 = [(REMAssignment *)self initWithObjectID:dCopy accountID:iDCopy reminderID:reminderIDCopy assigneeID:assigneeIDCopy originatorID:originatorIDCopy status:status assignedDate:v20];

  return v21;
}

- (REMAssignment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID assigneeID:(id)assigneeID originatorID:(id)originatorID status:(int64_t)status assignedDate:(id)date
{
  dCopy = d;
  iDCopy = iD;
  reminderIDCopy = reminderID;
  assigneeIDCopy = assigneeID;
  originatorIDCopy = originatorID;
  dateCopy = date;
  v25.receiver = self;
  v25.super_class = REMAssignment;
  v18 = [(REMAssignment *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_objectID, d);
    objc_storeStrong(&v19->_accountID, iD);
    objc_storeStrong(&v19->_reminderID, reminderID);
    objc_storeStrong(&v19->_assigneeID, assigneeID);
    objc_storeStrong(&v19->_originatorID, originatorID);
    v19->_status = status;
    objc_storeStrong(&v19->_assignedDate, date);
    *&v19->__debug_cdAssigneeLinked = 257;
  }

  return v19;
}

- (REMAssignment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = REMAssignment;
  v5 = [(REMAssignment *)&v21 init];
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

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assigneeID"];
    assigneeID = v5->_assigneeID;
    v5->_assigneeID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatorID"];
    originatorID = v5->_originatorID;
    v5->_originatorID = v14;

    v16 = [coderCopy decodeIntegerForKey:@"status"];
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
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assignedDate"];
    assignedDate = v5->_assignedDate;
    v5->_assignedDate = v18;

    v5->__debug_cdAssigneeLinked = [coderCopy decodeBoolForKey:@"_debug_cdAssigneeLinked"];
    v5->__debug_cdOriginatorLinked = [coderCopy decodeBoolForKey:@"_debug_cdOriginatorLinked"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMAssignment *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  accountID = [(REMAssignment *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  reminderID = [(REMAssignment *)self reminderID];
  [coderCopy encodeObject:reminderID forKey:@"reminderID"];

  assigneeID = [(REMAssignment *)self assigneeID];
  [coderCopy encodeObject:assigneeID forKey:@"assigneeID"];

  originatorID = [(REMAssignment *)self originatorID];
  [coderCopy encodeObject:originatorID forKey:@"originatorID"];

  [coderCopy encodeInteger:-[REMAssignment status](self forKey:{"status"), @"status"}];
  assignedDate = [(REMAssignment *)self assignedDate];
  [coderCopy encodeObject:assignedDate forKey:@"assignedDate"];

  [coderCopy encodeBool:-[REMAssignment _debug_cdAssigneeLinked](self forKey:{"_debug_cdAssigneeLinked"), @"_debug_cdAssigneeLinked"}];
  [coderCopy encodeBool:-[REMAssignment _debug_cdOriginatorLinked](self forKey:{"_debug_cdOriginatorLinked"), @"_debug_cdOriginatorLinked"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, equalCopy);

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

- (BOOL)isEqualToAssignment:(id)assignment
{
  assignmentCopy = assignment;
  v5 = assignmentCopy;
  if (assignmentCopy != self)
  {
    v6 = assignmentCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_23;
    }

    status = [(REMAssignment *)self status];
    if (status != [(REMAssignment *)v6 status])
    {
      goto LABEL_23;
    }

    objectID = [(REMAssignment *)self objectID];
    objectID2 = [(REMAssignment *)v6 objectID];
    v10 = objectID2;
    if (objectID == objectID2)
    {
    }

    else
    {
      objectID3 = [(REMAssignment *)self objectID];
      objectID4 = [(REMAssignment *)v6 objectID];
      v13 = [objectID3 isEqual:objectID4];

      if (!v13)
      {
        goto LABEL_23;
      }
    }

    accountID = [(REMAssignment *)self accountID];
    accountID2 = [(REMAssignment *)v6 accountID];
    v17 = accountID2;
    if (accountID == accountID2)
    {
    }

    else
    {
      accountID3 = [(REMAssignment *)self accountID];
      accountID4 = [(REMAssignment *)v6 accountID];
      v20 = [accountID3 isEqual:accountID4];

      if (!v20)
      {
        goto LABEL_23;
      }
    }

    reminderID = [(REMAssignment *)self reminderID];
    reminderID2 = [(REMAssignment *)v6 reminderID];
    v23 = reminderID2;
    if (reminderID == reminderID2)
    {
    }

    else
    {
      reminderID3 = [(REMAssignment *)self reminderID];
      reminderID4 = [(REMAssignment *)v6 reminderID];
      v26 = [reminderID3 isEqual:reminderID4];

      if (!v26)
      {
        goto LABEL_23;
      }
    }

    assigneeID = [(REMAssignment *)self assigneeID];
    assigneeID2 = [(REMAssignment *)v6 assigneeID];
    v29 = assigneeID2;
    if (assigneeID == assigneeID2)
    {
    }

    else
    {
      assigneeID3 = [(REMAssignment *)self assigneeID];
      assigneeID4 = [(REMAssignment *)v6 assigneeID];
      v32 = [assigneeID3 isEqual:assigneeID4];

      if (!v32)
      {
        goto LABEL_23;
      }
    }

    originatorID = [(REMAssignment *)self originatorID];
    originatorID2 = [(REMAssignment *)v6 originatorID];
    v35 = originatorID2;
    if (originatorID == originatorID2)
    {
    }

    else
    {
      originatorID3 = [(REMAssignment *)self originatorID];
      originatorID4 = [(REMAssignment *)v6 originatorID];
      v38 = [originatorID3 isEqual:originatorID4];

      if (!v38)
      {
LABEL_23:
        v14 = 0;
LABEL_24:

        goto LABEL_25;
      }
    }

    assignedDate = [(REMAssignment *)self assignedDate];
    assignedDate2 = [(REMAssignment *)v6 assignedDate];
    if (assignedDate == assignedDate2)
    {
      v14 = 1;
    }

    else
    {
      assignedDate3 = [(REMAssignment *)self assignedDate];
      assignedDate4 = [(REMAssignment *)v6 assignedDate];
      v14 = [assignedDate3 isEqual:assignedDate4];
    }

    goto LABEL_24;
  }

  v14 = 1;
LABEL_25:

  return v14 & 1;
}

- (unint64_t)hash
{
  objectID = [(REMAssignment *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (NSString)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  objectID = [(REMAssignment *)self objectID];
  reminderID = [(REMAssignment *)self reminderID];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMAssignment status](self, "status")}];
  assignedDate = [(REMAssignment *)self assignedDate];
  originatorID = [(REMAssignment *)self originatorID];
  assigneeID = [(REMAssignment *)self assigneeID];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMAssignment _debug_cdOriginatorLinked](self, "_debug_cdOriginatorLinked")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMAssignment _debug_cdAssigneeLinked](self, "_debug_cdAssigneeLinked")}];
  v12 = [v14 stringWithFormat:@"<%@: %p objectID: %@, reminderID: %@, status: %@, date: %@, originatorID: %@, assigneeID: %@, originatorLinked: %@, assigneeLinked: %@>", v3, self, objectID, reminderID, v6, assignedDate, originatorID, assigneeID, v10, v11];

  return v12;
}

- (BOOL)isOriginatorNullified
{
  originatorID = [(REMAssignment *)self originatorID];
  v3 = +[REMSharee nullifiedAssignmentOriginatorID];
  v4 = [originatorID isEqual:v3];

  return v4;
}

- (double)orderValue
{
  assignedDate = [(REMAssignment *)self assignedDate];
  objectID = [(REMAssignment *)self objectID];
  uuid = [objectID uuid];
  uUIDString = [uuid UUIDString];
  [REMAssignment orderValueWithAssignedDate:assignedDate objectIdentifier:uUIDString];
  v8 = v7;

  return v8;
}

+ (double)orderValueWithAssignedDate:(id)date objectIdentifier:(id)identifier
{
  if (!date)
  {
    return [identifier hash];
  }

  [date timeIntervalSinceReferenceDate];
  return result;
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

+ (id)nullifiedOriginatorAssignmentWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID assigneeID:(id)assigneeID status:(int64_t)status assignedDate:(id)date
{
  dateCopy = date;
  assigneeIDCopy = assigneeID;
  reminderIDCopy = reminderID;
  iDCopy = iD;
  dCopy = d;
  v18 = [REMAssignment alloc];
  v19 = +[REMSharee nullifiedAssignmentOriginatorID];
  v20 = [(REMAssignment *)v18 initWithObjectID:dCopy accountID:iDCopy reminderID:reminderIDCopy assigneeID:assigneeIDCopy originatorID:v19 status:status assignedDate:dateCopy];

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