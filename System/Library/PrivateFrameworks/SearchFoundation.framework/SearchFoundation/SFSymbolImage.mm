@interface SFSymbolImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSymbolImage)initWithCoder:(id)a3;
- (SFSymbolImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSymbolImage

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFSymbolImage;
  v3 = [(SFImage *)&v12 hash];
  v4 = [(SFSymbolImage *)self symbolName];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFSymbolImage *)self punchThroughBackground];
  v7 = v6 ^ [(SFSymbolImage *)self backgroundColor];
  v8 = v7 ^ [(SFSymbolImage *)self primaryColor]^ v3;
  v9 = [(SFSymbolImage *)self secondaryColor];
  v10 = v9 ^ [(SFSymbolImage *)self fillStyle];

  return v8 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFSymbolImage *)v6 isMemberOfClass:objc_opt_class()])
    {
      v19.receiver = self;
      v19.super_class = SFSymbolImage;
      if ([(SFImage *)&v19 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFSymbolImage *)self symbolName];
        v9 = [(SFSymbolImage *)v7 symbolName];
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v10 = [(SFSymbolImage *)self symbolName];
        if (!v10 || (-[SFSymbolImage symbolName](self, "symbolName"), v3 = objc_claimAutoreleasedReturnValue(), -[SFSymbolImage symbolName](v7, "symbolName"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v13 = [(SFSymbolImage *)self punchThroughBackground];
          if (v13 == [(SFSymbolImage *)v7 punchThroughBackground]&& (v14 = [(SFSymbolImage *)self backgroundColor], v14 == [(SFSymbolImage *)v7 backgroundColor]) && (v15 = [(SFSymbolImage *)self primaryColor], v15 == [(SFSymbolImage *)v7 primaryColor]) && (v16 = [(SFSymbolImage *)self secondaryColor], v16 == [(SFSymbolImage *)v7 secondaryColor]))
          {
            v17 = [(SFSymbolImage *)self fillStyle];
            v11 = v17 == [(SFSymbolImage *)v7 fillStyle];
            v12 = v11;
            if (!v10)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v11 = 0;
            v12 = 0;
            if (!v10)
            {
LABEL_19:

              goto LABEL_20;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        goto LABEL_19;
      }
    }

    v12 = 0;
  }

LABEL_21:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFSymbolImage;
  v4 = [(SFImage *)&v8 copyWithZone:a3];
  v5 = [(SFSymbolImage *)self symbolName];
  v6 = [v5 copy];
  [v4 setSymbolName:v6];

  [v4 setPunchThroughBackground:{-[SFSymbolImage punchThroughBackground](self, "punchThroughBackground")}];
  [v4 setBackgroundColor:{-[SFSymbolImage backgroundColor](self, "backgroundColor")}];
  [v4 setPrimaryColor:{-[SFSymbolImage primaryColor](self, "primaryColor")}];
  [v4 setSecondaryColor:{-[SFSymbolImage secondaryColor](self, "secondaryColor")}];
  [v4 setFillStyle:{-[SFSymbolImage fillStyle](self, "fillStyle")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSymbolImage alloc] initWithFacade:self];
  v3 = [(_SFPBSymbolImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSymbolImage alloc] initWithFacade:self];
  v3 = [(_SFPBSymbolImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFSymbolImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFSymbolImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFSymbolImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFSymbolImage;
  v5 = [(SFSymbolImage *)&v10 init];
  if (v5)
  {
    v6 = [v4 symbolName];

    if (v6)
    {
      v7 = [v4 symbolName];
      [(SFSymbolImage *)v5 setSymbolName:v7];
    }

    if ([v4 punchThroughBackground])
    {
      -[SFSymbolImage setPunchThroughBackground:](v5, "setPunchThroughBackground:", [v4 punchThroughBackground]);
    }

    if ([v4 backgroundColor])
    {
      -[SFSymbolImage setBackgroundColor:](v5, "setBackgroundColor:", [v4 backgroundColor]);
    }

    if ([v4 primaryColor])
    {
      -[SFSymbolImage setPrimaryColor:](v5, "setPrimaryColor:", [v4 primaryColor]);
    }

    if ([v4 secondaryColor])
    {
      -[SFSymbolImage setSecondaryColor:](v5, "setSecondaryColor:", [v4 secondaryColor]);
    }

    if ([v4 fillStyle])
    {
      -[SFSymbolImage setFillStyle:](v5, "setFillStyle:", [v4 fillStyle]);
    }

    v8 = v5;
  }

  return v5;
}

@end