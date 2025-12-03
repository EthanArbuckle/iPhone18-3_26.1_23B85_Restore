@interface WOSyncIdentity
- (BOOL)isEqual:(id)equal;
- (WOSyncIdentity)initWithCoder:(id)coder;
- (WOSyncIdentity)initWithHardwareIdentifier:(id)identifier databaseIdentifier:(id)databaseIdentifier instanceDiscriminator:(id)discriminator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WOSyncIdentity

- (WOSyncIdentity)initWithHardwareIdentifier:(id)identifier databaseIdentifier:(id)databaseIdentifier instanceDiscriminator:(id)discriminator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v19 = 0;
  objc_storeStrong(&v19, databaseIdentifier);
  v18 = 0;
  objc_storeStrong(&v18, discriminator);
  v5 = selfCopy;
  selfCopy = 0;
  v17.receiver = v5;
  v17.super_class = WOSyncIdentity;
  v16 = [(WOSyncIdentity *)&v17 init];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    v6 = [location[0] copy];
    hardwareIdentifier = selfCopy->_hardwareIdentifier;
    selfCopy->_hardwareIdentifier = v6;
    MEMORY[0x277D82BD8](hardwareIdentifier);
    v8 = [v19 copy];
    databaseIdentifier = selfCopy->_databaseIdentifier;
    selfCopy->_databaseIdentifier = v8;
    MEMORY[0x277D82BD8](databaseIdentifier);
    v10 = [v18 copy];
    instanceDiscriminator = selfCopy->_instanceDiscriminator;
    selfCopy->_instanceDiscriminator = v10;
    MEMORY[0x277D82BD8](instanceDiscriminator);
  }

  v13 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (selfCopy == location[0])
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hardwareIdentifier = selfCopy->_hardwareIdentifier;
      hardwareIdentifier = [location[0] hardwareIdentifier];
      v11 = 0;
      v9 = 0;
      v8 = 0;
      if (([(NSUUID *)hardwareIdentifier isEqual:?]& 1) != 0)
      {
        databaseIdentifier = selfCopy->_databaseIdentifier;
        databaseIdentifier = [location[0] databaseIdentifier];
        v11 = 1;
        v8 = 0;
        if (([(NSUUID *)databaseIdentifier isEqual:?]& 1) != 0)
        {
          instanceDiscriminator = selfCopy->_instanceDiscriminator;
          instanceDiscriminator = [location[0] instanceDiscriminator];
          v9 = 1;
          v8 = [(NSString *)instanceDiscriminator isEqual:?];
        }
      }

      v15 = v8 & 1;
      if (v9)
      {
        MEMORY[0x277D82BD8](instanceDiscriminator);
      }

      if (v11)
      {
        MEMORY[0x277D82BD8](databaseIdentifier);
      }

      MEMORY[0x277D82BD8](hardwareIdentifier);
    }

    else
    {
      v15 = 0;
    }
  }

  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_hardwareIdentifier forKey:@"hwID"];
  [location[0] encodeObject:selfCopy->_databaseIdentifier forKey:@"dbID"];
  [location[0] encodeObject:selfCopy->_instanceDiscriminator forKey:@"instanceDisc"];
  objc_storeStrong(location, 0);
}

- (WOSyncIdentity)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"hwID"];
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"dbID"];
  v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"instanceDisc"];
  if (v7 && v6 && v5)
  {
    v3 = selfCopy;
    selfCopy = 0;
    selfCopy = [v3 initWithHardwareIdentifier:v7 databaseIdentifier:v6 instanceDiscriminator:v5];
    v10 = MEMORY[0x277D82BE0](selfCopy);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

@end