@interface _SFPBExecuteMenuItemCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBExecuteMenuItemCommand)initWithDictionary:(id)dictionary;
- (_SFPBExecuteMenuItemCommand)initWithFacade:(id)facade;
- (_SFPBExecuteMenuItemCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setMenuItemIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBExecuteMenuItemCommand

- (_SFPBExecuteMenuItemCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBExecuteMenuItemCommand *)self init];
  if (v5)
  {
    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBExecuteMenuItemCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    menuItemIdentifier = [facadeCopy menuItemIdentifier];

    if (menuItemIdentifier)
    {
      menuItemIdentifier2 = [facadeCopy menuItemIdentifier];
      [(_SFPBExecuteMenuItemCommand *)v5 setMenuItemIdentifier:menuItemIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBExecuteMenuItemCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBExecuteMenuItemCommand;
  v5 = [(_SFPBExecuteMenuItemCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBExecuteMenuItemCommand *)v5 setApplicationBundleIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"menuItemIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBExecuteMenuItemCommand *)v5 setMenuItemIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBExecuteMenuItemCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBExecuteMenuItemCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBExecuteMenuItemCommand *)self dictionaryRepresentation];
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
    applicationBundleIdentifier = [(_SFPBExecuteMenuItemCommand *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_menuItemIdentifier)
  {
    menuItemIdentifier = [(_SFPBExecuteMenuItemCommand *)self menuItemIdentifier];
    v7 = [menuItemIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"menuItemIdentifier"];
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

  applicationBundleIdentifier = [(_SFPBExecuteMenuItemCommand *)self applicationBundleIdentifier];
  applicationBundleIdentifier2 = [equalCopy applicationBundleIdentifier];
  if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  applicationBundleIdentifier3 = [(_SFPBExecuteMenuItemCommand *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier3)
  {
    v8 = applicationBundleIdentifier3;
    applicationBundleIdentifier4 = [(_SFPBExecuteMenuItemCommand *)self applicationBundleIdentifier];
    applicationBundleIdentifier5 = [equalCopy applicationBundleIdentifier];
    v11 = [applicationBundleIdentifier4 isEqual:applicationBundleIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  applicationBundleIdentifier = [(_SFPBExecuteMenuItemCommand *)self menuItemIdentifier];
  applicationBundleIdentifier2 = [equalCopy menuItemIdentifier];
  if ((applicationBundleIdentifier != 0) != (applicationBundleIdentifier2 == 0))
  {
    menuItemIdentifier = [(_SFPBExecuteMenuItemCommand *)self menuItemIdentifier];
    if (!menuItemIdentifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = menuItemIdentifier;
    menuItemIdentifier2 = [(_SFPBExecuteMenuItemCommand *)self menuItemIdentifier];
    menuItemIdentifier3 = [equalCopy menuItemIdentifier];
    v16 = [menuItemIdentifier2 isEqual:menuItemIdentifier3];

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
  applicationBundleIdentifier = [(_SFPBExecuteMenuItemCommand *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  menuItemIdentifier = [(_SFPBExecuteMenuItemCommand *)self menuItemIdentifier];
  if (menuItemIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setMenuItemIdentifier:(id)identifier
{
  v4 = [identifier copy];
  menuItemIdentifier = self->_menuItemIdentifier;
  self->_menuItemIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end