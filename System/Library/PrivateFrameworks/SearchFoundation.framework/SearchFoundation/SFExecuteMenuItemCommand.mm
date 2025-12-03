@interface SFExecuteMenuItemCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFExecuteMenuItemCommand)initWithCoder:(id)coder;
- (SFExecuteMenuItemCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFExecuteMenuItemCommand

- (SFExecuteMenuItemCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFExecuteMenuItemCommand;
  v5 = [(SFExecuteMenuItemCommand *)&v12 init];
  if (v5)
  {
    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFExecuteMenuItemCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    menuItemIdentifier = [protobufCopy menuItemIdentifier];

    if (menuItemIdentifier)
    {
      menuItemIdentifier2 = [protobufCopy menuItemIdentifier];
      [(SFExecuteMenuItemCommand *)v5 setMenuItemIdentifier:menuItemIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFExecuteMenuItemCommand;
  v3 = [(SFCommand *)&v9 hash];
  applicationBundleIdentifier = [(SFExecuteMenuItemCommand *)self applicationBundleIdentifier];
  v5 = [applicationBundleIdentifier hash];
  menuItemIdentifier = [(SFExecuteMenuItemCommand *)self menuItemIdentifier];
  v7 = v5 ^ [menuItemIdentifier hash];

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
    if ([(SFExecuteMenuItemCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFExecuteMenuItemCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        applicationBundleIdentifier = [(SFExecuteMenuItemCommand *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFExecuteMenuItemCommand *)v6 applicationBundleIdentifier];
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        applicationBundleIdentifier3 = [(SFExecuteMenuItemCommand *)self applicationBundleIdentifier];
        if (applicationBundleIdentifier3)
        {
          applicationBundleIdentifier4 = [(SFExecuteMenuItemCommand *)self applicationBundleIdentifier];
          applicationBundleIdentifier5 = [(SFExecuteMenuItemCommand *)v6 applicationBundleIdentifier];
          if (![applicationBundleIdentifier4 isEqual:applicationBundleIdentifier5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = applicationBundleIdentifier5;
        }

        menuItemIdentifier = [(SFExecuteMenuItemCommand *)self menuItemIdentifier];
        menuItemIdentifier2 = [(SFExecuteMenuItemCommand *)v6 menuItemIdentifier];
        v14 = menuItemIdentifier2;
        if ((menuItemIdentifier != 0) == (menuItemIdentifier2 == 0))
        {

          v11 = 0;
        }

        else
        {
          menuItemIdentifier3 = [(SFExecuteMenuItemCommand *)self menuItemIdentifier];
          if (menuItemIdentifier3)
          {
            v16 = menuItemIdentifier3;
            menuItemIdentifier4 = [(SFExecuteMenuItemCommand *)self menuItemIdentifier];
            [(SFExecuteMenuItemCommand *)v6 menuItemIdentifier];
            v17 = v20 = applicationBundleIdentifier4;
            v11 = [menuItemIdentifier4 isEqual:v17];

            applicationBundleIdentifier4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        applicationBundleIdentifier5 = v21;
        if (!applicationBundleIdentifier3)
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
  v10.super_class = SFExecuteMenuItemCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  applicationBundleIdentifier = [(SFExecuteMenuItemCommand *)self applicationBundleIdentifier];
  v6 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v6];

  menuItemIdentifier = [(SFExecuteMenuItemCommand *)self menuItemIdentifier];
  v8 = [menuItemIdentifier copy];
  [v4 setMenuItemIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBExecuteMenuItemCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBExecuteMenuItemCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBExecuteMenuItemCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBExecuteMenuItemCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFExecuteMenuItemCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFExecuteMenuItemCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFExecuteMenuItemCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    applicationBundleIdentifier = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFExecuteMenuItemCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];

    menuItemIdentifier = [(SFCommand *)v8 menuItemIdentifier];
    [(SFExecuteMenuItemCommand *)v5 setMenuItemIdentifier:menuItemIdentifier];

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

@end