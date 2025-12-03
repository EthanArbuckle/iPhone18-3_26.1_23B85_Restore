@interface SFOpenWebClipCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFOpenWebClipCommand)initWithCoder:(id)coder;
- (SFOpenWebClipCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFOpenWebClipCommand

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFOpenWebClipCommand;
  v3 = [(SFCommand *)&v7 hash];
  clipIdentifier = [(SFOpenWebClipCommand *)self clipIdentifier];
  v5 = [clipIdentifier hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFOpenWebClipCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFOpenWebClipCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    clipIdentifier = [(SFOpenWebClipCommand *)self clipIdentifier];
    clipIdentifier2 = [(SFOpenWebClipCommand *)v5 clipIdentifier];
    if ((clipIdentifier != 0) == (clipIdentifier2 == 0))
    {
      v11 = 0;
    }

    else
    {
      clipIdentifier3 = [(SFOpenWebClipCommand *)self clipIdentifier];
      if (clipIdentifier3)
      {
        clipIdentifier4 = [(SFOpenWebClipCommand *)self clipIdentifier];
        clipIdentifier5 = [(SFOpenWebClipCommand *)v5 clipIdentifier];
        v11 = [clipIdentifier4 isEqual:clipIdentifier5];
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
  v8.super_class = SFOpenWebClipCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  clipIdentifier = [(SFOpenWebClipCommand *)self clipIdentifier];
  v6 = [clipIdentifier copy];
  [v4 setClipIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBOpenWebClipCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBOpenWebClipCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBOpenWebClipCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBOpenWebClipCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFOpenWebClipCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFOpenWebClipCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFOpenWebClipCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    clipIdentifier = [(SFCommand *)v8 clipIdentifier];
    [(SFOpenWebClipCommand *)v5 setClipIdentifier:clipIdentifier];

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

- (SFOpenWebClipCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFOpenWebClipCommand;
  v5 = [(SFOpenWebClipCommand *)&v10 init];
  if (v5)
  {
    clipIdentifier = [protobufCopy clipIdentifier];

    if (clipIdentifier)
    {
      clipIdentifier2 = [protobufCopy clipIdentifier];
      [(SFOpenWebClipCommand *)v5 setClipIdentifier:clipIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

@end