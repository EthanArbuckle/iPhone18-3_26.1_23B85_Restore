@interface _SFPBAppColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAppColor)initWithDictionary:(id)dictionary;
- (_SFPBAppColor)initWithFacade:(id)facade;
- (_SFPBAppColor)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAppColor

- (_SFPBAppColor)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBAppColor *)self init];
  if (v5)
  {
    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBAppColor *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBAppColor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBAppColor;
  v5 = [(_SFPBAppColor *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBAppColor *)v5 setApplicationBundleIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBAppColor)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAppColor *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAppColor *)self dictionaryRepresentation];
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
    applicationBundleIdentifier = [(_SFPBAppColor *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    applicationBundleIdentifier = [(_SFPBAppColor *)self applicationBundleIdentifier];
    applicationBundleIdentifier2 = [equalCopy applicationBundleIdentifier];
    v7 = applicationBundleIdentifier2;
    if ((applicationBundleIdentifier != 0) != (applicationBundleIdentifier2 == 0))
    {
      applicationBundleIdentifier3 = [(_SFPBAppColor *)self applicationBundleIdentifier];
      if (!applicationBundleIdentifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = applicationBundleIdentifier3;
      applicationBundleIdentifier4 = [(_SFPBAppColor *)self applicationBundleIdentifier];
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
  applicationBundleIdentifier = [(_SFPBAppColor *)self applicationBundleIdentifier];
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