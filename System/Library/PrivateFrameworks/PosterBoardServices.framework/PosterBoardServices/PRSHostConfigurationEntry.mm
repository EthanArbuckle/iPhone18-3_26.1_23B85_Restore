@interface PRSHostConfigurationEntry
+ (id)entryWithExtensionID:(id)d descriptorID:(id)iD;
+ (id)entryWithExtensionID:(id)d descriptorID:(id)iD posterUUID:(id)uID;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRSHostConfigurationEntry)initWithBSXPCCoder:(id)coder;
- (PRSHostConfigurationEntry)initWithCoder:(id)coder;
- (PRSHostConfigurationEntry)initWithExtensionID:(id)d descriptorID:(id)iD posterUUID:(id)uID;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSHostConfigurationEntry

+ (id)entryWithExtensionID:(id)d descriptorID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = [objc_alloc(objc_opt_class()) initWithExtensionID:dCopy descriptorID:iDCopy];

  return v7;
}

+ (id)entryWithExtensionID:(id)d descriptorID:(id)iD posterUUID:(id)uID
{
  uIDCopy = uID;
  iDCopy = iD;
  dCopy = d;
  v10 = [objc_alloc(objc_opt_class()) initWithExtensionID:dCopy descriptorID:iDCopy posterUUID:uIDCopy];

  return v10;
}

- (PRSHostConfigurationEntry)initWithExtensionID:(id)d descriptorID:(id)iD posterUUID:(id)uID
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  if (![dCopy length])
  {
    [PRSHostConfigurationEntry initWithExtensionID:a2 descriptorID:self posterUUID:?];
  }

  if (![iDCopy length])
  {
    [PRSHostConfigurationEntry initWithExtensionID:a2 descriptorID:self posterUUID:?];
  }

  v15.receiver = self;
  v15.super_class = PRSHostConfigurationEntry;
  v12 = [(PRSHostConfigurationEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(PRSHostConfigurationEntry *)v12 setExtensionID:dCopy];
    [(PRSHostConfigurationEntry *)v13 setDescriptorID:iDCopy];
    [(PRSHostConfigurationEntry *)v13 setPosterUUID:uIDCopy];
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_extensionID withName:@"extensionID"];
  [v3 appendString:self->_descriptorID withName:@"descriptorID"];
  v4 = [v3 appendObject:self->_posterUUID withName:@"posterUUID" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
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
      extensionID = [(PRSHostConfigurationEntry *)v9 extensionID];
      if ([(NSString *)extensionID isEqualToString:extensionID])
      {
        descriptorID = self->_descriptorID;
        descriptorID = [(PRSHostConfigurationEntry *)v9 descriptorID];
        if ([(NSString *)descriptorID isEqualToString:descriptorID])
        {
          posterUUID = self->_posterUUID;
          posterUUID = [(PRSHostConfigurationEntry *)v9 posterUUID];
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendString:self->_extensionID];
  v5 = [builder appendString:self->_descriptorID];
  v6 = [builder appendObject:self->_posterUUID];
  v7 = [builder hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  extensionID = self->_extensionID;
  descriptorID = self->_descriptorID;
  posterUUID = self->_posterUUID;

  return [v4 initWithExtensionID:extensionID descriptorID:descriptorID posterUUID:posterUUID];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_extensionID forKey:@"_extensionID"];
  [coderCopy encodeObject:self->_descriptorID forKey:@"_descriptorID"];
  posterUUID = self->_posterUUID;
  if (posterUUID)
  {
    [coderCopy encodeObject:posterUUID forKey:@"_posterUUID"];
  }
}

- (PRSHostConfigurationEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PRSHostConfigurationEntry;
  v5 = [(PRSHostConfigurationEntry *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionID"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_descriptorID"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_posterUUID"];
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

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_extensionID forKey:@"_extensionID"];
  [coderCopy encodeObject:self->_descriptorID forKey:@"_descriptorID"];
  posterUUID = self->_posterUUID;
  if (posterUUID)
  {
    [coderCopy encodeObject:posterUUID forKey:@"_posterUUID"];
  }
}

- (PRSHostConfigurationEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PRSHostConfigurationEntry;
  v5 = [(PRSHostConfigurationEntry *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"_extensionID"];
    v7 = [coderCopy decodeStringForKey:@"_descriptorID"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_posterUUID"];
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