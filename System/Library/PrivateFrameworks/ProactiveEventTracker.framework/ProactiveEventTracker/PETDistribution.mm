@interface PETDistribution
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMean:(BOOL)a3;
- (void)setHasMin:(BOOL)a3;
- (void)setHasVariance:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PETDistribution

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 4) != 0)
  {
    self->_min = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 40);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_max = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_mean = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 40) & 8) != 0)
  {
LABEL_5:
    self->_variance = *(v4 + 4);
    *&self->_has |= 8u;
  }

LABEL_6:
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    min = self->_min;
    if (min < 0.0)
    {
      min = -min;
    }

    *v2.i64 = floor(min + 0.5);
    v6 = (min - *v2.i64) * 1.84467441e19;
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

  if (*&self->_has)
  {
    max = self->_max;
    if (max < 0.0)
    {
      max = -max;
    }

    *v2.i64 = floor(max + 0.5);
    v10 = (max - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 2) != 0)
  {
    mean = self->_mean;
    if (mean < 0.0)
    {
      mean = -mean;
    }

    *v2.i64 = floor(mean + 0.5);
    v14 = (mean - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 8) != 0)
  {
    variance = self->_variance;
    if (variance < 0.0)
    {
      variance = -variance;
    }

    *v2.i64 = floor(variance + 0.5);
    v18 = (variance - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v3, v2).i64;
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

  return v8 ^ v4 ^ v12 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_min != *(v4 + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_max != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_mean != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 40) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_variance != *(v4 + 4))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 3) = *&self->_min;
    *(result + 40) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = *&self->_max;
  *(result + 40) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 2) = *&self->_mean;
  *(result + 40) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 4) = *&self->_variance;
  *(result + 40) |= 8u;
  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[3] = *&self->_min;
    *(v4 + 40) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[1] = *&self->_max;
  *(v4 + 40) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v4[2] = *&self->_mean;
  *(v4 + 40) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v4[4] = *&self->_variance;
    *(v4 + 40) |= 8u;
  }

LABEL_6:
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    min = self->_min;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  max = self->_max;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  mean = self->_mean;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    variance = self->_variance;
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_min];
    [v3 setObject:v7 forKey:@"min"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_max];
  [v3 setObject:v8 forKey:@"max"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_mean];
  [v3 setObject:v9 forKey:@"mean"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_variance];
    [v3 setObject:v5 forKey:@"variance"];
  }

LABEL_6:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PETDistribution;
  v4 = [(PETDistribution *)&v8 description];
  v5 = [(PETDistribution *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasVariance:(BOOL)a3
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

- (void)setHasMean:(BOOL)a3
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

- (void)setHasMin:(BOOL)a3
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

@end