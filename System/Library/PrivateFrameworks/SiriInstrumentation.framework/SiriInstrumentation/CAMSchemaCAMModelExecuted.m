@interface CAMSchemaCAMModelExecuted
- (BOOL)isEqual:(id)a3;
- (CAMSchemaCAMModelExecuted)initWithDictionary:(id)a3;
- (CAMSchemaCAMModelExecuted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsShadowLog:(BOOL)a3;
- (void)setHasPredictionScore:(BOOL)a3;
- (void)setHasPredictionThreshold:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAMSchemaCAMModelExecuted

- (CAMSchemaCAMModelExecuted)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CAMSchemaCAMModelExecuted;
  v5 = [(CAMSchemaCAMModelExecuted *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"modelId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CAMSchemaCAMModelId alloc] initWithDictionary:v6];
      [(CAMSchemaCAMModelExecuted *)v5 setModelId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"prediction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAMSchemaCAMModelExecuted setPrediction:](v5, "setPrediction:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"predictionScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(CAMSchemaCAMModelExecuted *)v5 setPredictionScore:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"predictionThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(CAMSchemaCAMModelExecuted *)v5 setPredictionThreshold:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"isShadowLog"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAMSchemaCAMModelExecuted setIsShadowLog:](v5, "setIsShadowLog:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"asset"];
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

- (CAMSchemaCAMModelExecuted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAMSchemaCAMModelExecuted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAMSchemaCAMModelExecuted *)self dictionaryRepresentation];
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
  if (self->_asset)
  {
    v4 = [(CAMSchemaCAMModelExecuted *)self asset];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"asset"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"asset"];
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMSchemaCAMModelExecuted isShadowLog](self, "isShadowLog")}];
    [v3 setObject:v7 forKeyedSubscript:@"isShadowLog"];
  }

  if (self->_modelId)
  {
    v8 = [(CAMSchemaCAMModelExecuted *)self modelId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"modelId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"modelId"];
    }
  }

  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAMSchemaCAMModelExecuted prediction](self, "prediction")}];
    [v3 setObject:v15 forKeyedSubscript:@"prediction"];

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
  [v3 setObject:v17 forKeyedSubscript:@"predictionScore"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_16:
    v12 = MEMORY[0x1E696AD98];
    [(CAMSchemaCAMModelExecuted *)self predictionThreshold];
    v13 = [v12 numberWithFloat:?];
    [v3 setObject:v13 forKeyedSubscript:@"predictionThreshold"];
  }

LABEL_17:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(CAMSchemaCAMModelExecuted *)self modelId];
  v6 = [v4 modelId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(CAMSchemaCAMModelExecuted *)self modelId];
  if (v7)
  {
    v8 = v7;
    v9 = [(CAMSchemaCAMModelExecuted *)self modelId];
    v10 = [v4 modelId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    prediction = self->_prediction;
    if (prediction != [v4 prediction])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    predictionScore = self->_predictionScore;
    [v4 predictionScore];
    if (predictionScore != v17)
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v13 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v18)
  {
    predictionThreshold = self->_predictionThreshold;
    [v4 predictionThreshold];
    if (predictionThreshold != v20)
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v21 = (*&has >> 3) & 1;
  if (v21 != ((v13 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v21)
  {
    isShadowLog = self->_isShadowLog;
    if (isShadowLog != [v4 isShadowLog])
    {
      goto LABEL_27;
    }
  }

  v5 = [(CAMSchemaCAMModelExecuted *)self asset];
  v6 = [v4 asset];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  v23 = [(CAMSchemaCAMModelExecuted *)self asset];
  if (!v23)
  {

LABEL_30:
    v28 = 1;
    goto LABEL_28;
  }

  v24 = v23;
  v25 = [(CAMSchemaCAMModelExecuted *)self asset];
  v26 = [v4 asset];
  v27 = [v25 isEqual:v26];

  if (v27)
  {
    goto LABEL_30;
  }

LABEL_27:
  v28 = 0;
LABEL_28:

  return v28;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(CAMSchemaCAMModelExecuted *)self modelId];

  if (v4)
  {
    v5 = [(CAMSchemaCAMModelExecuted *)self modelId];
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
  v7 = [(CAMSchemaCAMModelExecuted *)self asset];

  v8 = v10;
  if (v7)
  {
    v9 = [(CAMSchemaCAMModelExecuted *)self asset];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setHasIsShadowLog:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPredictionThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPredictionScore:(BOOL)a3
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
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CAMSchemaCAMModelExecuted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(CAMSchemaCAMModelExecuted *)self modelId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CAMSchemaCAMModelExecuted *)self deleteModelId];
  }

  v9 = [(CAMSchemaCAMModelExecuted *)self asset];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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