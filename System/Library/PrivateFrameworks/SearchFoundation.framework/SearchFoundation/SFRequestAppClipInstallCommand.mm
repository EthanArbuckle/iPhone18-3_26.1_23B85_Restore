@interface SFRequestAppClipInstallCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRequestAppClipInstallCommand)initWithCoder:(id)coder;
- (SFRequestAppClipInstallCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFRequestAppClipInstallCommand

- (SFRequestAppClipInstallCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v13.receiver = self;
  v13.super_class = SFRequestAppClipInstallCommand;
  v5 = [(SFRequestAppClipInstallCommand *)&v13 init];
  if (v5)
  {
    v6 = [protobufCopy url];

    if (v6)
    {
      v7 = [protobufCopy url];
      v8 = _SFPBURLHandwrittenTranslator(v7);
      [(SFRequestAppClipInstallCommand *)v5 setUrl:v8];
    }

    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFRequestAppClipInstallCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v11 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFRequestAppClipInstallCommand;
  v3 = [(SFCommand *)&v9 hash];
  v4 = [(SFRequestAppClipInstallCommand *)self url];
  v5 = [v4 hash];
  applicationBundleIdentifier = [(SFRequestAppClipInstallCommand *)self applicationBundleIdentifier];
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
    if ([(SFRequestAppClipInstallCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFRequestAppClipInstallCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        v7 = [(SFRequestAppClipInstallCommand *)self url];
        v8 = [(SFRequestAppClipInstallCommand *)v6 url];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v9 = [(SFRequestAppClipInstallCommand *)self url];
        if (v9)
        {
          v3 = [(SFRequestAppClipInstallCommand *)self url];
          v10 = [(SFRequestAppClipInstallCommand *)v6 url];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = v10;
        }

        applicationBundleIdentifier = [(SFRequestAppClipInstallCommand *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFRequestAppClipInstallCommand *)v6 applicationBundleIdentifier];
        v14 = applicationBundleIdentifier2;
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
        }

        else
        {
          applicationBundleIdentifier3 = [(SFRequestAppClipInstallCommand *)self applicationBundleIdentifier];
          if (applicationBundleIdentifier3)
          {
            v16 = applicationBundleIdentifier3;
            applicationBundleIdentifier4 = [(SFRequestAppClipInstallCommand *)self applicationBundleIdentifier];
            [(SFRequestAppClipInstallCommand *)v6 applicationBundleIdentifier];
            v17 = v20 = v3;
            v11 = [applicationBundleIdentifier4 isEqual:v17];

            v3 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        v10 = v21;
        if (!v9)
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
  v10.super_class = SFRequestAppClipInstallCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  v5 = [(SFRequestAppClipInstallCommand *)self url];
  v6 = [v5 copy];
  [v4 setUrl:v6];

  applicationBundleIdentifier = [(SFRequestAppClipInstallCommand *)self applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRequestAppClipInstallCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBRequestAppClipInstallCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRequestAppClipInstallCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRequestAppClipInstallCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFRequestAppClipInstallCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFRequestAppClipInstallCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFRequestAppClipInstallCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 url];
    [(SFRequestAppClipInstallCommand *)v5 setUrl:v9];

    applicationBundleIdentifier = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFRequestAppClipInstallCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];

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