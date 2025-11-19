@interface _SFPBCoreSpotlightShareItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCoreSpotlightShareItem)initWithDictionary:(id)a3;
- (_SFPBCoreSpotlightShareItem)initWithFacade:(id)a3;
- (_SFPBCoreSpotlightShareItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)setCoreSpotlightIdentifier:(id)a3;
- (void)setShareProviderTypeIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCoreSpotlightShareItem

- (_SFPBCoreSpotlightShareItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCoreSpotlightShareItem *)self init];
  if (v5)
  {
    v6 = [v4 shareProviderTypeIdentifier];

    if (v6)
    {
      v7 = [v4 shareProviderTypeIdentifier];
      [(_SFPBCoreSpotlightShareItem *)v5 setShareProviderTypeIdentifier:v7];
    }

    v8 = [v4 applicationBundleIdentifier];

    if (v8)
    {
      v9 = [v4 applicationBundleIdentifier];
      [(_SFPBCoreSpotlightShareItem *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = [v4 coreSpotlightIdentifier];

    if (v10)
    {
      v11 = [v4 coreSpotlightIdentifier];
      [(_SFPBCoreSpotlightShareItem *)v5 setCoreSpotlightIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCoreSpotlightShareItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBCoreSpotlightShareItem;
  v5 = [(_SFPBCoreSpotlightShareItem *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"shareProviderTypeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCoreSpotlightShareItem *)v5 setShareProviderTypeIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBCoreSpotlightShareItem *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBCoreSpotlightShareItem *)v5 setCoreSpotlightIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCoreSpotlightShareItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCoreSpotlightShareItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCoreSpotlightShareItem *)self dictionaryRepresentation];
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
    v4 = [(_SFPBCoreSpotlightShareItem *)self applicationBundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_coreSpotlightIdentifier)
  {
    v6 = [(_SFPBCoreSpotlightShareItem *)self coreSpotlightIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_shareProviderTypeIdentifier)
  {
    v8 = [(_SFPBCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"shareProviderTypeIdentifier"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_shareProviderTypeIdentifier hash];
  v4 = [(NSString *)self->_applicationBundleIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_coreSpotlightIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
  v6 = [v4 shareProviderTypeIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
    v10 = [v4 shareProviderTypeIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCoreSpotlightShareItem *)self applicationBundleIdentifier];
  v6 = [v4 applicationBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBCoreSpotlightShareItem *)self applicationBundleIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCoreSpotlightShareItem *)self applicationBundleIdentifier];
    v15 = [v4 applicationBundleIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCoreSpotlightShareItem *)self coreSpotlightIdentifier];
  v6 = [v4 coreSpotlightIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBCoreSpotlightShareItem *)self coreSpotlightIdentifier];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBCoreSpotlightShareItem *)self coreSpotlightIdentifier];
    v20 = [v4 coreSpotlightIdentifier];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_SFPBCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBCoreSpotlightShareItem *)self applicationBundleIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBCoreSpotlightShareItem *)self coreSpotlightIdentifier];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setCoreSpotlightIdentifier:(id)a3
{
  v4 = [a3 copy];
  coreSpotlightIdentifier = self->_coreSpotlightIdentifier;
  self->_coreSpotlightIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setApplicationBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setShareProviderTypeIdentifier:(id)a3
{
  v4 = [a3 copy];
  shareProviderTypeIdentifier = self->_shareProviderTypeIdentifier;
  self->_shareProviderTypeIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end