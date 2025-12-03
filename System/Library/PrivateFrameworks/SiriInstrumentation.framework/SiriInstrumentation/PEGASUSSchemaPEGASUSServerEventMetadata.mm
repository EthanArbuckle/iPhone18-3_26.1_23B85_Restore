@interface PEGASUSSchemaPEGASUSServerEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSServerEventMetadata)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSServerEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSServerEventMetadata

- (PEGASUSSchemaPEGASUSServerEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSServerEventMetadata;
  v5 = [(PEGASUSSchemaPEGASUSServerEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pegasusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSServerEventMetadata *)v5 setPegasusId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSServerEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSServerEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self dictionaryRepresentation];
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
  if (self->_pegasusId)
  {
    pegasusId = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self pegasusId];
    dictionaryRepresentation = [pegasusId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"pegasusId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"pegasusId"];
    }
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self resultCandidateId];
    v8 = [resultCandidateId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"resultCandidateId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  pegasusId = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self pegasusId];
  pegasusId2 = [equalCopy pegasusId];
  if ((pegasusId != 0) == (pegasusId2 == 0))
  {
    goto LABEL_11;
  }

  pegasusId3 = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self pegasusId];
  if (pegasusId3)
  {
    v8 = pegasusId3;
    pegasusId4 = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self pegasusId];
    pegasusId5 = [equalCopy pegasusId];
    v11 = [pegasusId4 isEqual:pegasusId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  pegasusId = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self resultCandidateId];
  pegasusId2 = [equalCopy resultCandidateId];
  if ((pegasusId != 0) != (pegasusId2 == 0))
  {
    resultCandidateId = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self resultCandidateId];
    if (!resultCandidateId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = resultCandidateId;
    resultCandidateId2 = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  pegasusId = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self pegasusId];

  if (pegasusId)
  {
    pegasusId2 = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self pegasusId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PEGASUSSchemaPEGASUSServerEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self pegasusId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PEGASUSSchemaPEGASUSServerEventMetadata *)self deletePegasusId];
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