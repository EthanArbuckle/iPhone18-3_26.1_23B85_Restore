@interface SFSearchInAppCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSearchInAppCommand)initWithCoder:(id)coder;
- (SFSearchInAppCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSearchInAppCommand

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = SFSearchInAppCommand;
  v3 = [(SFCommand *)&v10 hash];
  searchString = [(SFSearchInAppCommand *)self searchString];
  v5 = [searchString hash];
  applicationBundleIdentifier = [(SFSearchInAppCommand *)self applicationBundleIdentifier];
  v7 = v5 ^ [applicationBundleIdentifier hash];
  v8 = v7 ^ [(SFSearchInAppCommand *)self searchInAppType];

  return v8 ^ v3;
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
    if ([(SFSearchInAppCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v23.receiver = self;
      v23.super_class = SFSearchInAppCommand;
      if ([(SFCommand *)&v23 isEqual:equalCopy])
      {
        v6 = equalCopy;
        searchString = [(SFSearchInAppCommand *)self searchString];
        searchString2 = [(SFSearchInAppCommand *)v6 searchString];
        if ((searchString != 0) == (searchString2 == 0))
        {
          v11 = 0;
LABEL_25:

          goto LABEL_26;
        }

        searchString3 = [(SFSearchInAppCommand *)self searchString];
        if (searchString3)
        {
          searchString4 = [(SFSearchInAppCommand *)self searchString];
          searchString5 = [(SFSearchInAppCommand *)v6 searchString];
          if (![searchString4 isEqual:searchString5])
          {
            v11 = 0;
            goto LABEL_23;
          }

          v22 = searchString4;
        }

        applicationBundleIdentifier = [(SFSearchInAppCommand *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFSearchInAppCommand *)v6 applicationBundleIdentifier];
        v14 = applicationBundleIdentifier2;
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
          goto LABEL_22;
        }

        applicationBundleIdentifier3 = [(SFSearchInAppCommand *)self applicationBundleIdentifier];
        if (applicationBundleIdentifier3)
        {
          v19 = searchString5;
          applicationBundleIdentifier4 = [(SFSearchInAppCommand *)self applicationBundleIdentifier];
          applicationBundleIdentifier5 = [(SFSearchInAppCommand *)v6 applicationBundleIdentifier];
          v21 = applicationBundleIdentifier4;
          if (![applicationBundleIdentifier4 isEqual:?])
          {
            v11 = 0;
            searchString5 = v19;
LABEL_20:

LABEL_21:
LABEL_22:
            searchString4 = v22;
            if (!searchString3)
            {
LABEL_24:

              goto LABEL_25;
            }

LABEL_23:

            goto LABEL_24;
          }

          searchString5 = v19;
        }

        searchInAppType = [(SFSearchInAppCommand *)self searchInAppType];
        v11 = searchInAppType == [(SFSearchInAppCommand *)v6 searchInAppType];
        if (!applicationBundleIdentifier3)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v11 = 0;
  }

LABEL_26:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFSearchInAppCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  searchString = [(SFSearchInAppCommand *)self searchString];
  v6 = [searchString copy];
  [v4 setSearchString:v6];

  applicationBundleIdentifier = [(SFSearchInAppCommand *)self applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v8];

  [v4 setSearchInAppType:{-[SFSearchInAppCommand searchInAppType](self, "searchInAppType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSearchInAppCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBSearchInAppCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSearchInAppCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSearchInAppCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFSearchInAppCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFSearchInAppCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFSearchInAppCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    searchString = [(SFCommand *)v8 searchString];
    [(SFSearchInAppCommand *)v5 setSearchString:searchString];

    applicationBundleIdentifier = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFSearchInAppCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];

    [(SFSearchInAppCommand *)v5 setSearchInAppType:[(SFCommand *)v8 searchInAppType]];
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

- (SFSearchInAppCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFSearchInAppCommand;
  v5 = [(SFSearchInAppCommand *)&v12 init];
  if (v5)
  {
    searchString = [protobufCopy searchString];

    if (searchString)
    {
      searchString2 = [protobufCopy searchString];
      [(SFSearchInAppCommand *)v5 setSearchString:searchString2];
    }

    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFSearchInAppCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    if ([protobufCopy searchInAppType])
    {
      -[SFSearchInAppCommand setSearchInAppType:](v5, "setSearchInAppType:", [protobufCopy searchInAppType]);
    }

    v10 = v5;
  }

  return v5;
}

@end