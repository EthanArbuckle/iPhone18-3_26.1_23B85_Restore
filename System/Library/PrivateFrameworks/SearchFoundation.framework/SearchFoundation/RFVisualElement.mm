@interface RFVisualElement
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFVisualElement)initWithCoder:(id)coder;
- (RFVisualElement)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFVisualElement

- (unint64_t)hash
{
  image_element = [(RFVisualElement *)self image_element];
  v3 = [image_element hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(RFVisualElement *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    image_element = [(RFVisualElement *)self image_element];
    image_element2 = [(RFVisualElement *)v5 image_element];
    if ((image_element != 0) == (image_element2 == 0))
    {
      v11 = 0;
    }

    else
    {
      image_element3 = [(RFVisualElement *)self image_element];
      if (image_element3)
      {
        image_element4 = [(RFVisualElement *)self image_element];
        image_element5 = [(RFVisualElement *)v5 image_element];
        v11 = [image_element4 isEqual:image_element5];
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
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([(RFVisualElement *)self hasImage_element])
  {
    image_element = [(RFVisualElement *)self image_element];
    v6 = [image_element copy];
    [v4 setImage_element:v6];
  }

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFVisualElement alloc] initWithFacade:self];
  jsonData = [(_SFPBRFVisualElement *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFVisualElement alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFVisualElement *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFVisualElement alloc] initWithFacade:self];
  data = [(_SFPBRFVisualElement *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFVisualElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFVisualElement alloc] initWithData:v5];
  v7 = [(RFVisualElement *)self initWithProtobuf:v6];

  return v7;
}

- (RFVisualElement)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = RFVisualElement;
  v5 = [(RFVisualElement *)&v12 init];
  if (v5)
  {
    image_element = [protobufCopy image_element];

    if (image_element)
    {
      v7 = [RFImageElement alloc];
      image_element2 = [protobufCopy image_element];
      v9 = [(RFImageElement *)v7 initWithProtobuf:image_element2];
      [(RFVisualElement *)v5 setImage_element:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end