@interface SFAppAutoShortcutsItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAppAutoShortcutsItem)initWithCoder:(id)coder;
- (SFAppAutoShortcutsItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAppAutoShortcutsItem

- (unint64_t)hash
{
  bundleIdentifier = [(SFAppAutoShortcutsItem *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFAppAutoShortcutsItem *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    bundleIdentifier = [(SFAppAutoShortcutsItem *)self bundleIdentifier];
    bundleIdentifier2 = [(SFAppAutoShortcutsItem *)v5 bundleIdentifier];
    if ((bundleIdentifier != 0) == (bundleIdentifier2 == 0))
    {
      v11 = 0;
    }

    else
    {
      bundleIdentifier3 = [(SFAppAutoShortcutsItem *)self bundleIdentifier];
      if (bundleIdentifier3)
      {
        bundleIdentifier4 = [(SFAppAutoShortcutsItem *)self bundleIdentifier];
        bundleIdentifier5 = [(SFAppAutoShortcutsItem *)v5 bundleIdentifier];
        v11 = [bundleIdentifier4 isEqual:bundleIdentifier5];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  bundleIdentifier = [(SFAppAutoShortcutsItem *)self bundleIdentifier];
  v6 = [bundleIdentifier copy];
  [v4 setBundleIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAppAutoShortcutsItem alloc] initWithFacade:self];
  jsonData = [(_SFPBAppAutoShortcutsItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAppAutoShortcutsItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBAppAutoShortcutsItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBAppAutoShortcutsItem alloc] initWithFacade:self];
  data = [(_SFPBAppAutoShortcutsItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFAppAutoShortcutsItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAppAutoShortcutsItem alloc] initWithData:v5];
  v7 = [(SFAppAutoShortcutsItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFAppAutoShortcutsItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFAppAutoShortcutsItem;
  v5 = [(SFAppAutoShortcutsItem *)&v10 init];
  if (v5)
  {
    bundleIdentifier = [protobufCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [protobufCopy bundleIdentifier];
      [(SFAppAutoShortcutsItem *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

@end