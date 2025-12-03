@interface SFCommandValue
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCommandValue)initWithCoder:(id)coder;
- (SFCommandValue)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCommandValue

- (unint64_t)hash
{
  referentialCommand = [(SFCommandValue *)self referentialCommand];
  v3 = [referentialCommand hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFCommandValue *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    referentialCommand = [(SFCommandValue *)self referentialCommand];
    referentialCommand2 = [(SFCommandValue *)v5 referentialCommand];
    if ((referentialCommand != 0) == (referentialCommand2 == 0))
    {
      v11 = 0;
    }

    else
    {
      referentialCommand3 = [(SFCommandValue *)self referentialCommand];
      if (referentialCommand3)
      {
        referentialCommand4 = [(SFCommandValue *)self referentialCommand];
        referentialCommand5 = [(SFCommandValue *)v5 referentialCommand];
        v11 = [referentialCommand4 isEqual:referentialCommand5];
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
  referentialCommand = [(SFCommandValue *)self referentialCommand];
  v6 = [referentialCommand copy];
  [v4 setReferentialCommand:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCommandValue alloc] initWithFacade:self];
  jsonData = [(_SFPBCommandValue *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCommandValue alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCommandValue *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCommandValue alloc] initWithFacade:self];
  data = [(_SFPBCommandValue *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCommandValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCommandValue alloc] initWithData:v5];
  v7 = [(SFCommandValue *)self initWithProtobuf:v6];

  return v7;
}

- (SFCommandValue)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFCommandValue;
  v5 = [(SFCommandValue *)&v12 init];
  if (v5)
  {
    referentialCommand = [protobufCopy referentialCommand];

    if (referentialCommand)
    {
      v7 = [SFReferentialCommand alloc];
      referentialCommand2 = [protobufCopy referentialCommand];
      v9 = [(SFReferentialCommand *)v7 initWithProtobuf:referentialCommand2];
      [(SFCommandValue *)v5 setReferentialCommand:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end