@interface SFShowPurchaseRequestSheetCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShowPurchaseRequestSheetCommand)initWithCoder:(id)coder;
- (SFShowPurchaseRequestSheetCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShowPurchaseRequestSheetCommand

- (SFShowPurchaseRequestSheetCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFShowPurchaseRequestSheetCommand;
  v5 = [(SFShowPurchaseRequestSheetCommand *)&v10 init];
  if (v5)
  {
    requestIdentifier = [protobufCopy requestIdentifier];

    if (requestIdentifier)
    {
      requestIdentifier2 = [protobufCopy requestIdentifier];
      [(SFShowPurchaseRequestSheetCommand *)v5 setRequestIdentifier:requestIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFShowPurchaseRequestSheetCommand;
  v3 = [(SFCommand *)&v7 hash];
  requestIdentifier = [(SFShowPurchaseRequestSheetCommand *)self requestIdentifier];
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

  else if ([(SFShowPurchaseRequestSheetCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFShowPurchaseRequestSheetCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    requestIdentifier = [(SFShowPurchaseRequestSheetCommand *)self requestIdentifier];
    requestIdentifier2 = [(SFShowPurchaseRequestSheetCommand *)v5 requestIdentifier];
    if ((requestIdentifier != 0) == (requestIdentifier2 == 0))
    {
      v11 = 0;
    }

    else
    {
      requestIdentifier3 = [(SFShowPurchaseRequestSheetCommand *)self requestIdentifier];
      if (requestIdentifier3)
      {
        requestIdentifier4 = [(SFShowPurchaseRequestSheetCommand *)self requestIdentifier];
        requestIdentifier5 = [(SFShowPurchaseRequestSheetCommand *)v5 requestIdentifier];
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
  v8.super_class = SFShowPurchaseRequestSheetCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  requestIdentifier = [(SFShowPurchaseRequestSheetCommand *)self requestIdentifier];
  v6 = [requestIdentifier copy];
  [v4 setRequestIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShowPurchaseRequestSheetCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBShowPurchaseRequestSheetCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShowPurchaseRequestSheetCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBShowPurchaseRequestSheetCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFShowPurchaseRequestSheetCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFShowPurchaseRequestSheetCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFShowPurchaseRequestSheetCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    requestIdentifier = [(SFCommand *)v8 requestIdentifier];
    [(SFShowPurchaseRequestSheetCommand *)v5 setRequestIdentifier:requestIdentifier];

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