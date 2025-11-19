@interface REMReminderPredicateDescriptor
+ (id)andPredicateDescriptorWithDescriptors:(id)a3;
+ (id)orPredicateDescriptorWithDescriptors:(id)a3;
+ (id)predicateDescriptorForRemindersWithDisplayDateBetween:(id)a3 and:(id)a4;
+ (id)predicateDescriptorForRemindersWithDisplayDateOnOrAfter:(id)a3;
+ (id)predicateDescriptorForRemindersWithDisplayDateOnOrBefore:(id)a3;
+ (id)predicateDescriptorForRemindersWithDueDateBetween:(id)a3 and:(id)a4;
+ (id)predicateDescriptorForRemindersWithDueDateOnOrAfter:(id)a3;
+ (id)predicateDescriptorForRemindersWithDueDateOnOrBefore:(id)a3;
+ (id)predicateDescriptorForRemindersWithListID:(id)a3;
+ (id)predicateDescriptorForRemindersWithObjectIDs:(id)a3;
+ (id)predicateDescriptorForRemindersWithParentReminderID:(id)a3;
+ (id)predicateDescriptorForRemindersWithTitleBeginsWith:(id)a3;
+ (id)predicateDescriptorForRemindersWithTitleContains:(id)a3;
+ (id)predicateDescriptorForRemindersWithTitleEndsWith:(id)a3;
+ (id)predicateDescriptorForRemindersWithTitleEquals:(id)a3;
- (BOOL)isEqual:(id)a3;
- (REMReminderPredicateDescriptor)initWithCoder:(id)a3;
- (REMReminderPredicateDescriptor)initWithReminderPredicateDescriptor:(id)a3;
- (REMReminderPredicateDescriptor)initWithType:(int64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMReminderPredicateDescriptor

+ (id)andPredicateDescriptorWithDescriptors:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:8];
  [(REMReminderPredicateDescriptor *)v4 setDescriptors:v3];

  return v4;
}

+ (id)orPredicateDescriptorWithDescriptors:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:9];
  [(REMReminderPredicateDescriptor *)v4 setDescriptors:v3];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithListID:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:0];
  [(REMReminderPredicateDescriptor *)v4 setListID:v3];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithParentReminderID:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:1];
  [(REMReminderPredicateDescriptor *)v4 setParentReminderID:v3];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithObjectIDs:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:2];
  [(REMReminderPredicateDescriptor *)v4 setObjectIDs:v3];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithDueDateOnOrBefore:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:3];
  [(REMReminderPredicateDescriptor *)v4 setStartingDueDate:v3];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithDueDateOnOrAfter:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:4];
  [(REMReminderPredicateDescriptor *)v4 setEndingDueDate:v3];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithDueDateBetween:(id)a3 and:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[REMReminderPredicateDescriptor alloc] initWithType:5];
  [(REMReminderPredicateDescriptor *)v7 setStartingDueDate:v6];

  [(REMReminderPredicateDescriptor *)v7 setEndingDueDate:v5];

  return v7;
}

+ (id)predicateDescriptorForRemindersWithDisplayDateOnOrBefore:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:10];
  [(REMReminderPredicateDescriptor *)v4 setStartingDueDate:v3];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithDisplayDateOnOrAfter:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:11];
  [(REMReminderPredicateDescriptor *)v4 setEndingDueDate:v3];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithDisplayDateBetween:(id)a3 and:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[REMReminderPredicateDescriptor alloc] initWithType:12];
  [(REMReminderPredicateDescriptor *)v7 setStartingDueDate:v6];

  [(REMReminderPredicateDescriptor *)v7 setEndingDueDate:v5];

  return v7;
}

+ (id)predicateDescriptorForRemindersWithTitleEquals:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:7];
  [(REMReminderPredicateDescriptor *)v4 setText:v3];

  [(REMReminderPredicateDescriptor *)v4 setTextMatching:0];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithTitleContains:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:7];
  [(REMReminderPredicateDescriptor *)v4 setText:v3];

  [(REMReminderPredicateDescriptor *)v4 setTextMatching:1];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithTitleBeginsWith:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:7];
  [(REMReminderPredicateDescriptor *)v4 setText:v3];

  [(REMReminderPredicateDescriptor *)v4 setTextMatching:2];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithTitleEndsWith:(id)a3
{
  v3 = a3;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:7];
  [(REMReminderPredicateDescriptor *)v4 setText:v3];

  [(REMReminderPredicateDescriptor *)v4 setTextMatching:3];

  return v4;
}

