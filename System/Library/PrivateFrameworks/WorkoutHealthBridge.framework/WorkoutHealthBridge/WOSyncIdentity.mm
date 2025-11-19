@interface WOSyncIdentity
- (BOOL)isEqual:(id)a3;
- (WOSyncIdentity)initWithCoder:(id)a3;
- (WOSyncIdentity)initWithHardwareIdentifier:(id)a3 databaseIdentifier:(id)a4 instanceDiscriminator:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WOSyncIdentity

- (WOSyncIdentity)initWithHardwareIdentifier:(id)a3 databaseIdentifier:(id)a4 instanceDiscriminator:(id)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v5 = v21;
  v21 = 0;
  v17.receiver = v5;
  v17.super_class = WOSyncIdentity;
  v16 = [(WOSyncIdentity *)&v17 init];
  v21 = v16;
  objc_storeStrong(&v21, v16);
  if (v16)
  {
    v6 = [location[0] copy];
    hardwareIdentifier = v21->_hardwareIdentifier;
    v21->_hardwareIdentifier = v6;
    MEMORY[0x277D82BD8](hardwareIdentifier);
    v8 = [v19 copy];
    databaseIdentifier = v21->_databaseIdentifier;
    v21->_databaseIdentifier = v8;
    MEMORY[0x277D82BD8](databaseIdentifier);
    v10 = [v18 copy];
    instanceDiscriminator = v21->_instanceDiscriminator;
    v21->_instanceDiscriminator = v10;
    MEMORY[0x277D82BD8](instanceDiscriminator);
  }

  v13 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v14 == location[0])
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hardwareIdentifier = v14->_hardwareIdentifier;
      v7 = [location[0] hardwareIdentifier];
      v11 = 0;
      v9 = 0;
      v8 = 0;
      if (([(NSUUID *)hardwareIdentifier isEqual:?]& 1) != 0)
      {
        databaseIdentifier = v14->_databaseIdentifier;
        v12 = [location[0] databaseIdentifier];
        v11 = 1;
        v8 = 0;
        if (([(NSUUID *)databaseIdentifier isEqual:?]& 1) != 0)
        {
          instanceDiscriminator = v14->_instanceDiscriminator;
          v10 = [location[0] instanceDiscriminator];
          v9 = 1;
          v8 = [(NSString *)instanceDiscriminator isEqual:?];
        }
      }

      v15 = v8 & 1;
      if (v9)
      {
        MEMORY[0x277D82BD8](v10);
      }

      if (v11)
      {
        MEMORY[0x277D82BD8](v12);
      }

      MEMORY[0x277D82BD8](v7);
    }

    else
    {
      v15 = 0;
    }
  }

  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_hardwareIdentifier forKey:@"hwID"];
  [location[0] encodeObject:v4->_databaseIdentifier forKey:@"dbID"];
  [location[0] encodeObject:v4->_instanceDiscriminator forKey:@"instanceDisc"];
  objc_storeStrong(location, 0);
}

- (WOSyncIdentity)initWithCoder:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"hwID"];
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"dbID"];
  v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"instanceDisc"];
  if (v7 && v6 && v5)
  {
    v3 = v9;
    v9 = 0;
    v9 = [v3 initWithHardwareIdentifier:v7 databaseIdentifier:v6 instanceDiscriminator:v5];
    v10 = MEMORY[0x277D82BE0](v9);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v10;
}

@end