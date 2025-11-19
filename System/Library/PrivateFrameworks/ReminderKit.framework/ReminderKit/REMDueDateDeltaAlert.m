@interface REMDueDateDeltaAlert
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)isContentEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (REMDueDateDeltaAlert)initWithCoder:(id)a3;
- (REMDueDateDeltaAlert)initWithIdentifier:(id)a3 reminderID:(id)a4 accountID:(id)a5 dueDateDelta:(id)a6 creationDate:(id)a7 acknowledgedDate:(id)a8 minimumSupportedAppVersion:(int64_t)a9;
- (REMObjectID)remObjectID;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMDueDateDeltaAlert

- (REMDueDateDeltaAlert)initWithIdentifier:(id)a3 reminderID:(id)a4 accountID:(id)a5 dueDateDelta:(id)a6 creationDate:(id)a7 acknowledgedDate:(id)a8 minimumSupportedAppVersion:(int64_t)a9
{
  v16 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = REMDueDateDeltaAlert;
  v19 = [(REMDueDateDeltaAlert *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_reminderID, a4);
    objc_storeStrong(&v20->_accountID, a5);
    objc_storeStrong(&v20->_dueDateDelta, a6);
    objc_storeStrong(&v20->_creationDate, a7);
    objc_storeStrong(&v20->_acknowledgedDate, a8);
    v20->_minimumSupportedAppVersion = a9;
  }

  return v20;
}

- (REMDueDateDeltaAlert)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = REMDueDateDeltaAlert;
  v5 = [(REMDueDateDeltaAlert *)&v28 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reminderID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dueDateDelta"];
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

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acknowledgedDate"];
  acknowledgedDate = v5->_acknowledgedDate;
  v5->_acknowledgedDate = v22;

  v5->_minimumSupportedAppVersion = [v4 decodeIntegerForKey:@"minimumSupportedAppVersion"];
LABEL_8:
  v24 = v5;
LABEL_25:

  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMDueDateDeltaAlert *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(REMDueDateDeltaAlert *)self reminderID];
  [v4 encodeObject:v6 forKey:@"reminderID"];

  v7 = [(REMDueDateDeltaAlert *)self accountID];
  [v4 encodeObject:v7 forKey:@"accountID"];

  v8 = [(REMDueDateDeltaAlert *)self dueDateDelta];
  [v4 encodeObject:v8 forKey:@"dueDateDelta"];

  v9 = [(REMDueDateDeltaAlert *)self creationDate];
  [v4 encodeObject:v9 forKey:@"creationDate"];

  v10 = [(REMDueDateDeltaAlert *)self acknowledgedDate];
  [v4 encodeObject:v10 forKey:@"acknowledgedDate"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);

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

- (BOOL)isContentEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMDueDateDeltaAlert *)self identifier];
      v8 = [(REMDueDateDeltaAlert *)v6 identifier];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMDueDateDeltaAlert *)self identifier];
        v11 = [(REMDueDateDeltaAlert *)v6 identifier];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_22;
        }
      }

      v14 = [(REMDueDateDeltaAlert *)self reminderID];
      v15 = [(REMDueDateDeltaAlert *)v6 reminderID];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(REMDueDateDeltaAlert *)self reminderID];
        v18 = [(REMDueDateDeltaAlert *)v6 reminderID];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_22;
        }
      }

      v20 = [(REMDueDateDeltaAlert *)self accountID];
      v21 = [(REMDueDateDeltaAlert *)v6 accountID];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(REMDueDateDeltaAlert *)self accountID];
        v24 = [(REMDueDateDeltaAlert *)v6 accountID];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_22;
        }
      }

      v26 = [(REMDueDateDeltaAlert *)self dueDateDelta];
      v27 = [(REMDueDateDeltaAlert *)v6 dueDateDelta];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(REMDueDateDeltaAlert *)self dueDateDelta];
        v30 = [(REMDueDateDeltaAlert *)v6 dueDateDelta];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_22;
        }
      }

      v32 = [(REMDueDateDeltaAlert *)self creationDate];
      v33 = [(REMDueDateDeltaAlert *)v6 creationDate];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(REMDueDateDeltaAlert *)self creationDate];
        v36 = [(REMDueDateDeltaAlert *)v6 creationDate];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_22;
        }
      }

      v39 = [(REMDueDateDeltaAlert *)self acknowledgedDate];
      v40 = [(REMDueDateDeltaAlert *)v6 acknowledgedDate];
      if (v39 == v40)
      {
        v13 = 1;
      }

      else
      {
        v41 = [(REMDueDateDeltaAlert *)self acknowledgedDate];
        v42 = [(REMDueDateDeltaAlert *)v6 acknowledgedDate];
        v13 = [v41 isEqual:v42];
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
  v2 = [(REMDueDateDeltaAlert *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMDueDateDeltaAlert *)self identifier];
  v6 = [(REMDueDateDeltaAlert *)self reminderID];
  v7 = [(REMDueDateDeltaAlert *)self dueDateDelta];
  v8 = [(REMDueDateDeltaAlert *)self acknowledgedDate];
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: %@, reminderID: %@, delta: %@, ackdate: %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (REMObjectID)remObjectID
{
  v2 = [(REMDueDateDeltaAlert *)self identifier];
  v3 = +[REMDueDateDeltaAlert cdEntityName];
  v4 = [REMObjectID objectIDWithUUID:v2 entityName:v3];

  return v4;
}

+ (id)newObjectID
{
  v3 = +[REMLogStore read];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    +[(REMDueDateDeltaAlert *)v3];
  }

  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [a1 objectIDWithUUID:v4];

  return v5;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

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