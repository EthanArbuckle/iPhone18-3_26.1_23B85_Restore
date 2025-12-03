@interface MHSchemaMHAdaptiveSiriVolumeUserIntentDetected
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAdaptiveSiriVolumeUserIntentDetected)initWithDictionary:(id)dictionary;
- (MHSchemaMHAdaptiveSiriVolumeUserIntentDetected)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsPermanentOffsetEnabled:(BOOL)enabled;
- (void)setHasPermanentOffsetFactor:(BOOL)factor;
- (void)setHasUserIntentVolume:(BOOL)volume;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAdaptiveSiriVolumeUserIntentDetected

- (MHSchemaMHAdaptiveSiriVolumeUserIntentDetected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MHSchemaMHAdaptiveSiriVolumeUserIntentDetected;
  v5 = [(MHSchemaMHAdaptiveSiriVolumeUserIntentDetected *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userIntentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAdaptiveSiriVolumeUserIntentDetected setUserIntentType:](v5, "setUserIntentType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"userIntentVolume"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(MHSchemaMHAdaptiveSiriVolumeUserIntentDetected *)v5 setUserIntentVolume:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isPermanentOffsetEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAdaptiveSiriVolumeUserIntentDetected setIsPermanentOffsetEnabled:](v5, "setIsPermanentOffsetEnabled:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"permanentOffsetFactor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHAdaptiveSiriVolumeUserIntentDetected *)v5 setPermanentOffsetFactor:?];
    }

    v10 = v5;
  }

  return v5;
}

- (MHSchemaMHAdaptiveSiriVolumeUserIntentDetected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAdaptiveSiriVolumeUserIntentDetected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAdaptiveSiriVolumeUserIntentDetected *)self dictionaryRepresentation];
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
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHAdaptiveSiriVolumeUserIntentDetected isPermanentOffsetEnabled](self, "isPermanentOffsetEnabled")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isPermanentOffsetEnabled"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E696AD98];
  [(MHSchemaMHAdaptiveSiriVolumeUserIntentDetected *)self permanentOffsetFactor];
  v10 = [v9 numberWithFloat:?];
  [dictionary setObject:v10 forKeyedSubscript:@"permanentOffsetFactor"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v11 = [(MHSchemaMHAdaptiveSiriVolumeUserIntentDetected *)self userIntentType]- 1;
  if (v11 > 3)
  {
    v12 = @"MHASVUSERINTENTTYPE_UNKNOWN";
  }

  else
  {
    v12 = off_1E78D8DD8[v11];
  }

  [dictionary setObject:v12 forKeyedSubscript:@"userIntentType"];
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  v5 = MEMORY[0x1E696AD98];
  [(MHSchemaMHAdaptiveSiriVolumeUserIntentDetected *)self userIntentVolume];
  v6 = [v5 numberWithFloat:?];
  [dictionary setObject:v6 forKeyedSubscript:@"userIntentVolume"];

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v4 = 2654435761 * self->_userIntentType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  userIntentVolume = self->_userIntentVolume;
  if (userIntentVolume >= 0.0)
  {
    v6 = userIntentVolume;
  }

  else
  {
    v6 = -userIntentVolume;
  }

  *v2.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_10:
  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_isPermanentOffsetEnabled;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v15 = 0;
    return v9 ^ v4 ^ v10 ^ v15;
  }

  v10 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  permanentOffsetFactor = self->_permanentOffsetFactor;
  if (permanentOffsetFactor >= 0.0)
  {
    v12 = permanentOffsetFactor;
  }

  else
  {
    v12 = -permanentOffsetFactor;
  }

  *v2.i64 = floor(v12 + 0.5);
  v13 = (v12 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v3, v2).i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

  return v9 ^ v4 ^ v10 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_17;
  }

  if (*&has)
  {
    userIntentType = self->_userIntentType;
    if (userIntentType != [equalCopy userIntentType])
    {
      goto LABEL_17;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      userIntentVolume = self->_userIntentVolume;
      [equalCopy userIntentVolume];
      if (userIntentVolume != v10)
      {
        goto LABEL_17;
      }

      has = self->_has;
      v6 = equalCopy[24];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (v11)
      {
        isPermanentOffsetEnabled = self->_isPermanentOffsetEnabled;
        if (isPermanentOffsetEnabled != [equalCopy isPermanentOffsetEnabled])
        {
          goto LABEL_17;
        }

        has = self->_has;
        v6 = equalCopy[24];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 == ((v6 >> 3) & 1))
      {
        if (!v13 || (permanentOffsetFactor = self->_permanentOffsetFactor, [equalCopy permanentOffsetFactor], permanentOffsetFactor == v15))
        {
          v16 = 1;
          goto LABEL_18;
        }
      }
    }
  }

LABEL_17:
  v16 = 0;
LABEL_18:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteFloatField();
  }

LABEL_6:
}

- (void)setHasPermanentOffsetFactor:(BOOL)factor
{
  if (factor)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsPermanentOffsetEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUserIntentVolume:(BOOL)volume
{
  if (volume)
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