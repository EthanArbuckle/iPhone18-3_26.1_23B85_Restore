@interface PCPMotionActivity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMotionActivityConfidence:(id)a3;
- (int)StringAsMotionActivityType:(id)a3;
- (int)motionActivityConfidence;
- (int)motionActivityType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMotionActivityConfidence:(BOOL)a3;
- (void)setHasMotionActivityType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPMotionActivity

- (int)motionActivityType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_motionActivityType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMotionActivityType:(BOOL)a3
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

- (int)StringAsMotionActivityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MAT_Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MAT_Stationary"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MAT_Walking"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MAT_Running"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MAT_Automotive"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MAT_Cycling"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MAT_Moving"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)motionActivityConfidence
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_motionActivityConfidence;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMotionActivityConfidence:(BOOL)a3
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

- (int)StringAsMotionActivityConfidence:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MAC_Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MAC_Low"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MAC_Medium"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MAC_High"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPMotionActivity;
  v4 = [(PCPMotionActivity *)&v8 description];
  v5 = [(PCPMotionActivity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    motionActivityType = self->_motionActivityType;
    if (motionActivityType >= 7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_motionActivityType];
    }

    else
    {
      v8 = off_1E83B80D0[motionActivityType];
    }

    [v3 setObject:v8 forKey:@"motionActivityType"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  motionActivityConfidence = self->_motionActivityConfidence;
  if (motionActivityConfidence >= 4)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_motionActivityConfidence];
  }

  else
  {
    v10 = off_1E83B8108[motionActivityConfidence];
  }

  [v3 setObject:v10 forKey:@"motionActivityConfidence"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTimeCFAbsolute];
  [v3 setObject:v5 forKey:@"startTimeCFAbsolute"];

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 4) != 0)
  {
    motionActivityType = self->_motionActivityType;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  motionActivityConfidence = self->_motionActivityConfidence;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[5] = self->_motionActivityType;
    *(v4 + 24) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  v4[4] = self->_motionActivityConfidence;
  *(v4 + 24) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v4 + 1) = *&self->_startTimeCFAbsolute;
    *(v4 + 24) |= 1u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 5) = self->_motionActivityType;
    *(result + 24) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_motionActivityConfidence;
  *(result + 24) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 1) = *&self->_startTimeCFAbsolute;
  *(result + 24) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_motionActivityType != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_motionActivityConfidence != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_startTimeCFAbsolute != *(v4 + 1))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    return v5 ^ v4 ^ v9;
  }

  v4 = 2654435761 * self->_motionActivityType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = 2654435761 * self->_motionActivityConfidence;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  startTimeCFAbsolute = self->_startTimeCFAbsolute;
  if (startTimeCFAbsolute < 0.0)
  {
    startTimeCFAbsolute = -startTimeCFAbsolute;
  }

  *v2.i64 = floor(startTimeCFAbsolute + 0.5);
  v7 = (startTimeCFAbsolute - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
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

  return v5 ^ v4 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 4) != 0)
  {
    self->_motionActivityType = *(v4 + 5);
    *&self->_has |= 4u;
    v5 = *(v4 + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_motionActivityConfidence = *(v4 + 4);
  *&self->_has |= 2u;
  if (*(v4 + 24))
  {
LABEL_4:
    self->_startTimeCFAbsolute = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
}

@end