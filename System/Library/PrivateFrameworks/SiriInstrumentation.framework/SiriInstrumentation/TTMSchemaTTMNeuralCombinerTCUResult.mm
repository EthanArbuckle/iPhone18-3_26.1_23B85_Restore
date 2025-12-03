@interface TTMSchemaTTMNeuralCombinerTCUResult
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTMSchemaTTMNeuralCombinerTCUResult)initWithDictionary:(id)dictionary;
- (TTMSchemaTTMNeuralCombinerTCUResult)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMode:(BOOL)mode;
- (void)setHasRecommendation:(BOOL)recommendation;
- (void)writeTo:(id)to;
@end

@implementation TTMSchemaTTMNeuralCombinerTCUResult

- (TTMSchemaTTMNeuralCombinerTCUResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = TTMSchemaTTMNeuralCombinerTCUResult;
  v5 = [(TTMSchemaTTMNeuralCombinerTCUResult *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tcuId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTMSchemaTTMNeuralCombinerTCUResult *)v5 setTcuId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"neuralCombinerScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(TTMSchemaTTMNeuralCombinerTCUResult *)v5 setNeuralCombinerScore:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"recommendation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMNeuralCombinerTCUResult setRecommendation:](v5, "setRecommendation:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"mode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMNeuralCombinerTCUResult setMode:](v5, "setMode:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (TTMSchemaTTMNeuralCombinerTCUResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTMSchemaTTMNeuralCombinerTCUResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTMSchemaTTMNeuralCombinerTCUResult *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    mode = [(TTMSchemaTTMNeuralCombinerTCUResult *)self mode];
    v6 = @"TTMNEURALCOMBINERMODE_UNKNOWN";
    if (mode == 1)
    {
      v6 = @"TTMNEURALCOMBINERMODE_SIRI_X";
    }

    if (mode == 2)
    {
      v7 = @"TTMNEURALCOMBINERMODE_CONVERSATIONAL";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"mode"];
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
  [dictionary setObject:v9 forKeyedSubscript:@"neuralCombinerScore"];

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

  [dictionary setObject:v11 forKeyedSubscript:@"recommendation"];
LABEL_16:
  if (self->_tcuId)
  {
    tcuId = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];
    dictionaryRepresentation = [tcuId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"tcuId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"tcuId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  tcuId = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];
  tcuId2 = [equalCopy tcuId];
  v7 = tcuId2;
  if ((tcuId != 0) == (tcuId2 == 0))
  {

    goto LABEL_20;
  }

  tcuId3 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];
  if (tcuId3)
  {
    v9 = tcuId3;
    tcuId4 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];
    tcuId5 = [equalCopy tcuId];
    v12 = [tcuId4 isEqual:tcuId5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  if (*&has)
  {
    neuralCombinerScore = self->_neuralCombinerScore;
    [equalCopy neuralCombinerScore];
    if (neuralCombinerScore != v16)
    {
      goto LABEL_20;
    }

    has = self->_has;
    v14 = equalCopy[28];
  }

  v17 = (*&has >> 1) & 1;
  if (v17 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v17)
  {
    recommendation = self->_recommendation;
    if (recommendation == [equalCopy recommendation])
    {
      has = self->_has;
      v14 = equalCopy[28];
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
    if (mode != [equalCopy mode])
    {
      goto LABEL_20;
    }
  }

  v21 = 1;
LABEL_21:

  return v21;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  tcuId = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];

  if (tcuId)
  {
    tcuId2 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (void)setHasMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRecommendation:(BOOL)recommendation
{
  if (recommendation)
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
  v9.super_class = TTMSchemaTTMNeuralCombinerTCUResult;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(TTMSchemaTTMNeuralCombinerTCUResult *)self tcuId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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