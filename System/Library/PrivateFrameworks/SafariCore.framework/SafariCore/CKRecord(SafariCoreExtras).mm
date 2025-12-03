@interface CKRecord(SafariCoreExtras)
- (BOOL)safari_hasAtLeastOneChangedField;
- (_WBSCKRecordSystemEncoder)safari_systemFieldsEncoder;
- (id)safari_encodedSystemFieldsData;
- (id)safari_encryptedDataForKey:()SafariCoreExtras;
- (id)safari_initWithEncodedRecordData:()SafariCoreExtras;
- (uint64_t)safari_BOOLForKey:()SafariCoreExtras;
- (uint64_t)safari_isInPrivateDatabase;
- (void)safari_arrayForKey:()SafariCoreExtras;
- (void)safari_dataForKey:()SafariCoreExtras;
- (void)safari_dateForKey:()SafariCoreExtras;
- (void)safari_numberForKey:()SafariCoreExtras;
- (void)safari_referenceForKey:()SafariCoreExtras;
- (void)safari_stringForKey:()SafariCoreExtras;
@end

@implementation CKRecord(SafariCoreExtras)

- (_WBSCKRecordSystemEncoder)safari_systemFieldsEncoder
{
  v1 = [[_WBSCKRecordSystemEncoder alloc] initWithRecord:self];

  return v1;
}

- (id)safari_initWithEncodedRecordData:()SafariCoreExtras
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v11[0] = 0;
    v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:v11];
    v6 = v11[0];
    if (v6)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXKeyedArchiver();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CKRecord(SafariCoreExtras) *)v7 safari_initWithEncodedRecordData:v6];
      }
    }

    self = [self initWithCoder:v5];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)safari_encodedSystemFieldsData
{
  v2 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [self encodeSystemFieldsWithCoder:v2];
  encodedData = [v2 encodedData];

  return encodedData;
}

- (BOOL)safari_hasAtLeastOneChangedField
{
  changedKeys = [self changedKeys];
  v2 = [changedKeys count] != 0;

  return v2;
}

- (uint64_t)safari_BOOLForKey:()SafariCoreExtras
{
  v1 = [self safari_numberForKey:?];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)safari_stringForKey:()SafariCoreExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_numberForKey:()SafariCoreExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_dataForKey:()SafariCoreExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_dateForKey:()SafariCoreExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_arrayForKey:()SafariCoreExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)safari_encryptedDataForKey:()SafariCoreExtras
{
  v4 = a3;
  safari_encryptedValues = [self safari_encryptedValues];
  v6 = [safari_encryptedValues objectForKeyedSubscript:v4];

  return v6;
}

- (void)safari_referenceForKey:()SafariCoreExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (uint64_t)safari_isInPrivateDatabase
{
  recordID = [self recordID];
  safari_isInPrivateDatabase = [recordID safari_isInPrivateDatabase];

  return safari_isInPrivateDatabase;
}

- (void)safari_initWithEncodedRecordData:()SafariCoreExtras .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1B8447000, v3, OS_LOG_TYPE_ERROR, "Failed to initialize reading from encoded record data: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_initWithEncodedRecordData:()SafariCoreExtras .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Failed to read encoded record data with exception: %{public}@", buf, 0xCu);
}

@end