- (REMReminderPredicateDescriptor)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = REMReminderPredicateDescriptor;
  result = [(REMReminderPredicateDescriptor *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (REMReminderPredicateDescriptor)initWithReminderPredicateDescriptor:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = REMReminderPredicateDescriptor;
  v5 = [(REMReminderPredicateDescriptor *)&v21 init];
  if (v5)
  {
    v5->_type = [v4 type];
    v6 = [v4 objectIDs];
    objectIDs = v5->_objectIDs;
    v5->_objectIDs = v6;

    v8 = [v4 listID];
    listID = v5->_listID;
    v5->_listID = v8;

    v10 = [v4 parentReminderID];
    parentReminderID = v5->_parentReminderID;
    v5->_parentReminderID = v10;

    v12 = [v4 startingDueDate];
    startingDueDate = v5->_startingDueDate;
    v5->_startingDueDate = v12;

    v14 = [v4 endingDueDate];
    endingDueDate = v5->_endingDueDate;
    v5->_endingDueDate = v14;

    v5->_completed = [v4 completed];
    v16 = [v4 descriptors];
    descriptors = v5->_descriptors;
    v5->_descriptors = v16;

    v18 = [v4 text];
    text = v5->_text;
    v5->_text = v18;

    v5->_textMatching = [v4 textMatching];
  }

  return v5;
}

- (REMReminderPredicateDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = REMReminderPredicateDescriptor;
  v5 = [(REMReminderPredicateDescriptor *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"type"];
    if (v6 >= 0xD)
    {
      v7 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(REMReminderPredicateDescriptor *)v6 initWithCoder:v7];
      }

      v6 = 0;
    }

    v5->_type = v6;
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"objectIDs"];
    objectIDs = v5->_objectIDs;
    v5->_objectIDs = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
    listID = v5->_listID;
    v5->_listID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];
    parentReminderID = v5->_parentReminderID;
    v5->_parentReminderID = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startingDueDate"];
    startingDueDate = v5->_startingDueDate;
    v5->_startingDueDate = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endingDueDate"];
    endingDueDate = v5->_endingDueDate;
    v5->_endingDueDate = v19;

    v5->_completed = [v4 decodeBoolForKey:@"completed"];
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"descriptors"];
    descriptors = v5->_descriptors;
    v5->_descriptors = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v26;

    v28 = [v4 decodeIntegerForKey:@"textMatching"];
    if (v28 >= 4)
    {
      v29 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        [(REMReminderPredicateDescriptor *)v28 initWithCoder:v29];
      }

      v28 = 0;
    }

    v5->_textMatching = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  [v11 encodeInteger:-[REMReminderPredicateDescriptor type](self forKey:{"type"), @"type"}];
  v4 = [(REMReminderPredicateDescriptor *)self objectIDs];
  [v11 encodeObject:v4 forKey:@"objectIDs"];

  v5 = [(REMReminderPredicateDescriptor *)self listID];
  [v11 encodeObject:v5 forKey:@"listID"];

  v6 = [(REMReminderPredicateDescriptor *)self parentReminderID];
  [v11 encodeObject:v6 forKey:@"parentReminderID"];

  v7 = [(REMReminderPredicateDescriptor *)self startingDueDate];
  [v11 encodeObject:v7 forKey:@"startingDueDate"];

  v8 = [(REMReminderPredicateDescriptor *)self endingDueDate];
  [v11 encodeObject:v8 forKey:@"endingDueDate"];

  [v11 encodeBool:-[REMReminderPredicateDescriptor completed](self forKey:{"completed"), @"completed"}];
  v9 = [(REMReminderPredicateDescriptor *)self descriptors];
  [v11 encodeObject:v9 forKey:@"descriptors"];

  v10 = [(REMReminderPredicateDescriptor *)self text];
  [v11 encodeObject:v10 forKey:@"text"];

  [v11 encodeInteger:-[REMReminderPredicateDescriptor textMatching](self forKey:{"textMatching"), @"textMatching"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_33;
    }

    v7 = [(REMReminderPredicateDescriptor *)self type];
    if (v7 != [(REMReminderPredicateDescriptor *)v6 type])
    {
      goto LABEL_33;
    }

    v8 = [(REMReminderPredicateDescriptor *)self objectIDs];
    v9 = [(REMReminderPredicateDescriptor *)v6 objectIDs];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [(REMReminderPredicateDescriptor *)self objectIDs];
      v12 = [(REMReminderPredicateDescriptor *)v6 objectIDs];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_33;
      }
    }

    v15 = [(REMReminderPredicateDescriptor *)self listID];
    v16 = [(REMReminderPredicateDescriptor *)v6 listID];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(REMReminderPredicateDescriptor *)self listID];
      v19 = [(REMReminderPredicateDescriptor *)v6 listID];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_33;
      }
    }

    v21 = [(REMReminderPredicateDescriptor *)self parentReminderID];
    v22 = [(REMReminderPredicateDescriptor *)v6 parentReminderID];
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      v24 = [(REMReminderPredicateDescriptor *)self parentReminderID];
      v25 = [(REMReminderPredicateDescriptor *)v6 parentReminderID];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_33;
      }
    }

    v27 = [(REMReminderPredicateDescriptor *)self startingDueDate];
    v28 = [(REMReminderPredicateDescriptor *)v6 startingDueDate];
    v29 = v28;
    if (v27 == v28)
    {
    }

    else
    {
      v30 = [(REMReminderPredicateDescriptor *)self startingDueDate];
      v31 = [(REMReminderPredicateDescriptor *)v6 startingDueDate];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
        goto LABEL_33;
      }
    }

    v33 = [(REMReminderPredicateDescriptor *)self endingDueDate];
    v34 = [(REMReminderPredicateDescriptor *)v6 endingDueDate];
    v35 = v34;
    if (v33 == v34)
    {
    }

    else
    {
      v36 = [(REMReminderPredicateDescriptor *)self endingDueDate];
      v37 = [(REMReminderPredicateDescriptor *)v6 endingDueDate];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_33;
      }
    }

    v39 = [(REMReminderPredicateDescriptor *)self completed];
    if (v39 == [(REMReminderPredicateDescriptor *)v6 completed])
    {
      v40 = [(REMReminderPredicateDescriptor *)self descriptors];
      v41 = [(REMReminderPredicateDescriptor *)v6 descriptors];
      v42 = v41;
      if (v40 == v41)
      {
      }

      else
      {
        v43 = [(REMReminderPredicateDescriptor *)self descriptors];
        v44 = [(REMReminderPredicateDescriptor *)v6 descriptors];
        v45 = [v43 isEqual:v44];

        if (!v45)
        {
          goto LABEL_33;
        }
      }

      v46 = [(REMReminderPredicateDescriptor *)self textMatching];
      if (v46 == [(REMReminderPredicateDescriptor *)v6 textMatching])
      {
        v47 = [(REMReminderPredicateDescriptor *)self text];
        v48 = [(REMReminderPredicateDescriptor *)v6 text];
        if (v47 == v48)
        {
          v14 = 1;
        }

        else
        {
          v49 = [(REMReminderPredicateDescriptor *)self text];
          v50 = [(REMReminderPredicateDescriptor *)v6 text];
          v14 = [v49 isEqual:v50];
        }

        goto LABEL_34;
      }
    }

