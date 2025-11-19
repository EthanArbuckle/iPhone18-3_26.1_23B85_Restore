@interface CLPInstSchemaCLPNLv4SampleEvaluationStarted
- (BOOL)isEqual:(id)a3;
- (CLPInstSchemaCLPNLv4SampleEvaluationStarted)initWithDictionary:(id)a3;
- (CLPInstSchemaCLPNLv4SampleEvaluationStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBatchChunkId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CLPInstSchemaCLPNLv4SampleEvaluationStarted

- (CLPInstSchemaCLPNLv4SampleEvaluationStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CLPInstSchemaCLPNLv4SampleEvaluationStarted;
  v5 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"batchNumChunks"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationStarted setBatchNumChunks:](v5, "setBatchNumChunks:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"batchChunkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationStarted setBatchChunkId:](v5, "setBatchChunkId:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"syntheticRequestId"];
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

- (CLPInstSchemaCLPNLv4SampleEvaluationStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CLPInstSchemaCLPNLv4SampleEvaluationStarted batchChunkId](self, "batchChunkId")}];
    [v3 setObject:v5 forKeyedSubscript:@"batchChunkId"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CLPInstSchemaCLPNLv4SampleEvaluationStarted batchNumChunks](self, "batchNumChunks")}];
    [v3 setObject:v6 forKeyedSubscript:@"batchNumChunks"];
  }

  if (self->_syntheticRequestId)
  {
    v7 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"syntheticRequestId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"syntheticRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    batchNumChunks = self->_batchNumChunks;
    if (batchNumChunks != [v4 batchNumChunks])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (batchChunkId = self->_batchChunkId, batchChunkId == [v4 batchChunkId]))
    {
      v10 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];
      v11 = [v4 syntheticRequestId];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];
        v16 = [v4 syntheticRequestId];
        v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
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

  v5 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];

  v6 = v8;
  if (v5)
  {
    v7 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasBatchChunkId:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLPInstSchemaCLPNLv4SampleEvaluationStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(CLPInstSchemaCLPNLv4SampleEvaluationStarted *)self syntheticRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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