@interface _SFPBShowAppStoreSheetCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBShowAppStoreSheetCommand)initWithDictionary:(id)dictionary;
- (_SFPBShowAppStoreSheetCommand)initWithFacade:(id)facade;
- (_SFPBShowAppStoreSheetCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setStoreIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBShowAppStoreSheetCommand

- (_SFPBShowAppStoreSheetCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBShowAppStoreSheetCommand *)self init];
  if (v5)
  {
    storeIdentifier = [facadeCopy storeIdentifier];

    if (storeIdentifier)
    {
      storeIdentifier2 = [facadeCopy storeIdentifier];
      [(_SFPBShowAppStoreSheetCommand *)v5 setStoreIdentifier:storeIdentifier2];
    }

    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBShowAppStoreSheetCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBShowAppStoreSheetCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBShowAppStoreSheetCommand;
  v5 = [(_SFPBShowAppStoreSheetCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"storeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBShowAppStoreSheetCommand *)v5 setStoreIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBShowAppStoreSheetCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBShowAppStoreSheetCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBShowAppStoreSheetCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBShowAppStoreSheetCommand *)self dictionaryRepresentation];
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
    applicationBundleIdentifier = [(_SFPBShowAppStoreSheetCommand *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_storeIdentifier)
  {
    storeIdentifier = [(_SFPBShowAppStoreSheetCommand *)self storeIdentifier];
    v7 = [storeIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"storeIdentifier"];
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

  storeIdentifier = [(_SFPBShowAppStoreSheetCommand *)self storeIdentifier];
  storeIdentifier2 = [equalCopy storeIdentifier];
  if ((storeIdentifier != 0) == (storeIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  storeIdentifier3 = [(_SFPBShowAppStoreSheetCommand *)self storeIdentifier];
  if (storeIdentifier3)
  {
    v8 = storeIdentifier3;
    storeIdentifier4 = [(_SFPBShowAppStoreSheetCommand *)self storeIdentifier];
    storeIdentifier5 = [equalCopy storeIdentifier];
    v11 = [storeIdentifier4 isEqual:storeIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  storeIdentifier = [(_SFPBShowAppStoreSheetCommand *)self applicationBundleIdentifier];
  storeIdentifier2 = [equalCopy applicationBundleIdentifier];
  if ((storeIdentifier != 0) != (storeIdentifier2 == 0))
  {
    applicationBundleIdentifier = [(_SFPBShowAppStoreSheetCommand *)self applicationBundleIdentifier];
    if (!applicationBundleIdentifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBShowAppStoreSheetCommand *)self applicationBundleIdentifier];
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
  storeIdentifier = [(_SFPBShowAppStoreSheetCommand *)self storeIdentifier];
  if (storeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  applicationBundleIdentifier = [(_SFPBShowAppStoreSheetCommand *)self applicationBundleIdentifier];
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

- (void)setStoreIdentifier:(id)identifier
{
  v4 = [identifier copy];
  storeIdentifier = self->_storeIdentifier;
  self->_storeIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end