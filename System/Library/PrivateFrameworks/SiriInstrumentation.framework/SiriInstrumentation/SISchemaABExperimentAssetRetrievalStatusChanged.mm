@interface SISchemaABExperimentAssetRetrievalStatusChanged
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaABExperimentAssetRetrievalStatusChanged)initWithDictionary:(id)a3;
- (SISchemaABExperimentAssetRetrievalStatusChanged)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaABExperimentAssetRetrievalStatusChanged

- (SISchemaABExperimentAssetRetrievalStatusChanged)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaABExperimentAssetRetrievalStatusChanged;
  v5 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaABExperimentAssetRetrievalStatusChanged *)v5 setExperimentId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assetId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaABExperimentAssetRetrievalStatusChanged *)v5 setAssetId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"retrievalStatusCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaABExperimentAssetRetrievalStatusChanged setRetrievalStatusCode:](v5, "setRetrievalStatusCode:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaABExperimentAssetRetrievalStatusChanged)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self dictionaryRepresentation];
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
  if (self->_assetId)
  {
    v4 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self assetId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"assetId"];
  }

  if (self->_experimentId)
  {
    v6 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self experimentId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"experimentId"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaABExperimentAssetRetrievalStatusChanged retrievalStatusCode](self, "retrievalStatusCode")}];
    [v3 setObject:v8 forKeyedSubscript:@"retrievalStatusCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = [(NSString *)self->_assetId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_retrievalStatusCode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self experimentId];
  v6 = [v4 experimentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self experimentId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self experimentId];
    v10 = [v4 experimentId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self assetId];
  v6 = [v4 assetId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self assetId];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self assetId];
    v15 = [v4 assetId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (retrievalStatusCode = self->_retrievalStatusCode, retrievalStatusCode == [v4 retrievalStatusCode]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self experimentId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self assetId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v7;
  if (*&self->_has)
  {
    PBDataWriterWriteSint32Field();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end