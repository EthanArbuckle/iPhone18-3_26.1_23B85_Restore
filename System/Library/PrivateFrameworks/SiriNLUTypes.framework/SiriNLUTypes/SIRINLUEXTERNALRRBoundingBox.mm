@interface SIRINLUEXTERNALRRBoundingBox
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasWidth:(BOOL)a3;
- (void)setHasXCoordinate:(BOOL)a3;
- (void)setHasYCoordinate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALRRBoundingBox

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 4) != 0)
  {
    self->_xCoordinate = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 40);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_yCoordinate = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_width = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 40))
  {
LABEL_5:
    self->_height = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    xCoordinate = self->_xCoordinate;
    if (xCoordinate < 0.0)
    {
      xCoordinate = -xCoordinate;
    }

    *v2.i64 = floor(xCoordinate + 0.5);
    v6 = (xCoordinate - *v2.i64) * 1.84467441e19;
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
    yCoordinate = self->_yCoordinate;
    if (yCoordinate < 0.0)
    {
      yCoordinate = -yCoordinate;
    }

    *v2.i64 = floor(yCoordinate + 0.5);
    v10 = (yCoordinate - *v2.i64) * 1.84467441e19;
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
    width = self->_width;
    if (width < 0.0)
    {
      width = -width;
    }

    *v2.i64 = floor(width + 0.5);
    v14 = (width - *v2.i64) * 1.84467441e19;
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
    height = self->_height;
    if (height < 0.0)
    {
      height = -height;
    }

    *v2.i64 = floor(height + 0.5);
    v18 = (height - *v2.i64) * 1.84467441e19;
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
    if ((*(v4 + 40) & 4) == 0 || self->_xCoordinate != *(v4 + 3))
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

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_yCoordinate != *(v4 + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 8) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_width != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_height != *(v4 + 1))
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
    *(result + 3) = *&self->_xCoordinate;
    *(result + 40) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = *&self->_yCoordinate;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 2) = *&self->_width;
  *(result + 40) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 1) = *&self->_height;
  *(result + 40) |= 1u;
  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[3] = *&self->_xCoordinate;
    *(v4 + 40) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  v4[4] = *&self->_yCoordinate;
  *(v4 + 40) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v4[2] = *&self->_width;
  *(v4 + 40) |= 2u;
  if (*&self->_has)
  {
LABEL_5:
    v4[1] = *&self->_height;
    *(v4 + 40) |= 1u;
  }

LABEL_6:
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    xCoordinate = self->_xCoordinate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  yCoordinate = self->_yCoordinate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  width = self->_width;
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_5:
    height = self->_height;
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
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_xCoordinate];
    [v3 setObject:v7 forKey:@"x_coordinate"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_yCoordinate];
  [v3 setObject:v8 forKey:@"y_coordinate"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_width];
  [v3 setObject:v9 forKey:@"width"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_height];
    [v3 setObject:v5 forKey:@"height"];
  }

LABEL_6:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALRRBoundingBox;
  v4 = [(SIRINLUEXTERNALRRBoundingBox *)&v8 description];
  v5 = [(SIRINLUEXTERNALRRBoundingBox *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasWidth:(BOOL)a3
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

- (void)setHasYCoordinate:(BOOL)a3
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

- (void)setHasXCoordinate:(BOOL)a3
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