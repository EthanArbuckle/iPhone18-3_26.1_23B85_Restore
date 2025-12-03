@interface CLPInstSchemaCLPNLv4SampleEvaluationStarted
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPNLv4SampleEvaluationStarted)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPNLv4SampleEvaluationStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBatchChunkId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CLPInstSchemaCLPNLv4SampleEvaluationStarted

- (CLPInstSchemaCLPNLv4SampleEvaluationStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CLPInstSchemaCLPNLv4SampleEvaluationStarted;
  v5 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"batchNumChunks"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationStarted setBatchNumChunks:](v5, "setBatchNumChunks:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"batchChunkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationStarted setBatchChunkId:](v5, "setBatchChunkId:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"syntheticRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)v5 setSyntheticRequestId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPNLv4SampleEvaluationStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CLPInstSchemaCLPNLv4SampleEvaluationStarted batchChunkId](self, "batchChunkId")}];
    [dictionary setObject:v5 forKeyedSubscript:@"batchChunkId"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CLPInstSchemaCLPNLv4SampleEvaluationStarted batchNumChunks](self, "batchNumChunks")}];
    [dictionary setObject:v6 forKeyedSubscript:@"batchNumChunks"];
  }

  if (self->_syntheticRequestId)
  {
    syntheticRequestId = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];
    dictionaryRepresentation = [syntheticRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"syntheticRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"syntheticRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_batchNumChunks;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(SISchemaUUID *)self->_syntheticRequestId hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_batchChunkId;
  return v7 ^ v6 ^ [(SISchemaUUID *)self->_syntheticRequestId hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    batchNumChunks = self->_batchNumChunks;
    if (batchNumChunks != [equalCopy batchNumChunks])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (batchChunkId = self->_batchChunkId, batchChunkId == [equalCopy batchChunkId]))
    {
      syntheticRequestId = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];
      syntheticRequestId2 = [equalCopy syntheticRequestId];
      v12 = syntheticRequestId2;
      if ((syntheticRequestId != 0) != (syntheticRequestId2 == 0))
      {
        syntheticRequestId3 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];
        if (!syntheticRequestId3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = syntheticRequestId3;
        syntheticRequestId4 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];
        syntheticRequestId5 = [equalCopy syntheticRequestId];
        v17 = [syntheticRequestId4 isEqual:syntheticRequestId5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  syntheticRequestId = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];

  v6 = toCopy;
  if (syntheticRequestId)
  {
    syntheticRequestId2 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasBatchChunkId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CLPInstSchemaCLPNLv4SampleEvaluationStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self deleteSyntheticRequestId];
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