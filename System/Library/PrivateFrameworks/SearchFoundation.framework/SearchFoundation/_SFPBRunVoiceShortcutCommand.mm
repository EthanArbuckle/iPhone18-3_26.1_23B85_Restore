@interface _SFPBRunVoiceShortcutCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRunVoiceShortcutCommand)initWithDictionary:(id)dictionary;
- (_SFPBRunVoiceShortcutCommand)initWithFacade:(id)facade;
- (_SFPBRunVoiceShortcutCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setVoiceShortcutIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRunVoiceShortcutCommand

- (_SFPBRunVoiceShortcutCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRunVoiceShortcutCommand *)self init];
  if (v5)
  {
    voiceShortcutIdentifier = [facadeCopy voiceShortcutIdentifier];

    if (voiceShortcutIdentifier)
    {
      voiceShortcutIdentifier2 = [facadeCopy voiceShortcutIdentifier];
      [(_SFPBRunVoiceShortcutCommand *)v5 setVoiceShortcutIdentifier:voiceShortcutIdentifier2];
    }

    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBRunVoiceShortcutCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRunVoiceShortcutCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRunVoiceShortcutCommand;
  v5 = [(_SFPBRunVoiceShortcutCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceShortcutIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRunVoiceShortcutCommand *)v5 setVoiceShortcutIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBRunVoiceShortcutCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRunVoiceShortcutCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRunVoiceShortcutCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRunVoiceShortcutCommand *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationBundleIdentifier)
  {
    applicationBundleIdentifier = [(_SFPBRunVoiceShortcutCommand *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_voiceShortcutIdentifier)
  {
    voiceShortcutIdentifier = [(_SFPBRunVoiceShortcutCommand *)self voiceShortcutIdentifier];
    v7 = [voiceShortcutIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"voiceShortcutIdentifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  voiceShortcutIdentifier = [(_SFPBRunVoiceShortcutCommand *)self voiceShortcutIdentifier];
  voiceShortcutIdentifier2 = [equalCopy voiceShortcutIdentifier];
  if ((voiceShortcutIdentifier != 0) == (voiceShortcutIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  voiceShortcutIdentifier3 = [(_SFPBRunVoiceShortcutCommand *)self voiceShortcutIdentifier];
  if (voiceShortcutIdentifier3)
  {
    v8 = voiceShortcutIdentifier3;
    voiceShortcutIdentifier4 = [(_SFPBRunVoiceShortcutCommand *)self voiceShortcutIdentifier];
    voiceShortcutIdentifier5 = [equalCopy voiceShortcutIdentifier];
    v11 = [voiceShortcutIdentifier4 isEqual:voiceShortcutIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  voiceShortcutIdentifier = [(_SFPBRunVoiceShortcutCommand *)self applicationBundleIdentifier];
  voiceShortcutIdentifier2 = [equalCopy applicationBundleIdentifier];
  if ((voiceShortcutIdentifier != 0) != (voiceShortcutIdentifier2 == 0))
  {
    applicationBundleIdentifier = [(_SFPBRunVoiceShortcutCommand *)self applicationBundleIdentifier];
    if (!applicationBundleIdentifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBRunVoiceShortcutCommand *)self applicationBundleIdentifier];
    applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
    v16 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceShortcutIdentifier = [(_SFPBRunVoiceShortcutCommand *)self voiceShortcutIdentifier];
  if (voiceShortcutIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  applicationBundleIdentifier = [(_SFPBRunVoiceShortcutCommand *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setVoiceShortcutIdentifier:(id)identifier
{
  v4 = [identifier copy];
  voiceShortcutIdentifier = self->_voiceShortcutIdentifier;
  self->_voiceShortcutIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end