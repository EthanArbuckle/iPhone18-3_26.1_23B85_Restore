@interface _SFPBCardMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCardMetadata)initWithDictionary:(id)dictionary;
- (_SFPBCardMetadata)initWithFacade:(id)facade;
- (_SFPBCardMetadata)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setQueryToSearchAcrossAllDomains:(id)domains;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCardMetadata

- (_SFPBCardMetadata)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCardMetadata *)self init];
  if (v5)
  {
    if ([facadeCopy hasIsServerEntity])
    {
      -[_SFPBCardMetadata setIsServerEntity:](v5, "setIsServerEntity:", [facadeCopy isServerEntity]);
    }

    queryToSearchAcrossAllDomains = [facadeCopy queryToSearchAcrossAllDomains];

    if (queryToSearchAcrossAllDomains)
    {
      queryToSearchAcrossAllDomains2 = [facadeCopy queryToSearchAcrossAllDomains];
      [(_SFPBCardMetadata *)v5 setQueryToSearchAcrossAllDomains:queryToSearchAcrossAllDomains2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCardMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBCardMetadata;
  v5 = [(_SFPBCardMetadata *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isServerEntity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardMetadata setIsServerEntity:](v5, "setIsServerEntity:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"queryToSearchAcrossAllDomains"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(_SFPBCardMetadata *)v5 setQueryToSearchAcrossAllDomains:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBCardMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCardMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCardMetadata *)self dictionaryRepresentation];
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
  if (self->_isServerEntity)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardMetadata isServerEntity](self, "isServerEntity")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isServerEntity"];
  }

  if (self->_queryToSearchAcrossAllDomains)
  {
    queryToSearchAcrossAllDomains = [(_SFPBCardMetadata *)self queryToSearchAcrossAllDomains];
    v6 = [queryToSearchAcrossAllDomains copy];
    [dictionary setObject:v6 forKeyedSubscript:@"queryToSearchAcrossAllDomains"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if (self->_isServerEntity)
  {
    v2 = 2654435761;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_queryToSearchAcrossAllDomains hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    isServerEntity = self->_isServerEntity;
    if (isServerEntity == [equalCopy isServerEntity])
    {
      queryToSearchAcrossAllDomains = [(_SFPBCardMetadata *)self queryToSearchAcrossAllDomains];
      queryToSearchAcrossAllDomains2 = [equalCopy queryToSearchAcrossAllDomains];
      v8 = queryToSearchAcrossAllDomains2;
      if ((queryToSearchAcrossAllDomains != 0) != (queryToSearchAcrossAllDomains2 == 0))
      {
        queryToSearchAcrossAllDomains3 = [(_SFPBCardMetadata *)self queryToSearchAcrossAllDomains];
        if (!queryToSearchAcrossAllDomains3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = queryToSearchAcrossAllDomains3;
        queryToSearchAcrossAllDomains4 = [(_SFPBCardMetadata *)self queryToSearchAcrossAllDomains];
        queryToSearchAcrossAllDomains5 = [equalCopy queryToSearchAcrossAllDomains];
        v13 = [queryToSearchAcrossAllDomains4 isEqual:queryToSearchAcrossAllDomains5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBCardMetadata *)self isServerEntity])
  {
    PBDataWriterWriteBOOLField();
  }

  queryToSearchAcrossAllDomains = [(_SFPBCardMetadata *)self queryToSearchAcrossAllDomains];
  if (queryToSearchAcrossAllDomains)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setQueryToSearchAcrossAllDomains:(id)domains
{
  v4 = [domains copy];
  queryToSearchAcrossAllDomains = self->_queryToSearchAcrossAllDomains;
  self->_queryToSearchAcrossAllDomains = v4;

  MEMORY[0x1EEE66BB8]();
}

@end