@interface SFOpenMediaCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFOpenMediaCommand)initWithCoder:(id)coder;
- (SFOpenMediaCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFOpenMediaCommand

- (SFOpenMediaCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFOpenMediaCommand;
  v5 = [(SFOpenMediaCommand *)&v14 init];
  if (v5)
  {
    mediaMetadata = [protobufCopy mediaMetadata];

    if (mediaMetadata)
    {
      v7 = [SFMediaMetadata alloc];
      mediaMetadata2 = [protobufCopy mediaMetadata];
      v9 = [(SFMediaMetadata *)v7 initWithProtobuf:mediaMetadata2];
      [(SFOpenMediaCommand *)v5 setMediaMetadata:v9];
    }

    clientSelectedBundleIdentifier = [protobufCopy clientSelectedBundleIdentifier];

    if (clientSelectedBundleIdentifier)
    {
      clientSelectedBundleIdentifier2 = [protobufCopy clientSelectedBundleIdentifier];
      [(SFOpenMediaCommand *)v5 setClientSelectedBundleIdentifier:clientSelectedBundleIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFOpenMediaCommand;
  v3 = [(SFCommand *)&v9 hash];
  mediaMetadata = [(SFOpenMediaCommand *)self mediaMetadata];
  v5 = [mediaMetadata hash];
  clientSelectedBundleIdentifier = [(SFOpenMediaCommand *)self clientSelectedBundleIdentifier];
  v7 = v5 ^ [clientSelectedBundleIdentifier hash];

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
    if ([(SFOpenMediaCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFOpenMediaCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        mediaMetadata = [(SFOpenMediaCommand *)self mediaMetadata];
        mediaMetadata2 = [(SFOpenMediaCommand *)v6 mediaMetadata];
        if ((mediaMetadata != 0) == (mediaMetadata2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        mediaMetadata3 = [(SFOpenMediaCommand *)self mediaMetadata];
        if (mediaMetadata3)
        {
          mediaMetadata4 = [(SFOpenMediaCommand *)self mediaMetadata];
          mediaMetadata5 = [(SFOpenMediaCommand *)v6 mediaMetadata];
          if (![mediaMetadata4 isEqual:mediaMetadata5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = mediaMetadata5;
        }

        clientSelectedBundleIdentifier = [(SFOpenMediaCommand *)self clientSelectedBundleIdentifier];
        clientSelectedBundleIdentifier2 = [(SFOpenMediaCommand *)v6 clientSelectedBundleIdentifier];
        v14 = clientSelectedBundleIdentifier2;
        if ((clientSelectedBundleIdentifier != 0) == (clientSelectedBundleIdentifier2 == 0))
        {

          v11 = 0;
        }

        else
        {
          clientSelectedBundleIdentifier3 = [(SFOpenMediaCommand *)self clientSelectedBundleIdentifier];
          if (clientSelectedBundleIdentifier3)
          {
            v16 = clientSelectedBundleIdentifier3;
            clientSelectedBundleIdentifier4 = [(SFOpenMediaCommand *)self clientSelectedBundleIdentifier];
            [(SFOpenMediaCommand *)v6 clientSelectedBundleIdentifier];
            v17 = v20 = mediaMetadata4;
            v11 = [clientSelectedBundleIdentifier4 isEqual:v17];

            mediaMetadata4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        mediaMetadata5 = v21;
        if (!mediaMetadata3)
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
  v10.super_class = SFOpenMediaCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  mediaMetadata = [(SFOpenMediaCommand *)self mediaMetadata];
  v6 = [mediaMetadata copy];
  [v4 setMediaMetadata:v6];

  clientSelectedBundleIdentifier = [(SFOpenMediaCommand *)self clientSelectedBundleIdentifier];
  v8 = [clientSelectedBundleIdentifier copy];
  [v4 setClientSelectedBundleIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBOpenMediaCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBOpenMediaCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBOpenMediaCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBOpenMediaCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFOpenMediaCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFOpenMediaCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFOpenMediaCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mediaMetadata = [(SFCommand *)v8 mediaMetadata];
    [(SFOpenMediaCommand *)v5 setMediaMetadata:mediaMetadata];

    clientSelectedBundleIdentifier = [(SFCommand *)v8 clientSelectedBundleIdentifier];
    [(SFOpenMediaCommand *)v5 setClientSelectedBundleIdentifier:clientSelectedBundleIdentifier];

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