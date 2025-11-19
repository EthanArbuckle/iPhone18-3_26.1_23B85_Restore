@interface _SFPBLaunchAppCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBLaunchAppCommand)initWithDictionary:(id)a3;
- (_SFPBLaunchAppCommand)initWithFacade:(id)a3;
- (_SFPBLaunchAppCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBLaunchAppCommand

- (_SFPBLaunchAppCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBLaunchAppCommand *)self init];
  if (v5)
  {
    v6 = [v4 applicationBundleIdentifier];

    if (v6)
    {
      v7 = [v4 applicationBundleIdentifier];
      [(_SFPBLaunchAppCommand *)v5 setApplicationBundleIdentifier:v7];
    }

    if ([v4 hasIsOnenessApplication])
    {
      -[_SFPBLaunchAppCommand setIsOnenessApplication:](v5, "setIsOnenessApplication:", [v4 isOnenessApplication]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBLaunchAppCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBLaunchAppCommand;
  v5 = [(_SFPBLaunchAppCommand *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBLaunchAppCommand *)v5 setApplicationBundleIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isOnenessApplication"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLaunchAppCommand setIsOnenessApplication:](v5, "setIsOnenessApplication:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBLaunchAppCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBLaunchAppCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBLaunchAppCommand *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationBundleIdentifier)
  {
    v4 = [(_SFPBLaunchAppCommand *)self applicationBundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_isOnenessApplication)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLaunchAppCommand isOnenessApplication](self, "isOnenessApplication")}];
    [v3 setObject:v6 forKeyedSubscript:@"isOnenessApplication"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBLaunchAppCommand *)self applicationBundleIdentifier];
    v6 = [v4 applicationBundleIdentifier];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBLaunchAppCommand *)self applicationBundleIdentifier];
      if (!v8)
      {

LABEL_10:
        isOnenessApplication = self->_isOnenessApplication;
        v13 = isOnenessApplication == [v4 isOnenessApplication];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBLaunchAppCommand *)self applicationBundleIdentifier];
      v11 = [v4 applicationBundleIdentifier];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(_SFPBLaunchAppCommand *)self applicationBundleIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBLaunchAppCommand *)self isOnenessApplication])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setApplicationBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end