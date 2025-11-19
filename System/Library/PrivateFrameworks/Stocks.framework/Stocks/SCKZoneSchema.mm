@interface SCKZoneSchema
- (BOOL)isValidRecord:(id)a3;
- (NSArray)allRecordFieldNames;
- (SCKZoneSchema)initWithName:(id)a3 atomic:(BOOL)a4 recordSchemas:(id)a5;
- (id)schemaForRecordType:(id)a3;
- (id)validateRecords:(id)a3;
@end

@implementation SCKZoneSchema

- (SCKZoneSchema)initWithName:(id)a3 atomic:(BOOL)a4 recordSchemas:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SCKZoneSchema;
  v11 = [(SCKZoneSchema *)&v16 init];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CBC5F8]);
    v13 = [v12 initWithZoneName:v9 ownerName:*MEMORY[0x277CBBF28]];
    zoneID = v11->_zoneID;
    v11->_zoneID = v13;

    objc_storeStrong(&v11->_zoneName, a3);
    objc_storeStrong(&v11->_recordSchemas, a5);
    v11->_atomic = a4;
  }

  return v11;
}

- (NSArray)allRecordFieldNames
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(SCKZoneSchema *)self recordSchemas];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) fieldNames];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)schemaForRecordType:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SCKZoneSchema *)self recordSchemas];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 recordType];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)isValidRecord:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [v5 zoneID];
  v7 = [v6 zoneName];
  v8 = [(SCKZoneSchema *)self zoneName];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [(SCKZoneSchema *)self recordSchemas];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 recordType];
          v16 = [v4 recordType];
          v17 = [v15 isEqualToString:v16];

          if (v17)
          {
            LOBYTE(v11) = [v14 isValidRecord:v4];
            goto LABEL_13;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (id)validateRecords:(id)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SCKZoneSchema_validateRecords___block_invoke;
  v7[3] = &unk_279D15C78;
  v7[4] = self;
  v3 = a3;
  v4 = [v3 indexesOfObjectsPassingTest:v7];
  v5 = [v3 objectsAtIndexes:v4];

  return v5;
}

@end