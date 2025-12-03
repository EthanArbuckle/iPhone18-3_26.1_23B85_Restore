@interface SFCallCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCallCommand)initWithCoder:(id)coder;
- (SFCallCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCallCommand

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFCallCommand;
  v3 = [(SFCommand *)&v7 hash];
  phoneNumber = [(SFCallCommand *)self phoneNumber];
  v5 = [phoneNumber hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFCallCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFCallCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    phoneNumber = [(SFCallCommand *)self phoneNumber];
    phoneNumber2 = [(SFCallCommand *)v5 phoneNumber];
    if ((phoneNumber != 0) == (phoneNumber2 == 0))
    {
      v11 = 0;
    }

    else
    {
      phoneNumber3 = [(SFCallCommand *)self phoneNumber];
      if (phoneNumber3)
      {
        phoneNumber4 = [(SFCallCommand *)self phoneNumber];
        phoneNumber5 = [(SFCallCommand *)v5 phoneNumber];
        v11 = [phoneNumber4 isEqual:phoneNumber5];
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
  v8.super_class = SFCallCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  phoneNumber = [(SFCallCommand *)self phoneNumber];
  v6 = [phoneNumber copy];
  [v4 setPhoneNumber:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCallCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBCallCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCallCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCallCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFCallCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFCallCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCallCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    phoneNumber = [(SFCommand *)v8 phoneNumber];
    [(SFCallCommand *)v5 setPhoneNumber:phoneNumber];

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

- (SFCallCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFCallCommand;
  v5 = [(SFCallCommand *)&v10 init];
  if (v5)
  {
    phoneNumber = [protobufCopy phoneNumber];

    if (phoneNumber)
    {
      phoneNumber2 = [protobufCopy phoneNumber];
      [(SFCallCommand *)v5 setPhoneNumber:phoneNumber2];
    }

    v8 = v5;
  }

  return v5;
}

@end