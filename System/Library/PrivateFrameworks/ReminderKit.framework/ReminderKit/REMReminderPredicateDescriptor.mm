@interface REMReminderPredicateDescriptor
+ (id)andPredicateDescriptorWithDescriptors:(id)descriptors;
+ (id)orPredicateDescriptorWithDescriptors:(id)descriptors;
+ (id)predicateDescriptorForRemindersWithDisplayDateBetween:(id)between and:(id)and;
+ (id)predicateDescriptorForRemindersWithDisplayDateOnOrAfter:(id)after;
+ (id)predicateDescriptorForRemindersWithDisplayDateOnOrBefore:(id)before;
+ (id)predicateDescriptorForRemindersWithDueDateBetween:(id)between and:(id)and;
+ (id)predicateDescriptorForRemindersWithDueDateOnOrAfter:(id)after;
+ (id)predicateDescriptorForRemindersWithDueDateOnOrBefore:(id)before;
+ (id)predicateDescriptorForRemindersWithListID:(id)d;
+ (id)predicateDescriptorForRemindersWithObjectIDs:(id)ds;
+ (id)predicateDescriptorForRemindersWithParentReminderID:(id)d;
+ (id)predicateDescriptorForRemindersWithTitleBeginsWith:(id)with;
+ (id)predicateDescriptorForRemindersWithTitleContains:(id)contains;
+ (id)predicateDescriptorForRemindersWithTitleEndsWith:(id)with;
+ (id)predicateDescriptorForRemindersWithTitleEquals:(id)equals;
- (BOOL)isEqual:(id)equal;
- (REMReminderPredicateDescriptor)initWithCoder:(id)coder;
- (REMReminderPredicateDescriptor)initWithReminderPredicateDescriptor:(id)descriptor;
- (REMReminderPredicateDescriptor)initWithType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMReminderPredicateDescriptor

+ (id)andPredicateDescriptorWithDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:8];
  [(REMReminderPredicateDescriptor *)v4 setDescriptors:descriptorsCopy];

  return v4;
}

+ (id)orPredicateDescriptorWithDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:9];
  [(REMReminderPredicateDescriptor *)v4 setDescriptors:descriptorsCopy];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithListID:(id)d
{
  dCopy = d;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:0];
  [(REMReminderPredicateDescriptor *)v4 setListID:dCopy];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithParentReminderID:(id)d
{
  dCopy = d;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:1];
  [(REMReminderPredicateDescriptor *)v4 setParentReminderID:dCopy];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithObjectIDs:(id)ds
{
  dsCopy = ds;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:2];
  [(REMReminderPredicateDescriptor *)v4 setObjectIDs:dsCopy];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithDueDateOnOrBefore:(id)before
{
  beforeCopy = before;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:3];
  [(REMReminderPredicateDescriptor *)v4 setStartingDueDate:beforeCopy];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithDueDateOnOrAfter:(id)after
{
  afterCopy = after;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:4];
  [(REMReminderPredicateDescriptor *)v4 setEndingDueDate:afterCopy];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithDueDateBetween:(id)between and:(id)and
{
  andCopy = and;
  betweenCopy = between;
  v7 = [[REMReminderPredicateDescriptor alloc] initWithType:5];
  [(REMReminderPredicateDescriptor *)v7 setStartingDueDate:betweenCopy];

  [(REMReminderPredicateDescriptor *)v7 setEndingDueDate:andCopy];

  return v7;
}

+ (id)predicateDescriptorForRemindersWithDisplayDateOnOrBefore:(id)before
{
  beforeCopy = before;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:10];
  [(REMReminderPredicateDescriptor *)v4 setStartingDueDate:beforeCopy];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithDisplayDateOnOrAfter:(id)after
{
  afterCopy = after;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:11];
  [(REMReminderPredicateDescriptor *)v4 setEndingDueDate:afterCopy];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithDisplayDateBetween:(id)between and:(id)and
{
  andCopy = and;
  betweenCopy = between;
  v7 = [[REMReminderPredicateDescriptor alloc] initWithType:12];
  [(REMReminderPredicateDescriptor *)v7 setStartingDueDate:betweenCopy];

  [(REMReminderPredicateDescriptor *)v7 setEndingDueDate:andCopy];

  return v7;
}

