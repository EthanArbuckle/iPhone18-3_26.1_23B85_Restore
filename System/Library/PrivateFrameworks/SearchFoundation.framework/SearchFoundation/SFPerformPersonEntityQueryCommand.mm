@interface SFPerformPersonEntityQueryCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerformPersonEntityQueryCommand)initWithCoder:(id)coder;
- (SFPerformPersonEntityQueryCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPerformPersonEntityQueryCommand

- (SFPerformPersonEntityQueryCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFPerformPersonEntityQueryCommand;
  v5 = [(SFPerformPersonEntityQueryCommand *)&v12 init];
  if (v5)
  {
    person = [protobufCopy person];

    if (person)
    {
      v7 = [SFPerson alloc];
      person2 = [protobufCopy person];
      v9 = [(SFPerson *)v7 initWithProtobuf:person2];
      [(SFPerformPersonEntityQueryCommand *)v5 setPerson:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFPerformPersonEntityQueryCommand;
  v3 = [(SFCommand *)&v7 hash];
  person = [(SFPerformPersonEntityQueryCommand *)self person];
  v5 = [person hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFPerformPersonEntityQueryCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFPerformPersonEntityQueryCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    person = [(SFPerformPersonEntityQueryCommand *)self person];
    person2 = [(SFPerformPersonEntityQueryCommand *)v5 person];
    if ((person != 0) == (person2 == 0))
    {
      v11 = 0;
    }

    else
    {
      person3 = [(SFPerformPersonEntityQueryCommand *)self person];
      if (person3)
      {
        person4 = [(SFPerformPersonEntityQueryCommand *)self person];
        person5 = [(SFPerformPersonEntityQueryCommand *)v5 person];
        v11 = [person4 isEqual:person5];
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
  v8.super_class = SFPerformPersonEntityQueryCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  person = [(SFPerformPersonEntityQueryCommand *)self person];
  v6 = [person copy];
  [v4 setPerson:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerformPersonEntityQueryCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBPerformPersonEntityQueryCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerformPersonEntityQueryCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPerformPersonEntityQueryCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFPerformPersonEntityQueryCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFPerformPersonEntityQueryCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFPerformPersonEntityQueryCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    person = [(SFCommand *)v8 person];
    [(SFPerformPersonEntityQueryCommand *)v5 setPerson:person];

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

@end