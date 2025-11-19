@interface _SFPBCardSearchMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCardSearchMetadata)initWithDictionary:(id)a3;
- (_SFPBCardSearchMetadata)initWithFacade:(id)a3;
- (_SFPBCardSearchMetadata)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setSearchQuery:(id)a3;
- (void)setViewConfigName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCardSearchMetadata

- (_SFPBCardSearchMetadata)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCardSearchMetadata *)self init];
  if (v5)
  {
    if ([v4 hasIsServerEntity])
    {
      -[_SFPBCardSearchMetadata setIsServerEntity:](v5, "setIsServerEntity:", [v4 isServerEntity]);
    }

    v6 = [v4 searchQuery];

    if (v6)
    {
      v7 = [v4 searchQuery];
      [(_SFPBCardSearchMetadata *)v5 setSearchQuery:v7];
    }

    v8 = [v4 viewConfigName];

    if (v8)
    {
      v9 = [v4 viewConfigName];
      [(_SFPBCardSearchMetadata *)v5 setViewConfigName:v9];
    }

    if ([v4 hasIsFederatedDomainSearch])
    {
      -[_SFPBCardSearchMetadata setIsFederatedDomainSearch:](v5, "setIsFederatedDomainSearch:", [v4 isFederatedDomainSearch]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBCardSearchMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBCardSearchMetadata;
  v5 = [(_SFPBCardSearchMetadata *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isServerEntity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSearchMetadata setIsServerEntity:](v5, "setIsServerEntity:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"searchQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(_SFPBCardSearchMetadata *)v5 setSearchQuery:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"viewConfigName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(_SFPBCardSearchMetadata *)v5 setViewConfigName:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"isFederatedDomainSearch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSearchMetadata setIsFederatedDomainSearch:](v5, "setIsFederatedDomainSearch:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCardSearchMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCardSearchMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCardSearchMetadata *)self dictionaryRepresentation];
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
  if (self->_isFederatedDomainSearch)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSearchMetadata isFederatedDomainSearch](self, "isFederatedDomainSearch")}];
    [v3 setObject:v4 forKeyedSubscript:@"isFederatedDomainSearch"];
  }

  if (self->_isServerEntity)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSearchMetadata isServerEntity](self, "isServerEntity")}];
    [v3 setObject:v5 forKeyedSubscript:@"isServerEntity"];
  }

  if (self->_searchQuery)
  {
    v6 = [(_SFPBCardSearchMetadata *)self searchQuery];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"searchQuery"];
  }

  if (self->_viewConfigName)
  {
    v8 = [(_SFPBCardSearchMetadata *)self viewConfigName];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"viewConfigName"];
  }

  return v3;
}

- (unint64_t)hash
{
  if (self->_isServerEntity)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_searchQuery hash];
  v5 = [(NSString *)self->_viewConfigName hash];
  if (self->_isFederatedDomainSearch)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v5 ^ v3 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  isServerEntity = self->_isServerEntity;
  if (isServerEntity != [v4 isServerEntity])
  {
    goto LABEL_13;
  }

  v6 = [(_SFPBCardSearchMetadata *)self searchQuery];
  v7 = [v4 searchQuery];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(_SFPBCardSearchMetadata *)self searchQuery];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBCardSearchMetadata *)self searchQuery];
    v11 = [v4 searchQuery];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSearchMetadata *)self viewConfigName];
  v7 = [v4 viewConfigName];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(_SFPBCardSearchMetadata *)self viewConfigName];
    if (!v13)
    {

LABEL_16:
      isFederatedDomainSearch = self->_isFederatedDomainSearch;
      v18 = isFederatedDomainSearch == [v4 isFederatedDomainSearch];
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(_SFPBCardSearchMetadata *)self viewConfigName];
    v16 = [v4 viewConfigName];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_SFPBCardSearchMetadata *)self isServerEntity])
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(_SFPBCardSearchMetadata *)self searchQuery];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBCardSearchMetadata *)self viewConfigName];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCardSearchMetadata *)self isFederatedDomainSearch])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setViewConfigName:(id)a3
{
  v4 = [a3 copy];
  viewConfigName = self->_viewConfigName;
  self->_viewConfigName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSearchQuery:(id)a3
{
  v4 = [a3 copy];
  searchQuery = self->_searchQuery;
  self->_searchQuery = v4;

  MEMORY[0x1EEE66BB8]();
}

@end