@interface SFCommandReference
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCommandReference)initWithCoder:(id)coder;
- (SFCommandReference)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCommandReference

- (SFCommandReference)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFCommandReference;
  v5 = [(SFCommandReference *)&v10 init];
  if (v5)
  {
    referenceIdentifier = [protobufCopy referenceIdentifier];

    if (referenceIdentifier)
    {
      referenceIdentifier2 = [protobufCopy referenceIdentifier];
      [(SFCommandReference *)v5 setReferenceIdentifier:referenceIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  referenceIdentifier = [(SFCommandReference *)self referenceIdentifier];
  v3 = [referenceIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFCommandReference *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    referenceIdentifier = [(SFCommandReference *)self referenceIdentifier];
    referenceIdentifier2 = [(SFCommandReference *)v5 referenceIdentifier];
    if ((referenceIdentifier != 0) == (referenceIdentifier2 == 0))
    {
      v11 = 0;
    }

    else
    {
      referenceIdentifier3 = [(SFCommandReference *)self referenceIdentifier];
      if (referenceIdentifier3)
      {
        referenceIdentifier4 = [(SFCommandReference *)self referenceIdentifier];
        referenceIdentifier5 = [(SFCommandReference *)v5 referenceIdentifier];
        v11 = [referenceIdentifier4 isEqual:referenceIdentifier5];
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
  referenceIdentifier = [(SFCommandReference *)self referenceIdentifier];
  v6 = [referenceIdentifier copy];
  [v4 setReferenceIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCommandReference alloc] initWithFacade:self];
  jsonData = [(_SFPBCommandReference *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCommandReference alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCommandReference *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCommandReference alloc] initWithFacade:self];
  data = [(_SFPBCommandReference *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCommandReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCommandReference alloc] initWithData:v5];
  v7 = [(SFCommandReference *)self initWithProtobuf:v6];

  return v7;
}

@end