@interface ANCSchemaANCServerEventMetadata
- (ANCSchemaANCServerEventMetadata)initWithDictionary:(id)dictionary;
- (ANCSchemaANCServerEventMetadata)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ANCSchemaANCServerEventMetadata

- (ANCSchemaANCServerEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ANCSchemaANCServerEventMetadata;
  v5 = [(ANCSchemaANCServerEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ancId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ANCSchemaANCServerEventMetadata *)v5 setAncId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ANCSchemaANCServerEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ANCSchemaANCServerEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ANCSchemaANCServerEventMetadata *)self dictionaryRepresentation];
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
  if (self->_ancId)
  {
    ancId = [(ANCSchemaANCServerEventMetadata *)self ancId];
    dictionaryRepresentation = [ancId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ancId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ancId"];
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
    ancId = [(ANCSchemaANCServerEventMetadata *)self ancId];
    ancId2 = [equalCopy ancId];
    v7 = ancId2;
    if ((ancId != 0) != (ancId2 == 0))
    {
      ancId3 = [(ANCSchemaANCServerEventMetadata *)self ancId];
      if (!ancId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = ancId3;
      ancId4 = [(ANCSchemaANCServerEventMetadata *)self ancId];
      ancId5 = [equalCopy ancId];
      v12 = [ancId4 isEqual:ancId5];

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
  ancId = [(ANCSchemaANCServerEventMetadata *)self ancId];

  if (ancId)
  {
    ancId2 = [(ANCSchemaANCServerEventMetadata *)self ancId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ANCSchemaANCServerEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ANCSchemaANCServerEventMetadata *)self ancId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ANCSchemaANCServerEventMetadata *)self deleteAncId];
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