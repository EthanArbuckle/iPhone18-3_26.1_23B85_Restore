@interface CSDPersistedChannelIdentity
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPersistedChannelIdentity:(id)identity;
- (CSDPersistedChannelIdentity)initWithApplicationIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier channelUUID:(id)d;
- (CSDPersistedChannelIdentity)initWithCoder:(id)coder;
- (CSDPersistedChannelIdentity)initWithPersistedChannelIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSDPersistedChannelIdentity

- (CSDPersistedChannelIdentity)initWithApplicationIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier channelUUID:(id)d
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = CSDPersistedChannelIdentity;
  v11 = [(CSDPersistedChannelIdentity *)&v17 init];
  if (v11)
  {
    if (identifierCopy)
    {
      if (bundleIdentifierCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [NSException raise:NSInvalidArgumentException format:@"%s: parameter '%@' cannot be nil", "[CSDPersistedChannelIdentity initWithApplicationIdentifier:bundleIdentifier:channelUUID:]", @"applicationIdentifier"];
      if (bundleIdentifierCopy)
      {
LABEL_4:
        if (dCopy)
        {
LABEL_5:
          v12 = [identifierCopy copy];
          applicationIdentifier = v11->_applicationIdentifier;
          v11->_applicationIdentifier = v12;

          v14 = [bundleIdentifierCopy copy];
          bundleIdentifier = v11->_bundleIdentifier;
          v11->_bundleIdentifier = v14;

          objc_storeStrong(&v11->_channelUUID, d);
          goto LABEL_6;
        }

LABEL_9:
        [NSException raise:NSInvalidArgumentException format:@"%s: parameter '%@' cannot be nil", "[CSDPersistedChannelIdentity initWithApplicationIdentifier:bundleIdentifier:channelUUID:]", @"channelUUID"];
        goto LABEL_5;
      }
    }

    [NSException raise:NSInvalidArgumentException format:@"%s: parameter '%@' cannot be nil", "[CSDPersistedChannelIdentity initWithApplicationIdentifier:bundleIdentifier:channelUUID:]", @"bundleIdentifier"];
    if (dCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_6:

  return v11;
}

- (CSDPersistedChannelIdentity)initWithPersistedChannelIdentity:(id)identity
{
  identityCopy = identity;
  v8.receiver = self;
  v8.super_class = CSDPersistedChannelIdentity;
  v5 = [(CSDPersistedChannelIdentity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_applicationIdentifier, identityCopy[1]);
    objc_storeStrong(&v6->_bundleIdentifier, identityCopy[2]);
    objc_storeStrong(&v6->_channelUUID, identityCopy[3]);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  applicationIdentifier = self->_applicationIdentifier;
  coderCopy = coder;
  v6 = NSStringFromSelector("applicationIdentifier");
  [coderCopy encodeObject:applicationIdentifier forKey:v6];

  bundleIdentifier = self->_bundleIdentifier;
  v8 = NSStringFromSelector("bundleIdentifier");
  [coderCopy encodeObject:bundleIdentifier forKey:v8];

  channelUUID = self->_channelUUID;
  v10 = NSStringFromSelector("channelUUID");
  [coderCopy encodeObject:channelUUID forKey:v10];
}

- (CSDPersistedChannelIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CSDPersistedChannelIdentity;
  v5 = [(CSDPersistedChannelIdentity *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("applicationIdentifier");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector("bundleIdentifier");
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector("channelUUID");
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    channelUUID = v5->_channelUUID;
    v5->_channelUUID = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CSDPersistedChannelIdentity allocWithZone:zone];

  return [(CSDPersistedChannelIdentity *)v4 initWithPersistedChannelIdentity:self];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_applicationIdentifier hash];
  v4 = [(NSString *)self->_bundleIdentifier hash]^ v3;
  return v4 ^ [(NSUUID *)self->_channelUUID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CSDPersistedChannelIdentity *)self isEqualToPersistedChannelIdentity:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToPersistedChannelIdentity:(id)identity
{
  identityCopy = identity;
  applicationIdentifier = self->_applicationIdentifier;
  applicationIdentifier = [identityCopy applicationIdentifier];
  if (TUObjectsAreEqualOrNil())
  {
    bundleIdentifier = self->_bundleIdentifier;
    bundleIdentifier = [identityCopy bundleIdentifier];
    if (TUObjectsAreEqualOrNil())
    {
      channelUUID = self->_channelUUID;
      channelUUID = [identityCopy channelUUID];
      v11 = [(NSUUID *)channelUUID isEqual:channelUUID];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)unarchivedObjectClasses
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  return [NSSet setWithObjects:v2, v3, objc_opt_class(), 0];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v8;
}

@end