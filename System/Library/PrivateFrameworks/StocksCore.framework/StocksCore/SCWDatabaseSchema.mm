@interface SCWDatabaseSchema
- (CKContainerID)containerID;
- (NSArray)zoneIDs;
- (SCWDatabaseSchema)initWithName:(id)name environment:(int64_t)environment security:(int64_t)security zoneSchemas:(id)schemas;
- (id)schemaForZoneName:(id)name;
@end

@implementation SCWDatabaseSchema

- (CKContainerID)containerID
{
  if ([(SCWDatabaseSchema *)self environment]== 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = objc_alloc(MEMORY[0x1E695B8A0]);
  name = [(SCWDatabaseSchema *)self name];
  v6 = [v4 initWithContainerIdentifier:name environment:v3];

  return v6;
}

- (SCWDatabaseSchema)initWithName:(id)name environment:(int64_t)environment security:(int64_t)security zoneSchemas:(id)schemas
{
  nameCopy = name;
  schemasCopy = schemas;
  v18.receiver = self;
  v18.super_class = SCWDatabaseSchema;
  v12 = [(SCWDatabaseSchema *)&v18 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_environment = environment;
    v12->_security = security;
    v15 = [schemasCopy copy];
    zoneSchemas = v12->_zoneSchemas;
    v12->_zoneSchemas = v15;
  }

  return v12;
}

- (NSArray)zoneIDs
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  zoneSchemas = [(SCWDatabaseSchema *)self zoneSchemas];
  v5 = [zoneSchemas countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(zoneSchemas);
        }

        zoneID = [*(*(&v12 + 1) + 8 * i) zoneID];
        [array addObject:zoneID];
      }

      v6 = [zoneSchemas countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)schemaForZoneName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  zoneSchemas = [(SCWDatabaseSchema *)self zoneSchemas];
  v6 = [zoneSchemas countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(zoneSchemas);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        zoneName = [v9 zoneName];
        v11 = [zoneName isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [zoneSchemas countByEnumeratingWithState:&v14 objects:v18 count:16];
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

@end