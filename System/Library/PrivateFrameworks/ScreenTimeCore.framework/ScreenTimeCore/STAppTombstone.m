@interface STAppTombstone
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAppTombstone:(id)a3;
- (STAppTombstone)initWithBundleIdentifier:(id)a3 uniqueIdentifier:(id)a4;
- (STAppTombstone)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STAppTombstone

- (STAppTombstone)initWithBundleIdentifier:(id)a3 uniqueIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = STAppTombstone;
  v5 = a4;
  v6 = a3;
  v7 = [(STAppTombstone *)&v13 init];
  v8 = [v6 copy];

  bundleIdentifier = v7->_bundleIdentifier;
  v7->_bundleIdentifier = v8;

  v10 = [v5 copy];
  uniqueIdentifier = v7->_uniqueIdentifier;
  v7->_uniqueIdentifier = v10;

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STAppTombstone *)self bundleIdentifier];
  v5 = [(STAppTombstone *)self uniqueIdentifier];
  v6 = [NSString stringWithFormat:@"<%@ { BundleID: %@, UniqueIdentifier: %@ }>", v3, v4, v5];

  return v6;
}

- (STAppTombstone)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];

  v7 = [(STAppTombstone *)self initWithBundleIdentifier:v5 uniqueIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STAppTombstone *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(STAppTombstone *)self uniqueIdentifier];
  [v4 encodeObject:v6 forKey:@"uniqueIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  bundleIdentifier = self->_bundleIdentifier;
  uniqueIdentifier = self->_uniqueIdentifier;

  return [v4 initWithBundleIdentifier:bundleIdentifier uniqueIdentifier:uniqueIdentifier];
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
      v5 = [(STAppTombstone *)self isEqualToAppTombstone:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToAppTombstone:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(STAppTombstone *)self bundleIdentifier];
    v6 = [(STAppTombstone *)v4 bundleIdentifier];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(STAppTombstone *)self uniqueIdentifier];
      v8 = [(STAppTombstone *)v4 uniqueIdentifier];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(STAppTombstone *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

@end