@interface SFFillToolPersonParameterCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFillToolPersonParameterCommand)initWithCoder:(id)coder;
- (SFFillToolPersonParameterCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFFillToolPersonParameterCommand

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFFillToolPersonParameterCommand;
  v3 = [(SFCommand *)&v9 hash];
  encodedTypedValue = [(SFFillToolPersonParameterCommand *)self encodedTypedValue];
  v5 = [encodedTypedValue hash];
  person = [(SFFillToolPersonParameterCommand *)self person];
  v7 = v5 ^ [person hash];

  return v7 ^ v3;
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
    if ([(SFFillToolPersonParameterCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFFillToolPersonParameterCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        encodedTypedValue = [(SFFillToolPersonParameterCommand *)self encodedTypedValue];
        encodedTypedValue2 = [(SFFillToolPersonParameterCommand *)v6 encodedTypedValue];
        if ((encodedTypedValue != 0) == (encodedTypedValue2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        encodedTypedValue3 = [(SFFillToolPersonParameterCommand *)self encodedTypedValue];
        if (encodedTypedValue3)
        {
          encodedTypedValue4 = [(SFFillToolPersonParameterCommand *)self encodedTypedValue];
          encodedTypedValue5 = [(SFFillToolPersonParameterCommand *)v6 encodedTypedValue];
          if (![encodedTypedValue4 isEqual:encodedTypedValue5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = encodedTypedValue5;
        }

        person = [(SFFillToolPersonParameterCommand *)self person];
        person2 = [(SFFillToolPersonParameterCommand *)v6 person];
        v14 = person2;
        if ((person != 0) == (person2 == 0))
        {

          v11 = 0;
        }

        else
        {
          person3 = [(SFFillToolPersonParameterCommand *)self person];
          if (person3)
          {
            v16 = person3;
            person4 = [(SFFillToolPersonParameterCommand *)self person];
            [(SFFillToolPersonParameterCommand *)v6 person];
            v17 = v20 = encodedTypedValue4;
            v11 = [person4 isEqual:v17];

            encodedTypedValue4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        encodedTypedValue5 = v21;
        if (!encodedTypedValue3)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFFillToolPersonParameterCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  encodedTypedValue = [(SFFillToolPersonParameterCommand *)self encodedTypedValue];
  v6 = [encodedTypedValue copy];
  [v4 setEncodedTypedValue:v6];

  person = [(SFFillToolPersonParameterCommand *)self person];
  v8 = [person copy];
  [v4 setPerson:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFillToolPersonParameterCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBFillToolPersonParameterCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFillToolPersonParameterCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBFillToolPersonParameterCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFFillToolPersonParameterCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFFillToolPersonParameterCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFFillToolPersonParameterCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    encodedTypedValue = [(SFCommand *)v8 encodedTypedValue];
    [(SFFillToolPersonParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue];

    person = [(SFCommand *)v8 person];
    [(SFFillToolPersonParameterCommand *)v5 setPerson:person];

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

- (SFFillToolPersonParameterCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFFillToolPersonParameterCommand;
  v5 = [(SFFillToolPersonParameterCommand *)&v14 init];
  if (v5)
  {
    encodedTypedValue = [protobufCopy encodedTypedValue];

    if (encodedTypedValue)
    {
      encodedTypedValue2 = [protobufCopy encodedTypedValue];
      [(SFFillToolPersonParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue2];
    }

    person = [protobufCopy person];

    if (person)
    {
      v9 = [SFPerson alloc];
      person2 = [protobufCopy person];
      v11 = [(SFPerson *)v9 initWithProtobuf:person2];
      [(SFFillToolPersonParameterCommand *)v5 setPerson:v11];
    }

    v12 = v5;
  }

  return v5;
}

@end