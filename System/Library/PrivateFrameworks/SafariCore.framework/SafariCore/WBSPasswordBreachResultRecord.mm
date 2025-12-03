@interface WBSPasswordBreachResultRecord
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordBreachResultRecord)initWithDictionaryRepresentation:(id)representation;
- (WBSPasswordBreachResultRecord)initWithPersistentIdentifier:(id)identifier result:(unint64_t)result dateLastModified:(id)modified;
@end

@implementation WBSPasswordBreachResultRecord

- (WBSPasswordBreachResultRecord)initWithPersistentIdentifier:(id)identifier result:(unint64_t)result dateLastModified:(id)modified
{
  identifierCopy = identifier;
  modifiedCopy = modified;
  v15.receiver = self;
  v15.super_class = WBSPasswordBreachResultRecord;
  v11 = [(WBSPasswordBreachResultRecord *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_persistentIdentifier, identifier);
    v12->_result = result;
    objc_storeStrong(&v12->_dateLastModified, modified);
    v13 = v12;
  }

  return v12;
}

- (WBSPasswordBreachResultRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy safari_dataForKey:@"PersistentIdentifier"];
  if (v5)
  {
    v6 = [representationCopy safari_numberForKey:@"Result"];
    v7 = v6;
    if (v6)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
      v9 = [representationCopy safari_dateForKey:@"DateLastModified"];
      if (v9)
      {
        self = [(WBSPasswordBreachResultRecord *)self initWithPersistentIdentifier:v5 result:unsignedIntegerValue dateLastModified:v9];
        selfCopy = self;
      }

      else
      {
        v27 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(WBSPasswordBreachResultRecord *)v27 initWithDictionaryRepresentation:v28, v29, v30, v31, v32, v33, v34];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v19 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(WBSPasswordBreachResultRecord *)v19 initWithDictionaryRepresentation:v20, v21, v22, v23, v24, v25, v26];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(WBSPasswordBreachResultRecord *)v11 initWithDictionaryRepresentation:v12, v13, v14, v15, v16, v17, v18];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = self->_result;
  v10[0] = self->_persistentIdentifier;
  v9[0] = @"PersistentIdentifier";
  v9[1] = @"Result";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  v9[2] = @"DateLastModified";
  dateLastModified = self->_dateLastModified;
  v10[1] = v4;
  v10[2] = dateLastModified;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

WBSPasswordBreachResultRecord *__76__WBSPasswordBreachResultRecord_resultRecordsFromDictionaryRepresentations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSPasswordBreachResultRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

@end