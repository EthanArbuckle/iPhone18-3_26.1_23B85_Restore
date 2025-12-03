@interface SCKZoneSchema
- (BOOL)isValidRecord:(id)record;
- (NSArray)allRecordFieldNames;
- (SCKZoneSchema)initWithName:(id)name atomic:(BOOL)atomic recordSchemas:(id)schemas;
- (id)schemaForRecordType:(id)type;
- (id)validateRecords:(id)records;
@end

@implementation SCKZoneSchema

- (SCKZoneSchema)initWithName:(id)name atomic:(BOOL)atomic recordSchemas:(id)schemas
{
  nameCopy = name;
  schemasCopy = schemas;
  v16.receiver = self;
  v16.super_class = SCKZoneSchema;
  v11 = [(SCKZoneSchema *)&v16 init];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CBC5F8]);
    v13 = [v12 initWithZoneName:nameCopy ownerName:*MEMORY[0x277CBBF28]];
    zoneID = v11->_zoneID;
    v11->_zoneID = v13;

    objc_storeStrong(&v11->_zoneName, name);
    objc_storeStrong(&v11->_recordSchemas, schemas);
    v11->_atomic = atomic;
  }

  return v11;
}

- (NSArray)allRecordFieldNames
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  recordSchemas = [(SCKZoneSchema *)self recordSchemas];
  v5 = [recordSchemas countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(recordSchemas);
        }

        fieldNames = [*(*(&v11 + 1) + 8 * i) fieldNames];
        [array addObjectsFromArray:fieldNames];
      }

      v6 = [recordSchemas countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)schemaForRecordType:(id)type
{
  v18 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  recordSchemas = [(SCKZoneSchema *)self recordSchemas];
  v6 = [recordSchemas countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(recordSchemas);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        recordType = [v9 recordType];
        v11 = [recordType isEqualToString:typeCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [recordSchemas countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)isValidRecord:(id)record
{
  v24 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];
  zoneName2 = [(SCKZoneSchema *)self zoneName];
  v9 = [zoneName isEqualToString:zoneName2];

  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    recordSchemas = [(SCKZoneSchema *)self recordSchemas];
    v11 = [recordSchemas countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(recordSchemas);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          recordType = [v14 recordType];
          recordType2 = [recordCopy recordType];
          v17 = [recordType isEqualToString:recordType2];

          if (v17)
          {
            LOBYTE(v11) = [v14 isValidRecord:recordCopy];
            goto LABEL_13;
          }
        }

        v11 = [recordSchemas countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)validateRecords:(id)records
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SCKZoneSchema_validateRecords___block_invoke;
  v7[3] = &unk_279D15C78;
  v7[4] = self;
  recordsCopy = records;
  v4 = [recordsCopy indexesOfObjectsPassingTest:v7];
  v5 = [recordsCopy objectsAtIndexes:v4];

  return v5;
}

@end