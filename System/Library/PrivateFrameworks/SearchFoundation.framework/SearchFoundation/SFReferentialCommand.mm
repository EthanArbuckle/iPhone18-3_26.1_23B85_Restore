@interface SFReferentialCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFReferentialCommand)initWithCoder:(id)coder;
- (SFReferentialCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFReferentialCommand

- (SFReferentialCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFReferentialCommand;
  v5 = [(SFReferentialCommand *)&v10 init];
  if (v5)
  {
    referenceIdentifier = [protobufCopy referenceIdentifier];

    if (referenceIdentifier)
    {
      referenceIdentifier2 = [protobufCopy referenceIdentifier];
      [(SFReferentialCommand *)v5 setReferenceIdentifier:referenceIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  referenceIdentifier = [(SFReferentialCommand *)self referenceIdentifier];
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

  else if ([(SFReferentialCommand *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    referenceIdentifier = [(SFReferentialCommand *)self referenceIdentifier];
    referenceIdentifier2 = [(SFReferentialCommand *)v5 referenceIdentifier];
    if ((referenceIdentifier != 0) == (referenceIdentifier2 == 0))
    {
      v11 = 0;
    }

    else
    {
      referenceIdentifier3 = [(SFReferentialCommand *)self referenceIdentifier];
      if (referenceIdentifier3)
      {
        referenceIdentifier4 = [(SFReferentialCommand *)self referenceIdentifier];
        referenceIdentifier5 = [(SFReferentialCommand *)v5 referenceIdentifier];
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
  referenceIdentifier = [(SFReferentialCommand *)self referenceIdentifier];
  v6 = [referenceIdentifier copy];
  [v4 setReferenceIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBReferentialCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBReferentialCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBReferentialCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBReferentialCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBReferentialCommand alloc] initWithFacade:self];
  data = [(_SFPBReferentialCommand *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFReferentialCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBReferentialCommand alloc] initWithData:v5];
  v7 = [(SFReferentialCommand *)self initWithProtobuf:v6];

  return v7;
}

@end