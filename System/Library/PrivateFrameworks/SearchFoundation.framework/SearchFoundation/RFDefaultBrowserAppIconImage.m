@interface RFDefaultBrowserAppIconImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFDefaultBrowserAppIconImage)initWithCoder:(id)a3;
- (RFDefaultBrowserAppIconImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFDefaultBrowserAppIconImage

- (RFDefaultBrowserAppIconImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RFDefaultBrowserAppIconImage;
  v5 = [(RFDefaultBrowserAppIconImage *)&v8 init];
  if (v5)
  {
    if ([v4 image_style])
    {
      -[RFDefaultBrowserAppIconImage setImage_style:](v5, "setImage_style:", [v4 image_style]);
    }

    v6 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(RFDefaultBrowserAppIconImage *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(RFDefaultBrowserAppIconImage *)self image_style];
    v7 = [(RFDefaultBrowserAppIconImage *)v5 image_style];

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
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setImage_style:{-[RFDefaultBrowserAppIconImage image_style](self, "image_style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFDefaultBrowserAppIconImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFDefaultBrowserAppIconImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFDefaultBrowserAppIconImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFDefaultBrowserAppIconImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFDefaultBrowserAppIconImage alloc] initWithFacade:self];
  v5 = [(_SFPBRFDefaultBrowserAppIconImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFDefaultBrowserAppIconImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFDefaultBrowserAppIconImage alloc] initWithData:v5];
  v7 = [(RFDefaultBrowserAppIconImage *)self initWithProtobuf:v6];

  return v7;
}

@end