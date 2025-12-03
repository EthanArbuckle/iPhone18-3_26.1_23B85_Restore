@interface SFLocalImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLocalImage)initWithCoder:(id)coder;
- (SFLocalImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFLocalImage

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SFLocalImage;
  v3 = [(SFImage *)&v5 hash];
  return v3 ^ [(SFLocalImage *)self localImageType];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(SFLocalImage *)equalCopy isMemberOfClass:objc_opt_class()]&& (v10.receiver = self, v10.super_class = SFLocalImage, [(SFImage *)&v10 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    localImageType = [(SFLocalImage *)self localImageType];
    localImageType2 = [(SFLocalImage *)v5 localImageType];

    v8 = localImageType == localImageType2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SFLocalImage;
  v4 = [(SFImage *)&v6 copyWithZone:zone];
  [v4 setLocalImageType:{-[SFLocalImage localImageType](self, "localImageType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLocalImage alloc] initWithFacade:self];
  jsonData = [(_SFPBLocalImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLocalImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBLocalImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFLocalImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFLocalImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFLocalImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFLocalImage;
  v5 = [(SFLocalImage *)&v8 init];
  if (v5)
  {
    if ([protobufCopy localImageType])
    {
      -[SFLocalImage setLocalImageType:](v5, "setLocalImageType:", [protobufCopy localImageType]);
    }

    v6 = v5;
  }

  return v5;
}

@end