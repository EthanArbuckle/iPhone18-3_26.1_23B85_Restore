@interface SFWatchListButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFWatchListButtonItem)initWithCoder:(id)coder;
- (SFWatchListButtonItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFWatchListButtonItem

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = SFWatchListButtonItem;
  v3 = [(SFButtonItem *)&v10 hash];
  watchListItem = [(SFWatchListButtonItem *)self watchListItem];
  v5 = [watchListItem hash];
  toggleButtonConfiguration = [(SFWatchListButtonItem *)self toggleButtonConfiguration];
  v7 = v5 ^ [toggleButtonConfiguration hash];
  v8 = v7 ^ [(SFButtonItem *)self uniqueId];

  return v8 ^ v3;
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
    if ([(SFWatchListButtonItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v23.receiver = self;
      v23.super_class = SFWatchListButtonItem;
      if ([(SFButtonItem *)&v23 isEqual:equalCopy])
      {
        v6 = equalCopy;
        watchListItem = [(SFWatchListButtonItem *)self watchListItem];
        watchListItem2 = [(SFWatchListButtonItem *)v6 watchListItem];
        if ((watchListItem != 0) == (watchListItem2 == 0))
        {
          v11 = 0;
LABEL_25:

          goto LABEL_26;
        }

        watchListItem3 = [(SFWatchListButtonItem *)self watchListItem];
        if (watchListItem3)
        {
          watchListItem4 = [(SFWatchListButtonItem *)self watchListItem];
          watchListItem5 = [(SFWatchListButtonItem *)v6 watchListItem];
          if (![watchListItem4 isEqual:watchListItem5])
          {
            v11 = 0;
            goto LABEL_23;
          }

          v22 = watchListItem4;
        }

        toggleButtonConfiguration = [(SFWatchListButtonItem *)self toggleButtonConfiguration];
        toggleButtonConfiguration2 = [(SFWatchListButtonItem *)v6 toggleButtonConfiguration];
        v14 = toggleButtonConfiguration2;
        if ((toggleButtonConfiguration != 0) == (toggleButtonConfiguration2 == 0))
        {

          v11 = 0;
          goto LABEL_22;
        }

        toggleButtonConfiguration3 = [(SFWatchListButtonItem *)self toggleButtonConfiguration];
        if (toggleButtonConfiguration3)
        {
          v19 = watchListItem5;
          toggleButtonConfiguration4 = [(SFWatchListButtonItem *)self toggleButtonConfiguration];
          toggleButtonConfiguration5 = [(SFWatchListButtonItem *)v6 toggleButtonConfiguration];
          v21 = toggleButtonConfiguration4;
          if (![toggleButtonConfiguration4 isEqual:?])
          {
            v11 = 0;
            watchListItem5 = v19;
LABEL_20:

LABEL_21:
LABEL_22:
            watchListItem4 = v22;
            if (!watchListItem3)
            {
LABEL_24:

              goto LABEL_25;
            }

LABEL_23:

            goto LABEL_24;
          }

          watchListItem5 = v19;
        }

        uniqueId = [(SFButtonItem *)self uniqueId];
        v11 = uniqueId == [(SFButtonItem *)v6 uniqueId];
        if (!toggleButtonConfiguration3)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v11 = 0;
  }

LABEL_26:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFWatchListButtonItem;
  v4 = [(SFButtonItem *)&v10 copyWithZone:zone];
  watchListItem = [(SFWatchListButtonItem *)self watchListItem];
  v6 = [watchListItem copy];
  [v4 setWatchListItem:v6];

  toggleButtonConfiguration = [(SFWatchListButtonItem *)self toggleButtonConfiguration];
  v8 = [toggleButtonConfiguration copy];
  [v4 setToggleButtonConfiguration:v8];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBWatchListButtonItem alloc] initWithFacade:self];
  jsonData = [(_SFPBWatchListButtonItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBWatchListButtonItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBWatchListButtonItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBWatchListButtonItem alloc] initWithFacade:self];
  data = [(_SFPBWatchListButtonItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFWatchListButtonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBWatchListButtonItem alloc] initWithData:v5];
  v7 = [(SFWatchListButtonItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFWatchListButtonItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFWatchListButtonItem;
  v5 = [(SFWatchListButtonItem *)&v16 init];
  if (v5)
  {
    watchListItem = [protobufCopy watchListItem];

    if (watchListItem)
    {
      v7 = [SFWatchListItem alloc];
      watchListItem2 = [protobufCopy watchListItem];
      v9 = [(SFWatchListItem *)v7 initWithProtobuf:watchListItem2];
      [(SFWatchListButtonItem *)v5 setWatchListItem:v9];
    }

    toggleButtonConfiguration = [protobufCopy toggleButtonConfiguration];

    if (toggleButtonConfiguration)
    {
      v11 = [SFToggleButtonConfiguration alloc];
      toggleButtonConfiguration2 = [protobufCopy toggleButtonConfiguration];
      v13 = [(SFToggleButtonConfiguration *)v11 initWithProtobuf:toggleButtonConfiguration2];
      [(SFWatchListButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    if ([protobufCopy uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [protobufCopy uniqueId]);
    }

    v14 = v5;
  }

  return v5;
}

@end