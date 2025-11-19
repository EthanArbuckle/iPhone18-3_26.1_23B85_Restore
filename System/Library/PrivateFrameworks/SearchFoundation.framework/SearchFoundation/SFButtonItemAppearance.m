@interface SFButtonItemAppearance
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFButtonItemAppearance)initWithCoder:(id)a3;
- (SFButtonItemAppearance)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFButtonItemAppearance

- (unint64_t)hash
{
  v3 = [(SFButtonItemAppearance *)self style];
  v4 = [(SFButtonItemAppearance *)self role]^ v3;
  v5 = [(SFButtonItemAppearance *)self tintColor];
  v6 = [v5 hash];
  v7 = v6 ^ [(SFButtonItemAppearance *)self renderingMode]^ v4;
  v8 = [(SFButtonItemAppearance *)self preferNoFallbackImage];

  return v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    if ([(SFButtonItemAppearance *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(SFButtonItemAppearance *)self style];
      if (v8 != [(SFButtonItemAppearance *)v7 style]|| (v9 = [(SFButtonItemAppearance *)self role], v9 != [(SFButtonItemAppearance *)v7 role]))
      {
        LOBYTE(v13) = 0;
LABEL_20:

        goto LABEL_21;
      }

      v10 = [(SFButtonItemAppearance *)self tintColor];
      v11 = [(SFButtonItemAppearance *)v7 tintColor];
      if ((v10 != 0) == (v11 == 0))
      {
        LOBYTE(v13) = 0;
LABEL_19:

        goto LABEL_20;
      }

      v12 = [(SFButtonItemAppearance *)self tintColor];
      if (!v12 || (-[SFButtonItemAppearance tintColor](self, "tintColor"), v3 = objc_claimAutoreleasedReturnValue(), -[SFButtonItemAppearance tintColor](v7, "tintColor"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v14 = [(SFButtonItemAppearance *)self renderingMode];
        if (v14 == [(SFButtonItemAppearance *)v7 renderingMode])
        {
          v15 = [(SFButtonItemAppearance *)self preferNoFallbackImage];
          v13 = v15 ^ [(SFButtonItemAppearance *)v7 preferNoFallbackImage]^ 1;
          if (!v12)
          {
            goto LABEL_18;
          }
        }

        else
        {
          LOBYTE(v13) = 0;
          if (!v12)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setStyle:{-[SFButtonItemAppearance style](self, "style")}];
  [v4 setRole:{-[SFButtonItemAppearance role](self, "role")}];
  v5 = [(SFButtonItemAppearance *)self tintColor];
  v6 = [v5 copy];
  [v4 setTintColor:v6];

  [v4 setRenderingMode:{-[SFButtonItemAppearance renderingMode](self, "renderingMode")}];
  [v4 setPreferNoFallbackImage:{-[SFButtonItemAppearance preferNoFallbackImage](self, "preferNoFallbackImage")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBButtonItemAppearance alloc] initWithFacade:self];
  v3 = [(_SFPBButtonItemAppearance *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBButtonItemAppearance alloc] initWithFacade:self];
  v3 = [(_SFPBButtonItemAppearance *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBButtonItemAppearance alloc] initWithFacade:self];
  v5 = [(_SFPBButtonItemAppearance *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFButtonItemAppearance)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBButtonItemAppearance alloc] initWithData:v5];
  v7 = [(SFButtonItemAppearance *)self initWithProtobuf:v6];

  return v7;
}

- (SFButtonItemAppearance)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFButtonItemAppearance;
  v5 = [(SFButtonItemAppearance *)&v12 init];
  if (v5)
  {
    if ([v4 style])
    {
      -[SFButtonItemAppearance setStyle:](v5, "setStyle:", [v4 style]);
    }

    if ([v4 role])
    {
      -[SFButtonItemAppearance setRole:](v5, "setRole:", [v4 role]);
    }

    v6 = [v4 tintColor];

    if (v6)
    {
      v7 = [SFColor alloc];
      v8 = [v4 tintColor];
      v9 = [(SFColor *)v7 initWithProtobuf:v8];
      [(SFButtonItemAppearance *)v5 setTintColor:v9];
    }

    if ([v4 renderingMode])
    {
      -[SFButtonItemAppearance setRenderingMode:](v5, "setRenderingMode:", [v4 renderingMode]);
    }

    if ([v4 preferNoFallbackImage])
    {
      -[SFButtonItemAppearance setPreferNoFallbackImage:](v5, "setPreferNoFallbackImage:", [v4 preferNoFallbackImage]);
    }

    v10 = v5;
  }

  return v5;
}

@end