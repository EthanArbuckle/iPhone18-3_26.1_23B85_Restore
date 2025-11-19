@interface REMNSPersistentHistoryTransaction
- (BOOL)isEqual:(id)a3;
- (REMNSPersistentHistoryTransaction)initWithCoder:(id)a3;
- (REMNSPersistentHistoryTransaction)initWithStorage:(id)a3;
- (id)accountID;
- (id)author;
- (id)changes;
- (id)description;
- (id)storeID;
- (id)timestamp;
- (id)token;
- (void)_resolveAccountID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMNSPersistentHistoryTransaction

- (REMNSPersistentHistoryTransaction)initWithStorage:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = REMNSPersistentHistoryTransaction;
    v6 = [(REMNSPersistentHistoryTransaction *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_storage, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_resolveAccountID:(id)a3
{
  v4 = a3;
  v5 = [(REMNSPersistentHistoryTransaction *)self storage];
  [v5 setAccountID:v4];
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = [(REMNSPersistentHistoryTransaction *)self storage];
  v4 = [v3 transactionNumber];
  v5 = [(REMNSPersistentHistoryTransaction *)self timestamp];
  v6 = [(REMNSPersistentHistoryTransaction *)self storeID];
  v7 = [(REMNSPersistentHistoryTransaction *)self storage];
  v8 = [v7 contextName];
  v9 = [(REMNSPersistentHistoryTransaction *)self author];
  v10 = [(REMNSPersistentHistoryTransaction *)self changes];
  v11 = [v10 count];
  v12 = [(REMNSPersistentHistoryTransaction *)self token];
  v13 = [v15 stringWithFormat:@"<REMNSPersistentHistoryTransaction - txnNo(%lld) timestamp(%@) storeID(%@) contextName(%@) author(%@) chgCount(%ld) token(%@)>", v4, v5, v6, v8, v9, v11, v12];

  return v13;
}

- (id)timestamp
{
  v2 = [(REMNSPersistentHistoryTransaction *)self storage];
  v3 = [v2 timestamp];

  return v3;
}

- (id)changes
{
  v2 = [(REMNSPersistentHistoryTransaction *)self storage];
  v3 = [v2 changes];

  return v3;
}

- (id)token
{
  v2 = [(REMNSPersistentHistoryTransaction *)self storage];
  v3 = [v2 token];

  return v3;
}

- (id)accountID
{
  v2 = [(REMNSPersistentHistoryTransaction *)self storage];
  v3 = [v2 accountID];

  return v3;
}

- (id)storeID
{
  v2 = [(REMNSPersistentHistoryTransaction *)self storage];
  v3 = [v2 storeID];

  return v3;
}

- (id)author
{
  v2 = [(REMNSPersistentHistoryTransaction *)self storage];
  v3 = [v2 author];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMNSPersistentHistoryTransaction *)self storage];
  [v4 encodeObject:v5 forKey:@"storage"];
}

- (REMNSPersistentHistoryTransaction)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storage"];
  v6 = [(REMNSPersistentHistoryTransaction *)self initWithStorage:v5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(REMNSPersistentHistoryTransaction *)v6 storage];
  v8 = [v7 changes];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12++) setInternal_ChangeTransaction:v6];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMNSPersistentHistoryTransaction *)self storage];
      v8 = [(REMNSPersistentHistoryTransaction *)v6 storage];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(REMNSPersistentHistoryTransaction *)self storage];
        v10 = [(REMNSPersistentHistoryTransaction *)v6 storage];
        v11 = [v9 isEqual:v10];
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