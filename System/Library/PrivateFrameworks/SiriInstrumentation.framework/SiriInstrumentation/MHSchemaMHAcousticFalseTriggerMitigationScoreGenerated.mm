@interface MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)initWithDictionary:(id)a3;
- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioDurationInNs:(BOOL)a3;
- (void)setHasThreshold:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated

- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated;
  v5 = [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)v5 setScore:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"audioDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated setAudioDurationInNs:](v5, "setAudioDurationInNs:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"threshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)v5 setThreshold:?];
    }

    v9 = v5;
  }

  return v5;
}

- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)self dictionaryRepresentation];
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
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated audioDurationInNs](self, "audioDurationInNs")}];
    [v3 setObject:v8 forKeyedSubscript:@"audioDurationInNs"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E696AD98];
  [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)self score];
  v10 = [v9 numberWithFloat:?];
  [v3 setObject:v10 forKeyedSubscript:@"score"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = MEMORY[0x1E696AD98];
    [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)self threshold];
    v6 = [v5 numberWithFloat:?];
    [v3 setObject:v6 forKeyedSubscript:@"threshold"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    score = self->_score;
    if (score >= 0.0)
    {
      v6 = score;
    }

    else
    {
      v6 = -score;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v4 += v7;
      }
    }

    else
    {
      v4 -= fabs(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761u * self->_audioDurationInNs;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v14 = 0;
    return v9 ^ v4 ^ v14;
  }

  v9 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  threshold = self->_threshold;
  if (threshold >= 0.0)
  {
    v11 = threshold;
  }

  else
  {
    v11 = -threshold;
  }

  *v2.i64 = floor(v11 + 0.5);
  v12 = (v11 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v2).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

  return v9 ^ v4 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  has = self->_has;
  v6 = v4[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_13;
  }

  if (*&has)
  {
    score = self->_score;
    [v4 score];
    if (score != v8)
    {
      goto LABEL_13;
    }

    has = self->_has;
    v6 = v4[28];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (v9)
    {
      audioDurationInNs = self->_audioDurationInNs;
      if (audioDurationInNs != [v4 audioDurationInNs])
      {
        goto LABEL_13;
      }

      has = self->_has;
      v6 = v4[28];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (!v11 || (threshold = self->_threshold, [v4 threshold], threshold == v13))
      {
        v14 = 1;
        goto LABEL_14;
      }
    }
  }

LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteFloatField();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteFloatField();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasThreshold:(BOOL)a3
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

- (void)setHasAudioDurationInNs:(BOOL)a3
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