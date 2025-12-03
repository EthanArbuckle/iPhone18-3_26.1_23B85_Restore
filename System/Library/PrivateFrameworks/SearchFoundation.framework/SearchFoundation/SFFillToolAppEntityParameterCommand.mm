@interface SFFillToolAppEntityParameterCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFillToolAppEntityParameterCommand)initWithCoder:(id)coder;
- (SFFillToolAppEntityParameterCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFFillToolAppEntityParameterCommand

- (SFFillToolAppEntityParameterCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFFillToolAppEntityParameterCommand;
  v5 = [(SFFillToolAppEntityParameterCommand *)&v14 init];
  if (v5)
  {
    encodedTypedValue = [protobufCopy encodedTypedValue];

    if (encodedTypedValue)
    {
      encodedTypedValue2 = [protobufCopy encodedTypedValue];
      [(SFFillToolAppEntityParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue2];
    }

    entity = [protobufCopy entity];

    if (entity)
    {
      v9 = [SFAppEntityAnnotation alloc];
      entity2 = [protobufCopy entity];
      v11 = [(SFAppEntityAnnotation *)v9 initWithProtobuf:entity2];
      [(SFFillToolAppEntityParameterCommand *)v5 setEntity:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFFillToolAppEntityParameterCommand;
  v3 = [(SFCommand *)&v9 hash];
  encodedTypedValue = [(SFFillToolAppEntityParameterCommand *)self encodedTypedValue];
  v5 = [encodedTypedValue hash];
  entity = [(SFFillToolAppEntityParameterCommand *)self entity];
  v7 = v5 ^ [entity hash];

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
    if ([(SFFillToolAppEntityParameterCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFFillToolAppEntityParameterCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        encodedTypedValue = [(SFFillToolAppEntityParameterCommand *)self encodedTypedValue];
        encodedTypedValue2 = [(SFFillToolAppEntityParameterCommand *)v6 encodedTypedValue];
        if ((encodedTypedValue != 0) == (encodedTypedValue2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        encodedTypedValue3 = [(SFFillToolAppEntityParameterCommand *)self encodedTypedValue];
        if (encodedTypedValue3)
        {
          encodedTypedValue4 = [(SFFillToolAppEntityParameterCommand *)self encodedTypedValue];
          encodedTypedValue5 = [(SFFillToolAppEntityParameterCommand *)v6 encodedTypedValue];
          if (![encodedTypedValue4 isEqual:encodedTypedValue5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = encodedTypedValue5;
        }

        entity = [(SFFillToolAppEntityParameterCommand *)self entity];
        entity2 = [(SFFillToolAppEntityParameterCommand *)v6 entity];
        v14 = entity2;
        if ((entity != 0) == (entity2 == 0))
        {

          v11 = 0;
        }

        else
        {
          entity3 = [(SFFillToolAppEntityParameterCommand *)self entity];
          if (entity3)
          {
            v16 = entity3;
            entity4 = [(SFFillToolAppEntityParameterCommand *)self entity];
            [(SFFillToolAppEntityParameterCommand *)v6 entity];
            v17 = v20 = encodedTypedValue4;
            v11 = [entity4 isEqual:v17];

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
  v10.super_class = SFFillToolAppEntityParameterCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  encodedTypedValue = [(SFFillToolAppEntityParameterCommand *)self encodedTypedValue];
  v6 = [encodedTypedValue copy];
  [v4 setEncodedTypedValue:v6];

  entity = [(SFFillToolAppEntityParameterCommand *)self entity];
  v8 = [entity copy];
  [v4 setEntity:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFillToolAppEntityParameterCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBFillToolAppEntityParameterCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFillToolAppEntityParameterCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBFillToolAppEntityParameterCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFFillToolAppEntityParameterCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFFillToolAppEntityParameterCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFFillToolAppEntityParameterCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    encodedTypedValue = [(SFCommand *)v8 encodedTypedValue];
    [(SFFillToolAppEntityParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue];

    entity = [(SFCommand *)v8 entity];
    [(SFFillToolAppEntityParameterCommand *)v5 setEntity:entity];

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