@interface STConfigurationChange
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfigurationChange:(id)a3;
- (STConfigurationChange)initWithCoder:(id)a3;
- (STConfigurationChange)initWithTargetUser:(id)a3 targetDevices:(id)a4 configuration:(id)a5 configurationType:(int64_t)a6 author:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)matchingAny:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STConfigurationChange

- (STConfigurationChange)initWithTargetUser:(id)a3 targetDevices:(id)a4 configuration:(id)a5 configurationType:(int64_t)a6 author:(id)a7
{
  v25.receiver = self;
  v25.super_class = STConfigurationChange;
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(STConfigurationChange *)&v25 init];
  v16 = [v14 copy];

  targetUser = v15->_targetUser;
  v15->_targetUser = v16;

  v18 = [v13 copy];
  targetDevices = v15->_targetDevices;
  v15->_targetDevices = v18;

  v20 = [v12 copy];
  configuration = v15->_configuration;
  v15->_configuration = v20;

  v15->_configurationType = a6;
  v22 = [v11 copy];

  author = v15->_author;
  v15->_author = v22;

  return v15;
}

- (id)matchingAny:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithInteger:[(STConfigurationChange *)self configurationType]];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = [STResult success:self];
  }

  else
  {
    v8 = [NSError alloc];
    v9 = STErrorDomain;
    v13 = NSLocalizedDescriptionKey;
    v14 = self;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = [v8 initWithDomain:v9 code:45 userInfo:v10];
    v7 = [STResult failure:v11];
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STConfigurationChange *)self targetUser];
  v5 = [(STConfigurationChange *)self targetDevices];
  v6 = [(STConfigurationChange *)self configurationType]- 1;
  if (v6 > 5)
  {
    v7 = @"Invalid";
  }

  else
  {
    v7 = off_1001A3578[v6];
  }

  v8 = [(STConfigurationChange *)self author];
  v9 = [NSString stringWithFormat:@"<%@ { TargetUser: %@, TargetDevices: %@, Type: %@, Author: %@ }>", v3, v4, v5, v7, v8];

  return v9;
}

- (STConfigurationChange)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"encodingVersion"] < 1)
  {
    v20 = 0;
  }

  else
  {
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetUser"];
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"targetDevices"];
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
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"configuration"];
    v18 = [v4 decodeIntegerForKey:@"configurationType"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"author"];
    self = [(STConfigurationChange *)self initWithTargetUser:v31 targetDevices:v30 configuration:v17 configurationType:v18 author:v19];

    v20 = self;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:+[STConfigurationChange encodingVersion](STConfigurationChange forKey:{"encodingVersion"), @"encodingVersion"}];
  v5 = [(STConfigurationChange *)self targetUser];
  [v4 encodeObject:v5 forKey:@"targetUser"];

  v6 = [(STConfigurationChange *)self targetDevices];
  v7 = [v6 allObjects];
  [v4 encodeObject:v7 forKey:@"targetDevices"];

  v8 = [(STConfigurationChange *)self configuration];
  [v4 encodeObject:v8 forKey:@"configuration"];

  [v4 encodeInteger:-[STConfigurationChange configurationType](self forKey:{"configurationType"), @"configurationType"}];
  v9 = [(STConfigurationChange *)self author];
  [v4 encodeObject:v9 forKey:@"author"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  targetUser = self->_targetUser;
  targetDevices = self->_targetDevices;
  configuration = self->_configuration;
  configurationType = self->_configurationType;
  author = self->_author;

  return [v4 initWithTargetUser:targetUser targetDevices:targetDevices configuration:configuration configurationType:configurationType author:author];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STConfigurationChange *)self isEqualToConfigurationChange:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToConfigurationChange:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    v5 = [(STConfigurationChange *)self targetUser];
    v6 = [(STConfigurationChange *)v4 targetUser];
    if ([v5 isEqualToUserID:v6])
    {
      v7 = [(STConfigurationChange *)self targetDevices];
      v8 = [(STConfigurationChange *)v4 targetDevices];
      if ([v7 isEqualToSet:v8])
      {
        v9 = [(STConfigurationChange *)self configuration];
        v10 = [(STConfigurationChange *)v4 configuration];
        if ([v9 isEqual:v10] && (v11 = -[STConfigurationChange configurationType](self, "configurationType"), v11 == -[STConfigurationChange configurationType](v4, "configurationType")))
        {
          v12 = [(STConfigurationChange *)self author];
          v13 = [(STConfigurationChange *)v4 author];
          v14 = [v12 isEqualToUserID:v13];
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
  v3 = [(STConfigurationChange *)self targetUser];
  v4 = [v3 hash];
  v5 = [(STConfigurationChange *)self configuration];
  v6 = [v5 hash] ^ v4;
  v7 = [(STConfigurationChange *)self configurationType];
  v8 = [(STConfigurationChange *)self author];
  v9 = v6 ^ v7 ^ [v8 hash];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(STConfigurationChange *)self targetDevices];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v10);
        }

        v9 ^= [*(*(&v16 + 1) + 8 * v14) hash];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  return v9;
}

@end