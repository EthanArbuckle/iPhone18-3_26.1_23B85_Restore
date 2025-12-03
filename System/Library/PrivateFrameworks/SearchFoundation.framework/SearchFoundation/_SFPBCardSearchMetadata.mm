@interface _SFPBCardSearchMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCardSearchMetadata)initWithDictionary:(id)dictionary;
- (_SFPBCardSearchMetadata)initWithFacade:(id)facade;
- (_SFPBCardSearchMetadata)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setSearchQuery:(id)query;
- (void)setViewConfigName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCardSearchMetadata

- (_SFPBCardSearchMetadata)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCardSearchMetadata *)self init];
  if (v5)
  {
    if ([facadeCopy hasIsServerEntity])
    {
      -[_SFPBCardSearchMetadata setIsServerEntity:](v5, "setIsServerEntity:", [facadeCopy isServerEntity]);
    }

    searchQuery = [facadeCopy searchQuery];

    if (searchQuery)
    {
      searchQuery2 = [facadeCopy searchQuery];
      [(_SFPBCardSearchMetadata *)v5 setSearchQuery:searchQuery2];
    }

    viewConfigName = [facadeCopy viewConfigName];

    if (viewConfigName)
    {
      viewConfigName2 = [facadeCopy viewConfigName];
      [(_SFPBCardSearchMetadata *)v5 setViewConfigName:viewConfigName2];
    }

    if ([facadeCopy hasIsFederatedDomainSearch])
    {
      -[_SFPBCardSearchMetadata setIsFederatedDomainSearch:](v5, "setIsFederatedDomainSearch:", [facadeCopy isFederatedDomainSearch]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBCardSearchMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBCardSearchMetadata;
  v5 = [(_SFPBCardSearchMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isServerEntity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSearchMetadata setIsServerEntity:](v5, "setIsServerEntity:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"searchQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(_SFPBCardSearchMetadata *)v5 setSearchQuery:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"viewConfigName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(_SFPBCardSearchMetadata *)v5 setViewConfigName:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isFederatedDomainSearch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSearchMetadata setIsFederatedDomainSearch:](v5, "setIsFederatedDomainSearch:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCardSearchMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCardSearchMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCardSearchMetadata *)self dictionaryRepresentation];
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
  if (self->_isFederatedDomainSearch)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSearchMetadata isFederatedDomainSearch](self, "isFederatedDomainSearch")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isFederatedDomainSearch"];
  }

  if (self->_isServerEntity)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSearchMetadata isServerEntity](self, "isServerEntity")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isServerEntity"];
  }

  if (self->_searchQuery)
  {
    searchQuery = [(_SFPBCardSearchMetadata *)self searchQuery];
    v7 = [searchQuery copy];
    [dictionary setObject:v7 forKeyedSubscript:@"searchQuery"];
  }

  if (self->_viewConfigName)
  {
    viewConfigName = [(_SFPBCardSearchMetadata *)self viewConfigName];
    v9 = [viewConfigName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"viewConfigName"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  isServerEntity = self->_isServerEntity;
  if (isServerEntity != [equalCopy isServerEntity])
  {
    goto LABEL_13;
  }

  searchQuery = [(_SFPBCardSearchMetadata *)self searchQuery];
  searchQuery2 = [equalCopy searchQuery];
  if ((searchQuery != 0) == (searchQuery2 == 0))
  {
    goto LABEL_12;
  }

  searchQuery3 = [(_SFPBCardSearchMetadata *)self searchQuery];
  if (searchQuery3)
  {
    v9 = searchQuery3;
    searchQuery4 = [(_SFPBCardSearchMetadata *)self searchQuery];
    searchQuery5 = [equalCopy searchQuery];
    v12 = [searchQuery4 isEqual:searchQuery5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  searchQuery = [(_SFPBCardSearchMetadata *)self viewConfigName];
  searchQuery2 = [equalCopy viewConfigName];
  if ((searchQuery != 0) != (searchQuery2 == 0))
  {
    viewConfigName = [(_SFPBCardSearchMetadata *)self viewConfigName];
    if (!viewConfigName)
    {

LABEL_16:
      isFederatedDomainSearch = self->_isFederatedDomainSearch;
      v18 = isFederatedDomainSearch == [equalCopy isFederatedDomainSearch];
      goto LABEL_14;
    }

    v14 = viewConfigName;
    viewConfigName2 = [(_SFPBCardSearchMetadata *)self viewConfigName];
    viewConfigName3 = [equalCopy viewConfigName];
    v17 = [viewConfigName2 isEqual:viewConfigName3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBCardSearchMetadata *)self isServerEntity])
  {
    PBDataWriterWriteBOOLField();
  }

  searchQuery = [(_SFPBCardSearchMetadata *)self searchQuery];
  if (searchQuery)
  {
    PBDataWriterWriteStringField();
  }

  viewConfigName = [(_SFPBCardSearchMetadata *)self viewConfigName];
  if (viewConfigName)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCardSearchMetadata *)self isFederatedDomainSearch])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setViewConfigName:(id)name
{
  v4 = [name copy];
  viewConfigName = self->_viewConfigName;
  self->_viewConfigName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSearchQuery:(id)query
{
  v4 = [query copy];
  searchQuery = self->_searchQuery;
  self->_searchQuery = v4;

  MEMORY[0x1EEE66BB8]();
}

@end