@interface SFButtonItemAppearance
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFButtonItemAppearance)initWithCoder:(id)coder;
- (SFButtonItemAppearance)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFButtonItemAppearance

- (unint64_t)hash
{
  style = [(SFButtonItemAppearance *)self style];
  v4 = [(SFButtonItemAppearance *)self role]^ style;
  tintColor = [(SFButtonItemAppearance *)self tintColor];
  v6 = [tintColor hash];
  v7 = v6 ^ [(SFButtonItemAppearance *)self renderingMode]^ v4;
  preferNoFallbackImage = [(SFButtonItemAppearance *)self preferNoFallbackImage];

  return v7 ^ preferNoFallbackImage;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    if ([(SFButtonItemAppearance *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      style = [(SFButtonItemAppearance *)self style];
      if (style != [(SFButtonItemAppearance *)v7 style]|| (v9 = [(SFButtonItemAppearance *)self role], v9 != [(SFButtonItemAppearance *)v7 role]))
      {
        LOBYTE(v13) = 0;
LABEL_20:

        goto LABEL_21;
      }

      tintColor = [(SFButtonItemAppearance *)self tintColor];
      tintColor2 = [(SFButtonItemAppearance *)v7 tintColor];
      if ((tintColor != 0) == (tintColor2 == 0))
      {
        LOBYTE(v13) = 0;
LABEL_19:

        goto LABEL_20;
      }

      tintColor3 = [(SFButtonItemAppearance *)self tintColor];
      if (!tintColor3 || (-[SFButtonItemAppearance tintColor](self, "tintColor"), v3 = objc_claimAutoreleasedReturnValue(), -[SFButtonItemAppearance tintColor](v7, "tintColor"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        renderingMode = [(SFButtonItemAppearance *)self renderingMode];
        if (renderingMode == [(SFButtonItemAppearance *)v7 renderingMode])
        {
          preferNoFallbackImage = [(SFButtonItemAppearance *)self preferNoFallbackImage];
          v13 = preferNoFallbackImage ^ [(SFButtonItemAppearance *)v7 preferNoFallbackImage]^ 1;
          if (!tintColor3)
          {
            goto LABEL_18;
          }
        }

        else
        {
          LOBYTE(v13) = 0;
          if (!tintColor3)
          {
LABEL_18:

            goto LABEL_19;
          }
        }
      }

      else
      {
        LOBYTE(v13) = 0;
      }

      goto LABEL_18;
    }

    LOBYTE(v13) = 0;
  }

LABEL_21:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setStyle:{-[SFButtonItemAppearance style](self, "style")}];
  [v4 setRole:{-[SFButtonItemAppearance role](self, "role")}];
  tintColor = [(SFButtonItemAppearance *)self tintColor];
  v6 = [tintColor copy];
  [v4 setTintColor:v6];

  [v4 setRenderingMode:{-[SFButtonItemAppearance renderingMode](self, "renderingMode")}];
  [v4 setPreferNoFallbackImage:{-[SFButtonItemAppearance preferNoFallbackImage](self, "preferNoFallbackImage")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBButtonItemAppearance alloc] initWithFacade:self];
  jsonData = [(_SFPBButtonItemAppearance *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBButtonItemAppearance alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBButtonItemAppearance *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBButtonItemAppearance alloc] initWithFacade:self];
  data = [(_SFPBButtonItemAppearance *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFButtonItemAppearance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBButtonItemAppearance alloc] initWithData:v5];
  v7 = [(SFButtonItemAppearance *)self initWithProtobuf:v6];

  return v7;
}

- (SFButtonItemAppearance)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFButtonItemAppearance;
  v5 = [(SFButtonItemAppearance *)&v12 init];
  if (v5)
  {
    if ([protobufCopy style])
    {
      -[SFButtonItemAppearance setStyle:](v5, "setStyle:", [protobufCopy style]);
    }

    if ([protobufCopy role])
    {
      -[SFButtonItemAppearance setRole:](v5, "setRole:", [protobufCopy role]);
    }

    tintColor = [protobufCopy tintColor];

    if (tintColor)
    {
      v7 = [SFColor alloc];
      tintColor2 = [protobufCopy tintColor];
      v9 = [(SFColor *)v7 initWithProtobuf:tintColor2];
      [(SFButtonItemAppearance *)v5 setTintColor:v9];
    }

    if ([protobufCopy renderingMode])
    {
      -[SFButtonItemAppearance setRenderingMode:](v5, "setRenderingMode:", [protobufCopy renderingMode]);
    }

    if ([protobufCopy preferNoFallbackImage])
    {
      -[SFButtonItemAppearance setPreferNoFallbackImage:](v5, "setPreferNoFallbackImage:", [protobufCopy preferNoFallbackImage]);
    }

    v10 = v5;
  }

  return v5;
}

@end