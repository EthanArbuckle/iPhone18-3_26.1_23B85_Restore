@interface SFKeyValueTuple
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFKeyValueTuple)initWithCoder:(id)coder;
- (SFKeyValueTuple)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFKeyValueTuple

- (SFKeyValueTuple)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFKeyValueTuple;
  v5 = [(SFKeyValueTuple *)&v12 init];
  if (v5)
  {
    v6 = [protobufCopy key];

    if (v6)
    {
      v7 = [protobufCopy key];
      [(SFKeyValueTuple *)v5 setKey:v7];
    }

    value = [protobufCopy value];

    if (value)
    {
      value2 = [protobufCopy value];
      [(SFKeyValueTuple *)v5 setValue:value2];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFKeyValueTuple *)self key];
  v4 = [v3 hash];
  value = [(SFKeyValueTuple *)self value];
  v6 = [value hash];

  return v6 ^ v4;
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
    if ([(SFKeyValueTuple *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      v7 = [(SFKeyValueTuple *)self key];
      v8 = [(SFKeyValueTuple *)v6 key];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(SFKeyValueTuple *)self key];
      if (v9)
      {
        v3 = [(SFKeyValueTuple *)self key];
        v10 = [(SFKeyValueTuple *)v6 key];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      value = [(SFKeyValueTuple *)self value];
      value2 = [(SFKeyValueTuple *)v6 value];
      v14 = value2;
      if ((value != 0) == (value2 == 0))
      {

        v11 = 0;
      }

      else
      {
        value3 = [(SFKeyValueTuple *)self value];
        if (value3)
        {
          v16 = value3;
          value4 = [(SFKeyValueTuple *)self value];
          [(SFKeyValueTuple *)v6 value];
          v17 = v20 = v3;
          v11 = [value4 isEqual:v17];

          v3 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      v10 = v21;
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(SFKeyValueTuple *)self key];
  v6 = [v5 copy];
  [v4 setKey:v6];

  value = [(SFKeyValueTuple *)self value];
  v8 = [value copy];
  [v4 setValue:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBKeyValueTuple alloc] initWithFacade:self];
  jsonData = [(_SFPBKeyValueTuple *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBKeyValueTuple alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBKeyValueTuple *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBKeyValueTuple alloc] initWithFacade:self];
  data = [(_SFPBKeyValueTuple *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFKeyValueTuple)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBKeyValueTuple alloc] initWithData:v5];
  v7 = [(SFKeyValueTuple *)self initWithProtobuf:v6];

  return v7;
}

@end