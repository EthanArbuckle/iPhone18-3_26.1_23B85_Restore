@interface SFPlayWatchListItemButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPlayWatchListItemButtonItem)initWithCoder:(id)a3;
- (SFPlayWatchListItemButtonItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPlayWatchListItemButtonItem

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFPlayWatchListItemButtonItem;
  v3 = [(SFButtonItem *)&v12 hash];
  v4 = [(SFPlayWatchListItemButtonItem *)self watchListItem];
  v5 = [v4 hash];
  v6 = [(SFPlayWatchListItemButtonItem *)self title];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFPlayWatchListItemButtonItem *)self image];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFButtonItem *)self uniqueId];

  return v10 ^ v3;
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
    if ([(SFPlayWatchListItemButtonItem *)v5 isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFPlayWatchListItemButtonItem;
      if ([(SFButtonItem *)&v34 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFPlayWatchListItemButtonItem *)self watchListItem];
        v8 = [(SFPlayWatchListItemButtonItem *)v6 watchListItem];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v9 = [(SFPlayWatchListItemButtonItem *)self watchListItem];
        if (v9)
        {
          v10 = [(SFPlayWatchListItemButtonItem *)self watchListItem];
          v3 = [(SFPlayWatchListItemButtonItem *)v6 watchListItem];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_32;
          }

          v33 = v10;
        }

        v12 = [(SFPlayWatchListItemButtonItem *)self title];
        v13 = [(SFPlayWatchListItemButtonItem *)v6 title];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_31;
        }

        v15 = [(SFPlayWatchListItemButtonItem *)self title];
        if (v15)
        {
          v27 = v12;
          v16 = [(SFPlayWatchListItemButtonItem *)self title];
          v29 = [(SFPlayWatchListItemButtonItem *)v6 title];
          v30 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v12 = v27;
            goto LABEL_29;
          }

          v31 = v15;
          v32 = v3;
          v12 = v27;
        }

        else
        {
          v31 = 0;
          v32 = v3;
        }

        v17 = [(SFPlayWatchListItemButtonItem *)self image];
        v18 = [(SFPlayWatchListItemButtonItem *)v6 image];
        if ((v17 != 0) == (v18 == 0))
        {

          v11 = 0;
          v15 = v31;
          v3 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = v18;
        v26 = v17;
        [(SFPlayWatchListItemButtonItem *)self image];
        v28 = v15 = v31;
        if (v28)
        {
          v19 = [(SFPlayWatchListItemButtonItem *)self image];
          v23 = [(SFPlayWatchListItemButtonItem *)v6 image];
          v24 = v19;
          v20 = [v19 isEqual:?];
          v3 = v32;
          if (!v20)
          {
            v11 = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              v10 = v33;
              if (!v9)
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
          v3 = v32;
        }

        v21 = [(SFButtonItem *)self uniqueId];
        v11 = v21 == [(SFButtonItem *)v6 uniqueId];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFPlayWatchListItemButtonItem;
  v4 = [(SFButtonItem *)&v12 copyWithZone:a3];
  v5 = [(SFPlayWatchListItemButtonItem *)self watchListItem];
  v6 = [v5 copy];
  [v4 setWatchListItem:v6];

  v7 = [(SFPlayWatchListItemButtonItem *)self title];
  v8 = [v7 copy];
  [v4 setTitle:v8];

  v9 = [(SFPlayWatchListItemButtonItem *)self image];
  v10 = [v9 copy];
  [v4 setImage:v10];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBPlayWatchListItemButtonItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBPlayWatchListItemButtonItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithFacade:self];
  v5 = [(_SFPBPlayWatchListItemButtonItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPlayWatchListItemButtonItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithData:v5];
  v7 = [(SFPlayWatchListItemButtonItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFPlayWatchListItemButtonItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SFPlayWatchListItemButtonItem;
  v5 = [(SFPlayWatchListItemButtonItem *)&v18 init];
  if (v5)
  {
    v6 = [v4 watchListItem];

    if (v6)
    {
      v7 = [SFWatchListItem alloc];
      v8 = [v4 watchListItem];
      v9 = [(SFWatchListItem *)v7 initWithProtobuf:v8];
      [(SFPlayWatchListItemButtonItem *)v5 setWatchListItem:v9];
    }

    v10 = [v4 title];

    if (v10)
    {
      v11 = [v4 title];
      [(SFPlayWatchListItemButtonItem *)v5 setTitle:v11];
    }

    v12 = [v4 image];

    if (v12)
    {
      v13 = [SFImage alloc];
      v14 = [v4 image];
      v15 = [(SFImage *)v13 initWithProtobuf:v14];
      [(SFPlayWatchListItemButtonItem *)v5 setImage:v15];
    }

    if ([v4 uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v16 = v5;
  }

  return v5;
}

@end