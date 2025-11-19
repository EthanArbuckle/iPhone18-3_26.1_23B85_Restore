@interface _SFPBEntitySearchMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBEntitySearchMetadata)initWithDictionary:(id)a3;
- (_SFPBEntitySearchMetadata)initWithFacade:(id)a3;
- (_SFPBEntitySearchMetadata)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setEntityIdentifier:(id)a3;
- (void)setEntitySearchQuery:(id)a3;
- (void)setTokenQuery:(id)a3;
- (void)setViewConfigName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBEntitySearchMetadata

- (_SFPBEntitySearchMetadata)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBEntitySearchMetadata *)self init];
  if (v5)
  {
    v6 = [v4 entitySearchQuery];

    if (v6)
    {
      v7 = [v4 entitySearchQuery];
      [(_SFPBEntitySearchMetadata *)v5 setEntitySearchQuery:v7];
    }

    v8 = [v4 tokenQuery];

    if (v8)
    {
      v9 = [v4 tokenQuery];
      [(_SFPBEntitySearchMetadata *)v5 setTokenQuery:v9];
    }

    v10 = [v4 entityIdentifier];

    if (v10)
    {
      v11 = [v4 entityIdentifier];
      [(_SFPBEntitySearchMetadata *)v5 setEntityIdentifier:v11];
    }

    v12 = [v4 viewConfigName];

    if (v12)
    {
      v13 = [v4 viewConfigName];
      [(_SFPBEntitySearchMetadata *)v5 setViewConfigName:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBEntitySearchMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _SFPBEntitySearchMetadata;
  v5 = [(_SFPBEntitySearchMetadata *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"entitySearchQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBEntitySearchMetadata *)v5 setEntitySearchQuery:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"tokenQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBEntitySearchMetadata *)v5 setTokenQuery:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"entityIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBEntitySearchMetadata *)v5 setEntityIdentifier:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"viewConfigName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBEntitySearchMetadata *)v5 setViewConfigName:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBEntitySearchMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBEntitySearchMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBEntitySearchMetadata *)self dictionaryRepresentation];
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
  if (self->_entityIdentifier)
  {
    v4 = [(_SFPBEntitySearchMetadata *)self entityIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"entityIdentifier"];
  }

  if (self->_entitySearchQuery)
  {
    v6 = [(_SFPBEntitySearchMetadata *)self entitySearchQuery];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"entitySearchQuery"];
  }

  if (self->_tokenQuery)
  {
    v8 = [(_SFPBEntitySearchMetadata *)self tokenQuery];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"tokenQuery"];
  }

  if (self->_viewConfigName)
  {
    v10 = [(_SFPBEntitySearchMetadata *)self viewConfigName];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"viewConfigName"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_entitySearchQuery hash];
  v4 = [(NSString *)self->_tokenQuery hash]^ v3;
  v5 = [(NSString *)self->_entityIdentifier hash];
  return v4 ^ v5 ^ [(NSString *)self->_viewConfigName hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_SFPBEntitySearchMetadata *)self entitySearchQuery];
  v6 = [v4 entitySearchQuery];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_SFPBEntitySearchMetadata *)self entitySearchQuery];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBEntitySearchMetadata *)self entitySearchQuery];
    v10 = [v4 entitySearchQuery];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBEntitySearchMetadata *)self tokenQuery];
  v6 = [v4 tokenQuery];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_SFPBEntitySearchMetadata *)self tokenQuery];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBEntitySearchMetadata *)self tokenQuery];
    v15 = [v4 tokenQuery];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBEntitySearchMetadata *)self entityIdentifier];
  v6 = [v4 entityIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_SFPBEntitySearchMetadata *)self entityIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBEntitySearchMetadata *)self entityIdentifier];
    v20 = [v4 entityIdentifier];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBEntitySearchMetadata *)self viewConfigName];
  v6 = [v4 viewConfigName];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_SFPBEntitySearchMetadata *)self viewConfigName];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_SFPBEntitySearchMetadata *)self viewConfigName];
    v25 = [v4 viewConfigName];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBEntitySearchMetadata *)self entitySearchQuery];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBEntitySearchMetadata *)self tokenQuery];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBEntitySearchMetadata *)self entityIdentifier];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBEntitySearchMetadata *)self viewConfigName];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setViewConfigName:(id)a3
{
  v4 = [a3 copy];
  viewConfigName = self->_viewConfigName;
  self->_viewConfigName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEntityIdentifier:(id)a3
{
  v4 = [a3 copy];
  entityIdentifier = self->_entityIdentifier;
  self->_entityIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTokenQuery:(id)a3
{
  v4 = [a3 copy];
  tokenQuery = self->_tokenQuery;
  self->_tokenQuery = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEntitySearchQuery:(id)a3
{
  v4 = [a3 copy];
  entitySearchQuery = self->_entitySearchQuery;
  self->_entitySearchQuery = v4;

  MEMORY[0x1EEE66BB8]();
}

@end