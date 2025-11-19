@interface SFImageOption
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFImageOption)initWithCoder:(id)a3;
- (SFImageOption)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFImageOption

- (SFImageOption)initWithProtobuf:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFImageOption;
  v5 = [(SFImageOption *)&v15 init];
  if (v5)
  {
    v6 = [v4 name];

    if (v6)
    {
      v7 = [v4 name];
      [(SFImageOption *)v5 setName:v7];
    }

    v8 = [v4 defaultValue];

    if (v8)
    {
      v9 = [v4 defaultValue];
      [(SFImageOption *)v5 setDefaultValue:v9];
    }

    v10 = [v4 options];

    if (v10)
    {
      v11 = [v4 options];
      v12 = _SFPBStringDictionaryHandwrittenTranslator(v11);
      [(SFImageOption *)v5 setOptions:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFImageOption *)self name];
  v4 = [v3 hash];
  v5 = [(SFImageOption *)self defaultValue];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFImageOption *)self options];
  v8 = [v7 hash];

  return v6 ^ v8;
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
    if ([(SFImageOption *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFImageOption *)self name];
      v8 = [(SFImageOption *)v6 name];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(SFImageOption *)self name];
      if (v9)
      {
        v3 = [(SFImageOption *)self name];
        v10 = [(SFImageOption *)v6 name];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(SFImageOption *)self defaultValue];
      v13 = [(SFImageOption *)v6 defaultValue];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(SFImageOption *)self defaultValue];
      if (v15)
      {
        v25 = v12;
        v16 = [(SFImageOption *)self defaultValue];
        v27 = [(SFImageOption *)v6 defaultValue];
        v28 = v16;
        if (![v16 isEqual:?])
        {
          v11 = 0;
          v12 = v25;
          goto LABEL_25;
        }

        v29 = v15;
        v30 = v3;
        v12 = v25;
      }

      else
      {
        v29 = 0;
        v30 = v3;
      }

      v17 = [(SFImageOption *)self options];
      v18 = [(SFImageOption *)v6 options];
      if ((v17 != 0) == (v18 == 0))
      {

        v11 = 0;
        v15 = v29;
        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = v17;
        v26 = v18;
        v19 = [(SFImageOption *)self options];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(SFImageOption *)self options];
          v20 = [(SFImageOption *)v6 options];
          v11 = [v22 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      v10 = v31;
      if (!v9)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFImageOption *)self name];
  v6 = [v5 copy];
  [v4 setName:v6];

  v7 = [(SFImageOption *)self defaultValue];
  v8 = [v7 copy];
  [v4 setDefaultValue:v8];

  v9 = [(SFImageOption *)self options];
  v10 = [v9 copy];
  [v4 setOptions:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBImageOption alloc] initWithFacade:self];
  v3 = [(_SFPBImageOption *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBImageOption alloc] initWithFacade:self];
  v3 = [(_SFPBImageOption *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImageOption alloc] initWithFacade:self];
  v5 = [(_SFPBImageOption *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFImageOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImageOption alloc] initWithData:v5];
  v7 = [(SFImageOption *)self initWithProtobuf:v6];

  return v7;
}

@end