@interface PGSchemaPGModelInferenceStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PGSchemaPGModelInferenceStarted)initWithDictionary:(id)dictionary;
- (PGSchemaPGModelInferenceStarted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PGSchemaPGModelInferenceStarted

- (PGSchemaPGModelInferenceStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PGSchemaPGModelInferenceStarted;
  v5 = [(PGSchemaPGModelInferenceStarted *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PGSchemaPGModelInferenceStarted *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"modelInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PGSchemaPGModelInferenceStarted setModelInterface:](v5, "setModelInterface:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PGSchemaPGModelInferenceStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PGSchemaPGModelInferenceStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PGSchemaPGModelInferenceStarted *)self dictionaryRepresentation];
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
  if (self->_linkId)
  {
    linkId = [(PGSchemaPGModelInferenceStarted *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(PGSchemaPGModelInferenceStarted *)self modelInterface]- 1;
    if (v7 > 2)
    {
      v8 = @"PGMODELINTERFACE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E0320[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"modelInterface"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_modelInterface;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  linkId = [(PGSchemaPGModelInferenceStarted *)self linkId];
  linkId2 = [equalCopy linkId];
  v7 = linkId2;
  if ((linkId != 0) == (linkId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  linkId3 = [(PGSchemaPGModelInferenceStarted *)self linkId];
  if (linkId3)
  {
    v9 = linkId3;
    linkId4 = [(PGSchemaPGModelInferenceStarted *)self linkId];
    linkId5 = [equalCopy linkId];
    v12 = [linkId4 isEqual:linkId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    modelInterface = self->_modelInterface;
    if (modelInterface != [equalCopy modelInterface])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(PGSchemaPGModelInferenceStarted *)self linkId];

  if (linkId)
  {
    linkId2 = [(PGSchemaPGModelInferenceStarted *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PGSchemaPGModelInferenceStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PGSchemaPGModelInferenceStarted *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PGSchemaPGModelInferenceStarted *)self deleteLinkId];
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