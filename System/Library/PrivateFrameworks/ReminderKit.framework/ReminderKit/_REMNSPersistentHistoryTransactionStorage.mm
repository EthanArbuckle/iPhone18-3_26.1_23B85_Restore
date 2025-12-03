@interface _REMNSPersistentHistoryTransactionStorage
- (BOOL)isEqual:(id)equal;
- (_REMNSPersistentHistoryTransactionStorage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _REMNSPersistentHistoryTransactionStorage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timestamp = [(_REMNSPersistentHistoryTransactionStorage *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  changes = [(_REMNSPersistentHistoryTransactionStorage *)self changes];
  [coderCopy encodeObject:changes forKey:@"changes"];

  [coderCopy encodeInt64:-[_REMNSPersistentHistoryTransactionStorage transactionNumber](self forKey:{"transactionNumber"), @"transactionNumber"}];
  accountID = [(_REMNSPersistentHistoryTransactionStorage *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  storeID = [(_REMNSPersistentHistoryTransactionStorage *)self storeID];
  [coderCopy encodeObject:storeID forKey:@"storeID"];

  bundleID = [(_REMNSPersistentHistoryTransactionStorage *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  processID = [(_REMNSPersistentHistoryTransactionStorage *)self processID];
  [coderCopy encodeObject:processID forKey:@"processID"];

  contextName = [(_REMNSPersistentHistoryTransactionStorage *)self contextName];
  [coderCopy encodeObject:contextName forKey:@"contextName"];

  author = [(_REMNSPersistentHistoryTransactionStorage *)self author];
  [coderCopy encodeObject:author forKey:@"author"];

  token = [(_REMNSPersistentHistoryTransactionStorage *)self token];
  [coderCopy encodeObject:token forKey:@"token"];
}

- (_REMNSPersistentHistoryTransactionStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = _REMNSPersistentHistoryTransactionStorage;
  v5 = [(_REMNSPersistentHistoryTransactionStorage *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    if (!v6)
    {
      v28 = 0;
      goto LABEL_6;
    }

    token = v5->_token;
    v5->_token = v6;
    v8 = v6;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"changes"];
    changes = v5->_changes;
    v5->_changes = v14;

    v5->_transactionNumber = [coderCopy decodeInt64ForKey:@"transactionNumber"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeID"];
    storeID = v5->_storeID;
    v5->_storeID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processID"];
    processID = v5->_processID;
    v5->_processID = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextName"];
    contextName = v5->_contextName;
    v5->_contextName = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"author"];
    author = v5->_author;
    v5->_author = v26;
  }

  v28 = v5;
LABEL_6:

  return v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      timestamp = [(_REMNSPersistentHistoryTransactionStorage *)self timestamp];
      timestamp2 = [(_REMNSPersistentHistoryTransactionStorage *)v6 timestamp];
      v9 = timestamp2;
      if (timestamp == timestamp2)
      {
      }

      else
      {
        timestamp3 = [(_REMNSPersistentHistoryTransactionStorage *)self timestamp];
        timestamp4 = [(_REMNSPersistentHistoryTransactionStorage *)v6 timestamp];
        v12 = [timestamp3 isEqual:timestamp4];

        if (!v12)
        {
          goto LABEL_35;
        }
      }

      changes = [(_REMNSPersistentHistoryTransactionStorage *)self changes];
      changes2 = [(_REMNSPersistentHistoryTransactionStorage *)v6 changes];
      v16 = changes2;
      if (changes == changes2)
      {
      }

      else
      {
        changes3 = [(_REMNSPersistentHistoryTransactionStorage *)self changes];
        changes4 = [(_REMNSPersistentHistoryTransactionStorage *)v6 changes];
        v19 = [changes3 isEqual:changes4];

        if (!v19)
        {
          goto LABEL_35;
        }
      }

      transactionNumber = [(_REMNSPersistentHistoryTransactionStorage *)self transactionNumber];
      if (transactionNumber == [(_REMNSPersistentHistoryTransactionStorage *)v6 transactionNumber])
      {
        accountID = [(_REMNSPersistentHistoryTransactionStorage *)self accountID];
        accountID2 = [(_REMNSPersistentHistoryTransactionStorage *)v6 accountID];
        v23 = accountID2;
        if (accountID == accountID2)
        {
        }

        else
        {
          accountID3 = [(_REMNSPersistentHistoryTransactionStorage *)self accountID];
          accountID4 = [(_REMNSPersistentHistoryTransactionStorage *)v6 accountID];
          v26 = [accountID3 isEqual:accountID4];

          if (!v26)
          {
            goto LABEL_35;
          }
        }

        storeID = [(_REMNSPersistentHistoryTransactionStorage *)self storeID];
        storeID2 = [(_REMNSPersistentHistoryTransactionStorage *)v6 storeID];
        v29 = storeID2;
        if (storeID == storeID2)
        {
        }

        else
        {
          storeID3 = [(_REMNSPersistentHistoryTransactionStorage *)self storeID];
          storeID4 = [(_REMNSPersistentHistoryTransactionStorage *)v6 storeID];
          v32 = [storeID3 isEqual:storeID4];

          if (!v32)
          {
            goto LABEL_35;
          }
        }

        bundleID = [(_REMNSPersistentHistoryTransactionStorage *)self bundleID];
        bundleID2 = [(_REMNSPersistentHistoryTransactionStorage *)v6 bundleID];
        v35 = bundleID2;
        if (bundleID == bundleID2)
        {
        }

        else
        {
          bundleID3 = [(_REMNSPersistentHistoryTransactionStorage *)self bundleID];
          bundleID4 = [(_REMNSPersistentHistoryTransactionStorage *)v6 bundleID];
          v38 = [bundleID3 isEqual:bundleID4];

          if (!v38)
          {
            goto LABEL_35;
          }
        }

        processID = [(_REMNSPersistentHistoryTransactionStorage *)self processID];
        processID2 = [(_REMNSPersistentHistoryTransactionStorage *)v6 processID];
        v41 = processID2;
        if (processID == processID2)
        {
        }

        else
        {
          processID3 = [(_REMNSPersistentHistoryTransactionStorage *)self processID];
          processID4 = [(_REMNSPersistentHistoryTransactionStorage *)v6 processID];
          v44 = [processID3 isEqual:processID4];

          if (!v44)
          {
            goto LABEL_35;
          }
        }

        contextName = [(_REMNSPersistentHistoryTransactionStorage *)self contextName];
        contextName2 = [(_REMNSPersistentHistoryTransactionStorage *)v6 contextName];
        v47 = contextName2;
        if (contextName == contextName2)
        {
        }

        else
        {
          contextName3 = [(_REMNSPersistentHistoryTransactionStorage *)self contextName];
          contextName4 = [(_REMNSPersistentHistoryTransactionStorage *)v6 contextName];
          v50 = [contextName3 isEqual:contextName4];

          if (!v50)
          {
            goto LABEL_35;
          }
        }

        author = [(_REMNSPersistentHistoryTransactionStorage *)self author];
        author2 = [(_REMNSPersistentHistoryTransactionStorage *)v6 author];
        v53 = author2;
        if (author == author2)
        {
        }

        else
        {
          author3 = [(_REMNSPersistentHistoryTransactionStorage *)self author];
          author4 = [(_REMNSPersistentHistoryTransactionStorage *)v6 author];
          v56 = [author3 isEqual:author4];

          if (!v56)
          {
            goto LABEL_35;
          }
        }

        token = [(_REMNSPersistentHistoryTransactionStorage *)self token];
        token2 = [(_REMNSPersistentHistoryTransactionStorage *)v6 token];
        if (token == token2)
        {
          v13 = 1;
        }

        else
        {
          token3 = [(_REMNSPersistentHistoryTransactionStorage *)self token];
          token4 = [(_REMNSPersistentHistoryTransactionStorage *)v6 token];
          v13 = [token3 isEqual:token4];
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