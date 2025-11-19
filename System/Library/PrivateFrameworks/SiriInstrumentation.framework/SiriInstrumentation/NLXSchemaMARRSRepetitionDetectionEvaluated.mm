@interface NLXSchemaMARRSRepetitionDetectionEvaluated
- (BOOL)isEqual:(id)a3;
- (NLXSchemaMARRSRepetitionDetectionEvaluated)initWithDictionary:(id)a3;
- (NLXSchemaMARRSRepetitionDetectionEvaluated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFullRepetitionConfidence:(BOOL)a3;
- (void)setHasNoRepetitionConfidence:(BOOL)a3;
- (void)setHasPartialRepetitionConfidence:(BOOL)a3;
- (void)setHasRuleType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaMARRSRepetitionDetectionEvaluated

- (NLXSchemaMARRSRepetitionDetectionEvaluated)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NLXSchemaMARRSRepetitionDetectionEvaluated;
  v5 = [(NLXSchemaMARRSRepetitionDetectionEvaluated *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"repetitionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaMARRSRepetitionDetectionEvaluated setRepetitionType:](v5, "setRepetitionType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"ruleType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaMARRSRepetitionDetectionEvaluated setRuleType:](v5, "setRuleType:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"noRepetitionConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(NLXSchemaMARRSRepetitionDetectionEvaluated *)v5 setNoRepetitionConfidence:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"fullRepetitionConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(NLXSchemaMARRSRepetitionDetectionEvaluated *)v5 setFullRepetitionConfidence:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"partialRepetitionConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(NLXSchemaMARRSRepetitionDetectionEvaluated *)v5 setPartialRepetitionConfidence:?];
    }

    v11 = v5;
  }

  return v5;
}

- (NLXSchemaMARRSRepetitionDetectionEvaluated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaMARRSRepetitionDetectionEvaluated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaMARRSRepetitionDetectionEvaluated *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v9 = MEMORY[0x1E696AD98];
    [(NLXSchemaMARRSRepetitionDetectionEvaluated *)self fullRepetitionConfidence];
    v10 = [v9 numberWithFloat:?];
    [v3 setObject:v10 forKeyedSubscript:@"fullRepetitionConfidence"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v11 = MEMORY[0x1E696AD98];
  [(NLXSchemaMARRSRepetitionDetectionEvaluated *)self noRepetitionConfidence];
  v12 = [v11 numberWithFloat:?];
  [v3 setObject:v12 forKeyedSubscript:@"noRepetitionConfidence"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v13 = MEMORY[0x1E696AD98];
  [(NLXSchemaMARRSRepetitionDetectionEvaluated *)self partialRepetitionConfidence];
  v14 = [v13 numberWithFloat:?];
  [v3 setObject:v14 forKeyedSubscript:@"partialRepetitionConfidence"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

LABEL_18:
  v15 = [(NLXSchemaMARRSRepetitionDetectionEvaluated *)self repetitionType]- 1;
  if (v15 > 2)
  {
    v16 = @"MARRSREPETITIONTYPE_UNKNOWN";
  }

  else
  {
    v16 = off_1E78DC518[v15];
  }

  [v3 setObject:v16 forKeyedSubscript:@"repetitionType"];
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v5 = [(NLXSchemaMARRSRepetitionDetectionEvaluated *)self ruleType];
  v6 = @"MARRSREPETITIONDETECTIONRULETYPE_OTHER";
  if (v5 == 1)
  {
    v6 = @"MARRSREPETITIONDETECTIONRULETYPE_SKIPPED";
  }

  if (v5 == 2)
  {
    v7 = @"MARRSREPETITIONDETECTIONRULETYPE_TIME_GAP_EXCEEDED";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"ruleType"];
LABEL_12:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_repetitionType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_ruleType;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  noRepetitionConfidence = self->_noRepetitionConfidence;
  if (noRepetitionConfidence >= 0.0)
  {
    v7 = noRepetitionConfidence;
  }

  else
  {
    v7 = -noRepetitionConfidence;
  }

  *v2.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
  v10 = 2654435761u * *v2.i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_12:
  if ((*&self->_has & 8) != 0)
  {
    fullRepetitionConfidence = self->_fullRepetitionConfidence;
    if (fullRepetitionConfidence >= 0.0)
    {
      v13 = fullRepetitionConfidence;
    }

    else
    {
      v13 = -fullRepetitionConfidence;
    }

    *v2.i64 = floor(v13 + 0.5);
    v14 = (v13 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
    v11 = 2654435761u * *v2.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v11 += v14;
      }
    }

    else
    {
      v11 -= fabs(v14);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    partialRepetitionConfidence = self->_partialRepetitionConfidence;
    if (partialRepetitionConfidence >= 0.0)
    {
      v18 = partialRepetitionConfidence;
    }

    else
    {
      v18 = -partialRepetitionConfidence;
    }

    *v2.i64 = floor(v18 + 0.5);
    v19 = (v18 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v3, v2).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v16 += v19;
      }
    }

    else
    {
      v16 -= fabs(v19);
    }
  }

  else
  {
    v16 = 0;
  }

  return v5 ^ v4 ^ v10 ^ v11 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  has = self->_has;
  v6 = v4[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_21;
  }

  if (*&has)
  {
    repetitionType = self->_repetitionType;
    if (repetitionType != [v4 repetitionType])
    {
      goto LABEL_21;
    }

    has = self->_has;
    v6 = v4[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      ruleType = self->_ruleType;
      if (ruleType != [v4 ruleType])
      {
        goto LABEL_21;
      }

      has = self->_has;
      v6 = v4[28];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        noRepetitionConfidence = self->_noRepetitionConfidence;
        [v4 noRepetitionConfidence];
        if (noRepetitionConfidence != v12)
        {
          goto LABEL_21;
        }

        has = self->_has;
        v6 = v4[28];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 == ((v6 >> 3) & 1))
      {
        if (v13)
        {
          fullRepetitionConfidence = self->_fullRepetitionConfidence;
          [v4 fullRepetitionConfidence];
          if (fullRepetitionConfidence != v15)
          {
            goto LABEL_21;
          }

          has = self->_has;
          v6 = v4[28];
        }

        v16 = (*&has >> 4) & 1;
        if (v16 == ((v6 >> 4) & 1))
        {
          if (!v16 || (partialRepetitionConfidence = self->_partialRepetitionConfidence, [v4 partialRepetitionConfidence], partialRepetitionConfidence == v18))
          {
            v19 = 1;
            goto LABEL_22;
          }
        }
      }
    }
  }

LABEL_21:
  v19 = 0;
LABEL_22:

  return v19;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteFloatField();
  }

LABEL_7:
}

- (void)setHasPartialRepetitionConfidence:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasFullRepetitionConfidence:(BOOL)a3
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

- (void)setHasNoRepetitionConfidence:(BOOL)a3
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

- (void)setHasRuleType:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end