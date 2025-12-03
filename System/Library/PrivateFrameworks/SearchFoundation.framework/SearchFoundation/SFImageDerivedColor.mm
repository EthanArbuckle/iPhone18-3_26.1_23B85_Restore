@interface SFImageDerivedColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFImageDerivedColor)initWithCoder:(id)coder;
- (SFImageDerivedColor)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFImageDerivedColor

- (SFImageDerivedColor)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFImageDerivedColor;
  v5 = [(SFImageDerivedColor *)&v12 init];
  if (v5)
  {
    image = [protobufCopy image];

    if (image)
    {
      v7 = [SFImage alloc];
      image2 = [protobufCopy image];
      v9 = [(SFImage *)v7 initWithProtobuf:image2];
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
  image = [(SFImageDerivedColor *)self image];
  v5 = [image hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFImageDerivedColor *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFImageDerivedColor, [(SFColor *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    image = [(SFImageDerivedColor *)self image];
    image2 = [(SFImageDerivedColor *)v5 image];
    if ((image != 0) == (image2 == 0))
    {
      v11 = 0;
    }

    else
    {
      image3 = [(SFImageDerivedColor *)self image];
      if (image3)
      {
        image4 = [(SFImageDerivedColor *)self image];
        image5 = [(SFImageDerivedColor *)v5 image];
        v11 = [image4 isEqual:image5];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFImageDerivedColor;
  v4 = [(SFColor *)&v8 copyWithZone:zone];
  image = [(SFImageDerivedColor *)self image];
  v6 = [image copy];
  [v4 setImage:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBImageDerivedColor alloc] initWithFacade:self];
  jsonData = [(_SFPBImageDerivedColor *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBImageDerivedColor alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBImageDerivedColor *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFImageDerivedColor;
  [(SFColor *)&v3 encodeWithCoder:coder];
}

- (SFImageDerivedColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFImageDerivedColor *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBColor alloc] initWithData:v6];
  v8 = [[SFColor alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = [(SFColor *)v8 image];
    [(SFImageDerivedColor *)v5 setImage:image];

    [(SFColor *)v8 redComponent];
    [(SFColor *)v5 setRedComponent:?];
    [(SFColor *)v8 greenComponent];
    [(SFColor *)v5 setGreenComponent:?];
    [(SFColor *)v8 blueComponent];
    [(SFColor *)v5 setBlueComponent:?];
    [(SFColor *)v8 alphaComponent];
    [(SFColor *)v5 setAlphaComponent:?];
    [(SFColor *)v5 setColorTintStyle:[(SFColor *)v8 colorTintStyle]];
    darkModeColor = [(SFColor *)v8 darkModeColor];
    [(SFColor *)v5 setDarkModeColor:darkModeColor];
  }

  return v5;
}

@end