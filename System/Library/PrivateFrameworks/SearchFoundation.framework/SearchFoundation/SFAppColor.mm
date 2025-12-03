@interface SFAppColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAppColor)initWithCoder:(id)coder;
- (SFAppColor)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAppColor

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFAppColor;
  v3 = [(SFColor *)&v7 hash];
  applicationBundleIdentifier = [(SFAppColor *)self applicationBundleIdentifier];
  v5 = [applicationBundleIdentifier hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFAppColor *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFAppColor, [(SFColor *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    applicationBundleIdentifier = [(SFAppColor *)self applicationBundleIdentifier];
    applicationBundleIdentifier2 = [(SFAppColor *)v5 applicationBundleIdentifier];
    if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
    {
      v11 = 0;
    }

    else
    {
      applicationBundleIdentifier3 = [(SFAppColor *)self applicationBundleIdentifier];
      if (applicationBundleIdentifier3)
      {
        applicationBundleIdentifier4 = [(SFAppColor *)self applicationBundleIdentifier];
        applicationBundleIdentifier5 = [(SFAppColor *)v5 applicationBundleIdentifier];
        v11 = [applicationBundleIdentifier4 isEqual:applicationBundleIdentifier5];
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
  v8.super_class = SFAppColor;
  v4 = [(SFColor *)&v8 copyWithZone:zone];
  applicationBundleIdentifier = [(SFAppColor *)self applicationBundleIdentifier];
  v6 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAppColor alloc] initWithFacade:self];
  jsonData = [(_SFPBAppColor *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAppColor alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBAppColor *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFAppColor;
  [(SFColor *)&v3 encodeWithCoder:coder];
}

- (SFAppColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFAppColor *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBColor alloc] initWithData:v6];
  v8 = [[SFColor alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    applicationBundleIdentifier = [(SFColor *)v8 applicationBundleIdentifier];
    [(SFAppColor *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];

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

- (SFAppColor)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFAppColor;
  v5 = [(SFAppColor *)&v10 init];
  if (v5)
  {
    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFAppColor *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

@end