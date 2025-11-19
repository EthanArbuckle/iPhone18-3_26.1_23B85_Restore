@interface SSVGratisApplication
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SSVGratisApplication

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v3 setObject:bundleIdentifier forKey:@"bid"];
  }

  bundleVersion = self->_bundleVersion;
  if (bundleVersion)
  {
    [v4 setObject:bundleVersion forKey:@"bvrs"];
  }

  externalVersionIdentifier = self->_externalVersionIdentifier;
  if (externalVersionIdentifier)
  {
    [v4 setObject:externalVersionIdentifier forKey:@"vid"];
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier)
  {
    [v4 setObject:itemIdentifier forKey:@"id"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setBundleIdentifier:self->_bundleIdentifier];
  [v4 setBundleVersion:self->_bundleVersion];
  [v4 setExternalVersionIdentifier:self->_externalVersionIdentifier];
  [v4 setItemIdentifier:self->_itemIdentifier];
  return v4;
}

@end