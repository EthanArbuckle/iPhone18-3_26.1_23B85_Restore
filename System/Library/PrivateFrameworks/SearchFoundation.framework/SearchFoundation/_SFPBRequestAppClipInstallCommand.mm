@interface _SFPBRequestAppClipInstallCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRequestAppClipInstallCommand)initWithDictionary:(id)dictionary;
- (_SFPBRequestAppClipInstallCommand)initWithFacade:(id)facade;
- (_SFPBRequestAppClipInstallCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRequestAppClipInstallCommand

- (_SFPBRequestAppClipInstallCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRequestAppClipInstallCommand *)self init];
  if (v5)
  {
    v6 = [facadeCopy url];

    if (v6)
    {
      v7 = [_SFPBURL alloc];
      v8 = [facadeCopy url];
      v9 = [(_SFPBURL *)v7 initWithNSURL:v8];
      [(_SFPBRequestAppClipInstallCommand *)v5 setUrl:v9];
    }

    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBRequestAppClipInstallCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRequestAppClipInstallCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRequestAppClipInstallCommand;
  v5 = [(_SFPBRequestAppClipInstallCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBURL alloc] initWithDictionary:v6];
      [(_SFPBRequestAppClipInstallCommand *)v5 setUrl:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBRequestAppClipInstallCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRequestAppClipInstallCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRequestAppClipInstallCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRequestAppClipInstallCommand *)self dictionaryRepresentation];
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
    applicationBundleIdentifier = [(_SFPBRequestAppClipInstallCommand *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_url)
  {
    v6 = [(_SFPBRequestAppClipInstallCommand *)self url];
    dictionaryRepresentation = [v6 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"url"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"url"];
    }
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

  applicationBundleIdentifier = [(_SFPBRequestAppClipInstallCommand *)self url];
  applicationBundleIdentifier2 = [equalCopy url];
  if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBRequestAppClipInstallCommand *)self url];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRequestAppClipInstallCommand *)self url];
    v10 = [equalCopy url];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  applicationBundleIdentifier = [(_SFPBRequestAppClipInstallCommand *)self applicationBundleIdentifier];
  applicationBundleIdentifier2 = [equalCopy applicationBundleIdentifier];
  if ((applicationBundleIdentifier != 0) != (applicationBundleIdentifier2 == 0))
  {
    applicationBundleIdentifier3 = [(_SFPBRequestAppClipInstallCommand *)self applicationBundleIdentifier];
    if (!applicationBundleIdentifier3)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = applicationBundleIdentifier3;
    applicationBundleIdentifier4 = [(_SFPBRequestAppClipInstallCommand *)self applicationBundleIdentifier];
    applicationBundleIdentifier5 = [equalCopy applicationBundleIdentifier];
    v16 = [applicationBundleIdentifier4 isEqual:applicationBundleIdentifier5];

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
  v4 = [(_SFPBRequestAppClipInstallCommand *)self url];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  applicationBundleIdentifier = [(_SFPBRequestAppClipInstallCommand *)self applicationBundleIdentifier];
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

@end