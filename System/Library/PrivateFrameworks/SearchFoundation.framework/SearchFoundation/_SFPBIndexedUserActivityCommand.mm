@interface _SFPBIndexedUserActivityCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBIndexedUserActivityCommand)initWithDictionary:(id)dictionary;
- (_SFPBIndexedUserActivityCommand)initWithFacade:(id)facade;
- (_SFPBIndexedUserActivityCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setUserActivityRequiredString:(id)string;
- (void)writeTo:(id)to;
@end

@implementation _SFPBIndexedUserActivityCommand

- (_SFPBIndexedUserActivityCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBIndexedUserActivityCommand *)self init];
  if (v5)
  {
    userActivityRequiredString = [facadeCopy userActivityRequiredString];

    if (userActivityRequiredString)
    {
      userActivityRequiredString2 = [facadeCopy userActivityRequiredString];
      [(_SFPBIndexedUserActivityCommand *)v5 setUserActivityRequiredString:userActivityRequiredString2];
    }

    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBIndexedUserActivityCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBIndexedUserActivityCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBIndexedUserActivityCommand;
  v5 = [(_SFPBIndexedUserActivityCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userActivityRequiredString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBIndexedUserActivityCommand *)v5 setUserActivityRequiredString:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBIndexedUserActivityCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBIndexedUserActivityCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBIndexedUserActivityCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBIndexedUserActivityCommand *)self dictionaryRepresentation];
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
    applicationBundleIdentifier = [(_SFPBIndexedUserActivityCommand *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_userActivityRequiredString)
  {
    userActivityRequiredString = [(_SFPBIndexedUserActivityCommand *)self userActivityRequiredString];
    v7 = [userActivityRequiredString copy];
    [dictionary setObject:v7 forKeyedSubscript:@"userActivityRequiredString"];
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

  userActivityRequiredString = [(_SFPBIndexedUserActivityCommand *)self userActivityRequiredString];
  userActivityRequiredString2 = [equalCopy userActivityRequiredString];
  if ((userActivityRequiredString != 0) == (userActivityRequiredString2 == 0))
  {
    goto LABEL_11;
  }

  userActivityRequiredString3 = [(_SFPBIndexedUserActivityCommand *)self userActivityRequiredString];
  if (userActivityRequiredString3)
  {
    v8 = userActivityRequiredString3;
    userActivityRequiredString4 = [(_SFPBIndexedUserActivityCommand *)self userActivityRequiredString];
    userActivityRequiredString5 = [equalCopy userActivityRequiredString];
    v11 = [userActivityRequiredString4 isEqual:userActivityRequiredString5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  userActivityRequiredString = [(_SFPBIndexedUserActivityCommand *)self applicationBundleIdentifier];
  userActivityRequiredString2 = [equalCopy applicationBundleIdentifier];
  if ((userActivityRequiredString != 0) != (userActivityRequiredString2 == 0))
  {
    applicationBundleIdentifier = [(_SFPBIndexedUserActivityCommand *)self applicationBundleIdentifier];
    if (!applicationBundleIdentifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBIndexedUserActivityCommand *)self applicationBundleIdentifier];
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
  userActivityRequiredString = [(_SFPBIndexedUserActivityCommand *)self userActivityRequiredString];
  if (userActivityRequiredString)
  {
    PBDataWriterWriteStringField();
  }

  applicationBundleIdentifier = [(_SFPBIndexedUserActivityCommand *)self applicationBundleIdentifier];
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

- (void)setUserActivityRequiredString:(id)string
{
  v4 = [string copy];
  userActivityRequiredString = self->_userActivityRequiredString;
  self->_userActivityRequiredString = v4;

  MEMORY[0x1EEE66BB8]();
}

@end