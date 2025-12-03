@interface RFBadgedImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFBadgedImage)initWithCoder:(id)coder;
- (RFBadgedImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFBadgedImage

- (RFBadgedImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = RFBadgedImage;
  v5 = [(RFBadgedImage *)&v16 init];
  if (v5)
  {
    image = [protobufCopy image];

    if (image)
    {
      v7 = [RFImageSource alloc];
      image2 = [protobufCopy image];
      v9 = [(RFImageSource *)v7 initWithProtobuf:image2];
      [(RFBadgedImage *)v5 setImage:v9];
    }

    badge = [protobufCopy badge];

    if (badge)
    {
      v11 = [RFImageSource alloc];
      badge2 = [protobufCopy badge];
      v13 = [(RFImageSource *)v11 initWithProtobuf:badge2];
      [(RFBadgedImage *)v5 setBadge:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  image = [(RFBadgedImage *)self image];
  v4 = [image hash];
  badge = [(RFBadgedImage *)self badge];
  v6 = [badge hash];

  return v6 ^ v4;
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
    if ([(RFBadgedImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      image = [(RFBadgedImage *)self image];
      image2 = [(RFBadgedImage *)v6 image];
      if ((image != 0) == (image2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      image3 = [(RFBadgedImage *)self image];
      if (image3)
      {
        image4 = [(RFBadgedImage *)self image];
        image5 = [(RFBadgedImage *)v6 image];
        if (![image4 isEqual:image5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = image5;
      }

      badge = [(RFBadgedImage *)self badge];
      badge2 = [(RFBadgedImage *)v6 badge];
      v14 = badge2;
      if ((badge != 0) == (badge2 == 0))
      {

        v11 = 0;
      }

      else
      {
        badge3 = [(RFBadgedImage *)self badge];
        if (badge3)
        {
          v16 = badge3;
          badge4 = [(RFBadgedImage *)self badge];
          [(RFBadgedImage *)v6 badge];
          v17 = v20 = image4;
          v11 = [badge4 isEqual:v17];

          image4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      image5 = v21;
      if (!image3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  image = [(RFBadgedImage *)self image];
  v6 = [image copy];
  [v4 setImage:v6];

  badge = [(RFBadgedImage *)self badge];
  v8 = [badge copy];
  [v4 setBadge:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFBadgedImage alloc] initWithFacade:self];
  jsonData = [(_SFPBRFBadgedImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFBadgedImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFBadgedImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFBadgedImage alloc] initWithFacade:self];
  data = [(_SFPBRFBadgedImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFBadgedImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFBadgedImage alloc] initWithData:v5];
  v7 = [(RFBadgedImage *)self initWithProtobuf:v6];

  return v7;
}

@end