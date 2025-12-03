@interface SFSymbolImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSymbolImage)initWithCoder:(id)coder;
- (SFSymbolImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSymbolImage

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFSymbolImage;
  v3 = [(SFImage *)&v12 hash];
  symbolName = [(SFSymbolImage *)self symbolName];
  v5 = [symbolName hash];
  v6 = v5 ^ [(SFSymbolImage *)self punchThroughBackground];
  v7 = v6 ^ [(SFSymbolImage *)self backgroundColor];
  v8 = v7 ^ [(SFSymbolImage *)self primaryColor]^ v3;
  secondaryColor = [(SFSymbolImage *)self secondaryColor];
  v10 = secondaryColor ^ [(SFSymbolImage *)self fillStyle];

  return v8 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFSymbolImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v19.receiver = self;
      v19.super_class = SFSymbolImage;
      if ([(SFImage *)&v19 isEqual:equalCopy])
      {
        v7 = equalCopy;
        symbolName = [(SFSymbolImage *)self symbolName];
        symbolName2 = [(SFSymbolImage *)v7 symbolName];
        if ((symbolName != 0) == (symbolName2 == 0))
        {
          v12 = 0;
LABEL_20:

          goto LABEL_21;
        }

        symbolName3 = [(SFSymbolImage *)self symbolName];
        if (!symbolName3 || (-[SFSymbolImage symbolName](self, "symbolName"), v3 = objc_claimAutoreleasedReturnValue(), -[SFSymbolImage symbolName](v7, "symbolName"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          punchThroughBackground = [(SFSymbolImage *)self punchThroughBackground];
          if (punchThroughBackground == [(SFSymbolImage *)v7 punchThroughBackground]&& (v14 = [(SFSymbolImage *)self backgroundColor], v14 == [(SFSymbolImage *)v7 backgroundColor]) && (v15 = [(SFSymbolImage *)self primaryColor], v15 == [(SFSymbolImage *)v7 primaryColor]) && (v16 = [(SFSymbolImage *)self secondaryColor], v16 == [(SFSymbolImage *)v7 secondaryColor]))
          {
            fillStyle = [(SFSymbolImage *)self fillStyle];
            v11 = fillStyle == [(SFSymbolImage *)v7 fillStyle];
            v12 = v11;
            if (!symbolName3)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v11 = 0;
            v12 = 0;
            if (!symbolName3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFSymbolImage;
  v4 = [(SFImage *)&v8 copyWithZone:zone];
  symbolName = [(SFSymbolImage *)self symbolName];
  v6 = [symbolName copy];
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
  jsonData = [(_SFPBSymbolImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSymbolImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSymbolImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFSymbolImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFSymbolImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFSymbolImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFSymbolImage;
  v5 = [(SFSymbolImage *)&v10 init];
  if (v5)
  {
    symbolName = [protobufCopy symbolName];

    if (symbolName)
    {
      symbolName2 = [protobufCopy symbolName];
      [(SFSymbolImage *)v5 setSymbolName:symbolName2];
    }

    if ([protobufCopy punchThroughBackground])
    {
      -[SFSymbolImage setPunchThroughBackground:](v5, "setPunchThroughBackground:", [protobufCopy punchThroughBackground]);
    }

    if ([protobufCopy backgroundColor])
    {
      -[SFSymbolImage setBackgroundColor:](v5, "setBackgroundColor:", [protobufCopy backgroundColor]);
    }

    if ([protobufCopy primaryColor])
    {
      -[SFSymbolImage setPrimaryColor:](v5, "setPrimaryColor:", [protobufCopy primaryColor]);
    }

    if ([protobufCopy secondaryColor])
    {
      -[SFSymbolImage setSecondaryColor:](v5, "setSecondaryColor:", [protobufCopy secondaryColor]);
    }

    if ([protobufCopy fillStyle])
    {
      -[SFSymbolImage setFillStyle:](v5, "setFillStyle:", [protobufCopy fillStyle]);
    }

    v8 = v5;
  }

  return v5;
}

@end