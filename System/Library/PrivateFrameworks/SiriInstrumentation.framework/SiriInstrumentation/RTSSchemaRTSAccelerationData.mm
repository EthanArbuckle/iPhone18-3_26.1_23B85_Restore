@interface RTSSchemaRTSAccelerationData
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RTSSchemaRTSAccelerationData)initWithDictionary:(id)a3;
- (RTSSchemaRTSAccelerationData)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasYAcceleration:(BOOL)a3;
- (void)setHasZAcceleration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RTSSchemaRTSAccelerationData

- (RTSSchemaRTSAccelerationData)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RTSSchemaRTSAccelerationData;
  v5 = [(RTSSchemaRTSAccelerationData *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"xAcceleration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(RTSSchemaRTSAccelerationData *)v5 setXAcceleration:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"yAcceleration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(RTSSchemaRTSAccelerationData *)v5 setYAcceleration:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"zAcceleration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(RTSSchemaRTSAccelerationData *)v5 setZAcceleration:?];
    }

    v9 = v5;
  }

  return v5;
}

- (RTSSchemaRTSAccelerationData)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RTSSchemaRTSAccelerationData *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RTSSchemaRTSAccelerationData *)self dictionaryRepresentation];
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
  if (has)
  {
    v8 = MEMORY[0x1E696AD98];
    [(RTSSchemaRTSAccelerationData *)self xAcceleration];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"xAcceleration"];

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

  v10 = MEMORY[0x1E696AD98];
  [(RTSSchemaRTSAccelerationData *)self yAcceleration];
  v11 = [v10 numberWithDouble:?];
  [v3 setObject:v11 forKeyedSubscript:@"yAcceleration"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = MEMORY[0x1E696AD98];
    [(RTSSchemaRTSAccelerationData *)self zAcceleration];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"zAcceleration"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    xAcceleration = self->_xAcceleration;
    if (xAcceleration < 0.0)
    {
      xAcceleration = -xAcceleration;
    }

    *v2.i64 = floor(xAcceleration + 0.5);
    v6 = (xAcceleration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    yAcceleration = self->_yAcceleration;
    if (yAcceleration < 0.0)
    {
      yAcceleration = -yAcceleration;
    }

    *v2.i64 = floor(yAcceleration + 0.5);
    v10 = (yAcceleration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v11), v3, v2);
    v8 = 2654435761u * *v2.i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    zAcceleration = self->_zAcceleration;
    if (zAcceleration < 0.0)
    {
      zAcceleration = -zAcceleration;
    }

    *v2.i64 = floor(zAcceleration + 0.5);
    v14 = (zAcceleration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v3, v2).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  return v8 ^ v4 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_13;
  }

  if (*&has)
  {
    xAcceleration = self->_xAcceleration;
    [v4 xAcceleration];
    if (xAcceleration != v8)
    {
      goto LABEL_13;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (v9)
    {
      yAcceleration = self->_yAcceleration;
      [v4 yAcceleration];
      if (yAcceleration != v11)
      {
        goto LABEL_13;
      }

      has = self->_has;
      v6 = v4[32];
    }

    v12 = (*&has >> 2) & 1;
    if (v12 == ((v6 >> 2) & 1))
    {
      if (!v12 || (zAcceleration = self->_zAcceleration, [v4 zAcceleration], zAcceleration == v14))
      {
        v15 = 1;
        goto LABEL_14;
      }
    }
  }

LABEL_13:
  v15 = 0;
LABEL_14:

  return v15;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteDoubleField();
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

  PBDataWriterWriteDoubleField();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasZAcceleration:(BOOL)a3
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

- (void)setHasYAcceleration:(BOOL)a3
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