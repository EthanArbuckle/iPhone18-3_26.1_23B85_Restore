@interface SFLocationTypeInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLocationTypeInfo)initWithCoder:(id)coder;
- (SFLocationTypeInfo)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFLocationTypeInfo

- (unint64_t)hash
{
  address = [(SFLocationTypeInfo *)self address];
  v3 = [address hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFLocationTypeInfo *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    address = [(SFLocationTypeInfo *)self address];
    address2 = [(SFLocationTypeInfo *)v5 address];
    if ((address != 0) == (address2 == 0))
    {
      v11 = 0;
    }

    else
    {
      address3 = [(SFLocationTypeInfo *)self address];
      if (address3)
      {
        address4 = [(SFLocationTypeInfo *)self address];
        address5 = [(SFLocationTypeInfo *)v5 address];
        v11 = [address4 isEqual:address5];
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
  address = [(SFLocationTypeInfo *)self address];
  v6 = [address copy];
  [v4 setAddress:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLocationTypeInfo alloc] initWithFacade:self];
  jsonData = [(_SFPBLocationTypeInfo *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLocationTypeInfo alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBLocationTypeInfo *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBLocationTypeInfo alloc] initWithFacade:self];
  data = [(_SFPBLocationTypeInfo *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFLocationTypeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBLocationTypeInfo alloc] initWithData:v5];
  v7 = [(SFLocationTypeInfo *)self initWithProtobuf:v6];

  return v7;
}

- (SFLocationTypeInfo)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFLocationTypeInfo;
  v5 = [(SFLocationTypeInfo *)&v10 init];
  if (v5)
  {
    address = [protobufCopy address];

    if (address)
    {
      address2 = [protobufCopy address];
      [(SFLocationTypeInfo *)v5 setAddress:address2];
    }

    v8 = v5;
  }

  return v5;
}

@end