+ (id)predicateDescriptorForRemindersWithTitleEquals:(id)equals
{
  equalsCopy = equals;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:7];
  [(REMReminderPredicateDescriptor *)v4 setText:equalsCopy];

  [(REMReminderPredicateDescriptor *)v4 setTextMatching:0];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithTitleContains:(id)contains
{
  containsCopy = contains;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:7];
  [(REMReminderPredicateDescriptor *)v4 setText:containsCopy];

  [(REMReminderPredicateDescriptor *)v4 setTextMatching:1];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithTitleBeginsWith:(id)with
{
  withCopy = with;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:7];
  [(REMReminderPredicateDescriptor *)v4 setText:withCopy];

  [(REMReminderPredicateDescriptor *)v4 setTextMatching:2];

  return v4;
}

+ (id)predicateDescriptorForRemindersWithTitleEndsWith:(id)with
{
  withCopy = with;
  v4 = [[REMReminderPredicateDescriptor alloc] initWithType:7];
  [(REMReminderPredicateDescriptor *)v4 setText:withCopy];

  [(REMReminderPredicateDescriptor *)v4 setTextMatching:3];

  return v4;
}

- (REMReminderPredicateDescriptor)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = REMReminderPredicateDescriptor;
  result = [(REMReminderPredicateDescriptor *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (REMReminderPredicateDescriptor)initWithReminderPredicateDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v21.receiver = self;
  v21.super_class = REMReminderPredicateDescriptor;
  v5 = [(REMReminderPredicateDescriptor *)&v21 init];
  if (v5)
  {
    v5->_type = [descriptorCopy type];
    objectIDs = [descriptorCopy objectIDs];
    objectIDs = v5->_objectIDs;
    v5->_objectIDs = objectIDs;

    listID = [descriptorCopy listID];
    listID = v5->_listID;
    v5->_listID = listID;

    parentReminderID = [descriptorCopy parentReminderID];
    parentReminderID = v5->_parentReminderID;
    v5->_parentReminderID = parentReminderID;

    startingDueDate = [descriptorCopy startingDueDate];
    startingDueDate = v5->_startingDueDate;
    v5->_startingDueDate = startingDueDate;

    endingDueDate = [descriptorCopy endingDueDate];
    endingDueDate = v5->_endingDueDate;
    v5->_endingDueDate = endingDueDate;

    v5->_completed = [descriptorCopy completed];
    descriptors = [descriptorCopy descriptors];
    descriptors = v5->_descriptors;
    v5->_descriptors = descriptors;

    text = [descriptorCopy text];
    text = v5->_text;
    v5->_text = text;

    v5->_textMatching = [descriptorCopy textMatching];
  }

  return v5;
}

- (REMReminderPredicateDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = REMReminderPredicateDescriptor;
  v5 = [(REMReminderPredicateDescriptor *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"type"];
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
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"objectIDs"];
    objectIDs = v5->_objectIDs;
    v5->_objectIDs = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
    listID = v5->_listID;
    v5->_listID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];
    parentReminderID = v5->_parentReminderID;
    v5->_parentReminderID = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startingDueDate"];
    startingDueDate = v5->_startingDueDate;
    v5->_startingDueDate = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endingDueDate"];
    endingDueDate = v5->_endingDueDate;
    v5->_endingDueDate = v19;

    v5->_completed = [coderCopy decodeBoolForKey:@"completed"];
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"descriptors"];
    descriptors = v5->_descriptors;
    v5->_descriptors = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v26;

    v28 = [coderCopy decodeIntegerForKey:@"textMatching"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMReminderPredicateDescriptor type](self forKey:{"type"), @"type"}];
  objectIDs = [(REMReminderPredicateDescriptor *)self objectIDs];
  [coderCopy encodeObject:objectIDs forKey:@"objectIDs"];

  listID = [(REMReminderPredicateDescriptor *)self listID];
  [coderCopy encodeObject:listID forKey:@"listID"];

  parentReminderID = [(REMReminderPredicateDescriptor *)self parentReminderID];
  [coderCopy encodeObject:parentReminderID forKey:@"parentReminderID"];

  startingDueDate = [(REMReminderPredicateDescriptor *)self startingDueDate];
  [coderCopy encodeObject:startingDueDate forKey:@"startingDueDate"];

  endingDueDate = [(REMReminderPredicateDescriptor *)self endingDueDate];
  [coderCopy encodeObject:endingDueDate forKey:@"endingDueDate"];

  [coderCopy encodeBool:-[REMReminderPredicateDescriptor completed](self forKey:{"completed"), @"completed"}];
  descriptors = [(REMReminderPredicateDescriptor *)self descriptors];
  [coderCopy encodeObject:descriptors forKey:@"descriptors"];

  text = [(REMReminderPredicateDescriptor *)self text];
  [coderCopy encodeObject:text forKey:@"text"];

  [coderCopy encodeInteger:-[REMReminderPredicateDescriptor textMatching](self forKey:{"textMatching"), @"textMatching"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_33;
    }

    type = [(REMReminderPredicateDescriptor *)self type];
    if (type != [(REMReminderPredicateDescriptor *)v6 type])
    {
      goto LABEL_33;
    }

    objectIDs = [(REMReminderPredicateDescriptor *)self objectIDs];
    objectIDs2 = [(REMReminderPredicateDescriptor *)v6 objectIDs];
    v10 = objectIDs2;
    if (objectIDs == objectIDs2)
    {
    }

    else
    {
      objectIDs3 = [(REMReminderPredicateDescriptor *)self objectIDs];
      objectIDs4 = [(REMReminderPredicateDescriptor *)v6 objectIDs];
      v13 = [objectIDs3 isEqual:objectIDs4];

      if (!v13)
      {
        goto LABEL_33;
      }
    }

    listID = [(REMReminderPredicateDescriptor *)self listID];
    listID2 = [(REMReminderPredicateDescriptor *)v6 listID];
    v17 = listID2;
    if (listID == listID2)
    {
    }

    else
    {
      listID3 = [(REMReminderPredicateDescriptor *)self listID];
      listID4 = [(REMReminderPredicateDescriptor *)v6 listID];
      v20 = [listID3 isEqual:listID4];

      if (!v20)
      {
        goto LABEL_33;
      }
    }

    parentReminderID = [(REMReminderPredicateDescriptor *)self parentReminderID];
    parentReminderID2 = [(REMReminderPredicateDescriptor *)v6 parentReminderID];
    v23 = parentReminderID2;
    if (parentReminderID == parentReminderID2)
    {
    }

    else
    {
      parentReminderID3 = [(REMReminderPredicateDescriptor *)self parentReminderID];
      parentReminderID4 = [(REMReminderPredicateDescriptor *)v6 parentReminderID];
      v26 = [parentReminderID3 isEqual:parentReminderID4];

      if (!v26)
      {
        goto LABEL_33;
      }
    }

    startingDueDate = [(REMReminderPredicateDescriptor *)self startingDueDate];
    startingDueDate2 = [(REMReminderPredicateDescriptor *)v6 startingDueDate];
    v29 = startingDueDate2;
    if (startingDueDate == startingDueDate2)
    {
    }

    else
    {
      startingDueDate3 = [(REMReminderPredicateDescriptor *)self startingDueDate];
      startingDueDate4 = [(REMReminderPredicateDescriptor *)v6 startingDueDate];
      v32 = [startingDueDate3 isEqual:startingDueDate4];

      if (!v32)
      {
        goto LABEL_33;
      }
    }

    endingDueDate = [(REMReminderPredicateDescriptor *)self endingDueDate];
    endingDueDate2 = [(REMReminderPredicateDescriptor *)v6 endingDueDate];
    v35 = endingDueDate2;
    if (endingDueDate == endingDueDate2)
    {
    }

    else
    {
      endingDueDate3 = [(REMReminderPredicateDescriptor *)self endingDueDate];
      endingDueDate4 = [(REMReminderPredicateDescriptor *)v6 endingDueDate];
      v38 = [endingDueDate3 isEqual:endingDueDate4];

      if (!v38)
      {
        goto LABEL_33;
      }
    }

    completed = [(REMReminderPredicateDescriptor *)self completed];
    if (completed == [(REMReminderPredicateDescriptor *)v6 completed])
    {
      descriptors = [(REMReminderPredicateDescriptor *)self descriptors];
      descriptors2 = [(REMReminderPredicateDescriptor *)v6 descriptors];
      v42 = descriptors2;
      if (descriptors == descriptors2)
      {
      }

      else
      {
        descriptors3 = [(REMReminderPredicateDescriptor *)self descriptors];
        descriptors4 = [(REMReminderPredicateDescriptor *)v6 descriptors];
        v45 = [descriptors3 isEqual:descriptors4];

        if (!v45)
        {
          goto LABEL_33;
        }
      }

      textMatching = [(REMReminderPredicateDescriptor *)self textMatching];
      if (textMatching == [(REMReminderPredicateDescriptor *)v6 textMatching])
      {
        text = [(REMReminderPredicateDescriptor *)self text];
        text2 = [(REMReminderPredicateDescriptor *)v6 text];
        if (text == text2)
        {
          v14 = 1;
        }

        else
        {
          text3 = [(REMReminderPredicateDescriptor *)self text];
          text4 = [(REMReminderPredicateDescriptor *)v6 text];
          v14 = [text3 isEqual:text4];
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
  array = [MEMORY[0x1E695DF70] array];
  objectIDs = [(REMReminderPredicateDescriptor *)self objectIDs];

  if (objectIDs)
  {
    v5 = MEMORY[0x1E696AEC0];
    objectIDs2 = [(REMReminderPredicateDescriptor *)self objectIDs];
    v7 = [v5 stringWithFormat:@"objectIDs: %@", objectIDs2];
    [array addObject:v7];
  }

  listID = [(REMReminderPredicateDescriptor *)self listID];

  if (listID)
  {
    v9 = MEMORY[0x1E696AEC0];
    listID2 = [(REMReminderPredicateDescriptor *)self listID];
    v11 = [v9 stringWithFormat:@"listID: %@", listID2];
    [array addObject:v11];
  }

  parentReminderID = [(REMReminderPredicateDescriptor *)self parentReminderID];

  if (parentReminderID)
  {
    v13 = MEMORY[0x1E696AEC0];
    parentReminderID2 = [(REMReminderPredicateDescriptor *)self parentReminderID];
    v15 = [v13 stringWithFormat:@"parentReminderID: %@", parentReminderID2];
    [array addObject:v15];
  }

  startingDueDate = [(REMReminderPredicateDescriptor *)self startingDueDate];

  if (startingDueDate)
  {
    v17 = MEMORY[0x1E696AEC0];
    startingDueDate2 = [(REMReminderPredicateDescriptor *)self startingDueDate];
    v19 = [v17 stringWithFormat:@"startingDueDate: %@", startingDueDate2];
    [array addObject:v19];
  }

  endingDueDate = [(REMReminderPredicateDescriptor *)self endingDueDate];

  if (endingDueDate)
  {
    v21 = MEMORY[0x1E696AEC0];
    endingDueDate2 = [(REMReminderPredicateDescriptor *)self endingDueDate];
    v23 = [v21 stringWithFormat:@"endingDueDate: %@", endingDueDate2];
    [array addObject:v23];
  }

  if ([(REMReminderPredicateDescriptor *)self type]== 6)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"completed: %d", -[REMReminderPredicateDescriptor completed](self, "completed")];
    [array addObject:v24];
  }

  descriptors = [(REMReminderPredicateDescriptor *)self descriptors];

  if (descriptors)
  {
    v26 = MEMORY[0x1E696AEC0];
    descriptors2 = [(REMReminderPredicateDescriptor *)self descriptors];
    v28 = [v26 stringWithFormat:@"descriptors: %@", descriptors2];
    [array addObject:v28];
  }

  text = [(REMReminderPredicateDescriptor *)self text];

  if (text)
  {
    v30 = MEMORY[0x1E696AEC0];
    textMatching = [(REMReminderPredicateDescriptor *)self textMatching];
    text2 = [(REMReminderPredicateDescriptor *)self text];
    v33 = [v30 stringWithFormat:@"textMatching: %ld text: %@", textMatching, text2];
    [array addObject:v33];
  }

  v34 = [array componentsJoinedByString:@" "];
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