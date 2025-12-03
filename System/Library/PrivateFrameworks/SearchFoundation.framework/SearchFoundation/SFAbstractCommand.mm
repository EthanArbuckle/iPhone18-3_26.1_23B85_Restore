@interface SFAbstractCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAbstractCommand)initWithCoder:(id)coder;
- (SFAbstractCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAbstractCommand

- (SFAbstractCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFAbstractCommand;
  v5 = [(SFAbstractCommand *)&v12 init];
  if (v5)
  {
    if ([protobufCopy type])
    {
      -[SFAbstractCommand setType:](v5, "setType:", [protobufCopy type]);
    }

    value = [protobufCopy value];

    if (value)
    {
      v7 = [SFCommandValue alloc];
      value2 = [protobufCopy value];
      v9 = [(SFCommandValue *)v7 initWithProtobuf:value2];
      [(SFAbstractCommand *)v5 setValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  type = [(SFAbstractCommand *)self type];
  value = [(SFAbstractCommand *)self value];
  v5 = [value hash];

  return v5 ^ type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if ([(SFAbstractCommand *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    type = [(SFAbstractCommand *)self type];
    if (type == [(SFAbstractCommand *)v5 type])
    {
      value = [(SFAbstractCommand *)self value];
      value2 = [(SFAbstractCommand *)v5 value];
      if ((value != 0) == (value2 == 0))
      {
        v12 = 0;
      }

      else
      {
        value3 = [(SFAbstractCommand *)self value];
        if (value3)
        {
          value4 = [(SFAbstractCommand *)self value];
          value5 = [(SFAbstractCommand *)v5 value];
          v12 = [value4 isEqual:value5];
        }

        else
        {
          v12 = 1;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setType:{-[SFAbstractCommand type](self, "type")}];
  value = [(SFAbstractCommand *)self value];
  v6 = [value copy];
  [v4 setValue:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAbstractCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBAbstractCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAbstractCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBAbstractCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBAbstractCommand alloc] initWithFacade:self];
  data = [(_SFPBAbstractCommand *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFAbstractCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAbstractCommand alloc] initWithData:v5];
  v7 = [(SFAbstractCommand *)self initWithProtobuf:v6];

  return v7;
}

@end