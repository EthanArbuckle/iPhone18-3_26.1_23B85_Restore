@interface PNRODSchemaPNRODClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODClientEventMetadata)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODClientEventMetadata

- (PNRODSchemaPNRODClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PNRODSchemaPNRODClientEventMetadata;
  v5 = [(PNRODSchemaPNRODClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pnrodId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODClientEventMetadata *)v5 setPnrodId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_pnrodId)
  {
    pnrodId = [(PNRODSchemaPNRODClientEventMetadata *)self pnrodId];
    dictionaryRepresentation = [pnrodId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"pnrodId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"pnrodId"];
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
    pnrodId = [(PNRODSchemaPNRODClientEventMetadata *)self pnrodId];
    pnrodId2 = [equalCopy pnrodId];
    v7 = pnrodId2;
    if ((pnrodId != 0) != (pnrodId2 == 0))
    {
      pnrodId3 = [(PNRODSchemaPNRODClientEventMetadata *)self pnrodId];
      if (!pnrodId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = pnrodId3;
      pnrodId4 = [(PNRODSchemaPNRODClientEventMetadata *)self pnrodId];
      pnrodId5 = [equalCopy pnrodId];
      v12 = [pnrodId4 isEqual:pnrodId5];

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
  pnrodId = [(PNRODSchemaPNRODClientEventMetadata *)self pnrodId];

  if (pnrodId)
  {
    pnrodId2 = [(PNRODSchemaPNRODClientEventMetadata *)self pnrodId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PNRODSchemaPNRODClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PNRODSchemaPNRODClientEventMetadata *)self pnrodId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PNRODSchemaPNRODClientEventMetadata *)self deletePnrodId];
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