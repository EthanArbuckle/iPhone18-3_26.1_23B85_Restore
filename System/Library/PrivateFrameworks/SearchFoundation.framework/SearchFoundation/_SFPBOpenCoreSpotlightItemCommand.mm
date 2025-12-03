@interface _SFPBOpenCoreSpotlightItemCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBOpenCoreSpotlightItemCommand)initWithDictionary:(id)dictionary;
- (_SFPBOpenCoreSpotlightItemCommand)initWithFacade:(id)facade;
- (_SFPBOpenCoreSpotlightItemCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setActionIdentifier:(id)identifier;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setCoreSpotlightIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBOpenCoreSpotlightItemCommand

- (_SFPBOpenCoreSpotlightItemCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBOpenCoreSpotlightItemCommand *)self init];
  if (v5)
  {
    coreSpotlightIdentifier = [facadeCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [facadeCopy coreSpotlightIdentifier];
      [(_SFPBOpenCoreSpotlightItemCommand *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBOpenCoreSpotlightItemCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    actionIdentifier = [facadeCopy actionIdentifier];

    if (actionIdentifier)
    {
      actionIdentifier2 = [facadeCopy actionIdentifier];
      [(_SFPBOpenCoreSpotlightItemCommand *)v5 setActionIdentifier:actionIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBOpenCoreSpotlightItemCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBOpenCoreSpotlightItemCommand;
  v5 = [(_SFPBOpenCoreSpotlightItemCommand *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBOpenCoreSpotlightItemCommand *)v5 setCoreSpotlightIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBOpenCoreSpotlightItemCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"actionIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBOpenCoreSpotlightItemCommand *)v5 setActionIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBOpenCoreSpotlightItemCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBOpenCoreSpotlightItemCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBOpenCoreSpotlightItemCommand *)self dictionaryRepresentation];
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
  if (self->_actionIdentifier)
  {
    actionIdentifier = [(_SFPBOpenCoreSpotlightItemCommand *)self actionIdentifier];
    v5 = [actionIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"actionIdentifier"];
  }

  if (self->_applicationBundleIdentifier)
  {
    applicationBundleIdentifier = [(_SFPBOpenCoreSpotlightItemCommand *)self applicationBundleIdentifier];
    v7 = [applicationBundleIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_coreSpotlightIdentifier)
  {
    coreSpotlightIdentifier = [(_SFPBOpenCoreSpotlightItemCommand *)self coreSpotlightIdentifier];
    v9 = [coreSpotlightIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_coreSpotlightIdentifier hash];
  v4 = [(NSString *)self->_applicationBundleIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_actionIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  coreSpotlightIdentifier = [(_SFPBOpenCoreSpotlightItemCommand *)self coreSpotlightIdentifier];
  coreSpotlightIdentifier2 = [equalCopy coreSpotlightIdentifier];
  if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  coreSpotlightIdentifier3 = [(_SFPBOpenCoreSpotlightItemCommand *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier3)
  {
    v8 = coreSpotlightIdentifier3;
    coreSpotlightIdentifier4 = [(_SFPBOpenCoreSpotlightItemCommand *)self coreSpotlightIdentifier];
    coreSpotlightIdentifier5 = [equalCopy coreSpotlightIdentifier];
    v11 = [coreSpotlightIdentifier4 isEqual:coreSpotlightIdentifier5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  coreSpotlightIdentifier = [(_SFPBOpenCoreSpotlightItemCommand *)self applicationBundleIdentifier];
  coreSpotlightIdentifier2 = [equalCopy applicationBundleIdentifier];
  if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  applicationBundleIdentifier = [(_SFPBOpenCoreSpotlightItemCommand *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    v13 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBOpenCoreSpotlightItemCommand *)self applicationBundleIdentifier];
    applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
    v16 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  coreSpotlightIdentifier = [(_SFPBOpenCoreSpotlightItemCommand *)self actionIdentifier];
  coreSpotlightIdentifier2 = [equalCopy actionIdentifier];
  if ((coreSpotlightIdentifier != 0) != (coreSpotlightIdentifier2 == 0))
  {
    actionIdentifier = [(_SFPBOpenCoreSpotlightItemCommand *)self actionIdentifier];
    if (!actionIdentifier)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = actionIdentifier;
    actionIdentifier2 = [(_SFPBOpenCoreSpotlightItemCommand *)self actionIdentifier];
    actionIdentifier3 = [equalCopy actionIdentifier];
    v21 = [actionIdentifier2 isEqual:actionIdentifier3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  coreSpotlightIdentifier = [(_SFPBOpenCoreSpotlightItemCommand *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  applicationBundleIdentifier = [(_SFPBOpenCoreSpotlightItemCommand *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  actionIdentifier = [(_SFPBOpenCoreSpotlightItemCommand *)self actionIdentifier];
  if (actionIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setActionIdentifier:(id)identifier
{
  v4 = [identifier copy];
  actionIdentifier = self->_actionIdentifier;
  self->_actionIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCoreSpotlightIdentifier:(id)identifier
{
  v4 = [identifier copy];
  coreSpotlightIdentifier = self->_coreSpotlightIdentifier;
  self->_coreSpotlightIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end