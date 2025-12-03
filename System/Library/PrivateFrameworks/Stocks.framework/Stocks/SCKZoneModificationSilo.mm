@interface SCKZoneModificationSilo
- (BOOL)_shouldAssertRecordValidity;
- (BOOL)recordExistsWithName:(id)name;
- (SCKZoneDiff)diff;
- (SCKZoneModificationSilo)initWithZoneSchema:(id)schema contents:(id)contents;
- (void)createOrUpdateRecordWithName:(id)name recordType:(id)type modifyBlock:(id)block;
- (void)deleteRecordWithName:(id)name;
@end

@implementation SCKZoneModificationSilo

- (SCKZoneModificationSilo)initWithZoneSchema:(id)schema contents:(id)contents
{
  v35 = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  contentsCopy = contents;
  if (!schemaCopy)
  {
    [SCKZoneModificationSilo initWithZoneSchema:a2 contents:self];
  }

  v33.receiver = self;
  v33.super_class = SCKZoneModificationSilo;
  v10 = [(SCKZoneModificationSilo *)&v33 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_zoneSchema, schema);
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
    v20 = contentsCopy;
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
          originalRecordsByID = [(SCKZoneModificationSilo *)v11 originalRecordsByID];
          recordID = [v25 recordID];
          [originalRecordsByID setObject:v25 forKeyedSubscript:recordID];

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

- (void)createOrUpdateRecordWithName:(id)name recordType:(id)type modifyBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  v10 = MEMORY[0x277CBC5D0];
  nameCopy = name;
  v12 = [v10 alloc];
  zoneSchema = [(SCKZoneModificationSilo *)self zoneSchema];
  zoneID = [zoneSchema zoneID];
  v15 = [v12 initWithRecordName:nameCopy zoneID:zoneID];

  workingRecordsByID = [(SCKZoneModificationSilo *)self workingRecordsByID];
  v17 = [workingRecordsByID objectForKeyedSubscript:v15];

  if (v17)
  {
    v18 = v17;
    goto LABEL_4;
  }

  originalRecordsByID = [(SCKZoneModificationSilo *)self originalRecordsByID];
  v20 = [originalRecordsByID objectForKeyedSubscript:v15];

  v18 = [v20 copy];
  if (v18)
  {
LABEL_4:
    zoneSchema2 = [(SCKZoneModificationSilo *)self zoneSchema];
    v22 = [zoneSchema2 isValidRecord:v18];

    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:typeCopy recordID:v15];
LABEL_7:
  blockCopy[2](blockCopy, v18);
  zoneSchema3 = [(SCKZoneModificationSilo *)self zoneSchema];
  v24 = [zoneSchema3 isValidRecord:v18];

  if (v24)
  {
    workingRecordsByID2 = [(SCKZoneModificationSilo *)self workingRecordsByID];
    recordID = [v18 recordID];
    [workingRecordsByID2 setObject:v18 forKeyedSubscript:recordID];

    recordsToSaveByID = [(SCKZoneModificationSilo *)self recordsToSaveByID];
    recordID2 = [v18 recordID];
    [recordsToSaveByID setObject:v18 forKeyedSubscript:recordID2];

    deletedRecordIDs = [(SCKZoneModificationSilo *)self deletedRecordIDs];
    [deletedRecordIDs removeObject:v15];
  }

  else if ([(SCKZoneModificationSilo *)self _shouldAssertRecordValidity]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SCKZoneModificationSilo createOrUpdateRecordWithName:v18 recordType:? modifyBlock:?];
  }

LABEL_12:
}

- (void)deleteRecordWithName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_alloc(MEMORY[0x277CBC5D0]);
  zoneSchema = [(SCKZoneModificationSilo *)self zoneSchema];
  zoneID = [zoneSchema zoneID];
  v8 = [v5 initWithRecordName:nameCopy zoneID:zoneID];

  deletedRecordIDs = [(SCKZoneModificationSilo *)self deletedRecordIDs];
  [deletedRecordIDs addObject:v8];

  recordsToSaveByID = [(SCKZoneModificationSilo *)self recordsToSaveByID];
  [recordsToSaveByID removeObjectForKey:v8];

  workingRecordsByID = [(SCKZoneModificationSilo *)self workingRecordsByID];
  v12 = [workingRecordsByID objectForKeyedSubscript:v8];

  if (v12)
  {
    zoneSchema2 = [(SCKZoneModificationSilo *)self zoneSchema];
    recordType = [v12 recordType];
    v15 = [zoneSchema2 schemaForRecordType:recordType];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    fieldNames = [v15 fieldNames];
    v17 = [fieldNames countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(fieldNames);
          }

          [v12 setObject:0 forKeyedSubscript:*(*(&v21 + 1) + 8 * v20++)];
        }

        while (v18 != v20);
        v18 = [fieldNames countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v18);
    }
  }
}

- (BOOL)recordExistsWithName:(id)name
{
  v5 = MEMORY[0x277CBC5D0];
  nameCopy = name;
  v7 = [v5 alloc];
  zoneSchema = [(SCKZoneModificationSilo *)self zoneSchema];
  zoneID = [zoneSchema zoneID];
  v10 = [v7 initWithRecordName:nameCopy zoneID:zoneID];

  originalRecordsByID = [(SCKZoneModificationSilo *)self originalRecordsByID];
  v12 = [originalRecordsByID objectForKeyedSubscript:v10];
  if (!v12)
  {
    zoneID = [(SCKZoneModificationSilo *)self workingRecordsByID];
    v3 = [zoneID objectForKeyedSubscript:v10];
    if (!v3)
    {
      LOBYTE(v14) = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  deletedRecordIDs = [(SCKZoneModificationSilo *)self deletedRecordIDs];
  v14 = [deletedRecordIDs containsObject:v10] ^ 1;

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
  recordsToSaveByID = [(SCKZoneModificationSilo *)self recordsToSaveByID];
  allValues = [recordsToSaveByID allValues];
  deletedRecordIDs = [(SCKZoneModificationSilo *)self deletedRecordIDs];
  v7 = [(SCKZoneDiff *)v3 initWithModifiedRecords:allValues deletedRecordIDs:deletedRecordIDs];

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