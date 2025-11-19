@interface SFAppLink
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAppLink)initWithCoder:(id)a3;
- (SFAppLink)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAppLink

- (SFAppLink)initWithProtobuf:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SFAppLink;
  v5 = [(SFAppLink *)&v18 init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(SFAppLink *)v5 setTitle:v7];
    }

    v8 = [v4 appPunchout];

    if (v8)
    {
      v9 = [SFPunchout alloc];
      v10 = [v4 appPunchout];
      v11 = [(SFPunchout *)v9 initWithProtobuf:v10];
      [(SFAppLink *)v5 setAppPunchout:v11];
    }

    v12 = [v4 image];

    if (v12)
    {
      v13 = [SFImage alloc];
      v14 = [v4 image];
      v15 = [(SFImage *)v13 initWithProtobuf:v14];
      [(SFAppLink *)v5 setImage:v15];
    }

    if ([v4 imageAlign])
    {
      -[SFAppLink setImageAlign:](v5, "setImageAlign:", [v4 imageAlign]);
    }

    v16 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFAppLink *)self title];
  v4 = [v3 hash];
  v5 = [(SFAppLink *)self appPunchout];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFAppLink *)self image];
  v8 = [v7 hash];
  v9 = v8 ^ [(SFAppLink *)self imageAlign];

  return v6 ^ v9;
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
    if ([(SFAppLink *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFAppLink *)self title];
      v8 = [(SFAppLink *)v6 title];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v9 = [(SFAppLink *)self title];
      if (v9)
      {
        v10 = [(SFAppLink *)self title];
        v3 = [(SFAppLink *)v6 title];
        if (![v10 isEqual:v3])
        {
          v11 = 0;
          goto LABEL_31;
        }

        v33 = v10;
      }

      v12 = [(SFAppLink *)self appPunchout];
      v13 = [(SFAppLink *)v6 appPunchout];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_30;
      }

      v15 = [(SFAppLink *)self appPunchout];
      if (v15)
      {
        v27 = v12;
        v16 = [(SFAppLink *)self appPunchout];
        v29 = [(SFAppLink *)v6 appPunchout];
        v30 = v16;
        if (![v16 isEqual:?])
        {
          v11 = 0;
          v12 = v27;
          goto LABEL_28;
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

      v17 = [(SFAppLink *)self image];
      v18 = [(SFAppLink *)v6 image];
      if ((v17 != 0) == (v18 == 0))
      {

        v11 = 0;
        v15 = v31;
        v3 = v32;
        if (!v31)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v25 = v18;
      v26 = v17;
      [(SFAppLink *)self image];
      v28 = v15 = v31;
      if (v28)
      {
        v19 = [(SFAppLink *)self image];
        v23 = [(SFAppLink *)v6 image];
        v24 = v19;
        v20 = [v19 isEqual:?];
        v3 = v32;
        if (!v20)
        {
          v11 = 0;
LABEL_26:

LABEL_27:
          if (!v31)
          {
LABEL_29:

LABEL_30:
            v10 = v33;
            if (!v9)
            {
LABEL_32:

              goto LABEL_33;
            }

LABEL_31:

            goto LABEL_32;
          }

LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
        v3 = v32;
      }

      v21 = [(SFAppLink *)self imageAlign];
      v11 = v21 == [(SFAppLink *)v6 imageAlign];
      if (!v28)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v11 = 0;
  }

LABEL_34:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFAppLink *)self title];
  v6 = [v5 copy];
  [v4 setTitle:v6];

  v7 = [(SFAppLink *)self appPunchout];
  v8 = [v7 copy];
  [v4 setAppPunchout:v8];

  v9 = [(SFAppLink *)self image];
  v10 = [v9 copy];
  [v4 setImage:v10];

  [v4 setImageAlign:{-[SFAppLink imageAlign](self, "imageAlign")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAppLink alloc] initWithFacade:self];
  v3 = [(_SFPBAppLink *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAppLink alloc] initWithFacade:self];
  v3 = [(_SFPBAppLink *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBAppLink alloc] initWithFacade:self];
  v5 = [(_SFPBAppLink *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFAppLink)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAppLink alloc] initWithData:v5];
  v7 = [(SFAppLink *)self initWithProtobuf:v6];

  return v7;
}

@end