@interface REMDueDateDeltaAlert
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isContentEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (REMDueDateDeltaAlert)initWithCoder:(id)coder;
- (REMDueDateDeltaAlert)initWithIdentifier:(id)identifier reminderID:(id)d accountID:(id)iD dueDateDelta:(id)delta creationDate:(id)date acknowledgedDate:(id)acknowledgedDate minimumSupportedAppVersion:(int64_t)version;
- (REMObjectID)remObjectID;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMDueDateDeltaAlert

- (REMDueDateDeltaAlert)initWithIdentifier:(id)identifier reminderID:(id)d accountID:(id)iD dueDateDelta:(id)delta creationDate:(id)date acknowledgedDate:(id)acknowledgedDate minimumSupportedAppVersion:(int64_t)version
{
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  deltaCopy = delta;
  dateCopy = date;
  acknowledgedDateCopy = acknowledgedDate;
  v25.receiver = self;
  v25.super_class = REMDueDateDeltaAlert;
  v19 = [(REMDueDateDeltaAlert *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v20->_reminderID, d);
    objc_storeStrong(&v20->_accountID, iD);
    objc_storeStrong(&v20->_dueDateDelta, delta);
    objc_storeStrong(&v20->_creationDate, date);
    objc_storeStrong(&v20->_acknowledgedDate, acknowledgedDate);
    v20->_minimumSupportedAppVersion = version;
  }

  return v20;
}

- (REMDueDateDeltaAlert)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = REMDueDateDeltaAlert;
  v5 = [(REMDueDateDeltaAlert *)&v28 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dueDateDelta"];
  v11 = v10;
  if (!v6)
  {
    v25 = +[REMLogStore read];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [REMDueDateDeltaAlert initWithCoder:];
    }

    v26 = "identifier";
    goto LABEL_24;
  }

  if (!v7)
  {
    v25 = +[REMLogStore read];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [REMDueDateDeltaAlert initWithCoder:];
    }

    v26 = "reminderID";
    goto LABEL_24;
  }

  if (!v8)
  {
    v25 = +[REMLogStore read];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [REMDueDateDeltaAlert initWithCoder:];
    }

    v26 = "accountID";
    goto LABEL_24;
  }

  if (!v9)
  {
    v25 = +[REMLogStore read];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [REMDueDateDeltaAlert initWithCoder:];
    }

    v26 = "creationDate";
    goto LABEL_24;
  }

  if (!v10)
  {
    v25 = +[REMLogStore read];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [REMDueDateDeltaAlert initWithCoder:];
    }

    v26 = "dueDateDelta";
LABEL_24:

    NSLog(&cfstr_SIsUnexpectedl.isa, v26);
    v24 = 0;
    goto LABEL_25;
  }

  identifier = v5->_identifier;
  v5->_identifier = v6;
  v13 = v6;

  reminderID = v5->_reminderID;
  v5->_reminderID = v7;
  v15 = v7;

  accountID = v5->_accountID;
  v5->_accountID = v8;
  v17 = v8;

  creationDate = v5->_creationDate;
  v5->_creationDate = v9;
  v19 = v9;

  dueDateDelta = v5->_dueDateDelta;
  v5->_dueDateDelta = v11;
  v21 = v11;

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acknowledgedDate"];
  acknowledgedDate = v5->_acknowledgedDate;
  v5->_acknowledgedDate = v22;

  v5->_minimumSupportedAppVersion = [coderCopy decodeIntegerForKey:@"minimumSupportedAppVersion"];
LABEL_8:
  v24 = v5;
