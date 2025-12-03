@interface REMNSPersistentHistoryTransaction
- (BOOL)isEqual:(id)equal;
- (REMNSPersistentHistoryTransaction)initWithCoder:(id)coder;
- (REMNSPersistentHistoryTransaction)initWithStorage:(id)storage;
- (id)accountID;
- (id)author;
- (id)changes;
- (id)description;
- (id)storeID;
- (id)timestamp;
- (id)token;
- (void)_resolveAccountID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMNSPersistentHistoryTransaction

- (REMNSPersistentHistoryTransaction)initWithStorage:(id)storage
{
  storageCopy = storage;
  if (storageCopy)
  {
    v10.receiver = self;
    v10.super_class = REMNSPersistentHistoryTransaction;
    v6 = [(REMNSPersistentHistoryTransaction *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_storage, storage);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_resolveAccountID:(id)d
{
  dCopy = d;
  storage = [(REMNSPersistentHistoryTransaction *)self storage];
  [storage setAccountID:dCopy];
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  storage = [(REMNSPersistentHistoryTransaction *)self storage];
  transactionNumber = [storage transactionNumber];
  timestamp = [(REMNSPersistentHistoryTransaction *)self timestamp];
  storeID = [(REMNSPersistentHistoryTransaction *)self storeID];
  storage2 = [(REMNSPersistentHistoryTransaction *)self storage];
  contextName = [storage2 contextName];
  author = [(REMNSPersistentHistoryTransaction *)self author];
  changes = [(REMNSPersistentHistoryTransaction *)self changes];
  v11 = [changes count];
  token = [(REMNSPersistentHistoryTransaction *)self token];
  v13 = [v15 stringWithFormat:@"<REMNSPersistentHistoryTransaction - txnNo(%lld) timestamp(%@) storeID(%@) contextName(%@) author(%@) chgCount(%ld) token(%@)>", transactionNumber, timestamp, storeID, contextName, author, v11, token];

  return v13;
}

- (id)timestamp
{
  storage = [(REMNSPersistentHistoryTransaction *)self storage];
  timestamp = [storage timestamp];

  return timestamp;
}

- (id)changes
{
  storage = [(REMNSPersistentHistoryTransaction *)self storage];
  changes = [storage changes];

  return changes;
}

- (id)token
{
  storage = [(REMNSPersistentHistoryTransaction *)self storage];
  token = [storage token];

  return token;
}

- (id)accountID
{
  storage = [(REMNSPersistentHistoryTransaction *)self storage];
  accountID = [storage accountID];

  return accountID;
}

- (id)storeID
{
  storage = [(REMNSPersistentHistoryTransaction *)self storage];
  storeID = [storage storeID];

  return storeID;
}

- (id)author
{
  storage = [(REMNSPersistentHistoryTransaction *)self storage];
  author = [storage author];

  return author;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  storage = [(REMNSPersistentHistoryTransaction *)self storage];
  [coderCopy encodeObject:storage forKey:@"storage"];
}

- (REMNSPersistentHistoryTransaction)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storage"];
  v6 = [(REMNSPersistentHistoryTransaction *)self initWithStorage:v5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  storage = [(REMNSPersistentHistoryTransaction *)v6 storage];
  changes = [storage changes];

  v9 = [changes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(changes);
        }

        [*(*(&v15 + 1) + 8 * v12++) setInternal_ChangeTransaction:v6];
      }

      while (v10 != v12);
      v10 = [changes countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      storage = [(REMNSPersistentHistoryTransaction *)self storage];
      storage2 = [(REMNSPersistentHistoryTransaction *)v6 storage];
      if (storage == storage2)
      {
        v11 = 1;
      }

      else
      {
        storage3 = [(REMNSPersistentHistoryTransaction *)self storage];
        storage4 = [(REMNSPersistentHistoryTransaction *)v6 storage];
        v11 = [storage3 isEqual:storage4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

@end