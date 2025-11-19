@interface ODDSiriSchemaODDAdaptiveVolumeProperties
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAdaptiveVolumeProperties)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAdaptiveVolumeProperties)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAdaptiveVolume:(BOOL)a3;
- (void)setHasIsPermanentOffsetEnabled:(BOOL)a3;
- (void)setHasPermanentOffsetFactor:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAdaptiveVolumeProperties

- (ODDSiriSchemaODDAdaptiveVolumeProperties)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDAdaptiveVolumeProperties;
  v5 = [(ODDSiriSchemaODDAdaptiveVolumeProperties *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isAdaptiveVolumeEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAdaptiveVolumeProperties setIsAdaptiveVolumeEnabled:](v5, "setIsAdaptiveVolumeEnabled:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"adaptiveVolume"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAdaptiveVolumeProperties setAdaptiveVolume:](v5, "setAdaptiveVolume:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isPermanentOffsetEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAdaptiveVolumeProperties setIsPermanentOffsetEnabled:](v5, "setIsPermanentOffsetEnabled:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"permanentOffsetFactor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(ODDSiriSchemaODDAdaptiveVolumeProperties *)v5 setPermanentOffsetFactor:?];
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAdaptiveVolumeProperties)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAdaptiveVolumeProperties *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAdaptiveVolumeProperties *)self dictionaryRepresentation];
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
    v5 = [(ODDSiriSchemaODDAdaptiveVolumeProperties *)self adaptiveVolume]- 1;
    if (v5 > 3)
    {
      v6 = @"ODDADAPTIVEVOLUMEUSERINTENT_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DC910[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"adaptiveVolume"];
    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAdaptiveVolumeProperties isAdaptiveVolumeEnabled](self, "isAdaptiveVolumeEnabled")}];
    [v3 setObject:v10 forKeyedSubscript:@"isAdaptiveVolumeEnabled"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_8:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAdaptiveVolumeProperties isPermanentOffsetEnabled](self, "isPermanentOffsetEnabled")}];
  [v3 setObject:v11 forKeyedSubscript:@"isPermanentOffsetEnabled"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    v7 = MEMORY[0x1E696AD98];
    [(ODDSiriSchemaODDAdaptiveVolumeProperties *)self permanentOffsetFactor];
    v8 = [v7 numberWithFloat:?];
    [v3 setObject:v8 forKeyedSubscript:@"permanentOffsetFactor"];
  }

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isAdaptiveVolumeEnabled;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_adaptiveVolume;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_13:
      v11 = 0;
      return v5 ^ v4 ^ v6 ^ v11;
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
    goto LABEL_12;
  }

LABEL_4:
  v6 = 2654435761 * self->_isPermanentOffsetEnabled;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  permanentOffsetFactor = self->_permanentOffsetFactor;
  if (permanentOffsetFactor >= 0.0)
  {
    v8 = permanentOffsetFactor;
  }

  else
  {
    v8 = -permanentOffsetFactor;
  }

  *v2.i64 = floor(v8 + 0.5);
  v9 = (v8 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v3, v2).i64;
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

  return v5 ^ v4 ^ v6 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_17;
  }

  if (*&has)
  {
    isAdaptiveVolumeEnabled = self->_isAdaptiveVolumeEnabled;
    if (isAdaptiveVolumeEnabled != [v4 isAdaptiveVolumeEnabled])
    {
      goto LABEL_17;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      adaptiveVolume = self->_adaptiveVolume;
      if (adaptiveVolume != [v4 adaptiveVolume])
      {
        goto LABEL_17;
      }

      has = self->_has;
      v6 = v4[24];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        isPermanentOffsetEnabled = self->_isPermanentOffsetEnabled;
        if (isPermanentOffsetEnabled != [v4 isPermanentOffsetEnabled])
        {
          goto LABEL_17;
        }

        has = self->_has;
        v6 = v4[24];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (!v12 || (permanentOffsetFactor = self->_permanentOffsetFactor, [v4 permanentOffsetFactor], permanentOffsetFactor == v14))
        {
          v15 = 1;
          goto LABEL_18;
        }
      }
    }
  }

LABEL_17:
  v15 = 0;
LABEL_18:

  return v15;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
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

  PBDataWriterWriteInt32Field();
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

- (void)setHasPermanentOffsetFactor:(BOOL)a3
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

- (void)setHasIsPermanentOffsetEnabled:(BOOL)a3
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

- (void)setHasAdaptiveVolume:(BOOL)a3
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