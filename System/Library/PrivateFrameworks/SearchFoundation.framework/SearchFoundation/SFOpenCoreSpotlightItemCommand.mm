@interface SFOpenCoreSpotlightItemCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFOpenCoreSpotlightItemCommand)initWithCoder:(id)coder;
- (SFOpenCoreSpotlightItemCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFOpenCoreSpotlightItemCommand

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFOpenCoreSpotlightItemCommand;
  v3 = [(SFCommand *)&v11 hash];
  coreSpotlightIdentifier = [(SFOpenCoreSpotlightItemCommand *)self coreSpotlightIdentifier];
  v5 = [coreSpotlightIdentifier hash];
  applicationBundleIdentifier = [(SFOpenCoreSpotlightItemCommand *)self applicationBundleIdentifier];
  v7 = v5 ^ [applicationBundleIdentifier hash];
  actionIdentifier = [(SFOpenCoreSpotlightItemCommand *)self actionIdentifier];
  v9 = v7 ^ [actionIdentifier hash];

  return v9 ^ v3;
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
    if ([(SFOpenCoreSpotlightItemCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFOpenCoreSpotlightItemCommand;
      if ([(SFCommand *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        coreSpotlightIdentifier = [(SFOpenCoreSpotlightItemCommand *)self coreSpotlightIdentifier];
        coreSpotlightIdentifier2 = [(SFOpenCoreSpotlightItemCommand *)v6 coreSpotlightIdentifier];
        if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        coreSpotlightIdentifier3 = [(SFOpenCoreSpotlightItemCommand *)self coreSpotlightIdentifier];
        if (coreSpotlightIdentifier3)
        {
          coreSpotlightIdentifier4 = [(SFOpenCoreSpotlightItemCommand *)self coreSpotlightIdentifier];
          coreSpotlightIdentifier5 = [(SFOpenCoreSpotlightItemCommand *)v6 coreSpotlightIdentifier];
          if (![coreSpotlightIdentifier4 isEqual:coreSpotlightIdentifier5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = coreSpotlightIdentifier5;
        }

        applicationBundleIdentifier = [(SFOpenCoreSpotlightItemCommand *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFOpenCoreSpotlightItemCommand *)v6 applicationBundleIdentifier];
        v14 = applicationBundleIdentifier2;
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        applicationBundleIdentifier3 = [(SFOpenCoreSpotlightItemCommand *)self applicationBundleIdentifier];
        if (applicationBundleIdentifier3)
        {
          v25 = applicationBundleIdentifier;
          applicationBundleIdentifier4 = [(SFOpenCoreSpotlightItemCommand *)self applicationBundleIdentifier];
          applicationBundleIdentifier5 = [(SFOpenCoreSpotlightItemCommand *)v6 applicationBundleIdentifier];
          v28 = applicationBundleIdentifier4;
          if (![applicationBundleIdentifier4 isEqual:?])
          {
            v11 = 0;
            applicationBundleIdentifier = v25;
            goto LABEL_26;
          }

          v29 = applicationBundleIdentifier3;
          v30 = coreSpotlightIdentifier4;
          applicationBundleIdentifier = v25;
        }

        else
        {
          v29 = 0;
          v30 = coreSpotlightIdentifier4;
        }

        actionIdentifier = [(SFOpenCoreSpotlightItemCommand *)self actionIdentifier];
        actionIdentifier2 = [(SFOpenCoreSpotlightItemCommand *)v6 actionIdentifier];
        if ((actionIdentifier != 0) == (actionIdentifier2 == 0))
        {

          v11 = 0;
          applicationBundleIdentifier3 = v29;
          coreSpotlightIdentifier4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = actionIdentifier;
          v26 = actionIdentifier2;
          actionIdentifier3 = [(SFOpenCoreSpotlightItemCommand *)self actionIdentifier];
          applicationBundleIdentifier3 = v29;
          if (actionIdentifier3)
          {
            v23 = actionIdentifier3;
            actionIdentifier4 = [(SFOpenCoreSpotlightItemCommand *)self actionIdentifier];
            actionIdentifier5 = [(SFOpenCoreSpotlightItemCommand *)v6 actionIdentifier];
            v11 = [actionIdentifier4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          coreSpotlightIdentifier4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        coreSpotlightIdentifier5 = v31;
        if (!coreSpotlightIdentifier3)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFOpenCoreSpotlightItemCommand;
  v4 = [(SFCommand *)&v12 copyWithZone:zone];
  coreSpotlightIdentifier = [(SFOpenCoreSpotlightItemCommand *)self coreSpotlightIdentifier];
  v6 = [coreSpotlightIdentifier copy];
  [v4 setCoreSpotlightIdentifier:v6];

  applicationBundleIdentifier = [(SFOpenCoreSpotlightItemCommand *)self applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v8];

  actionIdentifier = [(SFOpenCoreSpotlightItemCommand *)self actionIdentifier];
  v10 = [actionIdentifier copy];
  [v4 setActionIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBOpenCoreSpotlightItemCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBOpenCoreSpotlightItemCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBOpenCoreSpotlightItemCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBOpenCoreSpotlightItemCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFOpenCoreSpotlightItemCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFOpenCoreSpotlightItemCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFOpenCoreSpotlightItemCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    coreSpotlightIdentifier = [(SFCommand *)v8 coreSpotlightIdentifier];
    [(SFOpenCoreSpotlightItemCommand *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier];

    applicationBundleIdentifier = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFOpenCoreSpotlightItemCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];

    actionIdentifier = [(SFCommand *)v8 actionIdentifier];
    [(SFOpenCoreSpotlightItemCommand *)v5 setActionIdentifier:actionIdentifier];

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

- (SFOpenCoreSpotlightItemCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFOpenCoreSpotlightItemCommand;
  v5 = [(SFOpenCoreSpotlightItemCommand *)&v14 init];
  if (v5)
  {
    coreSpotlightIdentifier = [protobufCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [protobufCopy coreSpotlightIdentifier];
      [(SFOpenCoreSpotlightItemCommand *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFOpenCoreSpotlightItemCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    actionIdentifier = [protobufCopy actionIdentifier];

    if (actionIdentifier)
    {
      actionIdentifier2 = [protobufCopy actionIdentifier];
      [(SFOpenCoreSpotlightItemCommand *)v5 setActionIdentifier:actionIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

@end