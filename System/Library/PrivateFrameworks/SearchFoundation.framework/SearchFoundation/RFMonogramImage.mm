@interface RFMonogramImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMonogramImage)initWithCoder:(id)a3;
- (RFMonogramImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFMonogramImage

- (RFMonogramImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RFMonogramImage;
  v5 = [(RFMonogramImage *)&v10 init];
  if (v5)
  {
    v6 = [v4 letters];

    if (v6)
    {
      v7 = [v4 letters];
      [(RFMonogramImage *)v5 setLetters:v7];
    }

    if ([v4 image_style])
    {
      -[RFMonogramImage setImage_style:](v5, "setImage_style:", [v4 image_style]);
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFMonogramImage *)self letters];
  v4 = [v3 hash];
  v5 = [(RFMonogramImage *)self image_style];

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
    if ([(RFMonogramImage *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(RFMonogramImage *)self letters];
      v9 = [(RFMonogramImage *)v7 letters];
      if ((v8 != 0) == (v9 == 0))
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v10 = [(RFMonogramImage *)self letters];
      if (!v10 || (-[RFMonogramImage letters](self, "letters"), v3 = objc_claimAutoreleasedReturnValue(), -[RFMonogramImage letters](v7, "letters"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v12 = [(RFMonogramImage *)self image_style];
        v11 = v12 == [(RFMonogramImage *)v7 image_style];
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
  v5 = [(RFMonogramImage *)self letters];
  v6 = [v5 copy];
  [v4 setLetters:v6];

  [v4 setImage_style:{-[RFMonogramImage image_style](self, "image_style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMonogramImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFMonogramImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMonogramImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFMonogramImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFMonogramImage alloc] initWithFacade:self];
  v5 = [(_SFPBRFMonogramImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFMonogramImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMonogramImage alloc] initWithData:v5];
  v7 = [(RFMonogramImage *)self initWithProtobuf:v6];

  return v7;
}

@end