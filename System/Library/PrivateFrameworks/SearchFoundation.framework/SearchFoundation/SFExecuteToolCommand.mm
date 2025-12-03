@interface SFExecuteToolCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFExecuteToolCommand)initWithCoder:(id)coder;
- (SFExecuteToolCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFExecuteToolCommand

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFExecuteToolCommand;
  v3 = [(SFCommand *)&v9 hash];
  toolIdentifier = [(SFExecuteToolCommand *)self toolIdentifier];
  v5 = [toolIdentifier hash];
  toolInvocationData = [(SFExecuteToolCommand *)self toolInvocationData];
  v7 = v5 ^ [toolInvocationData hash];

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
    if ([(SFExecuteToolCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFExecuteToolCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        toolIdentifier = [(SFExecuteToolCommand *)self toolIdentifier];
        toolIdentifier2 = [(SFExecuteToolCommand *)v6 toolIdentifier];
        if ((toolIdentifier != 0) == (toolIdentifier2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        toolIdentifier3 = [(SFExecuteToolCommand *)self toolIdentifier];
        if (toolIdentifier3)
        {
          toolIdentifier4 = [(SFExecuteToolCommand *)self toolIdentifier];
          toolIdentifier5 = [(SFExecuteToolCommand *)v6 toolIdentifier];
          if (![toolIdentifier4 isEqual:toolIdentifier5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = toolIdentifier5;
        }

        toolInvocationData = [(SFExecuteToolCommand *)self toolInvocationData];
        toolInvocationData2 = [(SFExecuteToolCommand *)v6 toolInvocationData];
        v14 = toolInvocationData2;
        if ((toolInvocationData != 0) == (toolInvocationData2 == 0))
        {

          v11 = 0;
        }

        else
        {
          toolInvocationData3 = [(SFExecuteToolCommand *)self toolInvocationData];
          if (toolInvocationData3)
          {
            v16 = toolInvocationData3;
            toolInvocationData4 = [(SFExecuteToolCommand *)self toolInvocationData];
            [(SFExecuteToolCommand *)v6 toolInvocationData];
            v17 = v20 = toolIdentifier4;
            v11 = [toolInvocationData4 isEqual:v17];

            toolIdentifier4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        toolIdentifier5 = v21;
        if (!toolIdentifier3)
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
  v10.super_class = SFExecuteToolCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  toolIdentifier = [(SFExecuteToolCommand *)self toolIdentifier];
  v6 = [toolIdentifier copy];
  [v4 setToolIdentifier:v6];

  toolInvocationData = [(SFExecuteToolCommand *)self toolInvocationData];
  v8 = [toolInvocationData copy];
  [v4 setToolInvocationData:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBExecuteToolCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBExecuteToolCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBExecuteToolCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBExecuteToolCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFExecuteToolCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFExecuteToolCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFExecuteToolCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    toolIdentifier = [(SFCommand *)v8 toolIdentifier];
    [(SFExecuteToolCommand *)v5 setToolIdentifier:toolIdentifier];

    toolInvocationData = [(SFCommand *)v8 toolInvocationData];
    [(SFExecuteToolCommand *)v5 setToolInvocationData:toolInvocationData];

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

- (SFExecuteToolCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFExecuteToolCommand;
  v5 = [(SFExecuteToolCommand *)&v12 init];
  if (v5)
  {
    toolIdentifier = [protobufCopy toolIdentifier];

    if (toolIdentifier)
    {
      toolIdentifier2 = [protobufCopy toolIdentifier];
      [(SFExecuteToolCommand *)v5 setToolIdentifier:toolIdentifier2];
    }

    toolInvocationData = [protobufCopy toolInvocationData];

    if (toolInvocationData)
    {
      toolInvocationData2 = [protobufCopy toolInvocationData];
      [(SFExecuteToolCommand *)v5 setToolInvocationData:toolInvocationData2];
    }

    v10 = v5;
  }

  return v5;
}

@end