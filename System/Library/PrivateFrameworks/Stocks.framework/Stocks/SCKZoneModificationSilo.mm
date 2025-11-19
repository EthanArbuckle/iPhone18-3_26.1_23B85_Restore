@interface SCKZoneModificationSilo
- (BOOL)_shouldAssertRecordValidity;
- (BOOL)recordExistsWithName:(id)a3;
- (SCKZoneDiff)diff;
- (SCKZoneModificationSilo)initWithZoneSchema:(id)a3 contents:(id)a4;
- (void)createOrUpdateRecordWithName:(id)a3 recordType:(id)a4 modifyBlock:(id)a5;
- (void)deleteRecordWithName:(id)a3;
@end

@implementation SCKZoneModificationSilo

- (SCKZoneModificationSilo)initWithZoneSchema:(id)a3 contents:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [SCKZoneModificationSilo initWithZoneSchema:a2 contents:self];
  }

  v33.receiver = self;
  v33.super_class = SCKZoneModificationSilo;
  v10 = [(SCKZoneModificationSilo *)&v33 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_zoneSchema, a3);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    originalRecordsByID = v11->_originalRecordsByID;
    v11->_originalRecordsByID = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    workingRecordsByID = v11->_workingRecordsByID;
    v11->_workingRecordsByID = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    recordsToSaveByID = v11->_recordsToSaveByID;
    v11->_recordsToSaveByID = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deletedRecordIDs = v11->_deletedRecordIDs;
    v11->_deletedRecordIDs = v18;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v9;
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        v24 = 0;
        do
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v29 + 1) + 8 * v24);
          v26 = [(SCKZoneModificationSilo *)v11 originalRecordsByID];
          v27 = [v25 recordID];
          [v26 setObject:v25 forKeyedSubscript:v27];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v22);
    }
  }

  return v11;
}

- (void)createOrUpdateRecordWithName:(id)a3 recordType:(id)a4 modifyBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CBC5D0];
  v11 = a3;
  v12 = [v10 alloc];
  v13 = [(SCKZoneModificationSilo *)self zoneSchema];
  v14 = [v13 zoneID];
  v15 = [v12 initWithRecordName:v11 zoneID:v14];

  v16 = [(SCKZoneModificationSilo *)self workingRecordsByID];
  v17 = [v16 objectForKeyedSubscript:v15];

  if (v17)
  {
    v18 = v17;
    goto LABEL_4;
  }

  v19 = [(SCKZoneModificationSilo *)self originalRecordsByID];
  v20 = [v19 objectForKeyedSubscript:v15];

  v18 = [v20 copy];
  if (v18)
  {
LABEL_4:
    v21 = [(SCKZoneModificationSilo *)self zoneSchema];
    v22 = [v21 isValidRecord:v18];

    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:v8 recordID:v15];
LABEL_7:
  v9[2](v9, v18);
  v23 = [(SCKZoneModificationSilo *)self zoneSchema];
  v24 = [v23 isValidRecord:v18];

  if (v24)
  {
    v25 = [(SCKZoneModificationSilo *)self workingRecordsByID];
    v26 = [v18 recordID];
    [v25 setObject:v18 forKeyedSubscript:v26];

    v27 = [(SCKZoneModificationSilo *)self recordsToSaveByID];
    v28 = [v18 recordID];
    [v27 setObject:v18 forKeyedSubscript:v28];

    v29 = [(SCKZoneModificationSilo *)self deletedRecordIDs];
    [v29 removeObject:v15];
  }

  else if ([(SCKZoneModificationSilo *)self _shouldAssertRecordValidity]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SCKZoneModificationSilo createOrUpdateRecordWithName:v18 recordType:? modifyBlock:?];
  }

LABEL_12:
}

- (void)deleteRecordWithName:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBC5D0]);
  v6 = [(SCKZoneModificationSilo *)self zoneSchema];
  v7 = [v6 zoneID];
  v8 = [v5 initWithRecordName:v4 zoneID:v7];

  v9 = [(SCKZoneModificationSilo *)self deletedRecordIDs];
  [v9 addObject:v8];

  v10 = [(SCKZoneModificationSilo *)self recordsToSaveByID];
  [v10 removeObjectForKey:v8];

  v11 = [(SCKZoneModificationSilo *)self workingRecordsByID];
  v12 = [v11 objectForKeyedSubscript:v8];

  if (v12)
  {
    v13 = [(SCKZoneModificationSilo *)self zoneSchema];
    v14 = [v12 recordType];
    v15 = [v13 schemaForRecordType:v14];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = [v15 fieldNames];
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [v12 setObject:0 forKeyedSubscript:*(*(&v21 + 1) + 8 * v20++)];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v18);
    }
  }
}

- (BOOL)recordExistsWithName:(id)a3
{
  v5 = MEMORY[0x277CBC5D0];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [(SCKZoneModificationSilo *)self zoneSchema];
  v9 = [v8 zoneID];
  v10 = [v7 initWithRecordName:v6 zoneID:v9];

  v11 = [(SCKZoneModificationSilo *)self originalRecordsByID];
  v12 = [v11 objectForKeyedSubscript:v10];
  if (!v12)
  {
    v9 = [(SCKZoneModificationSilo *)self workingRecordsByID];
    v3 = [v9 objectForKeyedSubscript:v10];
    if (!v3)
    {
      LOBYTE(v14) = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  v13 = [(SCKZoneModificationSilo *)self deletedRecordIDs];
  v14 = [v13 containsObject:v10] ^ 1;

  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v14;
}

- (SCKZoneDiff)diff
{
  v3 = [SCKZoneDiff alloc];
  v4 = [(SCKZoneModificationSilo *)self recordsToSaveByID];
  v5 = [v4 allValues];
  v6 = [(SCKZoneModificationSilo *)self deletedRecordIDs];
  v7 = [(SCKZoneDiff *)v3 initWithModifiedRecords:v5 deletedRecordIDs:v6];

  return v7;
}

- (BOOL)_shouldAssertRecordValidity
{
  if (_shouldAssertRecordValidity_onceToken != -1)
  {
    [SCKZoneModificationSilo _shouldAssertRecordValidity];
  }

  return (_shouldAssertRecordValidity_runningTests & 1) == 0;
}

Class __54__SCKZoneModificationSilo__shouldAssertRecordValidity__block_invoke()
{
  result = NSClassFromString(&cfstr_Xctestcase.isa);
  _shouldAssertRecordValidity_runningTests = result != 0;
  return result;
}

- (void)initWithZoneSchema:(uint64_t)a1 contents:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SCKZoneModificationSilo.m" lineNumber:36 description:@"zone modification context requires non-nil zone schema"];
}

- (void)createOrUpdateRecordWithName:(uint64_t)a1 recordType:modifyBlock:.cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "record was invalid after modification: %{public}@", &v1, 0xCu);
}

@end