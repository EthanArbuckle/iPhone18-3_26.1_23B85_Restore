@interface SFFillToolAppParameterCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFillToolAppParameterCommand)initWithCoder:(id)coder;
- (SFFillToolAppParameterCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFFillToolAppParameterCommand

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFFillToolAppParameterCommand;
  v3 = [(SFCommand *)&v11 hash];
  encodedTypedValue = [(SFFillToolAppParameterCommand *)self encodedTypedValue];
  v5 = [encodedTypedValue hash];
  bundleIdentifier = [(SFFillToolAppParameterCommand *)self bundleIdentifier];
  v7 = v5 ^ [bundleIdentifier hash];
  applicationPath = [(SFFillToolAppParameterCommand *)self applicationPath];
  v9 = v7 ^ [applicationPath hash];

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
    if ([(SFFillToolAppParameterCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFFillToolAppParameterCommand;
      if ([(SFCommand *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        encodedTypedValue = [(SFFillToolAppParameterCommand *)self encodedTypedValue];
        encodedTypedValue2 = [(SFFillToolAppParameterCommand *)v6 encodedTypedValue];
        if ((encodedTypedValue != 0) == (encodedTypedValue2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        encodedTypedValue3 = [(SFFillToolAppParameterCommand *)self encodedTypedValue];
        if (encodedTypedValue3)
        {
          encodedTypedValue4 = [(SFFillToolAppParameterCommand *)self encodedTypedValue];
          encodedTypedValue5 = [(SFFillToolAppParameterCommand *)v6 encodedTypedValue];
          if (![encodedTypedValue4 isEqual:encodedTypedValue5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = encodedTypedValue5;
        }

        bundleIdentifier = [(SFFillToolAppParameterCommand *)self bundleIdentifier];
        bundleIdentifier2 = [(SFFillToolAppParameterCommand *)v6 bundleIdentifier];
        v14 = bundleIdentifier2;
        if ((bundleIdentifier != 0) == (bundleIdentifier2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        bundleIdentifier3 = [(SFFillToolAppParameterCommand *)self bundleIdentifier];
        if (bundleIdentifier3)
        {
          v25 = bundleIdentifier;
          bundleIdentifier4 = [(SFFillToolAppParameterCommand *)self bundleIdentifier];
          bundleIdentifier5 = [(SFFillToolAppParameterCommand *)v6 bundleIdentifier];
          v28 = bundleIdentifier4;
          if (![bundleIdentifier4 isEqual:?])
          {
            v11 = 0;
            bundleIdentifier = v25;
            goto LABEL_26;
          }

          v29 = bundleIdentifier3;
          v30 = encodedTypedValue4;
          bundleIdentifier = v25;
        }

        else
        {
          v29 = 0;
          v30 = encodedTypedValue4;
        }

        applicationPath = [(SFFillToolAppParameterCommand *)self applicationPath];
        applicationPath2 = [(SFFillToolAppParameterCommand *)v6 applicationPath];
        if ((applicationPath != 0) == (applicationPath2 == 0))
        {

          v11 = 0;
          bundleIdentifier3 = v29;
          encodedTypedValue4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = applicationPath;
          v26 = applicationPath2;
          applicationPath3 = [(SFFillToolAppParameterCommand *)self applicationPath];
          bundleIdentifier3 = v29;
          if (applicationPath3)
          {
            v23 = applicationPath3;
            applicationPath4 = [(SFFillToolAppParameterCommand *)self applicationPath];
            applicationPath5 = [(SFFillToolAppParameterCommand *)v6 applicationPath];
            v11 = [applicationPath4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          encodedTypedValue4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        encodedTypedValue5 = v31;
        if (!encodedTypedValue3)
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
  v12.super_class = SFFillToolAppParameterCommand;
  v4 = [(SFCommand *)&v12 copyWithZone:zone];
  encodedTypedValue = [(SFFillToolAppParameterCommand *)self encodedTypedValue];
  v6 = [encodedTypedValue copy];
  [v4 setEncodedTypedValue:v6];

  bundleIdentifier = [(SFFillToolAppParameterCommand *)self bundleIdentifier];
  v8 = [bundleIdentifier copy];
  [v4 setBundleIdentifier:v8];

  applicationPath = [(SFFillToolAppParameterCommand *)self applicationPath];
  v10 = [applicationPath copy];
  [v4 setApplicationPath:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFillToolAppParameterCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBFillToolAppParameterCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFillToolAppParameterCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBFillToolAppParameterCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFFillToolAppParameterCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFFillToolAppParameterCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFFillToolAppParameterCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    encodedTypedValue = [(SFCommand *)v8 encodedTypedValue];
    [(SFFillToolAppParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue];

    bundleIdentifier = [(SFCommand *)v8 bundleIdentifier];
    [(SFFillToolAppParameterCommand *)v5 setBundleIdentifier:bundleIdentifier];

    applicationPath = [(SFCommand *)v8 applicationPath];
    [(SFFillToolAppParameterCommand *)v5 setApplicationPath:applicationPath];

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

- (SFFillToolAppParameterCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFFillToolAppParameterCommand;
  v5 = [(SFFillToolAppParameterCommand *)&v14 init];
  if (v5)
  {
    encodedTypedValue = [protobufCopy encodedTypedValue];

    if (encodedTypedValue)
    {
      encodedTypedValue2 = [protobufCopy encodedTypedValue];
      [(SFFillToolAppParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue2];
    }

    bundleIdentifier = [protobufCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [protobufCopy bundleIdentifier];
      [(SFFillToolAppParameterCommand *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    applicationPath = [protobufCopy applicationPath];

    if (applicationPath)
    {
      applicationPath2 = [protobufCopy applicationPath];
      [(SFFillToolAppParameterCommand *)v5 setApplicationPath:applicationPath2];
    }

    v12 = v5;
  }

  return v5;
}

@end