@interface RFOptionalFloat
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFOptionalFloat)initWithCoder:(id)coder;
- (RFOptionalFloat)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFOptionalFloat

- (unint64_t)hash
{
  value = [(RFOptionalFloat *)self value];
  v3 = [value hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(RFOptionalFloat *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    value = [(RFOptionalFloat *)self value];
    value2 = [(RFOptionalFloat *)v5 value];
    if ((value != 0) == (value2 == 0))
    {
      v11 = 0;
    }

    else
    {
      value3 = [(RFOptionalFloat *)self value];
      if (value3)
      {
        value4 = [(RFOptionalFloat *)self value];
        value5 = [(RFOptionalFloat *)v5 value];
        v11 = [value4 isEqual:value5];
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
  value = [(RFOptionalFloat *)self value];
  v6 = [value copy];
  [v4 setValue:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFOptionalFloat alloc] initWithFacade:self];
  jsonData = [(_SFPBRFOptionalFloat *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFOptionalFloat alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFOptionalFloat *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFOptionalFloat alloc] initWithFacade:self];
  data = [(_SFPBRFOptionalFloat *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFOptionalFloat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFOptionalFloat alloc] initWithData:v5];
  v7 = [(RFOptionalFloat *)self initWithProtobuf:v6];

  return v7;
}

- (RFOptionalFloat)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v11.receiver = self;
  v11.super_class = RFOptionalFloat;
  v5 = [(RFOptionalFloat *)&v11 init];
  if (v5)
  {
    [protobufCopy value];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [protobufCopy value];
      v8 = [v7 numberWithFloat:?];
      [(RFOptionalFloat *)v5 setValue:v8];
    }

    v9 = v5;
  }

  return v5;
}

@end