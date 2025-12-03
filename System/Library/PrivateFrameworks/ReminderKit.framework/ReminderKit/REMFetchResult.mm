@interface REMFetchResult
- (REMFetchResult)initWithAccountStorages:(id)storages;
- (REMFetchResult)initWithAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages requestedObjectIDs:(id)ds metadata:(id)metadata;
- (REMFetchResult)initWithCoder:(id)coder;
- (REMFetchResult)initWithCount:(int64_t)count;
- (REMFetchResult)initWithListStorages:(id)storages;
- (REMFetchResult)initWithMetadata:(id)metadata;
- (REMFetchResult)initWithReminderStorages:(id)storages;
- (REMFetchResult)initWithRequestedObjectIDs:(id)ds;
- (REMFetchResult)initWithType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMFetchResult

- (REMFetchResult)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = REMFetchResult;
  result = [(REMFetchResult *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (REMFetchResult)initWithCount:(int64_t)count
{
  result = [(REMFetchResult *)self initWithType:2];
  if (result)
  {
    result->_count = count;
  }

  return result;
}

- (REMFetchResult)initWithAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages requestedObjectIDs:(id)ds metadata:(id)metadata
{
  storagesCopy = storages;
  listStoragesCopy = listStorages;
  reminderStoragesCopy = reminderStorages;
  dsCopy = ds;
  metadataCopy = metadata;
  v17 = [(REMFetchResult *)self initWithType:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fetchedAccountStorages, storages);
    objc_storeStrong(&v18->_fetchedListStorages, listStorages);
    objc_storeStrong(&v18->_fetchedReminderStorages, reminderStorages);
    objc_storeStrong(&v18->_requestedObjectIDs, ds);
    objc_storeStrong(&v18->_metadata, metadata);
  }

  return v18;
}

- (REMFetchResult)initWithAccountStorages:(id)storages
{
  storagesCopy = storages;
  v6 = [(REMFetchResult *)self initWithType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchedAccountStorages, storages);
  }

  return v7;
}

- (REMFetchResult)initWithListStorages:(id)storages
{
  storagesCopy = storages;
  v6 = [(REMFetchResult *)self initWithType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchedListStorages, storages);
  }

  return v7;
}

- (REMFetchResult)initWithReminderStorages:(id)storages
{
  storagesCopy = storages;
  v6 = [(REMFetchResult *)self initWithType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchedReminderStorages, storages);
  }

  return v7;
}

- (REMFetchResult)initWithRequestedObjectIDs:(id)ds
{
  dsCopy = ds;
  v6 = [(REMFetchResult *)self initWithType:3];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestedObjectIDs, ds);
  }

  return v7;
}

- (REMFetchResult)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = [(REMFetchResult *)self initWithType:4];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadata, metadata);
  }

  return v7;
}

- (REMFetchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
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
    v7->_count = [coderCopy decodeIntegerForKey:@"count"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"fetchedAccountStorages"];
    fetchedAccountStorages = v7->_fetchedAccountStorages;
    v7->_fetchedAccountStorages = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"fetchedListStorages"];
    fetchedListStorages = v7->_fetchedListStorages;
    v7->_fetchedListStorages = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"fetchedReminderStorages"];
    fetchedReminderStorages = v7->_fetchedReminderStorages;
    v7->_fetchedReminderStorages = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"requestedObjectIDs"];
    requestedObjectIDs = v7->_requestedObjectIDs;
    v7->_requestedObjectIDs = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fetchResultToken"];
    fetchResultToken = v7->_fetchResultToken;
    v7->_fetchResultToken = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v7->_metadata;
    v7->_metadata = v30;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMFetchResult type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:-[REMFetchResult count](self forKey:{"count"), @"count"}];
  fetchedAccountStorages = [(REMFetchResult *)self fetchedAccountStorages];
  [coderCopy encodeObject:fetchedAccountStorages forKey:@"fetchedAccountStorages"];

  fetchedListStorages = [(REMFetchResult *)self fetchedListStorages];
  [coderCopy encodeObject:fetchedListStorages forKey:@"fetchedListStorages"];

  fetchedReminderStorages = [(REMFetchResult *)self fetchedReminderStorages];
  [coderCopy encodeObject:fetchedReminderStorages forKey:@"fetchedReminderStorages"];

  requestedObjectIDs = [(REMFetchResult *)self requestedObjectIDs];
  [coderCopy encodeObject:requestedObjectIDs forKey:@"requestedObjectIDs"];

  fetchResultToken = [(REMFetchResult *)self fetchResultToken];
  [coderCopy encodeObject:fetchResultToken forKey:@"fetchResultToken"];

  metadata = [(REMFetchResult *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

- (id)description
{
  type = [(REMFetchResult *)self type];
  v4 = &stru_1F0D67F00;
  if (type > 2)
  {
    if (type == 3)
    {
      v14 = MEMORY[0x1E696AEC0];
      requestedObjectIDs = [(REMFetchResult *)self requestedObjectIDs];
      [v14 stringWithFormat:@"objectIDs.count: %ld", objc_msgSend(requestedObjectIDs, "count")];
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_12;
      }

      v13 = MEMORY[0x1E696AEC0];
      requestedObjectIDs = [(REMFetchResult *)self metadata];
      [v13 stringWithFormat:@"metadata: %@", requestedObjectIDs];
    }
    v4 = ;
    goto LABEL_11;
  }

  if (type < 2)
  {
    v5 = MEMORY[0x1E696AEC0];
    requestedObjectIDs = [(REMFetchResult *)self fetchedAccountStorages];
    v7 = [requestedObjectIDs count];
    fetchedListStorages = [(REMFetchResult *)self fetchedListStorages];
    v9 = [fetchedListStorages count];
    fetchedReminderStorages = [(REMFetchResult *)self fetchedReminderStorages];
    v11 = [fetchedReminderStorages count];
    requestedObjectIDs2 = [(REMFetchResult *)self requestedObjectIDs];
    v4 = [v5 stringWithFormat:@"[a:%ld, l:%ld, r:%ld, ids:%ld]", v7, v9, v11, objc_msgSend(requestedObjectIDs2, "count")];

LABEL_11:
    goto LABEL_12;
  }

  if (type == 2)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"count: %ld", -[REMFetchResult count](self, "count")];
  }

LABEL_12:
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  fetchResultToken = [(REMFetchResult *)self fetchResultToken];

  if (fetchResultToken)
  {
    v17 = MEMORY[0x1E696AEC0];
    fetchResultToken2 = [(REMFetchResult *)self fetchResultToken];
    v19 = [v17 stringWithFormat:@"fetchResultToken: %@", fetchResultToken2];

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