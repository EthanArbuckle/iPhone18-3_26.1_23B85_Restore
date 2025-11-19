@interface SFSportsFollowButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSportsFollowButtonItem)initWithCoder:(id)a3;
- (SFSportsFollowButtonItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSportsFollowButtonItem

- (SFSportsFollowButtonItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SFSportsFollowButtonItem;
  v5 = [(SFSportsFollowButtonItem *)&v18 init];
  if (v5)
  {
    v6 = [v4 sportsItem];

    if (v6)
    {
      v7 = [SFSportsItem alloc];
      v8 = [v4 sportsItem];
      v9 = [(SFSportsItem *)v7 initWithProtobuf:v8];
      [(SFSportsFollowButtonItem *)v5 setSportsItem:v9];
    }

    v10 = [v4 toggleButtonConfiguration];

    if (v10)
    {
      v11 = [SFToggleButtonConfiguration alloc];
      v12 = [v4 toggleButtonConfiguration];
      v13 = [(SFToggleButtonConfiguration *)v11 initWithProtobuf:v12];
      [(SFSportsFollowButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    v14 = [v4 fallbackTitle];

    if (v14)
    {
      v15 = [v4 fallbackTitle];
      [(SFSportsFollowButtonItem *)v5 setFallbackTitle:v15];
    }

    if ([v4 uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v16 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFSportsFollowButtonItem;
  v3 = [(SFButtonItem *)&v12 hash];
  v4 = [(SFSportsFollowButtonItem *)self sportsItem];
  v5 = [v4 hash];
  v6 = [(SFSportsFollowButtonItem *)self toggleButtonConfiguration];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFSportsFollowButtonItem *)self fallbackTitle];
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
    if ([(SFSportsFollowButtonItem *)v5 isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFSportsFollowButtonItem;
      if ([(SFButtonItem *)&v34 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFSportsFollowButtonItem *)self sportsItem];
        v8 = [(SFSportsFollowButtonItem *)v6 sportsItem];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v9 = [(SFSportsFollowButtonItem *)self sportsItem];
        if (v9)
        {
          v10 = [(SFSportsFollowButtonItem *)self sportsItem];
          v3 = [(SFSportsFollowButtonItem *)v6 sportsItem];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_32;
          }

          v33 = v10;
        }

        v12 = [(SFSportsFollowButtonItem *)self toggleButtonConfiguration];
        v13 = [(SFSportsFollowButtonItem *)v6 toggleButtonConfiguration];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_31;
        }

        v15 = [(SFSportsFollowButtonItem *)self toggleButtonConfiguration];
        if (v15)
        {
          v27 = v12;
          v16 = [(SFSportsFollowButtonItem *)self toggleButtonConfiguration];
          v29 = [(SFSportsFollowButtonItem *)v6 toggleButtonConfiguration];
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

        v17 = [(SFSportsFollowButtonItem *)self fallbackTitle];
        v18 = [(SFSportsFollowButtonItem *)v6 fallbackTitle];
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
        [(SFSportsFollowButtonItem *)self fallbackTitle];
        v28 = v15 = v31;
        if (v28)
        {
          v19 = [(SFSportsFollowButtonItem *)self fallbackTitle];
          v23 = [(SFSportsFollowButtonItem *)v6 fallbackTitle];
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
  v12.super_class = SFSportsFollowButtonItem;
  v4 = [(SFButtonItem *)&v12 copyWithZone:a3];
  v5 = [(SFSportsFollowButtonItem *)self sportsItem];
  v6 = [v5 copy];
  [v4 setSportsItem:v6];

  v7 = [(SFSportsFollowButtonItem *)self toggleButtonConfiguration];
  v8 = [v7 copy];
  [v4 setToggleButtonConfiguration:v8];

  v9 = [(SFSportsFollowButtonItem *)self fallbackTitle];
  v10 = [v9 copy];
  [v4 setFallbackTitle:v10];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSportsFollowButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBSportsFollowButtonItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSportsFollowButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBSportsFollowButtonItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBSportsFollowButtonItem alloc] initWithFacade:self];
  v5 = [(_SFPBSportsFollowButtonItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFSportsFollowButtonItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSportsFollowButtonItem alloc] initWithData:v5];
  v7 = [(SFSportsFollowButtonItem *)self initWithProtobuf:v6];

  return v7;
}

@end