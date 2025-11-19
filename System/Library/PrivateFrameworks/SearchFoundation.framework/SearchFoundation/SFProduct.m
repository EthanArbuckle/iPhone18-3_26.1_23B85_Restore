@interface SFProduct
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFProduct)initWithCoder:(id)a3;
- (SFProduct)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFProduct

- (unint64_t)hash
{
  v3 = [(SFProduct *)self identifier];
  v4 = [v3 hash];
  v5 = [(SFProduct *)self productIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFProduct *)self availabilityURL];
  v8 = [v7 hash];
  v9 = [(SFProduct *)self displayName];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(SFProduct *)self buyable];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    if ([(SFProduct *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(SFProduct *)self identifier];
      v7 = [(SFProduct *)v5 identifier];
      if ((v6 != 0) == (v7 == 0))
      {
        LOBYTE(v10) = 0;
LABEL_37:

        goto LABEL_38;
      }

      v8 = [(SFProduct *)self identifier];
      if (v8)
      {
        v9 = [(SFProduct *)self identifier];
        v40 = [(SFProduct *)v5 identifier];
        if (![v9 isEqual:?])
        {
          LOBYTE(v10) = 0;
          goto LABEL_35;
        }

        v39 = v9;
      }

      v41 = [(SFProduct *)self productIdentifier];
      v11 = [(SFProduct *)v5 productIdentifier];
      if ((v41 != 0) != (v11 == 0))
      {
        v12 = [(SFProduct *)self productIdentifier];
        if (v12)
        {
          v13 = v12;
          v14 = [(SFProduct *)self productIdentifier];
          [(SFProduct *)v5 productIdentifier];
          v38 = v36 = v14;
          if (![v14 isEqual:?])
          {
            LOBYTE(v10) = 0;
            v19 = v38;
            goto LABEL_32;
          }

          v37 = v13;
        }

        else
        {
          v37 = 0;
        }

        v15 = [(SFProduct *)self availabilityURL];
        v16 = [(SFProduct *)v5 availabilityURL];
        if ((v15 != 0) != (v16 == 0))
        {
          v34 = v15;
          v35 = v16;
          v17 = [(SFProduct *)self availabilityURL];
          if (v17)
          {
            v18 = [(SFProduct *)self availabilityURL];
            v32 = [(SFProduct *)v5 availabilityURL];
            v33 = v18;
            if (![v18 isEqual:?])
            {
              LOBYTE(v10) = 0;
              v13 = v37;
              v19 = v38;
              goto LABEL_30;
            }
          }

          v20 = [(SFProduct *)self displayName];
          v21 = v20 != 0;
          v22 = [(SFProduct *)v5 displayName];
          if (v21 == (v22 == 0))
          {

            LOBYTE(v10) = 0;
            v13 = v37;
            v19 = v38;
            if (!v17)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

          v29 = v22;
          v30 = v20;
          [(SFProduct *)self displayName];
          v31 = v19 = v38;
          if (!v31 || (-[SFProduct displayName](self, "displayName"), v23 = objc_claimAutoreleasedReturnValue(), -[SFProduct displayName](v5, "displayName"), v24 = objc_claimAutoreleasedReturnValue(), v28 = v23, v25 = v23, v21 = v24, [v25 isEqual:v24]))
          {
            v27 = [(SFProduct *)self buyable];
            v10 = v27 ^ [(SFProduct *)v5 buyable]^ 1;
            if (!v31)
            {
              goto LABEL_41;
            }
          }

          else
          {
            LOBYTE(v10) = 0;
          }

LABEL_41:
          v13 = v37;
          if (!v17)
          {
LABEL_31:

            if (!v13)
            {
LABEL_33:

LABEL_34:
              v9 = v39;
              if (!v8)
              {
LABEL_36:

                goto LABEL_37;
              }

LABEL_35:

              goto LABEL_36;
            }

LABEL_32:

            goto LABEL_33;
          }

LABEL_30:

          goto LABEL_31;
        }

        if (v37)
        {
        }
      }

      LOBYTE(v10) = 0;
      goto LABEL_34;
    }

    LOBYTE(v10) = 0;
  }

LABEL_38:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFProduct *)self identifier];
  v6 = [v5 copy];
  [v4 setIdentifier:v6];

  v7 = [(SFProduct *)self productIdentifier];
  v8 = [v7 copy];
  [v4 setProductIdentifier:v8];

  v9 = [(SFProduct *)self availabilityURL];
  v10 = [v9 copy];
  [v4 setAvailabilityURL:v10];

  v11 = [(SFProduct *)self displayName];
  v12 = [v11 copy];
  [v4 setDisplayName:v12];

  [v4 setBuyable:{-[SFProduct buyable](self, "buyable")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBProduct alloc] initWithFacade:self];
  v3 = [(_SFPBProduct *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBProduct alloc] initWithFacade:self];
  v3 = [(_SFPBProduct *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBProduct alloc] initWithFacade:self];
  v5 = [(_SFPBProduct *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFProduct)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBProduct alloc] initWithData:v5];
  v7 = [(SFProduct *)self initWithProtobuf:v6];

  return v7;
}

- (SFProduct)initWithProtobuf:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SFProduct;
  v5 = [(SFProduct *)&v17 init];
  if (v5)
  {
    v6 = [v4 identifier];

    if (v6)
    {
      v7 = [v4 identifier];
      [(SFProduct *)v5 setIdentifier:v7];
    }

    v8 = [v4 productIdentifier];

    if (v8)
    {
      v9 = [v4 productIdentifier];
      [(SFProduct *)v5 setProductIdentifier:v9];
    }

    v10 = [v4 availabilityURL];

    if (v10)
    {
      v11 = [v4 availabilityURL];
      v12 = _SFPBURLHandwrittenTranslator(v11);
      [(SFProduct *)v5 setAvailabilityURL:v12];
    }

    v13 = [v4 displayName];

    if (v13)
    {
      v14 = [v4 displayName];
      [(SFProduct *)v5 setDisplayName:v14];
    }

    if ([v4 buyable])
    {
      -[SFProduct setBuyable:](v5, "setBuyable:", [v4 buyable]);
    }

    v15 = v5;
  }

  return v5;
}

@end