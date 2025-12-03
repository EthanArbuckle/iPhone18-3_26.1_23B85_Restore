@interface SMTSchemaSMTClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SMTSchemaSMTClientEventMetadata)initWithDictionary:(id)dictionary;
- (SMTSchemaSMTClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SMTSchemaSMTClientEventMetadata

- (SMTSchemaSMTClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SMTSchemaSMTClientEventMetadata;
  v5 = [(SMTSchemaSMTClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"smtId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SMTSchemaSMTClientEventMetadata *)v5 setSmtId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SMTSchemaSMTClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SMTSchemaSMTClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SMTSchemaSMTClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_smtId)
  {
    smtId = [(SMTSchemaSMTClientEventMetadata *)self smtId];
    dictionaryRepresentation = [smtId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"smtId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"smtId"];
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
    smtId = [(SMTSchemaSMTClientEventMetadata *)self smtId];
    smtId2 = [equalCopy smtId];
    v7 = smtId2;
    if ((smtId != 0) != (smtId2 == 0))
    {
      smtId3 = [(SMTSchemaSMTClientEventMetadata *)self smtId];
      if (!smtId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = smtId3;
      smtId4 = [(SMTSchemaSMTClientEventMetadata *)self smtId];
      smtId5 = [equalCopy smtId];
      v12 = [smtId4 isEqual:smtId5];

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
  smtId = [(SMTSchemaSMTClientEventMetadata *)self smtId];

  if (smtId)
  {
    smtId2 = [(SMTSchemaSMTClientEventMetadata *)self smtId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SMTSchemaSMTClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SMTSchemaSMTClientEventMetadata *)self smtId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SMTSchemaSMTClientEventMetadata *)self deleteSmtId];
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