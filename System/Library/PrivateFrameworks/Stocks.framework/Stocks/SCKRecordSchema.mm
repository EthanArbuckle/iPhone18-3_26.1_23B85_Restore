@interface SCKRecordSchema
- (BOOL)isValidRecord:(id)record;
- (NSArray)fieldNames;
- (SCKRecordSchema)initWithRecordType:(id)type fieldSchemas:(id)schemas;
- (id)schemaForFieldName:(id)name;
@end

@implementation SCKRecordSchema

- (SCKRecordSchema)initWithRecordType:(id)type fieldSchemas:(id)schemas
{
  typeCopy = type;
  schemasCopy = schemas;
  v14.receiver = self;
  v14.super_class = SCKRecordSchema;
  v8 = [(SCKRecordSchema *)&v14 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    recordType = v8->_recordType;
    v8->_recordType = v9;

    v11 = [schemasCopy copy];
    fieldSchemas = v8->_fieldSchemas;
    v8->_fieldSchemas = v11;
  }

  return v8;
}

- (NSArray)fieldNames
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  fieldSchemas = [(SCKRecordSchema *)self fieldSchemas];
  v5 = [fieldSchemas countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(fieldSchemas);
        }

        name = [*(*(&v11 + 1) + 8 * i) name];
        [array addObject:name];
      }

      v6 = [fieldSchemas countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)schemaForFieldName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  fieldSchemas = [(SCKRecordSchema *)self fieldSchemas];
  v6 = [fieldSchemas countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(fieldSchemas);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [fieldSchemas countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v20 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordType = [recordCopy recordType];
  recordType2 = [(SCKRecordSchema *)self recordType];
  v7 = [recordType isEqualToString:recordType2];

  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    fieldSchemas = [(SCKRecordSchema *)self fieldSchemas];
    v9 = [fieldSchemas countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(fieldSchemas);
          }

          if (![*(*(&v15 + 1) + 8 * i) isValidRecord:recordCopy])
          {
            v13 = 0;
            goto LABEL_13;
          }
        }

        v10 = [fieldSchemas countByEnumeratingWithState:&v15 objects:v19 count:16];
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