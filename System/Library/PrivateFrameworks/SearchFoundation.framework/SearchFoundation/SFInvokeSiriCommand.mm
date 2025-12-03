@interface SFInvokeSiriCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFInvokeSiriCommand)initWithCoder:(id)coder;
- (SFInvokeSiriCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFInvokeSiriCommand

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFInvokeSiriCommand;
  v3 = [(SFCommand *)&v8 hash];
  utteranceText = [(SFInvokeSiriCommand *)self utteranceText];
  v5 = [utteranceText hash];
  v6 = v5 ^ [(SFInvokeSiriCommand *)self serviceProvider];

  return v6 ^ v3;
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
    if ([(SFInvokeSiriCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFInvokeSiriCommand;
      if ([(SFCommand *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        utteranceText = [(SFInvokeSiriCommand *)self utteranceText];
        utteranceText2 = [(SFInvokeSiriCommand *)v7 utteranceText];
        if ((utteranceText != 0) == (utteranceText2 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        utteranceText3 = [(SFInvokeSiriCommand *)self utteranceText];
        if (!utteranceText3 || (-[SFInvokeSiriCommand utteranceText](self, "utteranceText"), v3 = objc_claimAutoreleasedReturnValue(), -[SFInvokeSiriCommand utteranceText](v7, "utteranceText"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          serviceProvider = [(SFInvokeSiriCommand *)self serviceProvider];
          v11 = serviceProvider == [(SFInvokeSiriCommand *)v7 serviceProvider];
          if (!utteranceText3)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_13;
      }
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFInvokeSiriCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  utteranceText = [(SFInvokeSiriCommand *)self utteranceText];
  v6 = [utteranceText copy];
  [v4 setUtteranceText:v6];

  [v4 setServiceProvider:{-[SFInvokeSiriCommand serviceProvider](self, "serviceProvider")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBInvokeSiriCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBInvokeSiriCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBInvokeSiriCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBInvokeSiriCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFInvokeSiriCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFInvokeSiriCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFInvokeSiriCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    utteranceText = [(SFCommand *)v8 utteranceText];
    [(SFInvokeSiriCommand *)v5 setUtteranceText:utteranceText];

    [(SFInvokeSiriCommand *)v5 setServiceProvider:[(SFCommand *)v8 serviceProvider]];
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

- (SFInvokeSiriCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFInvokeSiriCommand;
  v5 = [(SFInvokeSiriCommand *)&v10 init];
  if (v5)
  {
    utteranceText = [protobufCopy utteranceText];

    if (utteranceText)
    {
      utteranceText2 = [protobufCopy utteranceText];
      [(SFInvokeSiriCommand *)v5 setUtteranceText:utteranceText2];
    }

    if ([protobufCopy serviceProvider])
    {
      -[SFInvokeSiriCommand setServiceProvider:](v5, "setServiceProvider:", [protobufCopy serviceProvider]);
    }

    v8 = v5;
  }

  return v5;
}

@end