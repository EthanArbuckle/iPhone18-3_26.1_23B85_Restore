@interface RFAppIconImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFAppIconImage)initWithCoder:(id)a3;
- (RFAppIconImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFAppIconImage

- (unint64_t)hash
{
  v3 = [(RFAppIconImage *)self application_bundle_identifier];
  v4 = [v3 hash];
  v5 = [(RFAppIconImage *)self image_style];

  return v4 ^ v5;
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
    if ([(RFAppIconImage *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(RFAppIconImage *)self application_bundle_identifier];
      v9 = [(RFAppIconImage *)v7 application_bundle_identifier];
      if ((v8 != 0) == (v9 == 0))
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v10 = [(RFAppIconImage *)self application_bundle_identifier];
      if (!v10 || (-[RFAppIconImage application_bundle_identifier](self, "application_bundle_identifier"), v3 = objc_claimAutoreleasedReturnValue(), -[RFAppIconImage application_bundle_identifier](v7, "application_bundle_identifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v12 = [(RFAppIconImage *)self image_style];
        v11 = v12 == [(RFAppIconImage *)v7 image_style];
        if (!v10)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFAppIconImage *)self application_bundle_identifier];
  v6 = [v5 copy];
  [v4 setApplication_bundle_identifier:v6];

  [v4 setImage_style:{-[RFAppIconImage image_style](self, "image_style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFAppIconImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFAppIconImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFAppIconImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFAppIconImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFAppIconImage alloc] initWithFacade:self];
  v5 = [(_SFPBRFAppIconImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFAppIconImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFAppIconImage alloc] initWithData:v5];
  v7 = [(RFAppIconImage *)self initWithProtobuf:v6];

  return v7;
}

- (RFAppIconImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RFAppIconImage;
  v5 = [(RFAppIconImage *)&v10 init];
  if (v5)
  {
    v6 = [v4 application_bundle_identifier];

    if (v6)
    {
      v7 = [v4 application_bundle_identifier];
      [(RFAppIconImage *)v5 setApplication_bundle_identifier:v7];
    }

    if ([v4 image_style])
    {
      -[RFAppIconImage setImage_style:](v5, "setImage_style:", [v4 image_style]);
    }

    v8 = v5;
  }

  return v5;
}

@end