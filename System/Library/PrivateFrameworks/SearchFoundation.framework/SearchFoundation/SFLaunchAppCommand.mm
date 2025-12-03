@interface SFLaunchAppCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLaunchAppCommand)initWithCoder:(id)coder;
- (SFLaunchAppCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFLaunchAppCommand

- (SFLaunchAppCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFLaunchAppCommand;
  v5 = [(SFLaunchAppCommand *)&v10 init];
  if (v5)
  {
    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFLaunchAppCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    if ([protobufCopy isOnenessApplication])
    {
      -[SFLaunchAppCommand setIsOnenessApplication:](v5, "setIsOnenessApplication:", [protobufCopy isOnenessApplication]);
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFLaunchAppCommand;
  v3 = [(SFCommand *)&v8 hash];
  applicationBundleIdentifier = [(SFLaunchAppCommand *)self applicationBundleIdentifier];
  v5 = [applicationBundleIdentifier hash];
  v6 = v5 ^ [(SFLaunchAppCommand *)self isOnenessApplication];

  return v6 ^ v3;
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
    if ([(SFLaunchAppCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFLaunchAppCommand;
      if ([(SFCommand *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        applicationBundleIdentifier = [(SFLaunchAppCommand *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFLaunchAppCommand *)v7 applicationBundleIdentifier];
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_14:

          goto LABEL_15;
        }

        applicationBundleIdentifier3 = [(SFLaunchAppCommand *)self applicationBundleIdentifier];
        if (!applicationBundleIdentifier3 || (-[SFLaunchAppCommand applicationBundleIdentifier](self, "applicationBundleIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SFLaunchAppCommand applicationBundleIdentifier](v7, "applicationBundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          isOnenessApplication = [(SFLaunchAppCommand *)self isOnenessApplication];
          v11 = isOnenessApplication ^ [(SFLaunchAppCommand *)v7 isOnenessApplication]^ 1;
          if (!applicationBundleIdentifier3)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        goto LABEL_13;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFLaunchAppCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  applicationBundleIdentifier = [(SFLaunchAppCommand *)self applicationBundleIdentifier];
  v6 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v6];

  [v4 setIsOnenessApplication:{-[SFLaunchAppCommand isOnenessApplication](self, "isOnenessApplication")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLaunchAppCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBLaunchAppCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLaunchAppCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBLaunchAppCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFLaunchAppCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFLaunchAppCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFLaunchAppCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    applicationBundleIdentifier = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFLaunchAppCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];

    [(SFLaunchAppCommand *)v5 setIsOnenessApplication:[(SFCommand *)v8 isOnenessApplication]];
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