@interface SFLocalImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLocalImage)initWithCoder:(id)a3;
- (SFLocalImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFLocalImage

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SFLocalImage;
  v3 = [(SFImage *)&v5 hash];
  return v3 ^ [(SFLocalImage *)self localImageType];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(SFLocalImage *)v4 isMemberOfClass:objc_opt_class()]&& (v10.receiver = self, v10.super_class = SFLocalImage, [(SFImage *)&v10 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFLocalImage *)self localImageType];
    v7 = [(SFLocalImage *)v5 localImageType];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SFLocalImage;
  v4 = [(SFImage *)&v6 copyWithZone:a3];
  [v4 setLocalImageType:{-[SFLocalImage localImageType](self, "localImageType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLocalImage alloc] initWithFacade:self];
  v3 = [(_SFPBLocalImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLocalImage alloc] initWithFacade:self];
  v3 = [(_SFPBLocalImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFLocalImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFLocalImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFLocalImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFLocalImage;
  v5 = [(SFLocalImage *)&v8 init];
  if (v5)
  {
    if ([v4 localImageType])
    {
      -[SFLocalImage setLocalImageType:](v5, "setLocalImageType:", [v4 localImageType]);
    }

    v6 = v5;
  }

  return v5;
}

@end