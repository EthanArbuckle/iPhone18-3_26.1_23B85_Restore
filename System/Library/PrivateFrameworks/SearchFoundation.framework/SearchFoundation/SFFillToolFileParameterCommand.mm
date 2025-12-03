@interface SFFillToolFileParameterCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFillToolFileParameterCommand)initWithCoder:(id)coder;
- (SFFillToolFileParameterCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFFillToolFileParameterCommand

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFFillToolFileParameterCommand;
  v3 = [(SFCommand *)&v9 hash];
  encodedTypedValue = [(SFFillToolFileParameterCommand *)self encodedTypedValue];
  v5 = [encodedTypedValue hash];
  filePath = [(SFFillToolFileParameterCommand *)self filePath];
  v7 = v5 ^ [filePath hash];

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
    if ([(SFFillToolFileParameterCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFFillToolFileParameterCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        encodedTypedValue = [(SFFillToolFileParameterCommand *)self encodedTypedValue];
        encodedTypedValue2 = [(SFFillToolFileParameterCommand *)v6 encodedTypedValue];
        if ((encodedTypedValue != 0) == (encodedTypedValue2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        encodedTypedValue3 = [(SFFillToolFileParameterCommand *)self encodedTypedValue];
        if (encodedTypedValue3)
        {
          encodedTypedValue4 = [(SFFillToolFileParameterCommand *)self encodedTypedValue];
          encodedTypedValue5 = [(SFFillToolFileParameterCommand *)v6 encodedTypedValue];
          if (![encodedTypedValue4 isEqual:encodedTypedValue5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = encodedTypedValue5;
        }

        filePath = [(SFFillToolFileParameterCommand *)self filePath];
        filePath2 = [(SFFillToolFileParameterCommand *)v6 filePath];
        v14 = filePath2;
        if ((filePath != 0) == (filePath2 == 0))
        {

          v11 = 0;
        }

        else
        {
          filePath3 = [(SFFillToolFileParameterCommand *)self filePath];
          if (filePath3)
          {
            v16 = filePath3;
            filePath4 = [(SFFillToolFileParameterCommand *)self filePath];
            [(SFFillToolFileParameterCommand *)v6 filePath];
            v17 = v20 = encodedTypedValue4;
            v11 = [filePath4 isEqual:v17];

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
  v10.super_class = SFFillToolFileParameterCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  encodedTypedValue = [(SFFillToolFileParameterCommand *)self encodedTypedValue];
  v6 = [encodedTypedValue copy];
  [v4 setEncodedTypedValue:v6];

  filePath = [(SFFillToolFileParameterCommand *)self filePath];
  v8 = [filePath copy];
  [v4 setFilePath:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFillToolFileParameterCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBFillToolFileParameterCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFillToolFileParameterCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBFillToolFileParameterCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFFillToolFileParameterCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFFillToolFileParameterCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFFillToolFileParameterCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    encodedTypedValue = [(SFCommand *)v8 encodedTypedValue];
    [(SFFillToolFileParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue];

    filePath = [(SFCommand *)v8 filePath];
    [(SFFillToolFileParameterCommand *)v5 setFilePath:filePath];

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

- (SFFillToolFileParameterCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFFillToolFileParameterCommand;
  v5 = [(SFFillToolFileParameterCommand *)&v12 init];
  if (v5)
  {
    encodedTypedValue = [protobufCopy encodedTypedValue];

    if (encodedTypedValue)
    {
      encodedTypedValue2 = [protobufCopy encodedTypedValue];
      [(SFFillToolFileParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue2];
    }

    filePath = [protobufCopy filePath];

    if (filePath)
    {
      filePath2 = [protobufCopy filePath];
      [(SFFillToolFileParameterCommand *)v5 setFilePath:filePath2];
    }

    v10 = v5;
  }

  return v5;
}

@end