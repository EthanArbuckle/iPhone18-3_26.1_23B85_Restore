@interface SFPerformContactQueryCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerformContactQueryCommand)initWithCoder:(id)coder;
- (SFPerformContactQueryCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPerformContactQueryCommand

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFPerformContactQueryCommand;
  v3 = [(SFCommand *)&v7 hash];
  contactIdentifier = [(SFPerformContactQueryCommand *)self contactIdentifier];
  v5 = [contactIdentifier hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFPerformContactQueryCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFPerformContactQueryCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    contactIdentifier = [(SFPerformContactQueryCommand *)self contactIdentifier];
    contactIdentifier2 = [(SFPerformContactQueryCommand *)v5 contactIdentifier];
    if ((contactIdentifier != 0) == (contactIdentifier2 == 0))
    {
      v11 = 0;
    }

    else
    {
      contactIdentifier3 = [(SFPerformContactQueryCommand *)self contactIdentifier];
      if (contactIdentifier3)
      {
        contactIdentifier4 = [(SFPerformContactQueryCommand *)self contactIdentifier];
        contactIdentifier5 = [(SFPerformContactQueryCommand *)v5 contactIdentifier];
        v11 = [contactIdentifier4 isEqual:contactIdentifier5];
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
  v8.receiver = self;
  v8.super_class = SFPerformContactQueryCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  contactIdentifier = [(SFPerformContactQueryCommand *)self contactIdentifier];
  v6 = [contactIdentifier copy];
  [v4 setContactIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerformContactQueryCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBPerformContactQueryCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerformContactQueryCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPerformContactQueryCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFPerformContactQueryCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFPerformContactQueryCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFPerformContactQueryCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contactIdentifier = [(SFCommand *)v8 contactIdentifier];
    [(SFPerformContactQueryCommand *)v5 setContactIdentifier:contactIdentifier];

    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

- (SFPerformContactQueryCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFPerformContactQueryCommand;
  v5 = [(SFPerformContactQueryCommand *)&v10 init];
  if (v5)
  {
    contactIdentifier = [protobufCopy contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [protobufCopy contactIdentifier];
      [(SFPerformContactQueryCommand *)v5 setContactIdentifier:contactIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

@end