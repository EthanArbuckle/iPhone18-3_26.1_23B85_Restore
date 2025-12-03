@interface SFButton
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFButton)initWithCoder:(id)coder;
- (SFButton)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFButton

- (SFButton)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFButton;
  v5 = [(SFButton *)&v16 init];
  if (v5)
  {
    image = [protobufCopy image];

    if (image)
    {
      v7 = [SFImage alloc];
      image2 = [protobufCopy image];
      v9 = [(SFImage *)v7 initWithProtobuf:image2];
      [(SFButton *)v5 setImage:v9];
    }

    selectedImage = [protobufCopy selectedImage];

    if (selectedImage)
    {
      v11 = [SFImage alloc];
      selectedImage2 = [protobufCopy selectedImage];
      v13 = [(SFImage *)v11 initWithProtobuf:selectedImage2];
      [(SFButton *)v5 setSelectedImage:v13];
    }

    if ([protobufCopy isSelected])
    {
      -[SFButton setIsSelected:](v5, "setIsSelected:", [protobufCopy isSelected]);
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  image = [(SFButton *)self image];
  v4 = [image hash];
  selectedImage = [(SFButton *)self selectedImage];
  v6 = [selectedImage hash] ^ v4;
  isSelected = [(SFButton *)self isSelected];

  return v6 ^ isSelected;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFButton *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      image = [(SFButton *)self image];
      image2 = [(SFButton *)v6 image];
      if ((image != 0) == (image2 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_24:

        goto LABEL_25;
      }

      image3 = [(SFButton *)self image];
      if (image3)
      {
        image4 = [(SFButton *)self image];
        image5 = [(SFButton *)v6 image];
        if (![image4 isEqual:image5])
        {
          LOBYTE(v11) = 0;
          goto LABEL_22;
        }

        v22 = image4;
      }

      selectedImage = [(SFButton *)self selectedImage];
      selectedImage2 = [(SFButton *)v6 selectedImage];
      v14 = selectedImage2;
      if ((selectedImage != 0) == (selectedImage2 == 0))
      {

        LOBYTE(v11) = 0;
        goto LABEL_21;
      }

      selectedImage3 = [(SFButton *)self selectedImage];
      if (selectedImage3)
      {
        v19 = image5;
        selectedImage4 = [(SFButton *)self selectedImage];
        selectedImage5 = [(SFButton *)v6 selectedImage];
        v21 = selectedImage4;
        if (![selectedImage4 isEqual:?])
        {
          LOBYTE(v11) = 0;
          image5 = v19;
LABEL_19:

LABEL_20:
LABEL_21:
          image4 = v22;
          if (!image3)
          {
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_23;
        }

        image5 = v19;
      }

      isSelected = [(SFButton *)self isSelected];
      v11 = isSelected ^ [(SFButton *)v6 isSelected]^ 1;
      if (!selectedImage3)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    LOBYTE(v11) = 0;
  }

LABEL_25:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  image = [(SFButton *)self image];
  v6 = [image copy];
  [v4 setImage:v6];

  selectedImage = [(SFButton *)self selectedImage];
  v8 = [selectedImage copy];
  [v4 setSelectedImage:v8];

  [v4 setIsSelected:{-[SFButton isSelected](self, "isSelected")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBButton alloc] initWithFacade:self];
  jsonData = [(_SFPBButton *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBButton alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBButton *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBButton alloc] initWithFacade:self];
  data = [(_SFPBButton *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBButton alloc] initWithData:v5];
  v7 = [(SFButton *)self initWithProtobuf:v6];

  return v7;
}

@end