LABEL_33:
    v14 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(REMReminderPredicateDescriptor *)self objectIDs];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(REMReminderPredicateDescriptor *)self objectIDs];
    v7 = [v5 stringWithFormat:@"objectIDs: %@", v6];
    [v3 addObject:v7];
  }

  v8 = [(REMReminderPredicateDescriptor *)self listID];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [(REMReminderPredicateDescriptor *)self listID];
    v11 = [v9 stringWithFormat:@"listID: %@", v10];
    [v3 addObject:v11];
  }

  v12 = [(REMReminderPredicateDescriptor *)self parentReminderID];

  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [(REMReminderPredicateDescriptor *)self parentReminderID];
    v15 = [v13 stringWithFormat:@"parentReminderID: %@", v14];
    [v3 addObject:v15];
  }

  v16 = [(REMReminderPredicateDescriptor *)self startingDueDate];

  if (v16)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(REMReminderPredicateDescriptor *)self startingDueDate];
    v19 = [v17 stringWithFormat:@"startingDueDate: %@", v18];
    [v3 addObject:v19];
  }

  v20 = [(REMReminderPredicateDescriptor *)self endingDueDate];

  if (v20)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = [(REMReminderPredicateDescriptor *)self endingDueDate];
    v23 = [v21 stringWithFormat:@"endingDueDate: %@", v22];
    [v3 addObject:v23];
  }

  if ([(REMReminderPredicateDescriptor *)self type]== 6)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"completed: %d", -[REMReminderPredicateDescriptor completed](self, "completed")];
    [v3 addObject:v24];
  }

  v25 = [(REMReminderPredicateDescriptor *)self descriptors];

  if (v25)
  {
    v26 = MEMORY[0x1E696AEC0];
    v27 = [(REMReminderPredicateDescriptor *)self descriptors];
    v28 = [v26 stringWithFormat:@"descriptors: %@", v27];
    [v3 addObject:v28];
  }

  v29 = [(REMReminderPredicateDescriptor *)self text];

  if (v29)
  {
    v30 = MEMORY[0x1E696AEC0];
    v31 = [(REMReminderPredicateDescriptor *)self textMatching];
    v32 = [(REMReminderPredicateDescriptor *)self text];
    v33 = [v30 stringWithFormat:@"textMatching: %ld text: %@", v31, v32];
    [v3 addObject:v33];
  }

  v34 = [v3 componentsJoinedByString:@" "];
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p type: %ld %@>", objc_opt_class(), self, -[REMReminderPredicateDescriptor type](self, "type"), v34];

  return v35;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMReminderPredicateDescriptorType %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMReminderPredicateDescriptorTextMatching %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end