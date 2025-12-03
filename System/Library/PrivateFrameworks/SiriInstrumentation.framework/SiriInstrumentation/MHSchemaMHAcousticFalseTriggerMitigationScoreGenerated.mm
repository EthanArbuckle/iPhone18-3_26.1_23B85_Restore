@interface MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)initWithDictionary:(id)dictionary;
- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioDurationInNs:(BOOL)ns;
- (void)setHasThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated

- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated;
  v5 = [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)v5 setScore:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"audioDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated setAudioDurationInNs:](v5, "setAudioDurationInNs:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"threshold"];
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

- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)self dictionaryRepresentation];
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
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated audioDurationInNs](self, "audioDurationInNs")}];
    [dictionary setObject:v8 forKeyedSubscript:@"audioDurationInNs"];

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
  [dictionary setObject:v10 forKeyedSubscript:@"score"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = MEMORY[0x1E696AD98];
    [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)self threshold];
    v6 = [v5 numberWithFloat:?];
    [dictionary setObject:v6 forKeyedSubscript:@"threshold"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  has = self->_has;
  v6 = equalCopy[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_13;
  }

  if (*&has)
  {
    score = self->_score;
    [equalCopy score];
    if (score != v8)
    {
      goto LABEL_13;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (v9)
    {
      audioDurationInNs = self->_audioDurationInNs;
      if (audioDurationInNs != [equalCopy audioDurationInNs])
      {
        goto LABEL_13;
      }

      has = self->_has;
      v6 = equalCopy[28];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (!v11 || (threshold = self->_threshold, [equalCopy threshold], threshold == v13))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
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
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasThreshold:(BOOL)threshold
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

- (void)setHasAudioDurationInNs:(BOOL)ns
{
  if (ns)
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