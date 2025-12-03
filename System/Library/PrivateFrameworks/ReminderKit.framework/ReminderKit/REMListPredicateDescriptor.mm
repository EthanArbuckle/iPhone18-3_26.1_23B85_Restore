@interface REMListPredicateDescriptor
+ (id)predicateDescriptorForAllLists;
- (BOOL)isEqual:(id)equal;
- (REMListPredicateDescriptor)initWithCoder:(id)coder;
- (REMListPredicateDescriptor)initWithType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListPredicateDescriptor

- (REMListPredicateDescriptor)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = REMListPredicateDescriptor;
  result = [(REMListPredicateDescriptor *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

+ (id)predicateDescriptorForAllLists
{
  v2 = [[REMListPredicateDescriptor alloc] initWithType:0];

  return v2;
}

- (REMListPredicateDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = REMListPredicateDescriptor;
  v5 = [(REMListPredicateDescriptor *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"type"];
    if (v6)
    {
      v7 = v6;
      v8 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(REMListPredicateDescriptor *)v7 initWithCoder:v8];
      }
    }

    v5->_type = 0;
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"objectIDs"];
    objectIDs = v5->_objectIDs;
    v5->_objectIDs = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentListID"];
    parentListID = v5->_parentListID;
    v5->_parentListID = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMListPredicateDescriptor type](self forKey:{"type"), @"type"}];
  objectIDs = [(REMListPredicateDescriptor *)self objectIDs];
  [coderCopy encodeObject:objectIDs forKey:@"objectIDs"];

  accountID = [(REMListPredicateDescriptor *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  parentListID = [(REMListPredicateDescriptor *)self parentListID];
  [coderCopy encodeObject:parentListID forKey:@"parentListID"];
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
      goto LABEL_11;
    }

    type = [(REMListPredicateDescriptor *)self type];
    if (type != [(REMListPredicateDescriptor *)v6 type])
    {
      goto LABEL_11;
    }

    accountID = [(REMListPredicateDescriptor *)self accountID];
    accountID2 = [(REMListPredicateDescriptor *)v6 accountID];
    v10 = accountID2;
    if (accountID == accountID2)
    {
    }

    else
    {
      accountID3 = [(REMListPredicateDescriptor *)self accountID];
      accountID4 = [(REMListPredicateDescriptor *)v6 accountID];
      v13 = [accountID3 isEqual:accountID4];

      if (!v13)
      {
        goto LABEL_11;
      }
    }

    parentListID = [(REMListPredicateDescriptor *)self parentListID];
    parentListID2 = [(REMListPredicateDescriptor *)v6 parentListID];
    v17 = parentListID2;
    if (parentListID == parentListID2)
    {
    }

    else
    {
      parentListID3 = [(REMListPredicateDescriptor *)self parentListID];
      parentListID4 = [(REMListPredicateDescriptor *)v6 parentListID];
      v20 = [parentListID3 isEqual:parentListID4];

      if (!v20)
      {
LABEL_11:
        v14 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    objectIDs = [(REMListPredicateDescriptor *)self objectIDs];
    objectIDs2 = [(REMListPredicateDescriptor *)v6 objectIDs];
    if (objectIDs == objectIDs2)
    {
      v14 = 1;
    }

    else
    {
      objectIDs3 = [(REMListPredicateDescriptor *)self objectIDs];
      objectIDs4 = [(REMListPredicateDescriptor *)v6 objectIDs];
      v14 = [objectIDs3 isEqual:objectIDs4];
    }

    goto LABEL_12;
  }

  v14 = 1;
LABEL_13:

  return v14 & 1;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMListPredicateDescriptorType %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end