@interface RFMonogramImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMonogramImage)initWithCoder:(id)coder;
- (RFMonogramImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFMonogramImage

- (RFMonogramImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = RFMonogramImage;
  v5 = [(RFMonogramImage *)&v10 init];
  if (v5)
  {
    letters = [protobufCopy letters];

    if (letters)
    {
      letters2 = [protobufCopy letters];
      [(RFMonogramImage *)v5 setLetters:letters2];
    }

    if ([protobufCopy image_style])
    {
      -[RFMonogramImage setImage_style:](v5, "setImage_style:", [protobufCopy image_style]);
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  letters = [(RFMonogramImage *)self letters];
  v4 = [letters hash];
  image_style = [(RFMonogramImage *)self image_style];

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
    if ([(RFMonogramImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      letters = [(RFMonogramImage *)self letters];
      letters2 = [(RFMonogramImage *)v7 letters];
      if ((letters != 0) == (letters2 == 0))
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      letters3 = [(RFMonogramImage *)self letters];
      if (!letters3 || (-[RFMonogramImage letters](self, "letters"), v3 = objc_claimAutoreleasedReturnValue(), -[RFMonogramImage letters](v7, "letters"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        image_style = [(RFMonogramImage *)self image_style];
        v11 = image_style == [(RFMonogramImage *)v7 image_style];
        if (!letters3)
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
  letters = [(RFMonogramImage *)self letters];
  v6 = [letters copy];
  [v4 setLetters:v6];

  [v4 setImage_style:{-[RFMonogramImage image_style](self, "image_style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMonogramImage alloc] initWithFacade:self];
  jsonData = [(_SFPBRFMonogramImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMonogramImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFMonogramImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFMonogramImage alloc] initWithFacade:self];
  data = [(_SFPBRFMonogramImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFMonogramImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMonogramImage alloc] initWithData:v5];
  v7 = [(RFMonogramImage *)self initWithProtobuf:v6];

  return v7;
}

@end