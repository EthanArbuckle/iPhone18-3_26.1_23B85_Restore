@interface _SFPBRequestAppClipInstallCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRequestAppClipInstallCommand)initWithDictionary:(id)a3;
- (_SFPBRequestAppClipInstallCommand)initWithFacade:(id)a3;
- (_SFPBRequestAppClipInstallCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRequestAppClipInstallCommand

- (_SFPBRequestAppClipInstallCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRequestAppClipInstallCommand *)self init];
  if (v5)
  {
    v6 = [v4 url];

    if (v6)
    {
      v7 = [_SFPBURL alloc];
      v8 = [v4 url];
      v9 = [(_SFPBURL *)v7 initWithNSURL:v8];
      [(_SFPBRequestAppClipInstallCommand *)v5 setUrl:v9];
    }

    v10 = [v4 applicationBundleIdentifier];

    if (v10)
    {
      v11 = [v4 applicationBundleIdentifier];
      [(_SFPBRequestAppClipInstallCommand *)v5 setApplicationBundleIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRequestAppClipInstallCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBRequestAppClipInstallCommand;
  v5 = [(_SFPBRequestAppClipInstallCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBURL alloc] initWithDictionary:v6];
      [(_SFPBRequestAppClipInstallCommand *)v5 setUrl:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"applicationBundleIdentifier"];
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

- (_SFPBRequestAppClipInstallCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRequestAppClipInstallCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRequestAppClipInstallCommand *)self dictionaryRepresentation];
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
    v4 = [(_SFPBRequestAppClipInstallCommand *)self applicationBundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_url)
  {
    v6 = [(_SFPBRequestAppClipInstallCommand *)self url];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"url"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"url"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBRequestAppClipInstallCommand *)self url];
  v6 = [v4 url];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBRequestAppClipInstallCommand *)self url];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRequestAppClipInstallCommand *)self url];
    v10 = [v4 url];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRequestAppClipInstallCommand *)self applicationBundleIdentifier];
  v6 = [v4 applicationBundleIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBRequestAppClipInstallCommand *)self applicationBundleIdentifier];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBRequestAppClipInstallCommand *)self applicationBundleIdentifier];
    v15 = [v4 applicationBundleIdentifier];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_SFPBRequestAppClipInstallCommand *)self url];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRequestAppClipInstallCommand *)self applicationBundleIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
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