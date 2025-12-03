@interface SFAppAutoShortcutsButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAppAutoShortcutsButtonItem)initWithCoder:(id)coder;
- (SFAppAutoShortcutsButtonItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAppAutoShortcutsButtonItem

- (SFAppAutoShortcutsButtonItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFAppAutoShortcutsButtonItem;
  v5 = [(SFAppAutoShortcutsButtonItem *)&v12 init];
  if (v5)
  {
    appAutoShortcutsItem = [protobufCopy appAutoShortcutsItem];

    if (appAutoShortcutsItem)
    {
      v7 = [SFAppAutoShortcutsItem alloc];
      appAutoShortcutsItem2 = [protobufCopy appAutoShortcutsItem];
      v9 = [(SFAppAutoShortcutsItem *)v7 initWithProtobuf:appAutoShortcutsItem2];
      [(SFAppAutoShortcutsButtonItem *)v5 setAppAutoShortcutsItem:v9];
    }

    if ([protobufCopy uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [protobufCopy uniqueId]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFAppAutoShortcutsButtonItem;
  v3 = [(SFButtonItem *)&v8 hash];
  appAutoShortcutsItem = [(SFAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
  v5 = [appAutoShortcutsItem hash];
  v6 = v5 ^ [(SFButtonItem *)self uniqueId];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFAppAutoShortcutsButtonItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFAppAutoShortcutsButtonItem;
      if ([(SFButtonItem *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        appAutoShortcutsItem = [(SFAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
        appAutoShortcutsItem2 = [(SFAppAutoShortcutsButtonItem *)v7 appAutoShortcutsItem];
        if ((appAutoShortcutsItem != 0) == (appAutoShortcutsItem2 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        appAutoShortcutsItem3 = [(SFAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
        if (!appAutoShortcutsItem3 || (-[SFAppAutoShortcutsButtonItem appAutoShortcutsItem](self, "appAutoShortcutsItem"), v3 = objc_claimAutoreleasedReturnValue(), -[SFAppAutoShortcutsButtonItem appAutoShortcutsItem](v7, "appAutoShortcutsItem"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          uniqueId = [(SFButtonItem *)self uniqueId];
          v11 = uniqueId == [(SFButtonItem *)v7 uniqueId];
          if (!appAutoShortcutsItem3)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_13;
      }
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFAppAutoShortcutsButtonItem;
  v4 = [(SFButtonItem *)&v8 copyWithZone:zone];
  appAutoShortcutsItem = [(SFAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
  v6 = [appAutoShortcutsItem copy];
  [v4 setAppAutoShortcutsItem:v6];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithFacade:self];
  jsonData = [(_SFPBAppAutoShortcutsButtonItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBAppAutoShortcutsButtonItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithFacade:self];
  data = [(_SFPBAppAutoShortcutsButtonItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFAppAutoShortcutsButtonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithData:v5];
  v7 = [(SFAppAutoShortcutsButtonItem *)self initWithProtobuf:v6];

  return v7;
}

@end