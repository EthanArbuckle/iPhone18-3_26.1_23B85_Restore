@interface _SFPBSearchInAppCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSearchInAppCommand)initWithDictionary:(id)a3;
- (_SFPBSearchInAppCommand)initWithFacade:(id)a3;
- (_SFPBSearchInAppCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)setSearchString:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSearchInAppCommand

- (_SFPBSearchInAppCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBSearchInAppCommand *)self init];
  if (v5)
  {
    v6 = [v4 searchString];

    if (v6)
    {
      v7 = [v4 searchString];
      [(_SFPBSearchInAppCommand *)v5 setSearchString:v7];
    }

    v8 = [v4 applicationBundleIdentifier];

    if (v8)
    {
      v9 = [v4 applicationBundleIdentifier];
      [(_SFPBSearchInAppCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    if ([v4 hasSearchInAppType])
    {
      -[_SFPBSearchInAppCommand setSearchInAppType:](v5, "setSearchInAppType:", [v4 searchInAppType]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBSearchInAppCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFPBSearchInAppCommand;
  v5 = [(_SFPBSearchInAppCommand *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"searchString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBSearchInAppCommand *)v5 setSearchString:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBSearchInAppCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"searchInAppType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSearchInAppCommand setSearchInAppType:](v5, "setSearchInAppType:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBSearchInAppCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSearchInAppCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSearchInAppCommand *)self dictionaryRepresentation];
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
    v4 = [(_SFPBSearchInAppCommand *)self applicationBundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_searchInAppType)
  {
    v6 = [(_SFPBSearchInAppCommand *)self searchInAppType];
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = @"1";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
      }
    }

    else
    {
      v7 = @"0";
    }

    [v3 setObject:v7 forKeyedSubscript:@"searchInAppType"];
  }

  if (self->_searchString)
  {
    v8 = [(_SFPBSearchInAppCommand *)self searchString];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"searchString"];
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

  v5 = [(_SFPBSearchInAppCommand *)self searchString];
  v6 = [v4 searchString];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBSearchInAppCommand *)self searchString];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBSearchInAppCommand *)self searchString];
    v10 = [v4 searchString];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSearchInAppCommand *)self applicationBundleIdentifier];
  v6 = [v4 applicationBundleIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBSearchInAppCommand *)self applicationBundleIdentifier];
    if (!v12)
    {

LABEL_15:
      searchInAppType = self->_searchInAppType;
      v17 = searchInAppType == [v4 searchInAppType];
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBSearchInAppCommand *)self applicationBundleIdentifier];
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
  v8 = a3;
  v4 = [(_SFPBSearchInAppCommand *)self searchString];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBSearchInAppCommand *)self applicationBundleIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBSearchInAppCommand *)self searchInAppType];
  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (void)setApplicationBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSearchString:(id)a3
{
  v4 = [a3 copy];
  searchString = self->_searchString;
  self->_searchString = v4;

  MEMORY[0x1EEE66BB8]();
}

@end