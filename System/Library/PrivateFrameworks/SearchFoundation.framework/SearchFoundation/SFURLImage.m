@interface SFURLImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (SFURLImage)initWithCoder:(id)a3;
- (SFURLImage)initWithProtobuf:(id)a3;
- (SFURLImage)initWithURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFURLImage

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFURLImage;
  v3 = [(SFImage *)&v9 hash];
  v4 = [(SFURLImage *)self urlValue];
  v5 = [v4 hash];
  v6 = [(SFURLImage *)self darkUrlValue];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
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
    if ([(SFURLImage *)v5 isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFURLImage;
      if ([(SFImage *)&v22 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFURLImage *)self urlValue];
        v8 = [(SFURLImage *)v6 urlValue];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v9 = [(SFURLImage *)self urlValue];
        if (v9)
        {
          v3 = [(SFURLImage *)self urlValue];
          v10 = [(SFURLImage *)v6 urlValue];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = v10;
        }

        v12 = [(SFURLImage *)self darkUrlValue];
        v13 = [(SFURLImage *)v6 darkUrlValue];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
        }

        else
        {
          v15 = [(SFURLImage *)self darkUrlValue];
          if (v15)
          {
            v16 = v15;
            v19 = [(SFURLImage *)self darkUrlValue];
            [(SFURLImage *)v6 darkUrlValue];
            v17 = v20 = v3;
            v11 = [v19 isEqual:v17];

            v3 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        v10 = v21;
        if (!v9)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SFURLImage;
  v4 = [(SFImage *)&v10 copyWithZone:a3];
  v5 = [(SFURLImage *)self urlValue];
  v6 = [v5 copy];
  [v4 setUrlValue:v6];

  v7 = [(SFURLImage *)self darkUrlValue];
  v8 = [v7 copy];
  [v4 setDarkUrlValue:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBURLImage alloc] initWithFacade:self];
  v3 = [(_SFPBURLImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBURLImage alloc] initWithFacade:self];
  v3 = [(_SFPBURLImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFURLImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFURLImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFURLImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFURLImage;
  v5 = [(SFURLImage *)&v14 init];
  if (v5)
  {
    v6 = [v4 urlValue];

    if (v6)
    {
      v7 = [v4 urlValue];
      v8 = _SFPBURLHandwrittenTranslator(v7);
      [(SFURLImage *)v5 setUrlValue:v8];
    }

    v9 = [v4 darkUrlValue];

    if (v9)
    {
      v10 = [v4 darkUrlValue];
      v11 = _SFPBURLHandwrittenTranslator(v10);
      [(SFURLImage *)v5 setDarkUrlValue:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SFURLImage;
  v4 = [(SFURLImage *)&v9 description];
  v5 = [(SFURLImage *)self urlValue];
  v6 = [v5 absoluteString];
  v7 = [v3 stringWithFormat:@"%@ - %@", v4, v6];

  return v7;
}

- (SFURLImage)initWithURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFURLImage;
  v5 = [(SFURLImage *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SFURLImage *)v5 setUrlValue:v4];
    v7 = v6;
  }

  return v6;
}

@end