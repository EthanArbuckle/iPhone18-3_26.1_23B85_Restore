@interface SCKRecordSchema
- (BOOL)isValidRecord:(id)a3;
- (NSArray)fieldNames;
- (SCKRecordSchema)initWithRecordType:(id)a3 fieldSchemas:(id)a4;
- (id)schemaForFieldName:(id)a3;
@end

@implementation SCKRecordSchema

- (SCKRecordSchema)initWithRecordType:(id)a3 fieldSchemas:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SCKRecordSchema;
  v8 = [(SCKRecordSchema *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    recordType = v8->_recordType;
    v8->_recordType = v9;

    v11 = [v7 copy];
    fieldSchemas = v8->_fieldSchemas;
    v8->_fieldSchemas = v11;
  }

  return v8;
}

- (NSArray)fieldNames
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(SCKRecordSchema *)self fieldSchemas];
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

        v9 = [*(*(&v11 + 1) + 8 * i) name];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)schemaForFieldName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SCKRecordSchema *)self fieldSchemas];
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
        v10 = [v9 name];
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
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [(SCKRecordSchema *)self recordType];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(SCKRecordSchema *)self fieldSchemas];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![*(*(&v15 + 1) + 8 * i) isValidRecord:v4])
          {
            v13 = 0;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end