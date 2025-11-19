@interface SFAppIconImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAppIconImage)initWithCoder:(id)a3;
- (SFAppIconImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAppIconImage

- (SFAppIconImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFAppIconImage;
  v5 = [(SFAppIconImage *)&v10 init];
  if (v5)
  {
    v6 = [v4 bundleIdentifier];

    if (v6)
    {
      v7 = [v4 bundleIdentifier];
      [(SFAppIconImage *)v5 setBundleIdentifier:v7];
    }

    if ([v4 iconType])
    {
      -[SFAppIconImage setIconType:](v5, "setIconType:", [v4 iconType]);
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
  v4 = [(SFAppIconImage *)self bundleIdentifier];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFAppIconImage *)self iconType];

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
    if ([(SFAppIconImage *)v6 isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFAppIconImage;
      if ([(SFImage *)&v14 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFAppIconImage *)self bundleIdentifier];
        v9 = [(SFAppIconImage *)v7 bundleIdentifier];
        if ((v8 != 0) == (v9 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        v10 = [(SFAppIconImage *)self bundleIdentifier];
        if (!v10 || (-[SFAppIconImage bundleIdentifier](self, "bundleIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SFAppIconImage bundleIdentifier](v7, "bundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(SFAppIconImage *)self iconType];
          v11 = v12 == [(SFAppIconImage *)v7 iconType];
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
  v8.super_class = SFAppIconImage;
  v4 = [(SFImage *)&v8 copyWithZone:a3];
  v5 = [(SFAppIconImage *)self bundleIdentifier];
  v6 = [v5 copy];
  [v4 setBundleIdentifier:v6];

  [v4 setIconType:{-[SFAppIconImage iconType](self, "iconType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAppIconImage alloc] initWithFacade:self];
  v3 = [(_SFPBAppIconImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAppIconImage alloc] initWithFacade:self];
  v3 = [(_SFPBAppIconImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFAppIconImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFAppIconImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

@end