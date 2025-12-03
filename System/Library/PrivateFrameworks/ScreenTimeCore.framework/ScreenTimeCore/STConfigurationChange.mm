@interface STConfigurationChange
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfigurationChange:(id)change;
- (STConfigurationChange)initWithCoder:(id)coder;
- (STConfigurationChange)initWithTargetUser:(id)user targetDevices:(id)devices configuration:(id)configuration configurationType:(int64_t)type author:(id)author;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)matchingAny:(id)any;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STConfigurationChange

- (STConfigurationChange)initWithTargetUser:(id)user targetDevices:(id)devices configuration:(id)configuration configurationType:(int64_t)type author:(id)author
{
  v25.receiver = self;
  v25.super_class = STConfigurationChange;
  authorCopy = author;
  configurationCopy = configuration;
  devicesCopy = devices;
  userCopy = user;
  v15 = [(STConfigurationChange *)&v25 init];
  v16 = [userCopy copy];

  targetUser = v15->_targetUser;
  v15->_targetUser = v16;

  v18 = [devicesCopy copy];
  targetDevices = v15->_targetDevices;
  v15->_targetDevices = v18;

  v20 = [configurationCopy copy];
  configuration = v15->_configuration;
  v15->_configuration = v20;

  v15->_configurationType = type;
  v22 = [authorCopy copy];

  author = v15->_author;
  v15->_author = v22;

  return v15;
}

- (id)matchingAny:(id)any
{
  anyCopy = any;
  v5 = [NSNumber numberWithInteger:[(STConfigurationChange *)self configurationType]];
  v6 = [anyCopy containsObject:v5];

  if (v6)
  {
    v7 = [STResult success:self];
  }

  else
  {
    v8 = [NSError alloc];
    v9 = STErrorDomain;
    v13 = NSLocalizedDescriptionKey;
    selfCopy = self;
    v10 = [NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v13 count:1];
    v11 = [v8 initWithDomain:v9 code:45 userInfo:v10];
    v7 = [STResult failure:v11];
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  targetUser = [(STConfigurationChange *)self targetUser];
  targetDevices = [(STConfigurationChange *)self targetDevices];
  v6 = [(STConfigurationChange *)self configurationType]- 1;
  if (v6 > 5)
  {
    v7 = @"Invalid";
  }

  else
  {
    v7 = off_1001A3578[v6];
  }

  author = [(STConfigurationChange *)self author];
  v9 = [NSString stringWithFormat:@"<%@ { TargetUser: %@, TargetDevices: %@, Type: %@, Author: %@ }>", v3, targetUser, targetDevices, v7, author];

  return v9;
}

- (STConfigurationChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"encodingVersion"] < 1)
  {
    selfCopy = 0;
  }

  else
  {
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetUser"];
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"targetDevices"];
    v30 = [NSSet setWithArray:v7];

    v29 = [NSSet alloc];
    v28 = objc_opt_class();
    v27 = objc_opt_class();
    v26 = objc_opt_class();
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v23 = objc_opt_class();
    v22 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v29 initWithObjects:{v28, v27, v26, v25, v24, v23, v22, v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"configuration"];
    v18 = [coderCopy decodeIntegerForKey:@"configurationType"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"author"];
    self = [(STConfigurationChange *)self initWithTargetUser:v31 targetDevices:v30 configuration:v17 configurationType:v18 author:v19];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:+[STConfigurationChange encodingVersion](STConfigurationChange forKey:{"encodingVersion"), @"encodingVersion"}];
  targetUser = [(STConfigurationChange *)self targetUser];
  [coderCopy encodeObject:targetUser forKey:@"targetUser"];

  targetDevices = [(STConfigurationChange *)self targetDevices];
  allObjects = [targetDevices allObjects];
  [coderCopy encodeObject:allObjects forKey:@"targetDevices"];

  configuration = [(STConfigurationChange *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  [coderCopy encodeInteger:-[STConfigurationChange configurationType](self forKey:{"configurationType"), @"configurationType"}];
  author = [(STConfigurationChange *)self author];
  [coderCopy encodeObject:author forKey:@"author"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  targetUser = self->_targetUser;
  targetDevices = self->_targetDevices;
  configuration = self->_configuration;
  configurationType = self->_configurationType;
  author = self->_author;

  return [v4 initWithTargetUser:targetUser targetDevices:targetDevices configuration:configuration configurationType:configurationType author:author];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STConfigurationChange *)self isEqualToConfigurationChange:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToConfigurationChange:(id)change
{
  changeCopy = change;
  if (changeCopy == self)
  {
    v14 = 1;
  }

  else
  {
    targetUser = [(STConfigurationChange *)self targetUser];
    targetUser2 = [(STConfigurationChange *)changeCopy targetUser];
    if ([targetUser isEqualToUserID:targetUser2])
    {
      targetDevices = [(STConfigurationChange *)self targetDevices];
      targetDevices2 = [(STConfigurationChange *)changeCopy targetDevices];
      if ([targetDevices isEqualToSet:targetDevices2])
      {
        configuration = [(STConfigurationChange *)self configuration];
        configuration2 = [(STConfigurationChange *)changeCopy configuration];
        if ([configuration isEqual:configuration2] && (v11 = -[STConfigurationChange configurationType](self, "configurationType"), v11 == -[STConfigurationChange configurationType](changeCopy, "configurationType")))
        {
          author = [(STConfigurationChange *)self author];
          author2 = [(STConfigurationChange *)changeCopy author];
          v14 = [author isEqualToUserID:author2];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  targetUser = [(STConfigurationChange *)self targetUser];
  v4 = [targetUser hash];
  configuration = [(STConfigurationChange *)self configuration];
  v6 = [configuration hash] ^ v4;
  configurationType = [(STConfigurationChange *)self configurationType];
  author = [(STConfigurationChange *)self author];
  v9 = v6 ^ configurationType ^ [author hash];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  targetDevices = [(STConfigurationChange *)self targetDevices];
  v11 = [targetDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(targetDevices);
        }

        v9 ^= [*(*(&v16 + 1) + 8 * v14) hash];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [targetDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  return v9;
}

@end