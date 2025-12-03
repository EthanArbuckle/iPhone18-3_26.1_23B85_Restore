@interface CDASchemaCDAClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (CDASchemaCDAClientEventMetadata)initWithDictionary:(id)dictionary;
- (CDASchemaCDAClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation CDASchemaCDAClientEventMetadata

- (CDASchemaCDAClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CDASchemaCDAClientEventMetadata;
  v5 = [(CDASchemaCDAClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cdaId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CDASchemaCDAClientEventMetadata *)v5 setCdaId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (CDASchemaCDAClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CDASchemaCDAClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CDASchemaCDAClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_cdaId)
  {
    cdaId = [(CDASchemaCDAClientEventMetadata *)self cdaId];
    dictionaryRepresentation = [cdaId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cdaId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cdaId"];
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
    cdaId = [(CDASchemaCDAClientEventMetadata *)self cdaId];
    cdaId2 = [equalCopy cdaId];
    v7 = cdaId2;
    if ((cdaId != 0) != (cdaId2 == 0))
    {
      cdaId3 = [(CDASchemaCDAClientEventMetadata *)self cdaId];
      if (!cdaId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = cdaId3;
      cdaId4 = [(CDASchemaCDAClientEventMetadata *)self cdaId];
      cdaId5 = [equalCopy cdaId];
      v12 = [cdaId4 isEqual:cdaId5];

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
  cdaId = [(CDASchemaCDAClientEventMetadata *)self cdaId];

  if (cdaId)
  {
    cdaId2 = [(CDASchemaCDAClientEventMetadata *)self cdaId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CDASchemaCDAClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CDASchemaCDAClientEventMetadata *)self cdaId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CDASchemaCDAClientEventMetadata *)self deleteCdaId];
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