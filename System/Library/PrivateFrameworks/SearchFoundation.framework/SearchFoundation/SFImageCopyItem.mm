@interface SFImageCopyItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFImageCopyItem)initWithCoder:(id)coder;
- (SFImageCopyItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFImageCopyItem

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFImageCopyItem;
  v3 = [(SFCopyItem *)&v7 hash];
  image = [(SFImageCopyItem *)self image];
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

  else if ([(SFImageCopyItem *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFImageCopyItem, [(SFCopyItem *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    image = [(SFImageCopyItem *)self image];
    image2 = [(SFImageCopyItem *)v5 image];
    if ((image != 0) == (image2 == 0))
    {
      v11 = 0;
    }

    else
    {
      image3 = [(SFImageCopyItem *)self image];
      if (image3)
      {
        image4 = [(SFImageCopyItem *)self image];
        image5 = [(SFImageCopyItem *)v5 image];
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
  v8.super_class = SFImageCopyItem;
  v4 = [(SFCopyItem *)&v8 copyWithZone:zone];
  image = [(SFImageCopyItem *)self image];
  v6 = [image copy];
  [v4 setImage:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBImageCopyItem alloc] initWithFacade:self];
  jsonData = [(_SFPBImageCopyItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBImageCopyItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBImageCopyItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImageCopyItem alloc] initWithFacade:self];
  data = [(_SFPBImageCopyItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFImageCopyItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImageCopyItem alloc] initWithData:v5];
  v7 = [(SFImageCopyItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFImageCopyItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFImageCopyItem;
  v5 = [(SFImageCopyItem *)&v12 init];
  if (v5)
  {
    image = [protobufCopy image];

    if (image)
    {
      v7 = [SFImage alloc];
      image2 = [protobufCopy image];
      v9 = [(SFImage *)v7 initWithProtobuf:image2];
      [(SFImageCopyItem *)v5 setImage:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end