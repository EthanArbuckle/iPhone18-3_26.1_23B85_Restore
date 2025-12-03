@interface _SFPBEntitySearchMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBEntitySearchMetadata)initWithDictionary:(id)dictionary;
- (_SFPBEntitySearchMetadata)initWithFacade:(id)facade;
- (_SFPBEntitySearchMetadata)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setEntityIdentifier:(id)identifier;
- (void)setEntitySearchQuery:(id)query;
- (void)setTokenQuery:(id)query;
- (void)setViewConfigName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _SFPBEntitySearchMetadata

- (_SFPBEntitySearchMetadata)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBEntitySearchMetadata *)self init];
  if (v5)
  {
    entitySearchQuery = [facadeCopy entitySearchQuery];

    if (entitySearchQuery)
    {
      entitySearchQuery2 = [facadeCopy entitySearchQuery];
      [(_SFPBEntitySearchMetadata *)v5 setEntitySearchQuery:entitySearchQuery2];
    }

    tokenQuery = [facadeCopy tokenQuery];

    if (tokenQuery)
    {
      tokenQuery2 = [facadeCopy tokenQuery];
      [(_SFPBEntitySearchMetadata *)v5 setTokenQuery:tokenQuery2];
    }

    entityIdentifier = [facadeCopy entityIdentifier];

    if (entityIdentifier)
    {
      entityIdentifier2 = [facadeCopy entityIdentifier];
      [(_SFPBEntitySearchMetadata *)v5 setEntityIdentifier:entityIdentifier2];
    }

    viewConfigName = [facadeCopy viewConfigName];

    if (viewConfigName)
    {
      viewConfigName2 = [facadeCopy viewConfigName];
      [(_SFPBEntitySearchMetadata *)v5 setViewConfigName:viewConfigName2];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBEntitySearchMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = _SFPBEntitySearchMetadata;
  v5 = [(_SFPBEntitySearchMetadata *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"entitySearchQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBEntitySearchMetadata *)v5 setEntitySearchQuery:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"tokenQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBEntitySearchMetadata *)v5 setTokenQuery:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"entityIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBEntitySearchMetadata *)v5 setEntityIdentifier:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"viewConfigName"];
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

- (_SFPBEntitySearchMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBEntitySearchMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBEntitySearchMetadata *)self dictionaryRepresentation];
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
  if (self->_entityIdentifier)
  {
    entityIdentifier = [(_SFPBEntitySearchMetadata *)self entityIdentifier];
    v5 = [entityIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"entityIdentifier"];
  }

  if (self->_entitySearchQuery)
  {
    entitySearchQuery = [(_SFPBEntitySearchMetadata *)self entitySearchQuery];
    v7 = [entitySearchQuery copy];
    [dictionary setObject:v7 forKeyedSubscript:@"entitySearchQuery"];
  }

  if (self->_tokenQuery)
  {
    tokenQuery = [(_SFPBEntitySearchMetadata *)self tokenQuery];
    v9 = [tokenQuery copy];
    [dictionary setObject:v9 forKeyedSubscript:@"tokenQuery"];
  }

  if (self->_viewConfigName)
  {
    viewConfigName = [(_SFPBEntitySearchMetadata *)self viewConfigName];
    v11 = [viewConfigName copy];
    [dictionary setObject:v11 forKeyedSubscript:@"viewConfigName"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_entitySearchQuery hash];
  v4 = [(NSString *)self->_tokenQuery hash]^ v3;
  v5 = [(NSString *)self->_entityIdentifier hash];
  return v4 ^ v5 ^ [(NSString *)self->_viewConfigName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  entitySearchQuery = [(_SFPBEntitySearchMetadata *)self entitySearchQuery];
  entitySearchQuery2 = [equalCopy entitySearchQuery];
  if ((entitySearchQuery != 0) == (entitySearchQuery2 == 0))
  {
    goto LABEL_21;
  }

  entitySearchQuery3 = [(_SFPBEntitySearchMetadata *)self entitySearchQuery];
  if (entitySearchQuery3)
  {
    v8 = entitySearchQuery3;
    entitySearchQuery4 = [(_SFPBEntitySearchMetadata *)self entitySearchQuery];
    entitySearchQuery5 = [equalCopy entitySearchQuery];
    v11 = [entitySearchQuery4 isEqual:entitySearchQuery5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  entitySearchQuery = [(_SFPBEntitySearchMetadata *)self tokenQuery];
  entitySearchQuery2 = [equalCopy tokenQuery];
  if ((entitySearchQuery != 0) == (entitySearchQuery2 == 0))
  {
    goto LABEL_21;
  }

  tokenQuery = [(_SFPBEntitySearchMetadata *)self tokenQuery];
  if (tokenQuery)
  {
    v13 = tokenQuery;
    tokenQuery2 = [(_SFPBEntitySearchMetadata *)self tokenQuery];
    tokenQuery3 = [equalCopy tokenQuery];
    v16 = [tokenQuery2 isEqual:tokenQuery3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  entitySearchQuery = [(_SFPBEntitySearchMetadata *)self entityIdentifier];
  entitySearchQuery2 = [equalCopy entityIdentifier];
  if ((entitySearchQuery != 0) == (entitySearchQuery2 == 0))
  {
    goto LABEL_21;
  }

  entityIdentifier = [(_SFPBEntitySearchMetadata *)self entityIdentifier];
  if (entityIdentifier)
  {
    v18 = entityIdentifier;
    entityIdentifier2 = [(_SFPBEntitySearchMetadata *)self entityIdentifier];
    entityIdentifier3 = [equalCopy entityIdentifier];
    v21 = [entityIdentifier2 isEqual:entityIdentifier3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  entitySearchQuery = [(_SFPBEntitySearchMetadata *)self viewConfigName];
  entitySearchQuery2 = [equalCopy viewConfigName];
  if ((entitySearchQuery != 0) != (entitySearchQuery2 == 0))
  {
    viewConfigName = [(_SFPBEntitySearchMetadata *)self viewConfigName];
    if (!viewConfigName)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = viewConfigName;
    viewConfigName2 = [(_SFPBEntitySearchMetadata *)self viewConfigName];
    viewConfigName3 = [equalCopy viewConfigName];
    v26 = [viewConfigName2 isEqual:viewConfigName3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  entitySearchQuery = [(_SFPBEntitySearchMetadata *)self entitySearchQuery];
  if (entitySearchQuery)
  {
    PBDataWriterWriteStringField();
  }

  tokenQuery = [(_SFPBEntitySearchMetadata *)self tokenQuery];
  if (tokenQuery)
  {
    PBDataWriterWriteStringField();
  }

  entityIdentifier = [(_SFPBEntitySearchMetadata *)self entityIdentifier];
  if (entityIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  viewConfigName = [(_SFPBEntitySearchMetadata *)self viewConfigName];
  if (viewConfigName)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setViewConfigName:(id)name
{
  v4 = [name copy];
  viewConfigName = self->_viewConfigName;
  self->_viewConfigName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEntityIdentifier:(id)identifier
{
  v4 = [identifier copy];
  entityIdentifier = self->_entityIdentifier;
  self->_entityIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTokenQuery:(id)query
{
  v4 = [query copy];
  tokenQuery = self->_tokenQuery;
  self->_tokenQuery = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEntitySearchQuery:(id)query
{
  v4 = [query copy];
  entitySearchQuery = self->_entitySearchQuery;
  self->_entitySearchQuery = v4;

  MEMORY[0x1EEE66BB8]();
}

@end