LABEL_25:

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(REMDueDateDeltaAlert *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  reminderID = [(REMDueDateDeltaAlert *)self reminderID];
  [coderCopy encodeObject:reminderID forKey:@"reminderID"];

  accountID = [(REMDueDateDeltaAlert *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  dueDateDelta = [(REMDueDateDeltaAlert *)self dueDateDelta];
  [coderCopy encodeObject:dueDateDelta forKey:@"dueDateDelta"];

  creationDate = [(REMDueDateDeltaAlert *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  acknowledgedDate = [(REMDueDateDeltaAlert *)self acknowledgedDate];
  [coderCopy encodeObject:acknowledgedDate forKey:@"acknowledgedDate"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, equalCopy);

  if (v6)
  {
    v7 = [(REMDueDateDeltaAlert *)self isContentEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isContentEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(REMDueDateDeltaAlert *)self identifier];
      identifier2 = [(REMDueDateDeltaAlert *)v6 identifier];
      v9 = identifier2;
      if (identifier == identifier2)
      {
      }

      else
      {
        identifier3 = [(REMDueDateDeltaAlert *)self identifier];
        identifier4 = [(REMDueDateDeltaAlert *)v6 identifier];
        v12 = [identifier3 isEqual:identifier4];

        if (!v12)
        {
          goto LABEL_22;
        }
      }

      reminderID = [(REMDueDateDeltaAlert *)self reminderID];
      reminderID2 = [(REMDueDateDeltaAlert *)v6 reminderID];
      v16 = reminderID2;
      if (reminderID == reminderID2)
      {
      }

      else
      {
        reminderID3 = [(REMDueDateDeltaAlert *)self reminderID];
        reminderID4 = [(REMDueDateDeltaAlert *)v6 reminderID];
        v19 = [reminderID3 isEqual:reminderID4];

        if (!v19)
        {
          goto LABEL_22;
        }
      }

      accountID = [(REMDueDateDeltaAlert *)self accountID];
      accountID2 = [(REMDueDateDeltaAlert *)v6 accountID];
      v22 = accountID2;
      if (accountID == accountID2)
      {
      }

      else
      {
        accountID3 = [(REMDueDateDeltaAlert *)self accountID];
        accountID4 = [(REMDueDateDeltaAlert *)v6 accountID];
        v25 = [accountID3 isEqual:accountID4];

        if (!v25)
        {
          goto LABEL_22;
        }
      }

      dueDateDelta = [(REMDueDateDeltaAlert *)self dueDateDelta];
      dueDateDelta2 = [(REMDueDateDeltaAlert *)v6 dueDateDelta];
      v28 = dueDateDelta2;
      if (dueDateDelta == dueDateDelta2)
      {
      }

      else
      {
        dueDateDelta3 = [(REMDueDateDeltaAlert *)self dueDateDelta];
        dueDateDelta4 = [(REMDueDateDeltaAlert *)v6 dueDateDelta];
        v31 = [dueDateDelta3 isEqual:dueDateDelta4];

        if (!v31)
        {
          goto LABEL_22;
        }
      }

      creationDate = [(REMDueDateDeltaAlert *)self creationDate];
      creationDate2 = [(REMDueDateDeltaAlert *)v6 creationDate];
      v34 = creationDate2;
      if (creationDate == creationDate2)
      {
      }

      else
      {
        creationDate3 = [(REMDueDateDeltaAlert *)self creationDate];
        creationDate4 = [(REMDueDateDeltaAlert *)v6 creationDate];
        v37 = [creationDate3 isEqual:creationDate4];

        if (!v37)
        {
          goto LABEL_22;
        }
      }

      acknowledgedDate = [(REMDueDateDeltaAlert *)self acknowledgedDate];
      acknowledgedDate2 = [(REMDueDateDeltaAlert *)v6 acknowledgedDate];
      if (acknowledgedDate == acknowledgedDate2)
      {
        v13 = 1;
      }

      else
      {
        acknowledgedDate3 = [(REMDueDateDeltaAlert *)self acknowledgedDate];
        acknowledgedDate4 = [(REMDueDateDeltaAlert *)v6 acknowledgedDate];
        v13 = [acknowledgedDate3 isEqual:acknowledgedDate4];
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

  return v13 & 1;
}

- (unint64_t)hash
{
  identifier = [(REMDueDateDeltaAlert *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(REMDueDateDeltaAlert *)self identifier];
  reminderID = [(REMDueDateDeltaAlert *)self reminderID];
  dueDateDelta = [(REMDueDateDeltaAlert *)self dueDateDelta];
  acknowledgedDate = [(REMDueDateDeltaAlert *)self acknowledgedDate];
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: %@, reminderID: %@, delta: %@, ackdate: %@>", v4, self, identifier, reminderID, dueDateDelta, acknowledgedDate];

  return v9;
}

- (REMObjectID)remObjectID
{
  identifier = [(REMDueDateDeltaAlert *)self identifier];
  v3 = +[REMDueDateDeltaAlert cdEntityName];
  v4 = [REMObjectID objectIDWithUUID:identifier entityName:v3];

  return v4;
}

+ (id)newObjectID
{
  v3 = +[REMLogStore read];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    +[(REMDueDateDeltaAlert *)v3];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v5 = [self objectIDWithUUID:uUID];

  return v5;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

  return v6;
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.4()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.5()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

@end