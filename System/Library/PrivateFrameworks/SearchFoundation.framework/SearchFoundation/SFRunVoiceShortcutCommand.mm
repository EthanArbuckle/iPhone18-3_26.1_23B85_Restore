@interface SFRunVoiceShortcutCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRunVoiceShortcutCommand)initWithCoder:(id)coder;
- (SFRunVoiceShortcutCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFRunVoiceShortcutCommand

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFRunVoiceShortcutCommand;
  v3 = [(SFCommand *)&v9 hash];
  voiceShortcutIdentifier = [(SFRunVoiceShortcutCommand *)self voiceShortcutIdentifier];
  v5 = [voiceShortcutIdentifier hash];
  applicationBundleIdentifier = [(SFRunVoiceShortcutCommand *)self applicationBundleIdentifier];
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
    if ([(SFRunVoiceShortcutCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFRunVoiceShortcutCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        voiceShortcutIdentifier = [(SFRunVoiceShortcutCommand *)self voiceShortcutIdentifier];
        voiceShortcutIdentifier2 = [(SFRunVoiceShortcutCommand *)v6 voiceShortcutIdentifier];
        if ((voiceShortcutIdentifier != 0) == (voiceShortcutIdentifier2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        voiceShortcutIdentifier3 = [(SFRunVoiceShortcutCommand *)self voiceShortcutIdentifier];
        if (voiceShortcutIdentifier3)
        {
          voiceShortcutIdentifier4 = [(SFRunVoiceShortcutCommand *)self voiceShortcutIdentifier];
          voiceShortcutIdentifier5 = [(SFRunVoiceShortcutCommand *)v6 voiceShortcutIdentifier];
          if (![voiceShortcutIdentifier4 isEqual:voiceShortcutIdentifier5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = voiceShortcutIdentifier5;
        }

        applicationBundleIdentifier = [(SFRunVoiceShortcutCommand *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFRunVoiceShortcutCommand *)v6 applicationBundleIdentifier];
        v14 = applicationBundleIdentifier2;
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
        }

        else
        {
          applicationBundleIdentifier3 = [(SFRunVoiceShortcutCommand *)self applicationBundleIdentifier];
          if (applicationBundleIdentifier3)
          {
            v16 = applicationBundleIdentifier3;
            applicationBundleIdentifier4 = [(SFRunVoiceShortcutCommand *)self applicationBundleIdentifier];
            [(SFRunVoiceShortcutCommand *)v6 applicationBundleIdentifier];
            v17 = v20 = voiceShortcutIdentifier4;
            v11 = [applicationBundleIdentifier4 isEqual:v17];

            voiceShortcutIdentifier4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        voiceShortcutIdentifier5 = v21;
        if (!voiceShortcutIdentifier3)
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
  v10.super_class = SFRunVoiceShortcutCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  voiceShortcutIdentifier = [(SFRunVoiceShortcutCommand *)self voiceShortcutIdentifier];
  v6 = [voiceShortcutIdentifier copy];
  [v4 setVoiceShortcutIdentifier:v6];

  applicationBundleIdentifier = [(SFRunVoiceShortcutCommand *)self applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRunVoiceShortcutCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBRunVoiceShortcutCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRunVoiceShortcutCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRunVoiceShortcutCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFRunVoiceShortcutCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFRunVoiceShortcutCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFRunVoiceShortcutCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    voiceShortcutIdentifier = [(SFCommand *)v8 voiceShortcutIdentifier];
    [(SFRunVoiceShortcutCommand *)v5 setVoiceShortcutIdentifier:voiceShortcutIdentifier];

    applicationBundleIdentifier = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFRunVoiceShortcutCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];

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

- (SFRunVoiceShortcutCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFRunVoiceShortcutCommand;
  v5 = [(SFRunVoiceShortcutCommand *)&v12 init];
  if (v5)
  {
    voiceShortcutIdentifier = [protobufCopy voiceShortcutIdentifier];

    if (voiceShortcutIdentifier)
    {
      voiceShortcutIdentifier2 = [protobufCopy voiceShortcutIdentifier];
      [(SFRunVoiceShortcutCommand *)v5 setVoiceShortcutIdentifier:voiceShortcutIdentifier2];
    }

    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFRunVoiceShortcutCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

@end