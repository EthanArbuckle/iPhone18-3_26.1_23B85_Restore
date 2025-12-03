@interface CAMSchemaCAMModelExecuted
- (BOOL)isEqual:(id)equal;
- (CAMSchemaCAMModelExecuted)initWithDictionary:(id)dictionary;
- (CAMSchemaCAMModelExecuted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsShadowLog:(BOOL)log;
- (void)setHasPredictionScore:(BOOL)score;
- (void)setHasPredictionThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
@end

@implementation CAMSchemaCAMModelExecuted

- (CAMSchemaCAMModelExecuted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CAMSchemaCAMModelExecuted;
  v5 = [(CAMSchemaCAMModelExecuted *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CAMSchemaCAMModelId alloc] initWithDictionary:v6];
      [(CAMSchemaCAMModelExecuted *)v5 setModelId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"prediction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAMSchemaCAMModelExecuted setPrediction:](v5, "setPrediction:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"predictionScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(CAMSchemaCAMModelExecuted *)v5 setPredictionScore:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"predictionThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(CAMSchemaCAMModelExecuted *)v5 setPredictionThreshold:?];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isShadowLog"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAMSchemaCAMModelExecuted setIsShadowLog:](v5, "setIsShadowLog:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"asset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaAsset alloc] initWithDictionary:v12];
      [(CAMSchemaCAMModelExecuted *)v5 setAsset:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (CAMSchemaCAMModelExecuted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAMSchemaCAMModelExecuted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAMSchemaCAMModelExecuted *)self dictionaryRepresentation];
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
  if (self->_asset)
  {
    asset = [(CAMSchemaCAMModelExecuted *)self asset];
    dictionaryRepresentation = [asset dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asset"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asset"];
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMSchemaCAMModelExecuted isShadowLog](self, "isShadowLog")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isShadowLog"];
  }

  if (self->_modelId)
  {
    modelId = [(CAMSchemaCAMModelExecuted *)self modelId];
    dictionaryRepresentation2 = [modelId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"modelId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"modelId"];
    }
  }

  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAMSchemaCAMModelExecuted prediction](self, "prediction")}];
    [dictionary setObject:v15 forKeyedSubscript:@"prediction"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_15:
      if ((has & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

  v16 = MEMORY[0x1E696AD98];
  [(CAMSchemaCAMModelExecuted *)self predictionScore];
  v17 = [v16 numberWithFloat:?];
  [dictionary setObject:v17 forKeyedSubscript:@"predictionScore"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_16:
    v12 = MEMORY[0x1E696AD98];
    [(CAMSchemaCAMModelExecuted *)self predictionThreshold];
    v13 = [v12 numberWithFloat:?];
    [dictionary setObject:v13 forKeyedSubscript:@"predictionThreshold"];
  }

LABEL_17:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(CAMSchemaCAMModelId *)self->_modelId hash];
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v6 = 2654435761 * self->_prediction;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  predictionScore = self->_predictionScore;
  if (predictionScore >= 0.0)
  {
    v8 = predictionScore;
  }

  else
  {
    v8 = -predictionScore;
  }

  *v4.i64 = floor(v8 + 0.5);
  v9 = (v8 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
  v11 = 2654435761u * *v4.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_10:
  if ((*&self->_has & 4) != 0)
  {
    predictionThreshold = self->_predictionThreshold;
    if (predictionThreshold >= 0.0)
    {
      v14 = predictionThreshold;
    }

    else
    {
      v14 = -predictionThreshold;
    }

    *v4.i64 = floor(v14 + 0.5);
    v15 = (v14 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v5, v4).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v12 += v15;
      }
    }

    else
    {
      v12 -= fabs(v15);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v17 = 2654435761 * self->_isShadowLog;
  }

  else
  {
    v17 = 0;
  }

  return v6 ^ v3 ^ v11 ^ v12 ^ v17 ^ [(SISchemaAsset *)self->_asset hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  modelId = [(CAMSchemaCAMModelExecuted *)self modelId];
  modelId2 = [equalCopy modelId];
  if ((modelId != 0) == (modelId2 == 0))
  {
    goto LABEL_26;
  }

  modelId3 = [(CAMSchemaCAMModelExecuted *)self modelId];
  if (modelId3)
  {
    v8 = modelId3;
    modelId4 = [(CAMSchemaCAMModelExecuted *)self modelId];
    modelId5 = [equalCopy modelId];
    v11 = [modelId4 isEqual:modelId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    prediction = self->_prediction;
    if (prediction != [equalCopy prediction])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    predictionScore = self->_predictionScore;
    [equalCopy predictionScore];
    if (predictionScore != v17)
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v13 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v18)
  {
    predictionThreshold = self->_predictionThreshold;
    [equalCopy predictionThreshold];
    if (predictionThreshold != v20)
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v21 = (*&has >> 3) & 1;
  if (v21 != ((v13 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v21)
  {
    isShadowLog = self->_isShadowLog;
    if (isShadowLog != [equalCopy isShadowLog])
    {
      goto LABEL_27;
    }
  }

  modelId = [(CAMSchemaCAMModelExecuted *)self asset];
  modelId2 = [equalCopy asset];
  if ((modelId != 0) == (modelId2 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  asset = [(CAMSchemaCAMModelExecuted *)self asset];
  if (!asset)
  {

LABEL_30:
    v28 = 1;
    goto LABEL_28;
  }

  v24 = asset;
  asset2 = [(CAMSchemaCAMModelExecuted *)self asset];
  asset3 = [equalCopy asset];
  v27 = [asset2 isEqual:asset3];

  if (v27)
  {
    goto LABEL_30;
  }

LABEL_27:
  v28 = 0;
LABEL_28:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  modelId = [(CAMSchemaCAMModelExecuted *)self modelId];

  if (modelId)
  {
    modelId2 = [(CAMSchemaCAMModelExecuted *)self modelId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    PBDataWriterWriteBOOLField();
  }

LABEL_8:
  asset = [(CAMSchemaCAMModelExecuted *)self asset];

  v8 = toCopy;
  if (asset)
  {
    asset2 = [(CAMSchemaCAMModelExecuted *)self asset];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)setHasIsShadowLog:(BOOL)log
{
  if (log)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPredictionThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPredictionScore:(BOOL)score
{
  if (score)
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
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = CAMSchemaCAMModelExecuted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  modelId = [(CAMSchemaCAMModelExecuted *)self modelId];
  v7 = [modelId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CAMSchemaCAMModelExecuted *)self deleteModelId];
  }

  asset = [(CAMSchemaCAMModelExecuted *)self asset];
  v10 = [asset applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CAMSchemaCAMModelExecuted *)self deleteAsset];
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