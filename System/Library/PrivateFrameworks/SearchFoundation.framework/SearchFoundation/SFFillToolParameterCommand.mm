@interface SFFillToolParameterCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFillToolParameterCommand)initWithCoder:(id)coder;
- (SFFillToolParameterCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFFillToolParameterCommand

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFFillToolParameterCommand;
  v3 = [(SFCommand *)&v7 hash];
  encodedTypedValue = [(SFFillToolParameterCommand *)self encodedTypedValue];
  v5 = [encodedTypedValue hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFFillToolParameterCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFFillToolParameterCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    encodedTypedValue = [(SFFillToolParameterCommand *)self encodedTypedValue];
    encodedTypedValue2 = [(SFFillToolParameterCommand *)v5 encodedTypedValue];
    if ((encodedTypedValue != 0) == (encodedTypedValue2 == 0))
    {
      v11 = 0;
    }

    else
    {
      encodedTypedValue3 = [(SFFillToolParameterCommand *)self encodedTypedValue];
      if (encodedTypedValue3)
      {
        encodedTypedValue4 = [(SFFillToolParameterCommand *)self encodedTypedValue];
        encodedTypedValue5 = [(SFFillToolParameterCommand *)v5 encodedTypedValue];
        v11 = [encodedTypedValue4 isEqual:encodedTypedValue5];
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
  v8.super_class = SFFillToolParameterCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  encodedTypedValue = [(SFFillToolParameterCommand *)self encodedTypedValue];
  v6 = [encodedTypedValue copy];
  [v4 setEncodedTypedValue:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFillToolParameterCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBFillToolParameterCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFillToolParameterCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBFillToolParameterCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFFillToolParameterCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFFillToolParameterCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFFillToolParameterCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    encodedTypedValue = [(SFCommand *)v8 encodedTypedValue];
    [(SFFillToolParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue];

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

- (SFFillToolParameterCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFFillToolParameterCommand;
  v5 = [(SFFillToolParameterCommand *)&v10 init];
  if (v5)
  {
    encodedTypedValue = [protobufCopy encodedTypedValue];

    if (encodedTypedValue)
    {
      encodedTypedValue2 = [protobufCopy encodedTypedValue];
      [(SFFillToolParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue2];
    }

    v8 = v5;
  }

  return v5;
}

@end