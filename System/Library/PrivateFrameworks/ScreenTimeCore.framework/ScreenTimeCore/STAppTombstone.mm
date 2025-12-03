@interface STAppTombstone
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAppTombstone:(id)tombstone;
- (STAppTombstone)initWithBundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier;
- (STAppTombstone)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAppTombstone

- (STAppTombstone)initWithBundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier
{
  v13.receiver = self;
  v13.super_class = STAppTombstone;
  uniqueIdentifierCopy = uniqueIdentifier;
  identifierCopy = identifier;
  v7 = [(STAppTombstone *)&v13 init];
  v8 = [identifierCopy copy];

  bundleIdentifier = v7->_bundleIdentifier;
  v7->_bundleIdentifier = v8;

  v10 = [uniqueIdentifierCopy copy];
  uniqueIdentifier = v7->_uniqueIdentifier;
  v7->_uniqueIdentifier = v10;

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  bundleIdentifier = [(STAppTombstone *)self bundleIdentifier];
  uniqueIdentifier = [(STAppTombstone *)self uniqueIdentifier];
  v6 = [NSString stringWithFormat:@"<%@ { BundleID: %@, UniqueIdentifier: %@ }>", v3, bundleIdentifier, uniqueIdentifier];

  return v6;
}

- (STAppTombstone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];

  v7 = [(STAppTombstone *)self initWithBundleIdentifier:v5 uniqueIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(STAppTombstone *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  uniqueIdentifier = [(STAppTombstone *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  bundleIdentifier = self->_bundleIdentifier;
  uniqueIdentifier = self->_uniqueIdentifier;

  return [v4 initWithBundleIdentifier:bundleIdentifier uniqueIdentifier:uniqueIdentifier];
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
      v5 = [(STAppTombstone *)self isEqualToAppTombstone:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToAppTombstone:(id)tombstone
{
  tombstoneCopy = tombstone;
  if (tombstoneCopy == self)
  {
    v9 = 1;
  }

  else
  {
    bundleIdentifier = [(STAppTombstone *)self bundleIdentifier];
    bundleIdentifier2 = [(STAppTombstone *)tombstoneCopy bundleIdentifier];
    if ([bundleIdentifier isEqualToString:bundleIdentifier2])
    {
      uniqueIdentifier = [(STAppTombstone *)self uniqueIdentifier];
      uniqueIdentifier2 = [(STAppTombstone *)tombstoneCopy uniqueIdentifier];
      v9 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];
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
  uniqueIdentifier = [(STAppTombstone *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

@end