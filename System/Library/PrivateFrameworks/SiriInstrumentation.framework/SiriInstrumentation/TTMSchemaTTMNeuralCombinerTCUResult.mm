@interface TTMSchemaTTMNeuralCombinerTCUResult
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (TTMSchemaTTMNeuralCombinerTCUResult)initWithDictionary:(id)a3;
- (TTMSchemaTTMNeuralCombinerTCUResult)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMode:(BOOL)a3;
- (void)setHasRecommendation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation TTMSchemaTTMNeuralCombinerTCUResult

- (TTMSchemaTTMNeuralCombinerTCUResult)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TTMSchemaTTMNeuralCombinerTCUResult;
  v5 = [(TTMSchemaTTMNeuralCombinerTCUResult *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"tcuId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTMSchemaTTMNeuralCombinerTCUResult *)v5 setTcuId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"neuralCombinerScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(TTMSchemaTTMNeuralCombinerTCUResult *)v5 setNeuralCombinerScore:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"recommendation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMNeuralCombinerTCUResult setRecommendation:](v5, "setRecommendation:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"mode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMNeuralCombinerTCUResult setMode:](v5, "setMode:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (TTMSchemaTTMNeuralCombinerTCUResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(TTMSchemaTTMNeuralCombinerTCUResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v5 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self mode];
    v6 = @"TTMNEURALCOMBINERMODE_UNKNOWN";
    if (v5 == 1)
    {
      v6 = @"TTMNEURALCOMBINERMODE_SIRI_X";
    }

    if (v5 == 2)
    {
      v7 = @"TTMNEURALCOMBINERMODE_CONVERSATIONAL";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"mode"];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E696AD98];
  [(TTMSchemaTTMNeuralCombinerTCUResult *)self neuralCombinerScore];
  v9 = [v8 numberWithFloat:?];
  [v3 setObject:v9 forKeyedSubscript:@"neuralCombinerScore"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v10 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self recommendation]- 1;
  if (v10 > 5)
  {
    v11 = @"TTMTCUMITIGATIONDECISION_UNKNOWN";
  }

  else
  {
    v11 = off_1E78E7EC0[v10];
  }

  [v3 setObject:v11 forKeyedSubscript:@"recommendation"];
LABEL_16:
  if (self->_tcuId)
  {
    v12 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"tcuId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"tcuId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_tcuId hash];
  if (*&self->_has)
  {
    neuralCombinerScore = self->_neuralCombinerScore;
    if (neuralCombinerScore >= 0.0)
    {
      v8 = neuralCombinerScore;
    }

    else
    {
      v8 = -neuralCombinerScore;
    }

    *v4.i64 = floor(v8 + 0.5);
    v9 = (v8 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v5, v4).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v6 += v9;
      }
    }

    else
    {
      v6 -= fabs(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_recommendation;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v12 = 0;
    return v6 ^ v3 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v12 = 2654435761 * self->_mode;
  return v6 ^ v3 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];
  v6 = [v4 tcuId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_20;
  }

  v8 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];
  if (v8)
  {
    v9 = v8;
    v10 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];
    v11 = [v4 tcuId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  if (*&has)
  {
    neuralCombinerScore = self->_neuralCombinerScore;
    [v4 neuralCombinerScore];
    if (neuralCombinerScore != v16)
    {
      goto LABEL_20;
    }

    has = self->_has;
    v14 = v4[28];
  }

  v17 = (*&has >> 1) & 1;
  if (v17 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v17)
  {
    recommendation = self->_recommendation;
    if (recommendation == [v4 recommendation])
    {
      has = self->_has;
      v14 = v4[28];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v19 = (*&has >> 2) & 1;
  if (v19 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v19)
  {
    mode = self->_mode;
    if (mode != [v4 mode])
    {
      goto LABEL_20;
    }
  }

  v21 = 1;
LABEL_21:

  return v21;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];

  if (v4)
  {
    v5 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (void)setHasMode:(BOOL)a3
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

- (void)setHasRecommendation:(BOOL)a3
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
  v9.super_class = TTMSchemaTTMNeuralCombinerTCUResult;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(TTMSchemaTTMNeuralCombinerTCUResult *)self deleteTcuId];
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