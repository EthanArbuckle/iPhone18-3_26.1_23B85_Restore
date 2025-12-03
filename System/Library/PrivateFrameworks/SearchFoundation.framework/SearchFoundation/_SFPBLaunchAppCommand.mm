@interface _SFPBLaunchAppCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBLaunchAppCommand)initWithDictionary:(id)dictionary;
- (_SFPBLaunchAppCommand)initWithFacade:(id)facade;
- (_SFPBLaunchAppCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBLaunchAppCommand

- (_SFPBLaunchAppCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBLaunchAppCommand *)self init];
  if (v5)
  {
    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBLaunchAppCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    if ([facadeCopy hasIsOnenessApplication])
    {
      -[_SFPBLaunchAppCommand setIsOnenessApplication:](v5, "setIsOnenessApplication:", [facadeCopy isOnenessApplication]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBLaunchAppCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBLaunchAppCommand;
  v5 = [(_SFPBLaunchAppCommand *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBLaunchAppCommand *)v5 setApplicationBundleIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isOnenessApplication"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLaunchAppCommand setIsOnenessApplication:](v5, "setIsOnenessApplication:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBLaunchAppCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBLaunchAppCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBLaunchAppCommand *)self dictionaryRepresentation];
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
    applicationBundleIdentifier = [(_SFPBLaunchAppCommand *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_isOnenessApplication)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLaunchAppCommand isOnenessApplication](self, "isOnenessApplication")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isOnenessApplication"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_applicationBundleIdentifier hash];
  v4 = 2654435761;
  if (!self->_isOnenessApplication)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    applicationBundleIdentifier = [(_SFPBLaunchAppCommand *)self applicationBundleIdentifier];
    applicationBundleIdentifier2 = [equalCopy applicationBundleIdentifier];
    v7 = applicationBundleIdentifier2;
    if ((applicationBundleIdentifier != 0) != (applicationBundleIdentifier2 == 0))
    {
      applicationBundleIdentifier3 = [(_SFPBLaunchAppCommand *)self applicationBundleIdentifier];
      if (!applicationBundleIdentifier3)
      {

LABEL_10:
        isOnenessApplication = self->_isOnenessApplication;
        v13 = isOnenessApplication == [equalCopy isOnenessApplication];
        goto LABEL_8;
      }

      v9 = applicationBundleIdentifier3;
      applicationBundleIdentifier4 = [(_SFPBLaunchAppCommand *)self applicationBundleIdentifier];
      applicationBundleIdentifier5 = [equalCopy applicationBundleIdentifier];
      v12 = [applicationBundleIdentifier4 isEqual:applicationBundleIdentifier5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  applicationBundleIdentifier = [(_SFPBLaunchAppCommand *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBLaunchAppCommand *)self isOnenessApplication])
  {
    PBDataWriterWriteBOOLField();
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