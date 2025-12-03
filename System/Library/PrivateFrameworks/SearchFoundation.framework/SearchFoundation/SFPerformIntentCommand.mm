@interface SFPerformIntentCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerformIntentCommand)initWithCoder:(id)coder;
- (SFPerformIntentCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPerformIntentCommand

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = SFPerformIntentCommand;
  v3 = [(SFCommand *)&v14 hash];
  intentMessageName = [(SFPerformIntentCommand *)self intentMessageName];
  v5 = [intentMessageName hash];
  applicationBundleIdentifier = [(SFPerformIntentCommand *)self applicationBundleIdentifier];
  v7 = v5 ^ [applicationBundleIdentifier hash];
  intentMessageData = [(SFPerformIntentCommand *)self intentMessageData];
  v9 = v7 ^ [intentMessageData hash];
  v10 = v9 ^ [(SFPerformIntentCommand *)self isRunnableWorkflow];
  biomeStreamIdentifier = [(SFPerformIntentCommand *)self biomeStreamIdentifier];
  v12 = v10 ^ [biomeStreamIdentifier hash];

  return v12 ^ v3;
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
    if ([(SFPerformIntentCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v44.receiver = self;
      v44.super_class = SFPerformIntentCommand;
      if ([(SFCommand *)&v44 isEqual:equalCopy])
      {
        v6 = equalCopy;
        intentMessageName = [(SFPerformIntentCommand *)self intentMessageName];
        intentMessageName2 = [(SFPerformIntentCommand *)v6 intentMessageName];
        if ((intentMessageName != 0) == (intentMessageName2 == 0))
        {
          v11 = 0;
LABEL_40:

          goto LABEL_41;
        }

        intentMessageName3 = [(SFPerformIntentCommand *)self intentMessageName];
        if (intentMessageName3)
        {
          intentMessageName4 = [(SFPerformIntentCommand *)self intentMessageName];
          intentMessageName5 = [(SFPerformIntentCommand *)v6 intentMessageName];
          if (![intentMessageName4 isEqual:intentMessageName5])
          {
            v11 = 0;
            goto LABEL_38;
          }

          v43 = intentMessageName4;
        }

        applicationBundleIdentifier = [(SFPerformIntentCommand *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFPerformIntentCommand *)v6 applicationBundleIdentifier];
        v14 = applicationBundleIdentifier2;
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
          goto LABEL_37;
        }

        applicationBundleIdentifier3 = [(SFPerformIntentCommand *)self applicationBundleIdentifier];
        if (applicationBundleIdentifier3)
        {
          v36 = intentMessageName3;
          v16 = v14;
          v17 = applicationBundleIdentifier;
          applicationBundleIdentifier4 = [(SFPerformIntentCommand *)self applicationBundleIdentifier];
          applicationBundleIdentifier5 = [(SFPerformIntentCommand *)v6 applicationBundleIdentifier];
          v39 = applicationBundleIdentifier4;
          if (![applicationBundleIdentifier4 isEqual:?])
          {
            v11 = 0;
            applicationBundleIdentifier = v17;
            v14 = v16;
            intentMessageName3 = v36;
            goto LABEL_35;
          }

          v40 = intentMessageName5;
          v42 = applicationBundleIdentifier3;
          applicationBundleIdentifier = v17;
          v14 = v16;
          intentMessageName3 = v36;
        }

        else
        {
          v40 = intentMessageName5;
          v42 = 0;
        }

        intentMessageData = [(SFPerformIntentCommand *)self intentMessageData];
        intentMessageData2 = [(SFPerformIntentCommand *)v6 intentMessageData];
        if ((intentMessageData != 0) == (intentMessageData2 == 0))
        {

          v11 = 0;
          intentMessageName5 = v40;
          applicationBundleIdentifier3 = v42;
          if (!v42)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v34 = intentMessageData2;
        v35 = intentMessageData;
        [(SFPerformIntentCommand *)self intentMessageData];
        v37 = applicationBundleIdentifier3 = v42;
        if (v37)
        {
          intentMessageData3 = [(SFPerformIntentCommand *)self intentMessageData];
          intentMessageData4 = [(SFPerformIntentCommand *)v6 intentMessageData];
          v33 = intentMessageData3;
          v22 = [intentMessageData3 isEqual:?];
          intentMessageName5 = v40;
          if (!v22)
          {
            v11 = 0;
LABEL_33:

LABEL_34:
            if (!applicationBundleIdentifier3)
            {
LABEL_36:

LABEL_37:
              intentMessageName4 = v43;
              if (!intentMessageName3)
              {
LABEL_39:

                goto LABEL_40;
              }

LABEL_38:

              goto LABEL_39;
            }

LABEL_35:

            goto LABEL_36;
          }
        }

        else
        {
          intentMessageName5 = v40;
        }

        isRunnableWorkflow = [(SFPerformIntentCommand *)self isRunnableWorkflow];
        if (isRunnableWorkflow == [(SFPerformIntentCommand *)v6 isRunnableWorkflow])
        {
          biomeStreamIdentifier = [(SFPerformIntentCommand *)self biomeStreamIdentifier];
          biomeStreamIdentifier2 = [(SFPerformIntentCommand *)v6 biomeStreamIdentifier];
          if ((biomeStreamIdentifier != 0) != (biomeStreamIdentifier2 == 0))
          {
            v31 = biomeStreamIdentifier2;
            v41 = biomeStreamIdentifier;
            biomeStreamIdentifier3 = [(SFPerformIntentCommand *)self biomeStreamIdentifier];
            if (biomeStreamIdentifier3)
            {
              v30 = biomeStreamIdentifier3;
              biomeStreamIdentifier4 = [(SFPerformIntentCommand *)self biomeStreamIdentifier];
              biomeStreamIdentifier5 = [(SFPerformIntentCommand *)v6 biomeStreamIdentifier];
              v11 = [biomeStreamIdentifier4 isEqual:biomeStreamIdentifier5];
            }

            else
            {

              v11 = 1;
            }

LABEL_32:
            applicationBundleIdentifier3 = v42;
            if (!v37)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }
        }

        v11 = 0;
        goto LABEL_32;
      }
    }

    v11 = 0;
  }

LABEL_41:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = SFPerformIntentCommand;
  v4 = [(SFCommand *)&v14 copyWithZone:zone];
  intentMessageName = [(SFPerformIntentCommand *)self intentMessageName];
  v6 = [intentMessageName copy];
  [v4 setIntentMessageName:v6];

  applicationBundleIdentifier = [(SFPerformIntentCommand *)self applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v8];

  intentMessageData = [(SFPerformIntentCommand *)self intentMessageData];
  v10 = [intentMessageData copy];
  [v4 setIntentMessageData:v10];

  [v4 setIsRunnableWorkflow:{-[SFPerformIntentCommand isRunnableWorkflow](self, "isRunnableWorkflow")}];
  biomeStreamIdentifier = [(SFPerformIntentCommand *)self biomeStreamIdentifier];
  v12 = [biomeStreamIdentifier copy];
  [v4 setBiomeStreamIdentifier:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerformIntentCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBPerformIntentCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerformIntentCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPerformIntentCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFPerformIntentCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFPerformIntentCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFPerformIntentCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intentMessageName = [(SFCommand *)v8 intentMessageName];
    [(SFPerformIntentCommand *)v5 setIntentMessageName:intentMessageName];

    applicationBundleIdentifier = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFPerformIntentCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];

    intentMessageData = [(SFCommand *)v8 intentMessageData];
    [(SFPerformIntentCommand *)v5 setIntentMessageData:intentMessageData];

    [(SFPerformIntentCommand *)v5 setIsRunnableWorkflow:[(SFCommand *)v8 isRunnableWorkflow]];
    biomeStreamIdentifier = [(SFCommand *)v8 biomeStreamIdentifier];
    [(SFPerformIntentCommand *)v5 setBiomeStreamIdentifier:biomeStreamIdentifier];

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

- (SFPerformIntentCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFPerformIntentCommand;
  v5 = [(SFPerformIntentCommand *)&v16 init];
  if (v5)
  {
    intentMessageName = [protobufCopy intentMessageName];

    if (intentMessageName)
    {
      intentMessageName2 = [protobufCopy intentMessageName];
      [(SFPerformIntentCommand *)v5 setIntentMessageName:intentMessageName2];
    }

    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFPerformIntentCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    intentMessageData = [protobufCopy intentMessageData];

    if (intentMessageData)
    {
      intentMessageData2 = [protobufCopy intentMessageData];
      [(SFPerformIntentCommand *)v5 setIntentMessageData:intentMessageData2];
    }

    if ([protobufCopy isRunnableWorkflow])
    {
      -[SFPerformIntentCommand setIsRunnableWorkflow:](v5, "setIsRunnableWorkflow:", [protobufCopy isRunnableWorkflow]);
    }

    biomeStreamIdentifier = [protobufCopy biomeStreamIdentifier];

    if (biomeStreamIdentifier)
    {
      biomeStreamIdentifier2 = [protobufCopy biomeStreamIdentifier];
      [(SFPerformIntentCommand *)v5 setBiomeStreamIdentifier:biomeStreamIdentifier2];
    }

    v14 = v5;
  }

  return v5;
}

@end