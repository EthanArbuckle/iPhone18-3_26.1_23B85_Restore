@interface SCWZoneSchema
- (BOOL)isValidRecord:(id)record;
- (NSArray)allRecordFieldNames;
- (SCWZoneSchema)initWithName:(id)name atomic:(BOOL)atomic version:(unint64_t)version recordSchemas:(id)schemas;
- (id)schemaForRecordType:(id)type;
- (id)validateRecords:(id)records;
@end

@implementation SCWZoneSchema

- (SCWZoneSchema)initWithName:(id)name atomic:(BOOL)atomic version:(unint64_t)version recordSchemas:(id)schemas
{
  nameCopy = name;
  schemasCopy = schemas;
  v18.receiver = self;
  v18.super_class = SCWZoneSchema;
  v13 = [(SCWZoneSchema *)&v18 init];
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E695BA90]);
    v15 = [v14 initWithZoneName:nameCopy ownerName:*MEMORY[0x1E695B728]];
    zoneID = v13->_zoneID;
    v13->_zoneID = v15;

    objc_storeStrong(&v13->_zoneName, name);
    v13->_version = version;
    objc_storeStrong(&v13->_recordSchemas, schemas);
    v13->_atomic = atomic;
  }

  return v13;
}

- (NSArray)allRecordFieldNames
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  recordSchemas = [(SCWZoneSchema *)self recordSchemas];
  v5 = [recordSchemas countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(recordSchemas);
        }

        fieldNames = [*(*(&v12 + 1) + 8 * i) fieldNames];
        [array addObjectsFromArray:fieldNames];
      }

      v6 = [recordSchemas countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)schemaForRecordType:(id)type
{
  v19 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  recordSchemas = [(SCWZoneSchema *)self recordSchemas];
  v6 = [recordSchemas countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(recordSchemas);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        recordType = [v9 recordType];
        v11 = [recordType isEqualToString:typeCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [recordSchemas countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isValidRecord:(id)record
{
  v25 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];
  zoneName2 = [(SCWZoneSchema *)self zoneName];
  v9 = [zoneName isEqualToString:zoneName2];

  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    recordSchemas = [(SCWZoneSchema *)self recordSchemas];
    v11 = [recordSchemas countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(recordSchemas);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          recordType = [v14 recordType];
          recordType2 = [recordCopy recordType];
          v17 = [recordType isEqualToString:recordType2];

          if (v17)
          {
            LOBYTE(v11) = [v14 isValidRecord:recordCopy];
            goto LABEL_13;
          }
        }

        v11 = [recordSchemas countByEnumeratingWithState:&v20 objects:v24 count:16];
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

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)validateRecords:(id)records
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SCWZoneSchema_validateRecords___block_invoke;
  v7[3] = &unk_1E85E3DE8;
  v7[4] = self;
  recordsCopy = records;
  v4 = [recordsCopy indexesOfObjectsPassingTest:v7];
  v5 = [recordsCopy objectsAtIndexes:v4];

  return v5;
}

@end