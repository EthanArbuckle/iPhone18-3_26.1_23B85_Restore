@interface PCPClusterEmbeddingTime
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDayOfWeekSin:(BOOL)a3;
- (void)setHasIsWeekend:(BOOL)a3;
- (void)setHasNormalizedDuration:(BOOL)a3;
- (void)setHasTimeOfDayCos:(BOOL)a3;
- (void)setHasTimeOfDaySin:(BOOL)a3;
- (void)setHasWeekOfYear:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPClusterEmbeddingTime

- (void)setHasNormalizedDuration:(BOOL)a3
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

- (void)setHasTimeOfDayCos:(BOOL)a3
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

- (void)setHasTimeOfDaySin:(BOOL)a3
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

- (void)setHasDayOfWeekSin:(BOOL)a3
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

- (void)setHasIsWeekend:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasWeekOfYear:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPClusterEmbeddingTime;
  v4 = [(PCPClusterEmbeddingTime *)&v8 description];
  v5 = [(PCPClusterEmbeddingTime *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_normalizedDuration];
    [v3 setObject:v7 forKey:@"normalizedDuration"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeOfDayCos];
  [v3 setObject:v8 forKey:@"timeOfDayCos"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeOfDaySin];
  [v3 setObject:v9 forKey:@"timeOfDaySin"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dayOfWeekCos];
  [v3 setObject:v10 forKey:@"dayOfWeekCos"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dayOfWeekSin];
  [v3 setObject:v11 forKey:@"dayOfWeekSin"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isWeekend];
  [v3 setObject:v12 forKey:@"isWeekend"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_weekOfYear];
    [v3 setObject:v5 forKey:@"weekOfYear"];
  }

LABEL_9:

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    normalizedDuration = self->_normalizedDuration;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  timeOfDayCos = self->_timeOfDayCos;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  timeOfDaySin = self->_timeOfDaySin;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  dayOfWeekCos = self->_dayOfWeekCos;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  dayOfWeekSin = self->_dayOfWeekSin;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  isWeekend = self->_isWeekend;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    weekOfYear = self->_weekOfYear;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[3] = *&self->_normalizedDuration;
    *(v4 + 56) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = *&self->_timeOfDayCos;
  *(v4 + 56) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[5] = *&self->_timeOfDaySin;
  *(v4 + 56) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4[1] = *&self->_dayOfWeekCos;
  *(v4 + 56) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4[2] = *&self->_dayOfWeekSin;
  *(v4 + 56) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  *(v4 + 52) = self->_isWeekend;
  *(v4 + 56) |= 0x40u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    *(v4 + 12) = self->_weekOfYear;
    *(v4 + 56) |= 0x20u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 3) = *&self->_normalizedDuration;
    *(result + 56) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = *&self->_timeOfDayCos;
  *(result + 56) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 5) = *&self->_timeOfDaySin;
  *(result + 56) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 1) = *&self->_dayOfWeekCos;
  *(result + 56) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 2) = *&self->_dayOfWeekSin;
  *(result + 56) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 52) = self->_isWeekend;
  *(result + 56) |= 0x40u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 12) = self->_weekOfYear;
  *(result + 56) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_normalizedDuration != *(v4 + 3))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_timeOfDayCos != *(v4 + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 56) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 56) & 0x10) == 0 || self->_timeOfDaySin != *(v4 + 5))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 56) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_dayOfWeekCos != *(v4 + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_dayOfWeekSin != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x40) == 0)
  {
    if ((*(v4 + 56) & 0x40) == 0)
    {
      goto LABEL_29;
    }

LABEL_34:
    v5 = 0;
    goto LABEL_35;
  }

  if ((*(v4 + 56) & 0x40) == 0)
  {
    goto LABEL_34;
  }

  v7 = *(v4 + 52);
  if (self->_isWeekend)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_34;
  }

LABEL_29:
  v5 = (*(v4 + 56) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 56) & 0x20) == 0 || self->_weekOfYear != *(v4 + 12))
    {
      goto LABEL_34;
    }

    v5 = 1;
  }

LABEL_35:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    normalizedDuration = self->_normalizedDuration;
    if (normalizedDuration < 0.0)
    {
      normalizedDuration = -normalizedDuration;
    }

    *v2.i64 = floor(normalizedDuration + 0.5);
    v6 = (normalizedDuration - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 8) != 0)
  {
    timeOfDayCos = self->_timeOfDayCos;
    if (timeOfDayCos < 0.0)
    {
      timeOfDayCos = -timeOfDayCos;
    }

    *v2.i64 = floor(timeOfDayCos + 0.5);
    v10 = (timeOfDayCos - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 0x10) != 0)
  {
    timeOfDaySin = self->_timeOfDaySin;
    if (timeOfDaySin < 0.0)
    {
      timeOfDaySin = -timeOfDaySin;
    }

    *v2.i64 = floor(timeOfDaySin + 0.5);
    v14 = (timeOfDaySin - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
    v12 = 2654435761u * *v2.i64;
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

  if (*&self->_has)
  {
    dayOfWeekCos = self->_dayOfWeekCos;
    if (dayOfWeekCos < 0.0)
    {
      dayOfWeekCos = -dayOfWeekCos;
    }

    *v2.i64 = floor(dayOfWeekCos + 0.5);
    v18 = (dayOfWeekCos - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v19), v3, v2);
    v16 = 2654435761u * *v2.i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    dayOfWeekSin = self->_dayOfWeekSin;
    if (dayOfWeekSin < 0.0)
    {
      dayOfWeekSin = -dayOfWeekSin;
    }

    *v2.i64 = floor(dayOfWeekSin + 0.5);
    v22 = (dayOfWeekSin - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v3, v2).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v24 = 2654435761 * self->_isWeekend;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_43;
    }

LABEL_45:
    v25 = 0;
    return v8 ^ v4 ^ v12 ^ v16 ^ v20 ^ v24 ^ v25;
  }

  v24 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_45;
  }

LABEL_43:
  v25 = 2654435761 * self->_weekOfYear;
  return v8 ^ v4 ^ v12 ^ v16 ^ v20 ^ v24 ^ v25;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 56);
  if ((v5 & 4) != 0)
  {
    self->_normalizedDuration = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 56);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 56) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_timeOfDayCos = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_timeOfDaySin = *(v4 + 5);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 56);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_dayOfWeekCos = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 56);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_dayOfWeekSin = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 56);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_isWeekend = *(v4 + 52);
  *&self->_has |= 0x40u;
  if ((*(v4 + 56) & 0x20) != 0)
  {
LABEL_8:
    self->_weekOfYear = *(v4 + 12);
    *&self->_has |= 0x20u;
  }

LABEL_9:
}

@end