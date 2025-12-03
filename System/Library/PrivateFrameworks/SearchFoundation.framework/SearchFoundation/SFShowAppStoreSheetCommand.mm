@interface SFShowAppStoreSheetCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShowAppStoreSheetCommand)initWithCoder:(id)coder;
- (SFShowAppStoreSheetCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShowAppStoreSheetCommand

- (SFShowAppStoreSheetCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFShowAppStoreSheetCommand;
  v5 = [(SFShowAppStoreSheetCommand *)&v12 init];
  if (v5)
  {
    storeIdentifier = [protobufCopy storeIdentifier];

    if (storeIdentifier)
    {
      storeIdentifier2 = [protobufCopy storeIdentifier];
      [(SFShowAppStoreSheetCommand *)v5 setStoreIdentifier:storeIdentifier2];
    }

    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFShowAppStoreSheetCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFShowAppStoreSheetCommand;
  v3 = [(SFCommand *)&v9 hash];
  storeIdentifier = [(SFShowAppStoreSheetCommand *)self storeIdentifier];
  v5 = [storeIdentifier hash];
  applicationBundleIdentifier = [(SFShowAppStoreSheetCommand *)self applicationBundleIdentifier];
  v7 = v5 ^ [applicationBundleIdentifier hash];

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
    if ([(SFShowAppStoreSheetCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFShowAppStoreSheetCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        storeIdentifier = [(SFShowAppStoreSheetCommand *)self storeIdentifier];
        storeIdentifier2 = [(SFShowAppStoreSheetCommand *)v6 storeIdentifier];
        if ((storeIdentifier != 0) == (storeIdentifier2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        storeIdentifier3 = [(SFShowAppStoreSheetCommand *)self storeIdentifier];
        if (storeIdentifier3)
        {
          storeIdentifier4 = [(SFShowAppStoreSheetCommand *)self storeIdentifier];
          storeIdentifier5 = [(SFShowAppStoreSheetCommand *)v6 storeIdentifier];
          if (![storeIdentifier4 isEqual:storeIdentifier5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = storeIdentifier5;
        }

        applicationBundleIdentifier = [(SFShowAppStoreSheetCommand *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFShowAppStoreSheetCommand *)v6 applicationBundleIdentifier];
        v14 = applicationBundleIdentifier2;
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
        }

        else
        {
          applicationBundleIdentifier3 = [(SFShowAppStoreSheetCommand *)self applicationBundleIdentifier];
          if (applicationBundleIdentifier3)
          {
            v16 = applicationBundleIdentifier3;
            applicationBundleIdentifier4 = [(SFShowAppStoreSheetCommand *)self applicationBundleIdentifier];
            [(SFShowAppStoreSheetCommand *)v6 applicationBundleIdentifier];
            v17 = v20 = storeIdentifier4;
            v11 = [applicationBundleIdentifier4 isEqual:v17];

            storeIdentifier4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        storeIdentifier5 = v21;
        if (!storeIdentifier3)
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
  v10.super_class = SFShowAppStoreSheetCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  storeIdentifier = [(SFShowAppStoreSheetCommand *)self storeIdentifier];
  v6 = [storeIdentifier copy];
  [v4 setStoreIdentifier:v6];

  applicationBundleIdentifier = [(SFShowAppStoreSheetCommand *)self applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShowAppStoreSheetCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBShowAppStoreSheetCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShowAppStoreSheetCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBShowAppStoreSheetCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFShowAppStoreSheetCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFShowAppStoreSheetCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFShowAppStoreSheetCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    storeIdentifier = [(SFCommand *)v8 storeIdentifier];
    [(SFShowAppStoreSheetCommand *)v5 setStoreIdentifier:storeIdentifier];

    applicationBundleIdentifier = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFShowAppStoreSheetCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];

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