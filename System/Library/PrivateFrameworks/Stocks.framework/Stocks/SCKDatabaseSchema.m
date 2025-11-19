@interface SCKDatabaseSchema
- (CKContainerID)containerID;
- (NSArray)zoneIDs;
- (SCKDatabaseSchema)initWithName:(id)a3 environment:(int64_t)a4 security:(int64_t)a5 zoneSchemas:(id)a6;
- (id)schemaForZoneName:(id)a3;
@end

@implementation SCKDatabaseSchema

- (SCKDatabaseSchema)initWithName:(id)a3 environment:(int64_t)a4 security:(int64_t)a5 zoneSchemas:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = SCKDatabaseSchema;
  v12 = [(SCKDatabaseSchema *)&v18 init];
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

- (CKContainerID)containerID
{
  if ([(SCKDatabaseSchema *)self environment]== 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = objc_alloc(MEMORY[0x277CBC220]);
  v5 = [(SCKDatabaseSchema *)self name];
  v6 = [v4 initWithContainerIdentifier:v5 environment:v3];

  return v6;
}

- (NSArray)zoneIDs
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(SCKDatabaseSchema *)self zoneSchemas];
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

        v9 = [*(*(&v11 + 1) + 8 * i) zoneID];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)schemaForZoneName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SCKDatabaseSchema *)self zoneSchemas];
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
        v10 = [v9 zoneName];
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

@end