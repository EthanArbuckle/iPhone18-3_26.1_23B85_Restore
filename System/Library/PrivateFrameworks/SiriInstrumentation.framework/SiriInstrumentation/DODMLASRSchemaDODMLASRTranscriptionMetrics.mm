@interface DODMLASRSchemaDODMLASRTranscriptionMetrics
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRTranscriptionMetrics)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRTranscriptionMetrics)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRTranscriptionMetrics

- (DODMLASRSchemaDODMLASRTranscriptionMetrics)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DODMLASRSchemaDODMLASRTranscriptionMetrics;
  v5 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"train"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DODMLASRSchemaDODMLASRTranscriptMetadata alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)v5 setTrain:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"dev"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DODMLASRSchemaDODMLASRTranscriptMetadata alloc] initWithDictionary:v8];
      [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)v5 setDev:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"test"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[DODMLASRSchemaDODMLASRTranscriptMetadata alloc] initWithDictionary:v10];
      [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)v5 setTest:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"external"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[DODMLASRSchemaDODMLASRTranscriptMetadata alloc] initWithDictionary:v12];
      [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)v5 setExternal:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRTranscriptionMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dictionaryRepresentation];
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
  if (self->_dev)
  {
    v4 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"dev"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"dev"];
    }
  }

  if (self->_external)
  {
    v7 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"external"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"external"];
    }
  }

  if (self->_test)
  {
    v10 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"test"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"test"];
    }
  }

  if (self->_train)
  {
    v13 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"train"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"train"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(DODMLASRSchemaDODMLASRTranscriptMetadata *)self->_train hash];
  v4 = [(DODMLASRSchemaDODMLASRTranscriptMetadata *)self->_dev hash]^ v3;
  v5 = [(DODMLASRSchemaDODMLASRTranscriptMetadata *)self->_test hash];
  return v4 ^ v5 ^ [(DODMLASRSchemaDODMLASRTranscriptMetadata *)self->_external hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
  v6 = [v4 train];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
  if (v7)
  {
    v8 = v7;
    v9 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
    v10 = [v4 train];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
  v6 = [v4 dev];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
  if (v12)
  {
    v13 = v12;
    v14 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
    v15 = [v4 dev];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
  v6 = [v4 test];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
  if (v17)
  {
    v18 = v17;
    v19 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
    v20 = [v4 test];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
  v6 = [v4 external];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
    v25 = [v4 external];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];

  if (v4)
  {
    v5 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];

  if (v6)
  {
    v7 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];

  if (v8)
  {
    v9 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];

  v11 = v13;
  if (v10)
  {
    v12 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DODMLASRSchemaDODMLASRTranscriptionMetrics;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self deleteTrain];
  }

  v9 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self deleteDev];
  }

  v12 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self deleteTest];
  }

  v15 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self deleteExternal];
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