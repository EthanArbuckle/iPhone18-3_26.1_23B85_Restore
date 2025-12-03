@interface SFIndexedUserActivityCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFIndexedUserActivityCommand)initWithCoder:(id)coder;
- (SFIndexedUserActivityCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFIndexedUserActivityCommand

- (SFIndexedUserActivityCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFIndexedUserActivityCommand;
  v5 = [(SFIndexedUserActivityCommand *)&v12 init];
  if (v5)
  {
    userActivityRequiredString = [protobufCopy userActivityRequiredString];

    if (userActivityRequiredString)
    {
      userActivityRequiredString2 = [protobufCopy userActivityRequiredString];
      [(SFIndexedUserActivityCommand *)v5 setUserActivityRequiredString:userActivityRequiredString2];
    }

    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFIndexedUserActivityCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFIndexedUserActivityCommand;
  v3 = [(SFCommand *)&v9 hash];
  userActivityRequiredString = [(SFIndexedUserActivityCommand *)self userActivityRequiredString];
  v5 = [userActivityRequiredString hash];
  applicationBundleIdentifier = [(SFIndexedUserActivityCommand *)self applicationBundleIdentifier];
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
    if ([(SFIndexedUserActivityCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFIndexedUserActivityCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        userActivityRequiredString = [(SFIndexedUserActivityCommand *)self userActivityRequiredString];
        userActivityRequiredString2 = [(SFIndexedUserActivityCommand *)v6 userActivityRequiredString];
        if ((userActivityRequiredString != 0) == (userActivityRequiredString2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        userActivityRequiredString3 = [(SFIndexedUserActivityCommand *)self userActivityRequiredString];
        if (userActivityRequiredString3)
        {
          userActivityRequiredString4 = [(SFIndexedUserActivityCommand *)self userActivityRequiredString];
          userActivityRequiredString5 = [(SFIndexedUserActivityCommand *)v6 userActivityRequiredString];
          if (![userActivityRequiredString4 isEqual:userActivityRequiredString5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = userActivityRequiredString5;
        }

        applicationBundleIdentifier = [(SFIndexedUserActivityCommand *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFIndexedUserActivityCommand *)v6 applicationBundleIdentifier];
        v14 = applicationBundleIdentifier2;
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
        }

        else
        {
          applicationBundleIdentifier3 = [(SFIndexedUserActivityCommand *)self applicationBundleIdentifier];
          if (applicationBundleIdentifier3)
          {
            v16 = applicationBundleIdentifier3;
            applicationBundleIdentifier4 = [(SFIndexedUserActivityCommand *)self applicationBundleIdentifier];
            [(SFIndexedUserActivityCommand *)v6 applicationBundleIdentifier];
            v17 = v20 = userActivityRequiredString4;
            v11 = [applicationBundleIdentifier4 isEqual:v17];

            userActivityRequiredString4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        userActivityRequiredString5 = v21;
        if (!userActivityRequiredString3)
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
  v10.super_class = SFIndexedUserActivityCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  userActivityRequiredString = [(SFIndexedUserActivityCommand *)self userActivityRequiredString];
  v6 = [userActivityRequiredString copy];
  [v4 setUserActivityRequiredString:v6];

  applicationBundleIdentifier = [(SFIndexedUserActivityCommand *)self applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBIndexedUserActivityCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBIndexedUserActivityCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBIndexedUserActivityCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBIndexedUserActivityCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFIndexedUserActivityCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFIndexedUserActivityCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFIndexedUserActivityCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userActivityRequiredString = [(SFCommand *)v8 userActivityRequiredString];
    [(SFIndexedUserActivityCommand *)v5 setUserActivityRequiredString:userActivityRequiredString];

    applicationBundleIdentifier = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFIndexedUserActivityCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];

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