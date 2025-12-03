@interface SFShowScreenTimeRequestSheetCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShowScreenTimeRequestSheetCommand)initWithCoder:(id)coder;
- (SFShowScreenTimeRequestSheetCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShowScreenTimeRequestSheetCommand

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFShowScreenTimeRequestSheetCommand;
  v3 = [(SFCommand *)&v7 hash];
  requestIdentifier = [(SFShowScreenTimeRequestSheetCommand *)self requestIdentifier];
  v5 = [requestIdentifier hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFShowScreenTimeRequestSheetCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFShowScreenTimeRequestSheetCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    requestIdentifier = [(SFShowScreenTimeRequestSheetCommand *)self requestIdentifier];
    requestIdentifier2 = [(SFShowScreenTimeRequestSheetCommand *)v5 requestIdentifier];
    if ((requestIdentifier != 0) == (requestIdentifier2 == 0))
    {
      v11 = 0;
    }

    else
    {
      requestIdentifier3 = [(SFShowScreenTimeRequestSheetCommand *)self requestIdentifier];
      if (requestIdentifier3)
      {
        requestIdentifier4 = [(SFShowScreenTimeRequestSheetCommand *)self requestIdentifier];
        requestIdentifier5 = [(SFShowScreenTimeRequestSheetCommand *)v5 requestIdentifier];
        v11 = [requestIdentifier4 isEqual:requestIdentifier5];
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
  v8.super_class = SFShowScreenTimeRequestSheetCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  requestIdentifier = [(SFShowScreenTimeRequestSheetCommand *)self requestIdentifier];
  v6 = [requestIdentifier copy];
  [v4 setRequestIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShowScreenTimeRequestSheetCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBShowScreenTimeRequestSheetCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShowScreenTimeRequestSheetCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBShowScreenTimeRequestSheetCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFShowScreenTimeRequestSheetCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFShowScreenTimeRequestSheetCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFShowScreenTimeRequestSheetCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    requestIdentifier = [(SFCommand *)v8 requestIdentifier];
    [(SFShowScreenTimeRequestSheetCommand *)v5 setRequestIdentifier:requestIdentifier];

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

- (SFShowScreenTimeRequestSheetCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFShowScreenTimeRequestSheetCommand;
  v5 = [(SFShowScreenTimeRequestSheetCommand *)&v10 init];
  if (v5)
  {
    requestIdentifier = [protobufCopy requestIdentifier];

    if (requestIdentifier)
    {
      requestIdentifier2 = [protobufCopy requestIdentifier];
      [(SFShowScreenTimeRequestSheetCommand *)v5 setRequestIdentifier:requestIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

@end