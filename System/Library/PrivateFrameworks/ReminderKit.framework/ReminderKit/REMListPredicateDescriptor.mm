@interface REMListPredicateDescriptor
+ (id)predicateDescriptorForAllLists;
- (BOOL)isEqual:(id)a3;
- (REMListPredicateDescriptor)initWithCoder:(id)a3;
- (REMListPredicateDescriptor)initWithType:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListPredicateDescriptor

- (REMListPredicateDescriptor)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = REMListPredicateDescriptor;
  result = [(REMListPredicateDescriptor *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

+ (id)predicateDescriptorForAllLists
{
  v2 = [[REMListPredicateDescriptor alloc] initWithType:0];

  return v2;
}

- (REMListPredicateDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = REMListPredicateDescriptor;
  v5 = [(REMListPredicateDescriptor *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"type"];
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
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"objectIDs"];
    objectIDs = v5->_objectIDs;
    v5->_objectIDs = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentListID"];
    parentListID = v5->_parentListID;
    v5->_parentListID = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[REMListPredicateDescriptor type](self forKey:{"type"), @"type"}];
  v5 = [(REMListPredicateDescriptor *)self objectIDs];
  [v4 encodeObject:v5 forKey:@"objectIDs"];

  v6 = [(REMListPredicateDescriptor *)self accountID];
  [v4 encodeObject:v6 forKey:@"accountID"];

  v7 = [(REMListPredicateDescriptor *)self parentListID];
  [v4 encodeObject:v7 forKey:@"parentListID"];
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
      goto LABEL_11;
    }

    v7 = [(REMListPredicateDescriptor *)self type];
    if (v7 != [(REMListPredicateDescriptor *)v6 type])
    {
      goto LABEL_11;
    }

    v8 = [(REMListPredicateDescriptor *)self accountID];
    v9 = [(REMListPredicateDescriptor *)v6 accountID];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [(REMListPredicateDescriptor *)self accountID];
      v12 = [(REMListPredicateDescriptor *)v6 accountID];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_11;
      }
    }

    v15 = [(REMListPredicateDescriptor *)self parentListID];
    v16 = [(REMListPredicateDescriptor *)v6 parentListID];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(REMListPredicateDescriptor *)self parentListID];
      v19 = [(REMListPredicateDescriptor *)v6 parentListID];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
LABEL_11:
        v14 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    v22 = [(REMListPredicateDescriptor *)self objectIDs];
    v23 = [(REMListPredicateDescriptor *)v6 objectIDs];
    if (v22 == v23)
    {
      v14 = 1;
    }

    else
    {
      v24 = [(REMListPredicateDescriptor *)self objectIDs];
      v25 = [(REMListPredicateDescriptor *)v6 objectIDs];
      v14 = [v24 isEqual:v25];
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