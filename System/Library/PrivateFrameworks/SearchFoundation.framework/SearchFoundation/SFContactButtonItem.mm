@interface SFContactButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFContactButtonItem)initWithCoder:(id)a3;
- (SFContactButtonItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFContactButtonItem

- (SFContactButtonItem)initWithProtobuf:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SFContactButtonItem;
  v5 = [(SFContactButtonItem *)&v26 init];
  if (v5)
  {
    v6 = [v4 contactIdentifier];

    if (v6)
    {
      v7 = [v4 contactIdentifier];
      [(SFContactButtonItem *)v5 setContactIdentifier:v7];
    }

    v8 = [v4 person];

    if (v8)
    {
      v9 = [SFPerson alloc];
      v10 = [v4 person];
      v11 = [(SFPerson *)v9 initWithProtobuf:v10];
      [(SFContactButtonItem *)v5 setPerson:v11];
    }

    v12 = [v4 actionTypesToShows];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v13 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [v4 actionTypesToShows];
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if (*(*(&v22 + 1) + 8 * i))
          {
            [v13 addObject:?];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v16);
    }

    [(SFContactButtonItem *)v5 setActionTypesToShow:v13];
    if ([v4 uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFContactButtonItem;
  v3 = [(SFButtonItem *)&v12 hash];
  v4 = [(SFContactButtonItem *)self contactIdentifier];
  v5 = [v4 hash];
  v6 = [(SFContactButtonItem *)self person];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFContactButtonItem *)self actionTypesToShow];
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
    if ([(SFContactButtonItem *)v5 isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFContactButtonItem;
      if ([(SFButtonItem *)&v34 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFContactButtonItem *)self contactIdentifier];
        v8 = [(SFContactButtonItem *)v6 contactIdentifier];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v9 = [(SFContactButtonItem *)self contactIdentifier];
        if (v9)
        {
          v10 = [(SFContactButtonItem *)self contactIdentifier];
          v3 = [(SFContactButtonItem *)v6 contactIdentifier];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_32;
          }

          v33 = v10;
        }

        v12 = [(SFContactButtonItem *)self person];
        v13 = [(SFContactButtonItem *)v6 person];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_31;
        }

        v15 = [(SFContactButtonItem *)self person];
        if (v15)
        {
          v27 = v12;
          v16 = [(SFContactButtonItem *)self person];
          v29 = [(SFContactButtonItem *)v6 person];
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

        v17 = [(SFContactButtonItem *)self actionTypesToShow];
        v18 = [(SFContactButtonItem *)v6 actionTypesToShow];
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
        [(SFContactButtonItem *)self actionTypesToShow];
        v28 = v15 = v31;
        if (v28)
        {
          v19 = [(SFContactButtonItem *)self actionTypesToShow];
          v23 = [(SFContactButtonItem *)v6 actionTypesToShow];
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
  v12.super_class = SFContactButtonItem;
  v4 = [(SFButtonItem *)&v12 copyWithZone:a3];
  v5 = [(SFContactButtonItem *)self contactIdentifier];
  v6 = [v5 copy];
  [v4 setContactIdentifier:v6];

  v7 = [(SFContactButtonItem *)self person];
  v8 = [v7 copy];
  [v4 setPerson:v8];

  v9 = [(SFContactButtonItem *)self actionTypesToShow];
  v10 = [v9 copy];
  [v4 setActionTypesToShow:v10];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBContactButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBContactButtonItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBContactButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBContactButtonItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBContactButtonItem alloc] initWithFacade:self];
  v5 = [(_SFPBContactButtonItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFContactButtonItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBContactButtonItem alloc] initWithData:v5];
  v7 = [(SFContactButtonItem *)self initWithProtobuf:v6];

  return v7;
}

@end