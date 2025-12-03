@interface STSchemaSTClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTClientEventMetadata)initWithDictionary:(id)dictionary;
- (STSchemaSTClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTClientEventMetadata

- (STSchemaSTClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = STSchemaSTClientEventMetadata;
  v5 = [(STSchemaSTClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"searchToolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(STSchemaSTClientEventMetadata *)v5 setSearchToolId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (STSchemaSTClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_searchToolId)
  {
    searchToolId = [(STSchemaSTClientEventMetadata *)self searchToolId];
    dictionaryRepresentation = [searchToolId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"searchToolId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"searchToolId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    searchToolId = [(STSchemaSTClientEventMetadata *)self searchToolId];
    searchToolId2 = [equalCopy searchToolId];
    v7 = searchToolId2;
    if ((searchToolId != 0) != (searchToolId2 == 0))
    {
      searchToolId3 = [(STSchemaSTClientEventMetadata *)self searchToolId];
      if (!searchToolId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = searchToolId3;
      searchToolId4 = [(STSchemaSTClientEventMetadata *)self searchToolId];
      searchToolId5 = [equalCopy searchToolId];
      v12 = [searchToolId4 isEqual:searchToolId5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  searchToolId = [(STSchemaSTClientEventMetadata *)self searchToolId];

  if (searchToolId)
  {
    searchToolId2 = [(STSchemaSTClientEventMetadata *)self searchToolId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = STSchemaSTClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(STSchemaSTClientEventMetadata *)self searchToolId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(STSchemaSTClientEventMetadata *)self deleteSearchToolId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end