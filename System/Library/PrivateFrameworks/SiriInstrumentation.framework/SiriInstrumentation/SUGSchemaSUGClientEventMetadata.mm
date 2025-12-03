@interface SUGSchemaSUGClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUGSchemaSUGClientEventMetadata)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGClientEventMetadata

- (SUGSchemaSUGClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SUGSchemaSUGClientEventMetadata;
  v5 = [(SUGSchemaSUGClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sugId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SUGSchemaSUGClientEventMetadata *)v5 setSugId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SUGSchemaSUGClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_sugId)
  {
    sugId = [(SUGSchemaSUGClientEventMetadata *)self sugId];
    dictionaryRepresentation = [sugId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sugId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sugId"];
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
    sugId = [(SUGSchemaSUGClientEventMetadata *)self sugId];
    sugId2 = [equalCopy sugId];
    v7 = sugId2;
    if ((sugId != 0) != (sugId2 == 0))
    {
      sugId3 = [(SUGSchemaSUGClientEventMetadata *)self sugId];
      if (!sugId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = sugId3;
      sugId4 = [(SUGSchemaSUGClientEventMetadata *)self sugId];
      sugId5 = [equalCopy sugId];
      v12 = [sugId4 isEqual:sugId5];

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
  sugId = [(SUGSchemaSUGClientEventMetadata *)self sugId];

  if (sugId)
  {
    sugId2 = [(SUGSchemaSUGClientEventMetadata *)self sugId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SUGSchemaSUGClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SUGSchemaSUGClientEventMetadata *)self sugId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SUGSchemaSUGClientEventMetadata *)self deleteSugId];
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