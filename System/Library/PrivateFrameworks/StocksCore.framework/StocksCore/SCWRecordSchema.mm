@interface SCWRecordSchema
- (BOOL)isValidRecord:(id)record;
- (NSArray)fieldNames;
- (SCWRecordSchema)initWithRecordType:(id)type fieldSchemas:(id)schemas;
- (id)schemaForFieldName:(id)name;
@end

@implementation SCWRecordSchema

- (SCWRecordSchema)initWithRecordType:(id)type fieldSchemas:(id)schemas
{
  typeCopy = type;
  schemasCopy = schemas;
  v14.receiver = self;
  v14.super_class = SCWRecordSchema;
  v8 = [(SCWRecordSchema *)&v14 init];
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
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  fieldSchemas = [(SCWRecordSchema *)self fieldSchemas];
  v5 = [fieldSchemas countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(fieldSchemas);
        }

        name = [*(*(&v12 + 1) + 8 * i) name];
        [array addObject:name];
      }

      v6 = [fieldSchemas countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)schemaForFieldName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  fieldSchemas = [(SCWRecordSchema *)self fieldSchemas];
  v6 = [fieldSchemas countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(fieldSchemas);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [fieldSchemas countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v21 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  recordType = [recordCopy recordType];
  recordType2 = [(SCWRecordSchema *)self recordType];
  v7 = [recordType isEqualToString:recordType2];

  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    fieldSchemas = [(SCWRecordSchema *)self fieldSchemas];
    v9 = [fieldSchemas countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(fieldSchemas);
          }

          if (![*(*(&v16 + 1) + 8 * i) isValidRecord:recordCopy])
          {
            v13 = 0;
            goto LABEL_13;
          }
        }

        v10 = [fieldSchemas countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end