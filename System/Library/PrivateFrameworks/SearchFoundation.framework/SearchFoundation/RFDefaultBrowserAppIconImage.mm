@interface RFDefaultBrowserAppIconImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFDefaultBrowserAppIconImage)initWithCoder:(id)coder;
- (RFDefaultBrowserAppIconImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFDefaultBrowserAppIconImage

- (RFDefaultBrowserAppIconImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = RFDefaultBrowserAppIconImage;
  v5 = [(RFDefaultBrowserAppIconImage *)&v8 init];
  if (v5)
  {
    if ([protobufCopy image_style])
    {
      -[RFDefaultBrowserAppIconImage setImage_style:](v5, "setImage_style:", [protobufCopy image_style]);
    }

    v6 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(RFDefaultBrowserAppIconImage *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    image_style = [(RFDefaultBrowserAppIconImage *)self image_style];
    image_style2 = [(RFDefaultBrowserAppIconImage *)v5 image_style];

    v8 = image_style == image_style2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setImage_style:{-[RFDefaultBrowserAppIconImage image_style](self, "image_style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFDefaultBrowserAppIconImage alloc] initWithFacade:self];
  jsonData = [(_SFPBRFDefaultBrowserAppIconImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFDefaultBrowserAppIconImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFDefaultBrowserAppIconImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFDefaultBrowserAppIconImage alloc] initWithFacade:self];
  data = [(_SFPBRFDefaultBrowserAppIconImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFDefaultBrowserAppIconImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFDefaultBrowserAppIconImage alloc] initWithData:v5];
  v7 = [(RFDefaultBrowserAppIconImage *)self initWithProtobuf:v6];

  return v7;
}

@end