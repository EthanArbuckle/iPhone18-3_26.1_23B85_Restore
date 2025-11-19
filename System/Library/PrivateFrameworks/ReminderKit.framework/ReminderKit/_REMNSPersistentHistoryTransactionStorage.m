@interface _REMNSPersistentHistoryTransactionStorage
- (BOOL)isEqual:(id)a3;
- (_REMNSPersistentHistoryTransactionStorage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _REMNSPersistentHistoryTransactionStorage

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_REMNSPersistentHistoryTransactionStorage *)self timestamp];
  [v4 encodeObject:v5 forKey:@"timestamp"];

  v6 = [(_REMNSPersistentHistoryTransactionStorage *)self changes];
  [v4 encodeObject:v6 forKey:@"changes"];

  [v4 encodeInt64:-[_REMNSPersistentHistoryTransactionStorage transactionNumber](self forKey:{"transactionNumber"), @"transactionNumber"}];
  v7 = [(_REMNSPersistentHistoryTransactionStorage *)self accountID];
  [v4 encodeObject:v7 forKey:@"accountID"];

  v8 = [(_REMNSPersistentHistoryTransactionStorage *)self storeID];
  [v4 encodeObject:v8 forKey:@"storeID"];

  v9 = [(_REMNSPersistentHistoryTransactionStorage *)self bundleID];
  [v4 encodeObject:v9 forKey:@"bundleID"];

  v10 = [(_REMNSPersistentHistoryTransactionStorage *)self processID];
  [v4 encodeObject:v10 forKey:@"processID"];

  v11 = [(_REMNSPersistentHistoryTransactionStorage *)self contextName];
  [v4 encodeObject:v11 forKey:@"contextName"];

  v12 = [(_REMNSPersistentHistoryTransactionStorage *)self author];
  [v4 encodeObject:v12 forKey:@"author"];

  v13 = [(_REMNSPersistentHistoryTransactionStorage *)self token];
  [v4 encodeObject:v13 forKey:@"token"];
}

- (_REMNSPersistentHistoryTransactionStorage)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = _REMNSPersistentHistoryTransactionStorage;
  v5 = [(_REMNSPersistentHistoryTransactionStorage *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    if (!v6)
    {
      v28 = 0;
      goto LABEL_6;
    }

    token = v5->_token;
    v5->_token = v6;
    v8 = v6;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"changes"];
    changes = v5->_changes;
    v5->_changes = v14;

    v5->_transactionNumber = [v4 decodeInt64ForKey:@"transactionNumber"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeID"];
    storeID = v5->_storeID;
    v5->_storeID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processID"];
    processID = v5->_processID;
    v5->_processID = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextName"];
    contextName = v5->_contextName;
    v5->_contextName = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"author"];
    author = v5->_author;
    v5->_author = v26;
  }

  v28 = v5;
LABEL_6:

  return v28;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(_REMNSPersistentHistoryTransactionStorage *)self timestamp];
      v8 = [(_REMNSPersistentHistoryTransactionStorage *)v6 timestamp];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(_REMNSPersistentHistoryTransactionStorage *)self timestamp];
        v11 = [(_REMNSPersistentHistoryTransactionStorage *)v6 timestamp];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_35;
        }
      }

      v14 = [(_REMNSPersistentHistoryTransactionStorage *)self changes];
      v15 = [(_REMNSPersistentHistoryTransactionStorage *)v6 changes];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(_REMNSPersistentHistoryTransactionStorage *)self changes];
        v18 = [(_REMNSPersistentHistoryTransactionStorage *)v6 changes];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_35;
        }
      }

      v20 = [(_REMNSPersistentHistoryTransactionStorage *)self transactionNumber];
      if (v20 == [(_REMNSPersistentHistoryTransactionStorage *)v6 transactionNumber])
      {
        v21 = [(_REMNSPersistentHistoryTransactionStorage *)self accountID];
        v22 = [(_REMNSPersistentHistoryTransactionStorage *)v6 accountID];
        v23 = v22;
        if (v21 == v22)
        {
        }

        else
        {
          v24 = [(_REMNSPersistentHistoryTransactionStorage *)self accountID];
          v25 = [(_REMNSPersistentHistoryTransactionStorage *)v6 accountID];
          v26 = [v24 isEqual:v25];

          if (!v26)
          {
            goto LABEL_35;
          }
        }

        v27 = [(_REMNSPersistentHistoryTransactionStorage *)self storeID];
        v28 = [(_REMNSPersistentHistoryTransactionStorage *)v6 storeID];
        v29 = v28;
        if (v27 == v28)
        {
        }

        else
        {
          v30 = [(_REMNSPersistentHistoryTransactionStorage *)self storeID];
          v31 = [(_REMNSPersistentHistoryTransactionStorage *)v6 storeID];
          v32 = [v30 isEqual:v31];

          if (!v32)
          {
            goto LABEL_35;
          }
        }

        v33 = [(_REMNSPersistentHistoryTransactionStorage *)self bundleID];
        v34 = [(_REMNSPersistentHistoryTransactionStorage *)v6 bundleID];
        v35 = v34;
        if (v33 == v34)
        {
        }

        else
        {
          v36 = [(_REMNSPersistentHistoryTransactionStorage *)self bundleID];
          v37 = [(_REMNSPersistentHistoryTransactionStorage *)v6 bundleID];
          v38 = [v36 isEqual:v37];

          if (!v38)
          {
            goto LABEL_35;
          }
        }

        v39 = [(_REMNSPersistentHistoryTransactionStorage *)self processID];
        v40 = [(_REMNSPersistentHistoryTransactionStorage *)v6 processID];
        v41 = v40;
        if (v39 == v40)
        {
        }

        else
        {
          v42 = [(_REMNSPersistentHistoryTransactionStorage *)self processID];
          v43 = [(_REMNSPersistentHistoryTransactionStorage *)v6 processID];
          v44 = [v42 isEqual:v43];

          if (!v44)
          {
            goto LABEL_35;
          }
        }

        v45 = [(_REMNSPersistentHistoryTransactionStorage *)self contextName];
        v46 = [(_REMNSPersistentHistoryTransactionStorage *)v6 contextName];
        v47 = v46;
        if (v45 == v46)
        {
        }

        else
        {
          v48 = [(_REMNSPersistentHistoryTransactionStorage *)self contextName];
          v49 = [(_REMNSPersistentHistoryTransactionStorage *)v6 contextName];
          v50 = [v48 isEqual:v49];

          if (!v50)
          {
            goto LABEL_35;
          }
        }

        v51 = [(_REMNSPersistentHistoryTransactionStorage *)self author];
        v52 = [(_REMNSPersistentHistoryTransactionStorage *)v6 author];
        v53 = v52;
        if (v51 == v52)
        {
        }

        else
        {
          v54 = [(_REMNSPersistentHistoryTransactionStorage *)self author];
          v55 = [(_REMNSPersistentHistoryTransactionStorage *)v6 author];
          v56 = [v54 isEqual:v55];

          if (!v56)
          {
            goto LABEL_35;
          }
        }

        v58 = [(_REMNSPersistentHistoryTransactionStorage *)self token];
        v59 = [(_REMNSPersistentHistoryTransactionStorage *)v6 token];
        if (v58 == v59)
        {
          v13 = 1;
        }

        else
        {
          v60 = [(_REMNSPersistentHistoryTransactionStorage *)self token];
          v61 = [(_REMNSPersistentHistoryTransactionStorage *)v6 token];
          v13 = [v60 isEqual:v61];
        }

        goto LABEL_36;
      }
    }

LABEL_35:
    v13 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

@end