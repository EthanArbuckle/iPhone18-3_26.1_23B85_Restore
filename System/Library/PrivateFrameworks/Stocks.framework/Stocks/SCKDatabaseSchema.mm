@interface SCKDatabaseSchema
- (CKContainerID)containerID;
- (NSArray)zoneIDs;
- (SCKDatabaseSchema)initWithName:(id)name environment:(int64_t)environment security:(int64_t)security zoneSchemas:(id)schemas;
- (id)schemaForZoneName:(id)name;
@end

@implementation SCKDatabaseSchema

- (SCKDatabaseSchema)initWithName:(id)name environment:(int64_t)environment security:(int64_t)security zoneSchemas:(id)schemas
{
  nameCopy = name;
  schemasCopy = schemas;
  v18.receiver = self;
  v18.super_class = SCKDatabaseSchema;
  v12 = [(SCKDatabaseSchema *)&v18 init];
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
  name = [(SCKDatabaseSchema *)self name];
  v6 = [v4 initWithContainerIdentifier:name environment:v3];

  return v6;
}

- (NSArray)zoneIDs
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  zoneSchemas = [(SCKDatabaseSchema *)self zoneSchemas];
  v5 = [zoneSchemas countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(zoneSchemas);
        }

        zoneID = [*(*(&v11 + 1) + 8 * i) zoneID];
        [array addObject:zoneID];
      }

      v6 = [zoneSchemas countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)schemaForZoneName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  zoneSchemas = [(SCKDatabaseSchema *)self zoneSchemas];
  v6 = [zoneSchemas countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(zoneSchemas);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        zoneName = [v9 zoneName];
        v11 = [zoneName isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [zoneSchemas countByEnumeratingWithState:&v13 objects:v17 count:16];
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