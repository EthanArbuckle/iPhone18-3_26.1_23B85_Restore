@interface SFMonogramImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMonogramImage)initWithCoder:(id)a3;
- (SFMonogramImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMonogramImage

- (SFMonogramImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFMonogramImage;
  v5 = [(SFMonogramImage *)&v10 init];
  if (v5)
  {
    v6 = [v4 monogramLetters];

    if (v6)
    {
      v7 = [v4 monogramLetters];
      [(SFMonogramImage *)v5 setMonogramLetters:v7];
    }

    if ([v4 monogramStyle])
    {
      -[SFMonogramImage setMonogramStyle:](v5, "setMonogramStyle:", [v4 monogramStyle]);
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFMonogramImage;
  v3 = [(SFImage *)&v8 hash];
  v4 = [(SFMonogramImage *)self monogramLetters];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFMonogramImage *)self monogramStyle];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFMonogramImage *)v6 isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFMonogramImage;
      if ([(SFImage *)&v14 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFMonogramImage *)self monogramLetters];
        v9 = [(SFMonogramImage *)v7 monogramLetters];
        if ((v8 != 0) == (v9 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        v10 = [(SFMonogramImage *)self monogramLetters];
        if (!v10 || (-[SFMonogramImage monogramLetters](self, "monogramLetters"), v3 = objc_claimAutoreleasedReturnValue(), -[SFMonogramImage monogramLetters](v7, "monogramLetters"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(SFMonogramImage *)self monogramStyle];
          v11 = v12 == [(SFMonogramImage *)v7 monogramStyle];
          if (!v10)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_13;
      }
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFMonogramImage;
  v4 = [(SFImage *)&v8 copyWithZone:a3];
  v5 = [(SFMonogramImage *)self monogramLetters];
  v6 = [v5 copy];
  [v4 setMonogramLetters:v6];

  [v4 setMonogramStyle:{-[SFMonogramImage monogramStyle](self, "monogramStyle")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMonogramImage alloc] initWithFacade:self];
  v3 = [(_SFPBMonogramImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMonogramImage alloc] initWithFacade:self];
  v3 = [(_SFPBMonogramImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFMonogramImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFMonogramImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

@end