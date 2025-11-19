@interface RFVisualElement
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFVisualElement)initWithCoder:(id)a3;
- (RFVisualElement)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFVisualElement

- (unint64_t)hash
{
  v2 = [(RFVisualElement *)self image_element];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(RFVisualElement *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(RFVisualElement *)self image_element];
    v7 = [(RFVisualElement *)v5 image_element];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(RFVisualElement *)self image_element];
      if (v8)
      {
        v9 = [(RFVisualElement *)self image_element];
        v10 = [(RFVisualElement *)v5 image_element];
        v11 = [v9 isEqual:v10];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ([(RFVisualElement *)self hasImage_element])
  {
    v5 = [(RFVisualElement *)self image_element];
    v6 = [v5 copy];
    [v4 setImage_element:v6];
  }

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFVisualElement alloc] initWithFacade:self];
  v3 = [(_SFPBRFVisualElement *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFVisualElement alloc] initWithFacade:self];
  v3 = [(_SFPBRFVisualElement *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFVisualElement alloc] initWithFacade:self];
  v5 = [(_SFPBRFVisualElement *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFVisualElement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFVisualElement alloc] initWithData:v5];
  v7 = [(RFVisualElement *)self initWithProtobuf:v6];

  return v7;
}

- (RFVisualElement)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RFVisualElement;
  v5 = [(RFVisualElement *)&v12 init];
  if (v5)
  {
    v6 = [v4 image_element];

    if (v6)
    {
      v7 = [RFImageElement alloc];
      v8 = [v4 image_element];
      v9 = [(RFImageElement *)v7 initWithProtobuf:v8];
      [(RFVisualElement *)v5 setImage_element:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end