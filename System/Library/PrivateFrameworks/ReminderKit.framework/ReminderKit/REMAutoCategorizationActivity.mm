@interface REMAutoCategorizationActivity
- (BOOL)isEqual:(id)equal;
- (REMAutoCategorizationActivity)initWithCoder:(id)coder;
- (REMAutoCategorizationActivity)initWithListID:(id)d reminderIDs:(id)ds;
- (REMAutoCategorizationActivity)initWithReminderIDsByListID:(id)d;
- (id)activityByMergingWithActivity:(id)activity;
- (id)activityBySubtractingActivity:(id)activity;
- (id)description;
- (id)reminderIDsForListID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAutoCategorizationActivity

- (REMAutoCategorizationActivity)initWithReminderIDsByListID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = REMAutoCategorizationActivity;
  v5 = [(REMAutoCategorizationActivity *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    reminderIDsByListID = v5->_reminderIDsByListID;
    v5->_reminderIDsByListID = v6;
  }

  return v5;
}

- (REMAutoCategorizationActivity)initWithListID:(id)d reminderIDs:(id)ds
{
  v13[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  dsCopy = ds;
  if ([dsCopy count])
  {
    v12 = dCopy;
    v13[0] = dsCopy;
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

- (id)reminderIDsForListID:(id)d
{
  dCopy = d;
  reminderIDsByListID = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  v6 = [reminderIDsByListID objectForKeyedSubscript:dCopy];

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

- (id)activityByMergingWithActivity:(id)activity
{
  v26 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  reminderIDsByListID = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  v6 = [reminderIDsByListID mutableCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  reminderIDsByListID2 = [activityCopy reminderIDsByListID];
  v8 = [reminderIDsByListID2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(reminderIDsByListID2);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        reminderIDsByListID3 = [activityCopy reminderIDsByListID];
        v14 = [reminderIDsByListID3 objectForKeyedSubscript:v12];

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

      v9 = [reminderIDsByListID2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v18 = [[REMAutoCategorizationActivity alloc] initWithReminderIDsByListID:v6];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)activityBySubtractingActivity:(id)activity
{
  v27 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  reminderIDsByListID = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  v6 = [reminderIDsByListID mutableCopy];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = activityCopy;
  reminderIDsByListID2 = [activityCopy reminderIDsByListID];
  v8 = [reminderIDsByListID2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(reminderIDsByListID2);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:v12];
        if (v13)
        {
          reminderIDsByListID3 = [v21 reminderIDsByListID];
          v15 = [reminderIDsByListID3 objectForKeyedSubscript:v12];

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

      v9 = [reminderIDsByListID2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  reminderIDsByListID = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  v4 = [reminderIDsByListID count];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  reminderIDsByListID2 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  v6 = [reminderIDsByListID2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(reminderIDsByListID2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        reminderIDsByListID3 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
        v13 = [reminderIDsByListID3 objectForKeyedSubscript:v11];
        v8 += [v13 count];
      }

      v7 = [reminderIDsByListID2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, equalCopy);

  reminderIDsByListID = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  reminderIDsByListID2 = [v6 reminderIDsByListID];
  if (reminderIDsByListID == reminderIDsByListID2)
  {
    v11 = 1;
  }

  else
  {
    reminderIDsByListID3 = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
    reminderIDsByListID4 = [v6 reminderIDsByListID];
    v11 = [reminderIDsByListID3 isEqual:reminderIDsByListID4];
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  reminderIDsByListID = [(REMAutoCategorizationActivity *)self reminderIDsByListID];
  [coderCopy encodeObject:reminderIDsByListID forKey:@"reminderIDsByListID"];
}

- (REMAutoCategorizationActivity)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"reminderIDsByListID"];

  v10 = [(REMAutoCategorizationActivity *)self initWithReminderIDsByListID:v9];
  return v10;
}

@end