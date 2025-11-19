@interface SFImageDerivedColor
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFImageDerivedColor)initWithCoder:(id)a3;
- (SFImageDerivedColor)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFImageDerivedColor

- (SFImageDerivedColor)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFImageDerivedColor;
  v5 = [(SFImageDerivedColor *)&v12 init];
  if (v5)
  {
    v6 = [v4 image];

    if (v6)
    {
      v7 = [SFImage alloc];
      v8 = [v4 image];
      v9 = [(SFImage *)v7 initWithProtobuf:v8];
      [(SFImageDerivedColor *)v5 setImage:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFImageDerivedColor;
  v3 = [(SFColor *)&v7 hash];
  v4 = [(SFImageDerivedColor *)self image];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(SFImageDerivedColor *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFImageDerivedColor, [(SFColor *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFImageDerivedColor *)self image];
    v7 = [(SFImageDerivedColor *)v5 image];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFImageDerivedColor *)self image];
      if (v8)
      {
        v9 = [(SFImageDerivedColor *)self image];
        v10 = [(SFImageDerivedColor *)v5 image];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFImageDerivedColor;
  v4 = [(SFColor *)&v8 copyWithZone:a3];
  v5 = [(SFImageDerivedColor *)self image];
  v6 = [v5 copy];
  [v4 setImage:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBImageDerivedColor alloc] initWithFacade:self];
  v3 = [(_SFPBImageDerivedColor *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBImageDerivedColor alloc] initWithFacade:self];
  v3 = [(_SFPBImageDerivedColor *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFImageDerivedColor;
  [(SFColor *)&v3 encodeWithCoder:a3];
}

- (SFImageDerivedColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFImageDerivedColor *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBColor alloc] initWithData:v6];
  v8 = [[SFColor alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFColor *)v8 image];
    [(SFImageDerivedColor *)v5 setImage:v9];

    [(SFColor *)v8 redComponent];
    [(SFColor *)v5 setRedComponent:?];
    [(SFColor *)v8 greenComponent];
    [(SFColor *)v5 setGreenComponent:?];
    [(SFColor *)v8 blueComponent];
    [(SFColor *)v5 setBlueComponent:?];
    [(SFColor *)v8 alphaComponent];
    [(SFColor *)v5 setAlphaComponent:?];
    [(SFColor *)v5 setColorTintStyle:[(SFColor *)v8 colorTintStyle]];
    v10 = [(SFColor *)v8 darkModeColor];
    [(SFColor *)v5 setDarkModeColor:v10];
  }

  return v5;
}

@end