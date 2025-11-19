@interface REMFetchResult
- (REMFetchResult)initWithAccountStorages:(id)a3;
- (REMFetchResult)initWithAccountStorages:(id)a3 listStorages:(id)a4 reminderStorages:(id)a5 requestedObjectIDs:(id)a6 metadata:(id)a7;
- (REMFetchResult)initWithCoder:(id)a3;
- (REMFetchResult)initWithCount:(int64_t)a3;
- (REMFetchResult)initWithListStorages:(id)a3;
- (REMFetchResult)initWithMetadata:(id)a3;
- (REMFetchResult)initWithReminderStorages:(id)a3;
- (REMFetchResult)initWithRequestedObjectIDs:(id)a3;
- (REMFetchResult)initWithType:(int64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMFetchResult

- (REMFetchResult)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = REMFetchResult;
  result = [(REMFetchResult *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (REMFetchResult)initWithCount:(int64_t)a3
{
  result = [(REMFetchResult *)self initWithType:2];
  if (result)
  {
    result->_count = a3;
  }

  return result;
}

- (REMFetchResult)initWithAccountStorages:(id)a3 listStorages:(id)a4 reminderStorages:(id)a5 requestedObjectIDs:(id)a6 metadata:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(REMFetchResult *)self initWithType:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fetchedAccountStorages, a3);
    objc_storeStrong(&v18->_fetchedListStorages, a4);
    objc_storeStrong(&v18->_fetchedReminderStorages, a5);
    objc_storeStrong(&v18->_requestedObjectIDs, a6);
    objc_storeStrong(&v18->_metadata, a7);
  }

  return v18;
}

- (REMFetchResult)initWithAccountStorages:(id)a3
{
  v5 = a3;
  v6 = [(REMFetchResult *)self initWithType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchedAccountStorages, a3);
  }

  return v7;
}

- (REMFetchResult)initWithListStorages:(id)a3
{
  v5 = a3;
  v6 = [(REMFetchResult *)self initWithType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchedListStorages, a3);
  }

  return v7;
}

- (REMFetchResult)initWithReminderStorages:(id)a3
{
  v5 = a3;
  v6 = [(REMFetchResult *)self initWithType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchedReminderStorages, a3);
  }

  return v7;
}

- (REMFetchResult)initWithRequestedObjectIDs:(id)a3
{
  v5 = a3;
  v6 = [(REMFetchResult *)self initWithType:3];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestedObjectIDs, a3);
  }

  return v7;
}

- (REMFetchResult)initWithMetadata:(id)a3
{
  v5 = a3;
  v6 = [(REMFetchResult *)self initWithType:4];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadata, a3);
  }

  return v7;
}

- (REMFetchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  if (v5 >= 5)
  {
    v6 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(REMFetchResult *)v5 initWithCoder:v6];
    }

    v5 = 0;
  }

  v7 = [(REMFetchResult *)self initWithType:v5];
  if (v7)
  {
    v7->_count = [v4 decodeIntegerForKey:@"count"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"fetchedAccountStorages"];
    fetchedAccountStorages = v7->_fetchedAccountStorages;
    v7->_fetchedAccountStorages = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"fetchedListStorages"];
    fetchedListStorages = v7->_fetchedListStorages;
    v7->_fetchedListStorages = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"fetchedReminderStorages"];
    fetchedReminderStorages = v7->_fetchedReminderStorages;
    v7->_fetchedReminderStorages = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"requestedObjectIDs"];
    requestedObjectIDs = v7->_requestedObjectIDs;
    v7->_requestedObjectIDs = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fetchResultToken"];
    fetchResultToken = v7->_fetchResultToken;
    v7->_fetchResultToken = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v7->_metadata;
    v7->_metadata = v30;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[REMFetchResult type](self forKey:{"type"), @"type"}];
  [v4 encodeInteger:-[REMFetchResult count](self forKey:{"count"), @"count"}];
  v5 = [(REMFetchResult *)self fetchedAccountStorages];
  [v4 encodeObject:v5 forKey:@"fetchedAccountStorages"];

  v6 = [(REMFetchResult *)self fetchedListStorages];
  [v4 encodeObject:v6 forKey:@"fetchedListStorages"];

  v7 = [(REMFetchResult *)self fetchedReminderStorages];
  [v4 encodeObject:v7 forKey:@"fetchedReminderStorages"];

  v8 = [(REMFetchResult *)self requestedObjectIDs];
  [v4 encodeObject:v8 forKey:@"requestedObjectIDs"];

  v9 = [(REMFetchResult *)self fetchResultToken];
  [v4 encodeObject:v9 forKey:@"fetchResultToken"];

  v10 = [(REMFetchResult *)self metadata];
  [v4 encodeObject:v10 forKey:@"metadata"];
}

- (id)description
{
  v3 = [(REMFetchResult *)self type];
  v4 = &stru_1F0D67F00;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v14 = MEMORY[0x1E696AEC0];
      v6 = [(REMFetchResult *)self requestedObjectIDs];
      [v14 stringWithFormat:@"objectIDs.count: %ld", objc_msgSend(v6, "count")];
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_12;
      }

      v13 = MEMORY[0x1E696AEC0];
      v6 = [(REMFetchResult *)self metadata];
      [v13 stringWithFormat:@"metadata: %@", v6];
    }
    v4 = ;
    goto LABEL_11;
  }

  if (v3 < 2)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(REMFetchResult *)self fetchedAccountStorages];
    v7 = [v6 count];
    v8 = [(REMFetchResult *)self fetchedListStorages];
    v9 = [v8 count];
    v10 = [(REMFetchResult *)self fetchedReminderStorages];
    v11 = [v10 count];
    v12 = [(REMFetchResult *)self requestedObjectIDs];
    v4 = [v5 stringWithFormat:@"[a:%ld, l:%ld, r:%ld, ids:%ld]", v7, v9, v11, objc_msgSend(v12, "count")];

LABEL_11:
    goto LABEL_12;
  }

  if (v3 == 2)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"count: %ld", -[REMFetchResult count](self, "count")];
  }

LABEL_12:
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = [(REMFetchResult *)self fetchResultToken];

  if (v16)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(REMFetchResult *)self fetchResultToken];
    v19 = [v17 stringWithFormat:@"fetchResultToken: %@", v18];

    [v15 addObject:v19];
  }

  else
  {
    v19 = &stru_1F0D67F00;
  }

  v20 = [v15 componentsJoinedByString:{@", "}];
  if ([v20 length])
  {
    v21 = [@" "];

    v20 = v21;
  }

  v22 = MEMORY[0x1E696AEC0];
  v23 = objc_opt_class();
  v24 = NSStringFromREMFetchRequestType([(REMFetchResult *)self type]);
  v25 = [v22 stringWithFormat:@"<%@: %p type: %@%@%@>", v23, self, v24, v4, v20];

  return v25;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMFetchRequestType %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end