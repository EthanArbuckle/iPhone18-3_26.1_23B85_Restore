@interface SFMediaOffer
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaOffer)initWithCoder:(id)a3;
- (SFMediaOffer)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMediaOffer

- (SFMediaOffer)initWithProtobuf:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SFMediaOffer;
  v5 = [(SFMediaOffer *)&v20 init];
  if (v5)
  {
    v6 = [v4 actionItem];

    if (v6)
    {
      v7 = [SFActionItem alloc];
      v8 = [v4 actionItem];
      v9 = [(SFActionItem *)v7 initWithProtobuf:v8];
      [(SFMediaOffer *)v5 setActionItem:v9];
    }

    v10 = [v4 sublabel];

    if (v10)
    {
      v11 = [v4 sublabel];
      [(SFMediaOffer *)v5 setSublabel:v11];
    }

    v12 = [v4 offerIdentifier];

    if (v12)
    {
      v13 = [v4 offerIdentifier];
      [(SFMediaOffer *)v5 setOfferIdentifier:v13];
    }

    if ([v4 isEnabled])
    {
      -[SFMediaOffer setIsEnabled:](v5, "setIsEnabled:", [v4 isEnabled]);
    }

    v14 = [v4 image];

    if (v14)
    {
      v15 = [SFImage alloc];
      v16 = [v4 image];
      v17 = [(SFImage *)v15 initWithProtobuf:v16];
      [(SFMediaOffer *)v5 setImage:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = SFMediaOffer;
  v3 = [(SFActionItem *)&v14 hash];
  v4 = [(SFMediaOffer *)self actionItem];
  v5 = [v4 hash];
  v6 = [(SFMediaOffer *)self sublabel];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFMediaOffer *)self offerIdentifier];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFMediaOffer *)self isEnabled];
  v11 = [(SFMediaOffer *)self image];
  v12 = v10 ^ [v11 hash];

  return v12 ^ v3;
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
    if ([(SFMediaOffer *)v5 isMemberOfClass:objc_opt_class()])
    {
      v44.receiver = self;
      v44.super_class = SFMediaOffer;
      if ([(SFActionItem *)&v44 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFMediaOffer *)self actionItem];
        v8 = [(SFMediaOffer *)v6 actionItem];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_40:

          goto LABEL_41;
        }

        v9 = [(SFMediaOffer *)self actionItem];
        if (v9)
        {
          v10 = [(SFMediaOffer *)self actionItem];
          v3 = [(SFMediaOffer *)v6 actionItem];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_38;
          }

          v43 = v10;
        }

        v12 = [(SFMediaOffer *)self sublabel];
        v13 = [(SFMediaOffer *)v6 sublabel];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_37;
        }

        v15 = [(SFMediaOffer *)self sublabel];
        if (v15)
        {
          v36 = v9;
          v16 = v14;
          v17 = v12;
          v18 = [(SFMediaOffer *)self sublabel];
          v38 = [(SFMediaOffer *)v6 sublabel];
          v39 = v18;
          if (![v18 isEqual:?])
          {
            v11 = 0;
            v12 = v17;
            v14 = v16;
            v9 = v36;
            goto LABEL_35;
          }

          v40 = v3;
          v42 = v15;
          v12 = v17;
          v14 = v16;
          v9 = v36;
        }

        else
        {
          v40 = v3;
          v42 = 0;
        }

        v19 = [(SFMediaOffer *)self offerIdentifier];
        v20 = [(SFMediaOffer *)v6 offerIdentifier];
        if ((v19 != 0) == (v20 == 0))
        {

          v11 = 0;
          v3 = v40;
          v15 = v42;
          if (!v42)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v34 = v20;
        v35 = v19;
        [(SFMediaOffer *)self offerIdentifier];
        v37 = v15 = v42;
        if (v37)
        {
          v21 = [(SFMediaOffer *)self offerIdentifier];
          v32 = [(SFMediaOffer *)v6 offerIdentifier];
          v33 = v21;
          v22 = [v21 isEqual:?];
          v3 = v40;
          if (!v22)
          {
            v11 = 0;
LABEL_33:

LABEL_34:
            if (!v15)
            {
LABEL_36:

LABEL_37:
              v10 = v43;
              if (!v9)
              {
LABEL_39:

                goto LABEL_40;
              }

LABEL_38:

              goto LABEL_39;
            }

LABEL_35:

            goto LABEL_36;
          }
        }

        else
        {
          v3 = v40;
        }

        v23 = [(SFMediaOffer *)self isEnabled];
        if (v23 == [(SFMediaOffer *)v6 isEnabled])
        {
          v24 = [(SFMediaOffer *)self image];
          v25 = [(SFMediaOffer *)v6 image];
          if ((v24 != 0) != (v25 == 0))
          {
            v31 = v25;
            v41 = v24;
            v26 = [(SFMediaOffer *)self image];
            if (v26)
            {
              v30 = v26;
              v29 = [(SFMediaOffer *)self image];
              v27 = [(SFMediaOffer *)v6 image];
              v11 = [v29 isEqual:v27];
            }

            else
            {

              v11 = 1;
            }

LABEL_32:
            v15 = v42;
            if (!v37)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }
        }

        v11 = 0;
        goto LABEL_32;
      }
    }

    v11 = 0;
  }

LABEL_41:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = SFMediaOffer;
  v4 = [(SFActionItem *)&v14 copyWithZone:a3];
  v5 = [(SFMediaOffer *)self actionItem];
  v6 = [v5 copy];
  [v4 setActionItem:v6];

  v7 = [(SFMediaOffer *)self sublabel];
  v8 = [v7 copy];
  [v4 setSublabel:v8];

  v9 = [(SFMediaOffer *)self offerIdentifier];
  v10 = [v9 copy];
  [v4 setOfferIdentifier:v10];

  [v4 setIsEnabled:{-[SFMediaOffer isEnabled](self, "isEnabled")}];
  v11 = [(SFMediaOffer *)self image];
  v12 = [v11 copy];
  [v4 setImage:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaOffer alloc] initWithFacade:self];
  v3 = [(_SFPBMediaOffer *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaOffer alloc] initWithFacade:self];
  v3 = [(_SFPBMediaOffer *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBMediaOffer alloc] initWithFacade:self];
  v5 = [(_SFPBMediaOffer *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFMediaOffer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMediaOffer alloc] initWithData:v5];
  v7 = [(SFMediaOffer *)self initWithProtobuf:v6];

  return v7;
}

@end