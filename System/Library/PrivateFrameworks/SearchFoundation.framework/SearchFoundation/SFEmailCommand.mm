@interface SFEmailCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFEmailCommand)initWithCoder:(id)coder;
- (SFEmailCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFEmailCommand

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFEmailCommand;
  v3 = [(SFCommand *)&v7 hash];
  email = [(SFEmailCommand *)self email];
  v5 = [email hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFEmailCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFEmailCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    email = [(SFEmailCommand *)self email];
    email2 = [(SFEmailCommand *)v5 email];
    if ((email != 0) == (email2 == 0))
    {
      v11 = 0;
    }

    else
    {
      email3 = [(SFEmailCommand *)self email];
      if (email3)
      {
        email4 = [(SFEmailCommand *)self email];
        email5 = [(SFEmailCommand *)v5 email];
        v11 = [email4 isEqual:email5];
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
  v8.super_class = SFEmailCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  email = [(SFEmailCommand *)self email];
  v6 = [email copy];
  [v4 setEmail:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBEmailCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBEmailCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBEmailCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBEmailCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFEmailCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFEmailCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFEmailCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    email = [(SFCommand *)v8 email];
    [(SFEmailCommand *)v5 setEmail:email];

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

- (SFEmailCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFEmailCommand;
  v5 = [(SFEmailCommand *)&v10 init];
  if (v5)
  {
    email = [protobufCopy email];

    if (email)
    {
      email2 = [protobufCopy email];
      [(SFEmailCommand *)v5 setEmail:email2];
    }

    v8 = v5;
  }

  return v5;
}

@end