@interface RFAppIconImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFAppIconImage)initWithCoder:(id)coder;
- (RFAppIconImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFAppIconImage

- (unint64_t)hash
{
  application_bundle_identifier = [(RFAppIconImage *)self application_bundle_identifier];
  v4 = [application_bundle_identifier hash];
  image_style = [(RFAppIconImage *)self image_style];

  return v4 ^ image_style;
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
    if ([(RFAppIconImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      application_bundle_identifier = [(RFAppIconImage *)self application_bundle_identifier];
      application_bundle_identifier2 = [(RFAppIconImage *)v7 application_bundle_identifier];
      if ((application_bundle_identifier != 0) == (application_bundle_identifier2 == 0))
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      application_bundle_identifier3 = [(RFAppIconImage *)self application_bundle_identifier];
      if (!application_bundle_identifier3 || (-[RFAppIconImage application_bundle_identifier](self, "application_bundle_identifier"), v3 = objc_claimAutoreleasedReturnValue(), -[RFAppIconImage application_bundle_identifier](v7, "application_bundle_identifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        image_style = [(RFAppIconImage *)self image_style];
        v11 = image_style == [(RFAppIconImage *)v7 image_style];
        if (!application_bundle_identifier3)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_12;
    }

    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  application_bundle_identifier = [(RFAppIconImage *)self application_bundle_identifier];
  v6 = [application_bundle_identifier copy];
  [v4 setApplication_bundle_identifier:v6];

  [v4 setImage_style:{-[RFAppIconImage image_style](self, "image_style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFAppIconImage alloc] initWithFacade:self];
  jsonData = [(_SFPBRFAppIconImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFAppIconImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFAppIconImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFAppIconImage alloc] initWithFacade:self];
  data = [(_SFPBRFAppIconImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFAppIconImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFAppIconImage alloc] initWithData:v5];
  v7 = [(RFAppIconImage *)self initWithProtobuf:v6];

  return v7;
}

- (RFAppIconImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = RFAppIconImage;
  v5 = [(RFAppIconImage *)&v10 init];
  if (v5)
  {
    application_bundle_identifier = [protobufCopy application_bundle_identifier];

    if (application_bundle_identifier)
    {
      application_bundle_identifier2 = [protobufCopy application_bundle_identifier];
      [(RFAppIconImage *)v5 setApplication_bundle_identifier:application_bundle_identifier2];
    }

    if ([protobufCopy image_style])
    {
      -[RFAppIconImage setImage_style:](v5, "setImage_style:", [protobufCopy image_style]);
    }

    v8 = v5;
  }

  return v5;
}

@end