@interface SCWZoneModificationSilo
- (BOOL)_shouldAssertRecordValidity;
- (BOOL)recordExistsWithName:(id)name;
- (SCWZoneDiff)diff;
- (SCWZoneModificationSilo)initWithZoneSchema:(id)schema contents:(id)contents;
- (void)createOrUpdateRecordWithName:(id)name recordType:(id)type modifyBlock:(id)block;
- (void)deleteRecordWithName:(id)name;
@end

@implementation SCWZoneModificationSilo

- (SCWZoneDiff)diff
{
  v3 = [SCWZoneDiff alloc];
  recordsToSaveByID = [(SCWZoneModificationSilo *)self recordsToSaveByID];
  allValues = [recordsToSaveByID allValues];
  deletedRecordIDs = [(SCWZoneModificationSilo *)self deletedRecordIDs];
  v7 = [(SCWZoneDiff *)v3 initWithModifiedRecords:allValues deletedRecordIDs:deletedRecordIDs];

  return v7;
}

- (SCWZoneModificationSilo)initWithZoneSchema:(id)schema contents:(id)contents
{
  v35 = *MEMORY[0x1E69E9840];
  schemaCopy = schema;
  contentsCopy = contents;
  v33.receiver = self;
  v33.super_class = SCWZoneModificationSilo;
  v9 = [(SCWZoneModificationSilo *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneSchema, schema);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    originalRecordsByID = v10->_originalRecordsByID;
    v10->_originalRecordsByID = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    workingRecordsByID = v10->_workingRecordsByID;
    v10->_workingRecordsByID = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    recordsToSaveByID = v10->_recordsToSaveByID;
    v10->_recordsToSaveByID = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedRecordIDs = v10->_deletedRecordIDs;
    v10->_deletedRecordIDs = v17;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = contentsCopy;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        v23 = 0;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v29 + 1) + 8 * v23);
          originalRecordsByID = [(SCWZoneModificationSilo *)v10 originalRecordsByID];
          recordID = [v24 recordID];
          [originalRecordsByID setObject:v24 forKeyedSubscript:recordID];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v21);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)createOrUpdateRecordWithName:(id)name recordType:(id)type modifyBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  v10 = MEMORY[0x1E695BA70];
  nameCopy = name;
  v12 = [v10 alloc];
  zoneSchema = [(SCWZoneModificationSilo *)self zoneSchema];
  zoneID = [zoneSchema zoneID];
  v15 = [v12 initWithRecordName:nameCopy zoneID:zoneID];

  workingRecordsByID = [(SCWZoneModificationSilo *)self workingRecordsByID];
  v17 = [workingRecordsByID objectForKeyedSubscript:v15];

  if (v17)
  {
    v18 = v17;
    goto LABEL_4;
  }

  originalRecordsByID = [(SCWZoneModificationSilo *)self originalRecordsByID];
  v20 = [originalRecordsByID objectForKeyedSubscript:v15];

  v18 = [v20 copy];
  if (v18)
  {
LABEL_4:
    zoneSchema2 = [(SCWZoneModificationSilo *)self zoneSchema];
    v22 = [zoneSchema2 isValidRecord:v18];

    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v18 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:typeCopy recordID:v15];
LABEL_7:
  blockCopy[2](blockCopy, v18);
  zoneSchema3 = [(SCWZoneModificationSilo *)self zoneSchema];
  v24 = [zoneSchema3 isValidRecord:v18];

  if (v24)
  {
    workingRecordsByID2 = [(SCWZoneModificationSilo *)self workingRecordsByID];
    recordID = [v18 recordID];
    [workingRecordsByID2 setObject:v18 forKeyedSubscript:recordID];

    recordsToSaveByID = [(SCWZoneModificationSilo *)self recordsToSaveByID];
    recordID2 = [v18 recordID];
    [recordsToSaveByID setObject:v18 forKeyedSubscript:recordID2];

    deletedRecordIDs = [(SCWZoneModificationSilo *)self deletedRecordIDs];
    [deletedRecordIDs removeObject:v15];
  }

  else if ([(SCWZoneModificationSilo *)self _shouldAssertRecordValidity]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWZoneModificationSilo createOrUpdateRecordWithName:v18 recordType:? modifyBlock:?];
  }

LABEL_12:
}

- (void)deleteRecordWithName:(id)name
{
  v30 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = objc_alloc(MEMORY[0x1E695BA70]);
  zoneSchema = [(SCWZoneModificationSilo *)self zoneSchema];
  zoneID = [zoneSchema zoneID];
  v8 = [v5 initWithRecordName:nameCopy zoneID:zoneID];

  deletedRecordIDs = [(SCWZoneModificationSilo *)self deletedRecordIDs];
  [deletedRecordIDs addObject:v8];

  recordsToSaveByID = [(SCWZoneModificationSilo *)self recordsToSaveByID];
  [recordsToSaveByID removeObjectForKey:v8];

  workingRecordsByID = [(SCWZoneModificationSilo *)self workingRecordsByID];
  v12 = [workingRecordsByID objectForKeyedSubscript:v8];

  if (v12)
  {
    zoneSchema2 = [(SCWZoneModificationSilo *)self zoneSchema];
    recordType = [v12 recordType];
    v15 = [zoneSchema2 schemaForRecordType:recordType];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    fieldSchemas = [v15 fieldSchemas];
    v17 = [fieldSchemas countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(fieldSchemas);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          if ([v21 isEncrypted])
          {
            encryptedValues = [v12 encryptedValues];
            name = [v21 name];
            [encryptedValues setObject:0 forKeyedSubscript:name];
          }

          else
          {
            encryptedValues = [v21 name];
            [v12 setObject:0 forKeyedSubscript:encryptedValues];
          }
        }

        v18 = [fieldSchemas countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)recordExistsWithName:(id)name
{
  v5 = MEMORY[0x1E695BA70];
  nameCopy = name;
  v7 = [v5 alloc];
  zoneSchema = [(SCWZoneModificationSilo *)self zoneSchema];
  zoneID = [zoneSchema zoneID];
  v10 = [v7 initWithRecordName:nameCopy zoneID:zoneID];

  originalRecordsByID = [(SCWZoneModificationSilo *)self originalRecordsByID];
  v12 = [originalRecordsByID objectForKeyedSubscript:v10];
  if (!v12)
  {
    zoneID = [(SCWZoneModificationSilo *)self workingRecordsByID];
    v3 = [zoneID objectForKeyedSubscript:v10];
    if (!v3)
    {
      LOBYTE(v14) = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  deletedRecordIDs = [(SCWZoneModificationSilo *)self deletedRecordIDs];
  v14 = [deletedRecordIDs containsObject:v10] ^ 1;

  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v14;
}

- (BOOL)_shouldAssertRecordValidity
{
  if (_shouldAssertRecordValidity_onceToken[0] != -1)
  {
    [SCWZoneModificationSilo _shouldAssertRecordValidity];
  }

  return (_shouldAssertRecordValidity_runningTests & 1) == 0;
}

Class __54__SCWZoneModificationSilo__shouldAssertRecordValidity__block_invoke()
{
  result = NSClassFromString(&cfstr_Xctestcase.isa);
  _shouldAssertRecordValidity_runningTests = result != 0;
  return result;
}

- (void)createOrUpdateRecordWithName:(uint64_t)a1 recordType:modifyBlock:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "record was invalid after modification: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end