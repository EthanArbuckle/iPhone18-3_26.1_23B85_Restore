@interface PRSHostConfigurationEntry
+ (id)entryWithExtensionID:(id)a3 descriptorID:(id)a4;
+ (id)entryWithExtensionID:(id)a3 descriptorID:(id)a4 posterUUID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRSHostConfigurationEntry)initWithBSXPCCoder:(id)a3;
- (PRSHostConfigurationEntry)initWithCoder:(id)a3;
- (PRSHostConfigurationEntry)initWithExtensionID:(id)a3 descriptorID:(id)a4 posterUUID:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSHostConfigurationEntry

+ (id)entryWithExtensionID:(id)a3 descriptorID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithExtensionID:v6 descriptorID:v5];

  return v7;
}

+ (id)entryWithExtensionID:(id)a3 descriptorID:(id)a4 posterUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithExtensionID:v9 descriptorID:v8 posterUUID:v7];

  return v10;
}

- (PRSHostConfigurationEntry)initWithExtensionID:(id)a3 descriptorID:(id)a4 posterUUID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v9 length])
  {
    [PRSHostConfigurationEntry initWithExtensionID:a2 descriptorID:self posterUUID:?];
  }

  if (![v10 length])
  {
    [PRSHostConfigurationEntry initWithExtensionID:a2 descriptorID:self posterUUID:?];
  }

  v15.receiver = self;
  v15.super_class = PRSHostConfigurationEntry;
  v12 = [(PRSHostConfigurationEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(PRSHostConfigurationEntry *)v12 setExtensionID:v9];
    [(PRSHostConfigurationEntry *)v13 setDescriptorID:v10];
    [(PRSHostConfigurationEntry *)v13 setPosterUUID:v11];
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_extensionID withName:@"extensionID"];
  [v3 appendString:self->_descriptorID withName:@"descriptorID"];
  v4 = [v3 appendObject:self->_posterUUID withName:@"posterUUID" skipIfNil:1];
  v5 = [v3 build];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9)
    {
      extensionID = self->_extensionID;
      v11 = [(PRSHostConfigurationEntry *)v9 extensionID];
      if ([(NSString *)extensionID isEqualToString:v11])
      {
        descriptorID = self->_descriptorID;
        v13 = [(PRSHostConfigurationEntry *)v9 descriptorID];
        if ([(NSString *)descriptorID isEqualToString:v13])
        {
          posterUUID = self->_posterUUID;
          v15 = [(PRSHostConfigurationEntry *)v9 posterUUID];
          v8 = BSEqualObjects();
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendString:self->_extensionID];
  v5 = [v3 appendString:self->_descriptorID];
  v6 = [v3 appendObject:self->_posterUUID];
  v7 = [v3 hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  extensionID = self->_extensionID;
  descriptorID = self->_descriptorID;
  posterUUID = self->_posterUUID;

  return [v4 initWithExtensionID:extensionID descriptorID:descriptorID posterUUID:posterUUID];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_extensionID forKey:@"_extensionID"];
  [v5 encodeObject:self->_descriptorID forKey:@"_descriptorID"];
  posterUUID = self->_posterUUID;
  if (posterUUID)
  {
    [v5 encodeObject:posterUUID forKey:@"_posterUUID"];
  }
}

- (PRSHostConfigurationEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PRSHostConfigurationEntry;
  v5 = [(PRSHostConfigurationEntry *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_extensionID"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_descriptorID"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_posterUUID"];
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      [(PRSHostConfigurationEntry *)v5 setExtensionID:v6];
      [(PRSHostConfigurationEntry *)v5 setDescriptorID:v7];
      [(PRSHostConfigurationEntry *)v5 setPosterUUID:v8];
    }
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_extensionID forKey:@"_extensionID"];
  [v5 encodeObject:self->_descriptorID forKey:@"_descriptorID"];
  posterUUID = self->_posterUUID;
  if (posterUUID)
  {
    [v5 encodeObject:posterUUID forKey:@"_posterUUID"];
  }
}

- (PRSHostConfigurationEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PRSHostConfigurationEntry;
  v5 = [(PRSHostConfigurationEntry *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"_extensionID"];
    v7 = [v4 decodeStringForKey:@"_descriptorID"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_posterUUID"];
    if (v6 && v7)
    {
      [(PRSHostConfigurationEntry *)v5 setExtensionID:v6];
      [(PRSHostConfigurationEntry *)v5 setDescriptorID:v7];
      [(PRSHostConfigurationEntry *)v5 setPosterUUID:v8];
    }
  }

  return v5;
}

- (void)initWithExtensionID:(uint64_t)a1 descriptorID:(uint64_t)a2 posterUUID:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRSHostConfiguration.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"[extensionID length] > 0"}];
}

- (void)initWithExtensionID:(uint64_t)a1 descriptorID:(uint64_t)a2 posterUUID:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRSHostConfiguration.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"[descriptorID length] > 0"}];
}

@end