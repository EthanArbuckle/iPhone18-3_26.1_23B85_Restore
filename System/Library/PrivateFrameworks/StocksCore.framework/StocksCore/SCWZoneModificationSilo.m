@interface SCWZoneModificationSilo
- (BOOL)_shouldAssertRecordValidity;
- (BOOL)recordExistsWithName:(id)a3;
- (SCWZoneDiff)diff;
- (SCWZoneModificationSilo)initWithZoneSchema:(id)a3 contents:(id)a4;
- (void)createOrUpdateRecordWithName:(id)a3 recordType:(id)a4 modifyBlock:(id)a5;
- (void)deleteRecordWithName:(id)a3;
@end

@implementation SCWZoneModificationSilo

- (SCWZoneDiff)diff
{
  v3 = [SCWZoneDiff alloc];
  v4 = [(SCWZoneModificationSilo *)self recordsToSaveByID];
  v5 = [v4 allValues];
  v6 = [(SCWZoneModificationSilo *)self deletedRecordIDs];
  v7 = [(SCWZoneDiff *)v3 initWithModifiedRecords:v5 deletedRecordIDs:v6];

  return v7;
}

- (SCWZoneModificationSilo)initWithZoneSchema:(id)a3 contents:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v33.receiver = self;
  v33.super_class = SCWZoneModificationSilo;
  v9 = [(SCWZoneModificationSilo *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneSchema, a3);
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
    v19 = v8;
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
          v25 = [(SCWZoneModificationSilo *)v10 originalRecordsByID];
          v26 = [v24 recordID];
          [v25 setObject:v24 forKeyedSubscript:v26];

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

- (void)createOrUpdateRecordWithName:(id)a3 recordType:(id)a4 modifyBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695BA70];
  v11 = a3;
  v12 = [v10 alloc];
  v13 = [(SCWZoneModificationSilo *)self zoneSchema];
  v14 = [v13 zoneID];
  v15 = [v12 initWithRecordName:v11 zoneID:v14];

  v16 = [(SCWZoneModificationSilo *)self workingRecordsByID];
  v17 = [v16 objectForKeyedSubscript:v15];

  if (v17)
  {
    v18 = v17;
    goto LABEL_4;
  }

  v19 = [(SCWZoneModificationSilo *)self originalRecordsByID];
  v20 = [v19 objectForKeyedSubscript:v15];

  v18 = [v20 copy];
  if (v18)
  {
LABEL_4:
    v21 = [(SCWZoneModificationSilo *)self zoneSchema];
    v22 = [v21 isValidRecord:v18];

    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v18 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:v8 recordID:v15];
LABEL_7:
  v9[2](v9, v18);
  v23 = [(SCWZoneModificationSilo *)self zoneSchema];
  v24 = [v23 isValidRecord:v18];

  if (v24)
  {
    v25 = [(SCWZoneModificationSilo *)self workingRecordsByID];
    v26 = [v18 recordID];
    [v25 setObject:v18 forKeyedSubscript:v26];

    v27 = [(SCWZoneModificationSilo *)self recordsToSaveByID];
    v28 = [v18 recordID];
    [v27 setObject:v18 forKeyedSubscript:v28];

    v29 = [(SCWZoneModificationSilo *)self deletedRecordIDs];
    [v29 removeObject:v15];
  }

  else if ([(SCWZoneModificationSilo *)self _shouldAssertRecordValidity]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWZoneModificationSilo createOrUpdateRecordWithName:v18 recordType:? modifyBlock:?];
  }

LABEL_12:
}

- (void)deleteRecordWithName:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695BA70]);
  v6 = [(SCWZoneModificationSilo *)self zoneSchema];
  v7 = [v6 zoneID];
  v8 = [v5 initWithRecordName:v4 zoneID:v7];

  v9 = [(SCWZoneModificationSilo *)self deletedRecordIDs];
  [v9 addObject:v8];

  v10 = [(SCWZoneModificationSilo *)self recordsToSaveByID];
  [v10 removeObjectForKey:v8];

  v11 = [(SCWZoneModificationSilo *)self workingRecordsByID];
  v12 = [v11 objectForKeyedSubscript:v8];

  if (v12)
  {
    v13 = [(SCWZoneModificationSilo *)self zoneSchema];
    v14 = [v12 recordType];
    v15 = [v13 schemaForRecordType:v14];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v15 fieldSchemas];
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          if ([v21 isEncrypted])
          {
            v22 = [v12 encryptedValues];
            v23 = [v21 name];
            [v22 setObject:0 forKeyedSubscript:v23];
          }

          else
          {
            v22 = [v21 name];
            [v12 setObject:0 forKeyedSubscript:v22];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)recordExistsWithName:(id)a3
{
  v5 = MEMORY[0x1E695BA70];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [(SCWZoneModificationSilo *)self zoneSchema];
  v9 = [v8 zoneID];
  v10 = [v7 initWithRecordName:v6 zoneID:v9];

  v11 = [(SCWZoneModificationSilo *)self originalRecordsByID];
  v12 = [v11 objectForKeyedSubscript:v10];
  if (!v12)
  {
    v9 = [(SCWZoneModificationSilo *)self workingRecordsByID];
    v3 = [v9 objectForKeyedSubscript:v10];
    if (!v3)
    {
      LOBYTE(v14) = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  v13 = [(SCWZoneModificationSilo *)self deletedRecordIDs];
  v14 = [v13 containsObject:v10] ^ 1;

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