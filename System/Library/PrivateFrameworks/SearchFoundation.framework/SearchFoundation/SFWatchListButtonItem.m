@interface SFWatchListButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFWatchListButtonItem)initWithCoder:(id)a3;
- (SFWatchListButtonItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFWatchListButtonItem

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = SFWatchListButtonItem;
  v3 = [(SFButtonItem *)&v10 hash];
  v4 = [(SFWatchListButtonItem *)self watchListItem];
  v5 = [v4 hash];
  v6 = [(SFWatchListButtonItem *)self toggleButtonConfiguration];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(SFButtonItem *)self uniqueId];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFWatchListButtonItem *)v5 isMemberOfClass:objc_opt_class()])
    {
      v23.receiver = self;
      v23.super_class = SFWatchListButtonItem;
      if ([(SFButtonItem *)&v23 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFWatchListButtonItem *)self watchListItem];
        v8 = [(SFWatchListButtonItem *)v6 watchListItem];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_25:

          goto LABEL_26;
        }

        v9 = [(SFWatchListButtonItem *)self watchListItem];
        if (v9)
        {
          v10 = [(SFWatchListButtonItem *)self watchListItem];
          v3 = [(SFWatchListButtonItem *)v6 watchListItem];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_23;
          }

          v22 = v10;
        }

        v12 = [(SFWatchListButtonItem *)self toggleButtonConfiguration];
        v13 = [(SFWatchListButtonItem *)v6 toggleButtonConfiguration];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_22;
        }

        v15 = [(SFWatchListButtonItem *)self toggleButtonConfiguration];
        if (v15)
        {
          v19 = v3;
          v16 = [(SFWatchListButtonItem *)self toggleButtonConfiguration];
          v20 = [(SFWatchListButtonItem *)v6 toggleButtonConfiguration];
          v21 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v3 = v19;
LABEL_20:

LABEL_21:
LABEL_22:
            v10 = v22;
            if (!v9)
            {
LABEL_24:

              goto LABEL_25;
            }

LABEL_23:

            goto LABEL_24;
          }

          v3 = v19;
        }

        v17 = [(SFButtonItem *)self uniqueId];
        v11 = v17 == [(SFButtonItem *)v6 uniqueId];
        if (!v15)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SFWatchListButtonItem;
  v4 = [(SFButtonItem *)&v10 copyWithZone:a3];
  v5 = [(SFWatchListButtonItem *)self watchListItem];
  v6 = [v5 copy];
  [v4 setWatchListItem:v6];

  v7 = [(SFWatchListButtonItem *)self toggleButtonConfiguration];
  v8 = [v7 copy];
  [v4 setToggleButtonConfiguration:v8];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBWatchListButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBWatchListButtonItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBWatchListButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBWatchListButtonItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBWatchListButtonItem alloc] initWithFacade:self];
  v5 = [(_SFPBWatchListButtonItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFWatchListButtonItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBWatchListButtonItem alloc] initWithData:v5];
  v7 = [(SFWatchListButtonItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFWatchListButtonItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFWatchListButtonItem;
  v5 = [(SFWatchListButtonItem *)&v16 init];
  if (v5)
  {
    v6 = [v4 watchListItem];

    if (v6)
    {
      v7 = [SFWatchListItem alloc];
      v8 = [v4 watchListItem];
      v9 = [(SFWatchListItem *)v7 initWithProtobuf:v8];
      [(SFWatchListButtonItem *)v5 setWatchListItem:v9];
    }

    v10 = [v4 toggleButtonConfiguration];

    if (v10)
    {
      v11 = [SFToggleButtonConfiguration alloc];
      v12 = [v4 toggleButtonConfiguration];
      v13 = [(SFToggleButtonConfiguration *)v11 initWithProtobuf:v12];
      [(SFWatchListButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    if ([v4 uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v14 = v5;
  }

  return v5;
}

@end