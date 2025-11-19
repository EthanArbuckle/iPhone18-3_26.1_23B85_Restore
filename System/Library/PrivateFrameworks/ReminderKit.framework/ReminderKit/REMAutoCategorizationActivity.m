@interface REMAutoCategorizationActivity
- (BOOL)isEqual:(id)a3;
- (REMAutoCategorizationActivity)initWithCoder:(id)a3;
- (REMAutoCategorizationActivity)initWithListID:(id)a3 reminderIDs:(id)a4;
- (REMAutoCategorizationActivity)initWithReminderIDsByListID:(id)a3;
- (id)activityByMergingWithActivity:(id)a3;
- (id)activityBySubtractingActivity:(id)a3;
- (id)description;
- (id)reminderIDsForListID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAutoCategorizationActivity

- (REMAutoCategorizationActivity)initWithReminderIDsByListID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMAutoCategorizationActivity;
  v5 = [(REMAutoCategorizationActivity *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    reminderIDsByListID = v5->_reminderIDsByListID;
    v5->_reminderIDsByListID = v6;
  }

  return v5;
}

- (REMAutoCategorizationActivity)initWithListID:(id)a3 reminderIDs:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v12 = v6;
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [(REMAutoCategorizationActivity *)self initWithReminderIDsByListID:v8];
  }

  else
  {
    v9 = [(REMAutoCategorizationActivity *)self init];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)reminderIDsForListID:(id)a3
{
  v4 = a3;
  v5 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  v8 = v7;

  return v8;
}

- (id)activityByMergingWithActivity:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  v6 = [v5 mutableCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v4 reminderIDsByListID];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v4 reminderIDsByListID];
        v14 = [v13 objectForKeyedSubscript:v12];

        v15 = [v6 objectForKeyedSubscript:v12];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 setByAddingObjectsFromSet:v14];
          [v6 setObject:v17 forKeyedSubscript:v12];
        }

        else
        {
          [v6 setObject:v14 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v18 = [[REMAutoCategorizationActivity alloc] initWithReminderIDsByListID:v6];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)activityBySubtractingActivity:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  v6 = [v5 mutableCopy];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = v4;
  v7 = [v4 reminderIDsByListID];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:v12];
        if (v13)
        {
          v14 = [v21 reminderIDsByListID];
          v15 = [v14 objectForKeyedSubscript:v12];

          v16 = [v13 mutableCopy];
          [v16 minusSet:v15];
          if ([v16 count])
          {
            v17 = [v16 copy];
            [v6 setObject:v17 forKeyedSubscript:v12];
          }

          else
          {
            [v6 removeObjectForKey:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v18 = [[REMAutoCategorizationActivity alloc] initWithReminderIDsByListID:v6];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  v4 = [v3 count];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
        v13 = [v12 objectForKeyedSubscript:v11];
        v8 += [v13 count];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> {lists: %ld, reminders: %ld}", objc_opt_class(), self, v4, v8];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);

  v7 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  v8 = [v6 reminderIDsByListID];
  if (v7 == v8)
  {
    v11 = 1;
  }

  else
  {
    v9 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
    v10 = [v6 reminderIDsByListID];
    v11 = [v9 isEqual:v10];
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  [v4 encodeObject:v5 forKey:@"reminderIDsByListID"];
}

- (REMAutoCategorizationActivity)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"reminderIDsByListID"];

  v10 = [(REMAutoCategorizationActivity *)self initWithReminderIDsByListID:v9];
  return v10;
}

@end