@interface SCWDatabaseSchema
- (CKContainerID)containerID;
- (NSArray)zoneIDs;
- (SCWDatabaseSchema)initWithName:(id)a3 environment:(int64_t)a4 security:(int64_t)a5 zoneSchemas:(id)a6;
- (id)schemaForZoneName:(id)a3;
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
  v5 = [(SCWDatabaseSchema *)self name];
  v6 = [v4 initWithContainerIdentifier:v5 environment:v3];

  return v6;
}

- (SCWDatabaseSchema)initWithName:(id)a3 environment:(int64_t)a4 security:(int64_t)a5 zoneSchemas:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = SCWDatabaseSchema;
  v12 = [(SCWDatabaseSchema *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_environment = a4;
    v12->_security = a5;
    v15 = [v11 copy];
    zoneSchemas = v12->_zoneSchemas;
    v12->_zoneSchemas = v15;
  }

  return v12;
}

- (NSArray)zoneIDs
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SCWDatabaseSchema *)self zoneSchemas];
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

        v9 = [*(*(&v12 + 1) + 8 * i) zoneID];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)schemaForZoneName:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SCWDatabaseSchema *)self zoneSchemas];
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
        v10 = [v9 zoneName];
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

@end