@interface SFAppIconImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAppIconImage)initWithCoder:(id)coder;
- (SFAppIconImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAppIconImage

- (SFAppIconImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFAppIconImage;
  v5 = [(SFAppIconImage *)&v10 init];
  if (v5)
  {
    bundleIdentifier = [protobufCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [protobufCopy bundleIdentifier];
      [(SFAppIconImage *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    if ([protobufCopy iconType])
    {
      -[SFAppIconImage setIconType:](v5, "setIconType:", [protobufCopy iconType]);
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFAppIconImage;
  v3 = [(SFImage *)&v8 hash];
  bundleIdentifier = [(SFAppIconImage *)self bundleIdentifier];
  v5 = [bundleIdentifier hash];
  v6 = v5 ^ [(SFAppIconImage *)self iconType];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFAppIconImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFAppIconImage;
      if ([(SFImage *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        bundleIdentifier = [(SFAppIconImage *)self bundleIdentifier];
        bundleIdentifier2 = [(SFAppIconImage *)v7 bundleIdentifier];
        if ((bundleIdentifier != 0) == (bundleIdentifier2 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        bundleIdentifier3 = [(SFAppIconImage *)self bundleIdentifier];
        if (!bundleIdentifier3 || (-[SFAppIconImage bundleIdentifier](self, "bundleIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SFAppIconImage bundleIdentifier](v7, "bundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          iconType = [(SFAppIconImage *)self iconType];
          v11 = iconType == [(SFAppIconImage *)v7 iconType];
          if (!bundleIdentifier3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFAppIconImage;
  v4 = [(SFImage *)&v8 copyWithZone:zone];
  bundleIdentifier = [(SFAppIconImage *)self bundleIdentifier];
  v6 = [bundleIdentifier copy];
  [v4 setBundleIdentifier:v6];

  [v4 setIconType:{-[SFAppIconImage iconType](self, "iconType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAppIconImage alloc] initWithFacade:self];
  jsonData = [(_SFPBAppIconImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAppIconImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBAppIconImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFAppIconImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFAppIconImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

@end