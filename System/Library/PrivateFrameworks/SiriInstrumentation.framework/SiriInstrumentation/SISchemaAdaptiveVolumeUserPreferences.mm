@interface SISchemaAdaptiveVolumeUserPreferences
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaAdaptiveVolumeUserPreferences)initWithDictionary:(id)a3;
- (SISchemaAdaptiveVolumeUserPreferences)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsPermanentOffsetEnabled:(BOOL)a3;
- (void)setHasPermanentOffsetFactor:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaAdaptiveVolumeUserPreferences

- (SISchemaAdaptiveVolumeUserPreferences)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SISchemaAdaptiveVolumeUserPreferences;
  v5 = [(SISchemaAdaptiveVolumeUserPreferences *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mostRecentIntent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAdaptiveVolumeUserPreferences setMostRecentIntent:](v5, "setMostRecentIntent:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isPermanentOffsetEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAdaptiveVolumeUserPreferences setIsPermanentOffsetEnabled:](v5, "setIsPermanentOffsetEnabled:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"permanentOffsetFactor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(SISchemaAdaptiveVolumeUserPreferences *)v5 setPermanentOffsetFactor:?];
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaAdaptiveVolumeUserPreferences)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaAdaptiveVolumeUserPreferences *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaAdaptiveVolumeUserPreferences *)self dictionaryRepresentation];
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
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaAdaptiveVolumeUserPreferences isPermanentOffsetEnabled](self, "isPermanentOffsetEnabled")}];
    [v3 setObject:v8 forKeyedSubscript:@"isPermanentOffsetEnabled"];

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

  v9 = [(SISchemaAdaptiveVolumeUserPreferences *)self mostRecentIntent]- 1;
  if (v9 > 3)
  {
    v10 = @"ADAPTIVEVOLUMEUSERINTENT_UNKNOWN";
  }

  else
  {
    v10 = off_1E78E2E38[v9];
  }

  [v3 setObject:v10 forKeyedSubscript:@"mostRecentIntent"];
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = MEMORY[0x1E696AD98];
  [(SISchemaAdaptiveVolumeUserPreferences *)self permanentOffsetFactor];
  v6 = [v5 numberWithFloat:?];
  [v3 setObject:v6 forKeyedSubscript:@"permanentOffsetFactor"];

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v10 = 0;
    return v5 ^ v4 ^ v10;
  }

  v4 = 2654435761 * self->_mostRecentIntent;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = 2654435761 * self->_isPermanentOffsetEnabled;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  permanentOffsetFactor = self->_permanentOffsetFactor;
  if (permanentOffsetFactor >= 0.0)
  {
    v7 = permanentOffsetFactor;
  }

  else
  {
    v7 = -permanentOffsetFactor;
  }

  *v2.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
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

  return v5 ^ v4 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  has = self->_has;
  v6 = v4[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_13;
  }

  if (*&has)
  {
    mostRecentIntent = self->_mostRecentIntent;
    if (mostRecentIntent != [v4 mostRecentIntent])
    {
      goto LABEL_13;
    }

    has = self->_has;
    v6 = v4[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      isPermanentOffsetEnabled = self->_isPermanentOffsetEnabled;
      if (isPermanentOffsetEnabled != [v4 isPermanentOffsetEnabled])
      {
        goto LABEL_13;
      }

      has = self->_has;
      v6 = v4[20];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (!v10 || (permanentOffsetFactor = self->_permanentOffsetFactor, [v4 permanentOffsetFactor], permanentOffsetFactor == v12))
      {
        v13 = 1;
        goto LABEL_14;
      }
    }
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  return v13;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
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

  PBDataWriterWriteBOOLField();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteFloatField();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasPermanentOffsetFactor:(BOOL)a3
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

- (void)setHasIsPermanentOffsetEnabled:(BOOL)a3
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