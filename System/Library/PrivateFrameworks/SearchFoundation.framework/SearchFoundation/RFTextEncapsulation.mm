@interface RFTextEncapsulation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTextEncapsulation)initWithCoder:(id)coder;
- (RFTextEncapsulation)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFTextEncapsulation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(RFTextEncapsulation *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    style = [(RFTextEncapsulation *)self style];
    style2 = [(RFTextEncapsulation *)v5 style];

    v8 = style == style2;
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
  [v4 setStyle:{-[RFTextEncapsulation style](self, "style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTextEncapsulation alloc] initWithFacade:self];
  jsonData = [(_SFPBRFTextEncapsulation *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTextEncapsulation alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFTextEncapsulation *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFTextEncapsulation alloc] initWithFacade:self];
  data = [(_SFPBRFTextEncapsulation *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFTextEncapsulation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTextEncapsulation alloc] initWithData:v5];
  v7 = [(RFTextEncapsulation *)self initWithProtobuf:v6];

  return v7;
}

- (RFTextEncapsulation)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = RFTextEncapsulation;
  v5 = [(RFTextEncapsulation *)&v8 init];
  if (v5)
  {
    if ([protobufCopy style])
    {
      -[RFTextEncapsulation setStyle:](v5, "setStyle:", [protobufCopy style]);
    }

    v6 = v5;
  }

  return v5;
}

@end