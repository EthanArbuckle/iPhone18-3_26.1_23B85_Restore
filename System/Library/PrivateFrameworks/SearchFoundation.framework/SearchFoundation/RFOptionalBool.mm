@interface RFOptionalBool
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFOptionalBool)initWithCoder:(id)coder;
- (RFOptionalBool)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFOptionalBool

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(RFOptionalBool *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    value = [(RFOptionalBool *)self value];
    value2 = [(RFOptionalBool *)v5 value];

    v8 = value ^ value2 ^ 1;
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
  [v4 setValue:{-[RFOptionalBool value](self, "value")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFOptionalBool alloc] initWithFacade:self];
  jsonData = [(_SFPBRFOptionalBool *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFOptionalBool alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFOptionalBool *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFOptionalBool alloc] initWithFacade:self];
  data = [(_SFPBRFOptionalBool *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFOptionalBool)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFOptionalBool alloc] initWithData:v5];
  v7 = [(RFOptionalBool *)self initWithProtobuf:v6];

  return v7;
}

- (RFOptionalBool)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = RFOptionalBool;
  v5 = [(RFOptionalBool *)&v8 init];
  if (v5)
  {
    if ([protobufCopy value])
    {
      -[RFOptionalBool setValue:](v5, "setValue:", [protobufCopy value]);
    }

    v6 = v5;
  }

  return v5;
}

@end