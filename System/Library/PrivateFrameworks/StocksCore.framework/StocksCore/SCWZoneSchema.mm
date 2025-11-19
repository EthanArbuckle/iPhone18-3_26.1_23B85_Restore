@interface SCWZoneSchema
- (BOOL)isValidRecord:(id)a3;
- (NSArray)allRecordFieldNames;
- (SCWZoneSchema)initWithName:(id)a3 atomic:(BOOL)a4 version:(unint64_t)a5 recordSchemas:(id)a6;
- (id)schemaForRecordType:(id)a3;
- (id)validateRecords:(id)a3;
@end

@implementation SCWZoneSchema

- (SCWZoneSchema)initWithName:(id)a3 atomic:(BOOL)a4 version:(unint64_t)a5 recordSchemas:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = SCWZoneSchema;
  v13 = [(SCWZoneSchema *)&v18 init];
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E695BA90]);
    v15 = [v14 initWithZoneName:v11 ownerName:*MEMORY[0x1E695B728]];
    zoneID = v13->_zoneID;
    v13->_zoneID = v15;

    objc_storeStrong(&v13->_zoneName, a3);
    v13->_version = a5;
    objc_storeStrong(&v13->_recordSchemas, a6);
    v13->_atomic = a4;
  }

  return v13;
}

- (NSArray)allRecordFieldNames
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SCWZoneSchema *)self recordSchemas];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) fieldNames];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)schemaForRecordType:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SCWZoneSchema *)self recordSchemas];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 recordType];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)isValidRecord:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [v5 zoneID];
  v7 = [v6 zoneName];
  v8 = [(SCWZoneSchema *)self zoneName];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [(SCWZoneSchema *)self recordSchemas];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 recordType];
          v16 = [v4 recordType];
          v17 = [v15 isEqualToString:v16];

          if (v17)
          {
            LOBYTE(v11) = [v14 isValidRecord:v4];
            goto LABEL_13;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (id)validateRecords:(id)a3
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SCWZoneSchema_validateRecords___block_invoke;
  v7[3] = &unk_1E85E3DE8;
  v7[4] = self;
  v3 = a3;
  v4 = [v3 indexesOfObjectsPassingTest:v7];
  v5 = [v3 objectsAtIndexes:v4];

  return v5;
}

@end