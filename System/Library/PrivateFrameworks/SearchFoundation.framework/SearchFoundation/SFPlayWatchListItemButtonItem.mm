@interface SFPlayWatchListItemButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPlayWatchListItemButtonItem)initWithCoder:(id)coder;
- (SFPlayWatchListItemButtonItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPlayWatchListItemButtonItem

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFPlayWatchListItemButtonItem;
  v3 = [(SFButtonItem *)&v12 hash];
  watchListItem = [(SFPlayWatchListItemButtonItem *)self watchListItem];
  v5 = [watchListItem hash];
  title = [(SFPlayWatchListItemButtonItem *)self title];
  v7 = v5 ^ [title hash];
  image = [(SFPlayWatchListItemButtonItem *)self image];
  v9 = v7 ^ [image hash];
  v10 = v9 ^ [(SFButtonItem *)self uniqueId];

  return v10 ^ v3;
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
    if ([(SFPlayWatchListItemButtonItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFPlayWatchListItemButtonItem;
      if ([(SFButtonItem *)&v34 isEqual:equalCopy])
      {
        v6 = equalCopy;
        watchListItem = [(SFPlayWatchListItemButtonItem *)self watchListItem];
        watchListItem2 = [(SFPlayWatchListItemButtonItem *)v6 watchListItem];
        if ((watchListItem != 0) == (watchListItem2 == 0))
        {
          v11 = 0;
LABEL_34:

          goto LABEL_35;
        }

        watchListItem3 = [(SFPlayWatchListItemButtonItem *)self watchListItem];
        if (watchListItem3)
        {
          watchListItem4 = [(SFPlayWatchListItemButtonItem *)self watchListItem];
          watchListItem5 = [(SFPlayWatchListItemButtonItem *)v6 watchListItem];
          if (![watchListItem4 isEqual:watchListItem5])
          {
            v11 = 0;
            goto LABEL_32;
          }

          v33 = watchListItem4;
        }

        title = [(SFPlayWatchListItemButtonItem *)self title];
        title2 = [(SFPlayWatchListItemButtonItem *)v6 title];
        v14 = title2;
        if ((title != 0) == (title2 == 0))
        {

          v11 = 0;
          goto LABEL_31;
        }

        title3 = [(SFPlayWatchListItemButtonItem *)self title];
        if (title3)
        {
          v27 = title;
          title4 = [(SFPlayWatchListItemButtonItem *)self title];
          title5 = [(SFPlayWatchListItemButtonItem *)v6 title];
          v30 = title4;
          if (![title4 isEqual:?])
          {
            v11 = 0;
            title = v27;
            goto LABEL_29;
          }

          v31 = title3;
          v32 = watchListItem5;
          title = v27;
        }

        else
        {
          v31 = 0;
          v32 = watchListItem5;
        }

        image = [(SFPlayWatchListItemButtonItem *)self image];
        image2 = [(SFPlayWatchListItemButtonItem *)v6 image];
        if ((image != 0) == (image2 == 0))
        {

          v11 = 0;
          title3 = v31;
          watchListItem5 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = image2;
        v26 = image;
        [(SFPlayWatchListItemButtonItem *)self image];
        v28 = title3 = v31;
        if (v28)
        {
          image3 = [(SFPlayWatchListItemButtonItem *)self image];
          image4 = [(SFPlayWatchListItemButtonItem *)v6 image];
          v24 = image3;
          v20 = [image3 isEqual:?];
          watchListItem5 = v32;
          if (!v20)
          {
            v11 = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              watchListItem4 = v33;
              if (!watchListItem3)
              {
LABEL_33:

                goto LABEL_34;
              }

LABEL_32:

              goto LABEL_33;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        else
        {
          watchListItem5 = v32;
        }

        uniqueId = [(SFButtonItem *)self uniqueId];
        v11 = uniqueId == [(SFButtonItem *)v6 uniqueId];
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v11 = 0;
  }

LABEL_35:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFPlayWatchListItemButtonItem;
  v4 = [(SFButtonItem *)&v12 copyWithZone:zone];
  watchListItem = [(SFPlayWatchListItemButtonItem *)self watchListItem];
  v6 = [watchListItem copy];
  [v4 setWatchListItem:v6];

  title = [(SFPlayWatchListItemButtonItem *)self title];
  v8 = [title copy];
  [v4 setTitle:v8];

  image = [(SFPlayWatchListItemButtonItem *)self image];
  v10 = [image copy];
  [v4 setImage:v10];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithFacade:self];
  jsonData = [(_SFPBPlayWatchListItemButtonItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPlayWatchListItemButtonItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithFacade:self];
  data = [(_SFPBPlayWatchListItemButtonItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPlayWatchListItemButtonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithData:v5];
  v7 = [(SFPlayWatchListItemButtonItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFPlayWatchListItemButtonItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v18.receiver = self;
  v18.super_class = SFPlayWatchListItemButtonItem;
  v5 = [(SFPlayWatchListItemButtonItem *)&v18 init];
  if (v5)
  {
    watchListItem = [protobufCopy watchListItem];

    if (watchListItem)
    {
      v7 = [SFWatchListItem alloc];
      watchListItem2 = [protobufCopy watchListItem];
      v9 = [(SFWatchListItem *)v7 initWithProtobuf:watchListItem2];
      [(SFPlayWatchListItemButtonItem *)v5 setWatchListItem:v9];
    }

    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFPlayWatchListItemButtonItem *)v5 setTitle:title2];
    }

    image = [protobufCopy image];

    if (image)
    {
      v13 = [SFImage alloc];
      image2 = [protobufCopy image];
      v15 = [(SFImage *)v13 initWithProtobuf:image2];
      [(SFPlayWatchListItemButtonItem *)v5 setImage:v15];
    }

    if ([protobufCopy uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [protobufCopy uniqueId]);
    }

    v16 = v5;
  }

  return v5;
}

@end