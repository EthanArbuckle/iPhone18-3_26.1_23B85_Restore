@interface SFButton
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFButton)initWithCoder:(id)a3;
- (SFButton)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFButton

- (SFButton)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFButton;
  v5 = [(SFButton *)&v16 init];
  if (v5)
  {
    v6 = [v4 image];

    if (v6)
    {
      v7 = [SFImage alloc];
      v8 = [v4 image];
      v9 = [(SFImage *)v7 initWithProtobuf:v8];
      [(SFButton *)v5 setImage:v9];
    }

    v10 = [v4 selectedImage];

    if (v10)
    {
      v11 = [SFImage alloc];
      v12 = [v4 selectedImage];
      v13 = [(SFImage *)v11 initWithProtobuf:v12];
      [(SFButton *)v5 setSelectedImage:v13];
    }

    if ([v4 isSelected])
    {
      -[SFButton setIsSelected:](v5, "setIsSelected:", [v4 isSelected]);
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFButton *)self image];
  v4 = [v3 hash];
  v5 = [(SFButton *)self selectedImage];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFButton *)self isSelected];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFButton *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFButton *)self image];
      v8 = [(SFButton *)v6 image];
      if ((v7 != 0) == (v8 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_24:

        goto LABEL_25;
      }

      v9 = [(SFButton *)self image];
      if (v9)
      {
        v10 = [(SFButton *)self image];
        v3 = [(SFButton *)v6 image];
        if (![v10 isEqual:v3])
        {
          LOBYTE(v11) = 0;
          goto LABEL_22;
        }

        v22 = v10;
      }

      v12 = [(SFButton *)self selectedImage];
      v13 = [(SFButton *)v6 selectedImage];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        LOBYTE(v11) = 0;
        goto LABEL_21;
      }

      v15 = [(SFButton *)self selectedImage];
      if (v15)
      {
        v19 = v3;
        v16 = [(SFButton *)self selectedImage];
        v20 = [(SFButton *)v6 selectedImage];
        v21 = v16;
        if (![v16 isEqual:?])
        {
          LOBYTE(v11) = 0;
          v3 = v19;
LABEL_19:

LABEL_20:
LABEL_21:
          v10 = v22;
          if (!v9)
          {
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_23;
        }

        v3 = v19;
      }

      v17 = [(SFButton *)self isSelected];
      v11 = v17 ^ [(SFButton *)v6 isSelected]^ 1;
      if (!v15)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    LOBYTE(v11) = 0;
  }

LABEL_25:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFButton *)self image];
  v6 = [v5 copy];
  [v4 setImage:v6];

  v7 = [(SFButton *)self selectedImage];
  v8 = [v7 copy];
  [v4 setSelectedImage:v8];

  [v4 setIsSelected:{-[SFButton isSelected](self, "isSelected")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBButton alloc] initWithFacade:self];
  v3 = [(_SFPBButton *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBButton alloc] initWithFacade:self];
  v3 = [(_SFPBButton *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBButton alloc] initWithFacade:self];
  v5 = [(_SFPBButton *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFButton)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBButton alloc] initWithData:v5];
  v7 = [(SFButton *)self initWithProtobuf:v6];

  return v7;
}

@end