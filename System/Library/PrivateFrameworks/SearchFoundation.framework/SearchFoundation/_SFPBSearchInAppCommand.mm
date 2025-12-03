@interface _SFPBSearchInAppCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSearchInAppCommand)initWithDictionary:(id)dictionary;
- (_SFPBSearchInAppCommand)initWithFacade:(id)facade;
- (_SFPBSearchInAppCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setSearchString:(id)string;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSearchInAppCommand

- (_SFPBSearchInAppCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBSearchInAppCommand *)self init];
  if (v5)
  {
    searchString = [facadeCopy searchString];

    if (searchString)
    {
      searchString2 = [facadeCopy searchString];
      [(_SFPBSearchInAppCommand *)v5 setSearchString:searchString2];
    }

    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBSearchInAppCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    if ([facadeCopy hasSearchInAppType])
    {
      -[_SFPBSearchInAppCommand setSearchInAppType:](v5, "setSearchInAppType:", [facadeCopy searchInAppType]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBSearchInAppCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBSearchInAppCommand;
  v5 = [(_SFPBSearchInAppCommand *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"searchString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBSearchInAppCommand *)v5 setSearchString:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBSearchInAppCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"searchInAppType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSearchInAppCommand setSearchInAppType:](v5, "setSearchInAppType:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBSearchInAppCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSearchInAppCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSearchInAppCommand *)self dictionaryRepresentation];
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
    applicationBundleIdentifier = [(_SFPBSearchInAppCommand *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_searchInAppType)
  {
    searchInAppType = [(_SFPBSearchInAppCommand *)self searchInAppType];
    if (searchInAppType)
    {
      if (searchInAppType == 1)
      {
        v7 = @"1";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", searchInAppType];
      }
    }

    else
    {
      v7 = @"0";
    }

    [dictionary setObject:v7 forKeyedSubscript:@"searchInAppType"];
  }

  if (self->_searchString)
  {
    searchString = [(_SFPBSearchInAppCommand *)self searchString];
    v9 = [searchString copy];
    [dictionary setObject:v9 forKeyedSubscript:@"searchString"];
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

  searchString = [(_SFPBSearchInAppCommand *)self searchString];
  searchString2 = [equalCopy searchString];
  if ((searchString != 0) == (searchString2 == 0))
  {
    goto LABEL_11;
  }

  searchString3 = [(_SFPBSearchInAppCommand *)self searchString];
  if (searchString3)
  {
    v8 = searchString3;
    searchString4 = [(_SFPBSearchInAppCommand *)self searchString];
    searchString5 = [equalCopy searchString];
    v11 = [searchString4 isEqual:searchString5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  searchString = [(_SFPBSearchInAppCommand *)self applicationBundleIdentifier];
  searchString2 = [equalCopy applicationBundleIdentifier];
  if ((searchString != 0) != (searchString2 == 0))
  {
    applicationBundleIdentifier = [(_SFPBSearchInAppCommand *)self applicationBundleIdentifier];
    if (!applicationBundleIdentifier)
    {

LABEL_15:
      searchInAppType = self->_searchInAppType;
      v17 = searchInAppType == [equalCopy searchInAppType];
      goto LABEL_13;
    }

    v13 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBSearchInAppCommand *)self applicationBundleIdentifier];
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
  searchString = [(_SFPBSearchInAppCommand *)self searchString];
  if (searchString)
  {
    PBDataWriterWriteStringField();
  }

  applicationBundleIdentifier = [(_SFPBSearchInAppCommand *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  searchInAppType = [(_SFPBSearchInAppCommand *)self searchInAppType];
  v7 = toCopy;
  if (searchInAppType)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSearchString:(id)string
{
  v4 = [string copy];
  searchString = self->_searchString;
  self->_searchString = v4;

  MEMORY[0x1EEE66BB8]();
}

@end