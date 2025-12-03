@interface SFOpenFileProviderItemCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFOpenFileProviderItemCommand)initWithCoder:(id)coder;
- (SFOpenFileProviderItemCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFOpenFileProviderItemCommand

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = SFOpenFileProviderItemCommand;
  v3 = [(SFCommand *)&v10 hash];
  coreSpotlightIdentifier = [(SFOpenFileProviderItemCommand *)self coreSpotlightIdentifier];
  v5 = [coreSpotlightIdentifier hash];
  fileProviderIdentifier = [(SFOpenFileProviderItemCommand *)self fileProviderIdentifier];
  v7 = v5 ^ [fileProviderIdentifier hash];
  v8 = v7 ^ [(SFOpenFileProviderItemCommand *)self shouldRevealFile];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFOpenFileProviderItemCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v23.receiver = self;
      v23.super_class = SFOpenFileProviderItemCommand;
      if ([(SFCommand *)&v23 isEqual:equalCopy])
      {
        v6 = equalCopy;
        coreSpotlightIdentifier = [(SFOpenFileProviderItemCommand *)self coreSpotlightIdentifier];
        coreSpotlightIdentifier2 = [(SFOpenFileProviderItemCommand *)v6 coreSpotlightIdentifier];
        if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_25:

          goto LABEL_26;
        }

        coreSpotlightIdentifier3 = [(SFOpenFileProviderItemCommand *)self coreSpotlightIdentifier];
        if (coreSpotlightIdentifier3)
        {
          coreSpotlightIdentifier4 = [(SFOpenFileProviderItemCommand *)self coreSpotlightIdentifier];
          coreSpotlightIdentifier5 = [(SFOpenFileProviderItemCommand *)v6 coreSpotlightIdentifier];
          if (![coreSpotlightIdentifier4 isEqual:coreSpotlightIdentifier5])
          {
            LOBYTE(v11) = 0;
            goto LABEL_23;
          }

          v22 = coreSpotlightIdentifier4;
        }

        fileProviderIdentifier = [(SFOpenFileProviderItemCommand *)self fileProviderIdentifier];
        fileProviderIdentifier2 = [(SFOpenFileProviderItemCommand *)v6 fileProviderIdentifier];
        v14 = fileProviderIdentifier2;
        if ((fileProviderIdentifier != 0) == (fileProviderIdentifier2 == 0))
        {

          LOBYTE(v11) = 0;
          goto LABEL_22;
        }

        fileProviderIdentifier3 = [(SFOpenFileProviderItemCommand *)self fileProviderIdentifier];
        if (fileProviderIdentifier3)
        {
          v19 = coreSpotlightIdentifier5;
          fileProviderIdentifier4 = [(SFOpenFileProviderItemCommand *)self fileProviderIdentifier];
          fileProviderIdentifier5 = [(SFOpenFileProviderItemCommand *)v6 fileProviderIdentifier];
          v21 = fileProviderIdentifier4;
          if (![fileProviderIdentifier4 isEqual:?])
          {
            LOBYTE(v11) = 0;
            coreSpotlightIdentifier5 = v19;
LABEL_20:

LABEL_21:
LABEL_22:
            coreSpotlightIdentifier4 = v22;
            if (!coreSpotlightIdentifier3)
            {
LABEL_24:

              goto LABEL_25;
            }

LABEL_23:

            goto LABEL_24;
          }

          coreSpotlightIdentifier5 = v19;
        }

        shouldRevealFile = [(SFOpenFileProviderItemCommand *)self shouldRevealFile];
        v11 = shouldRevealFile ^ [(SFOpenFileProviderItemCommand *)v6 shouldRevealFile]^ 1;
        if (!fileProviderIdentifier3)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_26:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFOpenFileProviderItemCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  coreSpotlightIdentifier = [(SFOpenFileProviderItemCommand *)self coreSpotlightIdentifier];
  v6 = [coreSpotlightIdentifier copy];
  [v4 setCoreSpotlightIdentifier:v6];

  fileProviderIdentifier = [(SFOpenFileProviderItemCommand *)self fileProviderIdentifier];
  v8 = [fileProviderIdentifier copy];
  [v4 setFileProviderIdentifier:v8];

  [v4 setShouldRevealFile:{-[SFOpenFileProviderItemCommand shouldRevealFile](self, "shouldRevealFile")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBOpenFileProviderItemCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBOpenFileProviderItemCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBOpenFileProviderItemCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBOpenFileProviderItemCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFOpenFileProviderItemCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFOpenFileProviderItemCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFOpenFileProviderItemCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    coreSpotlightIdentifier = [(SFCommand *)v8 coreSpotlightIdentifier];
    [(SFOpenFileProviderItemCommand *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier];

    fileProviderIdentifier = [(SFCommand *)v8 fileProviderIdentifier];
    [(SFOpenFileProviderItemCommand *)v5 setFileProviderIdentifier:fileProviderIdentifier];

    [(SFOpenFileProviderItemCommand *)v5 setShouldRevealFile:[(SFCommand *)v8 shouldRevealFile]];
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

- (SFOpenFileProviderItemCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFOpenFileProviderItemCommand;
  v5 = [(SFOpenFileProviderItemCommand *)&v12 init];
  if (v5)
  {
    coreSpotlightIdentifier = [protobufCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [protobufCopy coreSpotlightIdentifier];
      [(SFOpenFileProviderItemCommand *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    fileProviderIdentifier = [protobufCopy fileProviderIdentifier];

    if (fileProviderIdentifier)
    {
      fileProviderIdentifier2 = [protobufCopy fileProviderIdentifier];
      [(SFOpenFileProviderItemCommand *)v5 setFileProviderIdentifier:fileProviderIdentifier2];
    }

    if ([protobufCopy shouldRevealFile])
    {
      -[SFOpenFileProviderItemCommand setShouldRevealFile:](v5, "setShouldRevealFile:", [protobufCopy shouldRevealFile]);
    }

    v10 = v5;
  }

  return v5;
}

@end