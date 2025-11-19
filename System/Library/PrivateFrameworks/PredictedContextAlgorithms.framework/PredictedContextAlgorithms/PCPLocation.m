@interface PCPLocation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLocationReferenceFrame:(id)a3;
- (int)locationReferenceFrame;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLocationLatitudeDeg:(BOOL)a3;
- (void)setHasLocationLongitudeDeg:(BOOL)a3;
- (void)setHasLocationReferenceFrame:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPLocation

- (void)setHasLocationLatitudeDeg:(BOOL)a3
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

- (void)setHasLocationLongitudeDeg:(BOOL)a3
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

- (int)locationReferenceFrame
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_locationReferenceFrame;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLocationReferenceFrame:(BOOL)a3
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

- (int)StringAsLocationReferenceFrame:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WGS84"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ChinaShifted"])
  {
    v4 = 2;
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
  v8.super_class = PCPLocation;
  v4 = [(PCPLocation *)&v8 description];
  v5 = [(PCPLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationLatitudeDeg];
    [v3 setObject:v5 forKey:@"locationLatitudeDeg"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationHorizontalUncertaintyMeters];
      [v3 setObject:v7 forKey:@"locationHorizontalUncertaintyMeters"];

      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_13;
      }

LABEL_9:
      locationReferenceFrame = self->_locationReferenceFrame;
      if (locationReferenceFrame >= 3)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_locationReferenceFrame];
      }

      else
      {
        v9 = off_1E83B8598[locationReferenceFrame];
      }

      [v3 setObject:v9 forKey:@"locationReferenceFrame"];

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationLongitudeDeg];
  [v3 setObject:v6 forKey:@"locationLongitudeDeg"];

  has = self->_has;
  if (has)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_13:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    locationLatitudeDeg = self->_locationLatitudeDeg;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  locationLongitudeDeg = self->_locationLongitudeDeg;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  locationHorizontalUncertaintyMeters = self->_locationHorizontalUncertaintyMeters;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    locationReferenceFrame = self->_locationReferenceFrame;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = *&self->_locationLatitudeDeg;
    *(v4 + 36) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = *&self->_locationLongitudeDeg;
  *(v4 + 36) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v4[1] = *&self->_locationHorizontalUncertaintyMeters;
  *(v4 + 36) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v4 + 8) = self->_locationReferenceFrame;
    *(v4 + 36) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = *&self->_locationLatitudeDeg;
    *(result + 36) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = *&self->_locationLongitudeDeg;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 1) = *&self->_locationHorizontalUncertaintyMeters;
  *(result + 36) |= 1u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 8) = self->_locationReferenceFrame;
  *(result + 36) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_locationLatitudeDeg != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_locationLongitudeDeg != *(v4 + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_locationHorizontalUncertaintyMeters != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 36) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_locationReferenceFrame != *(v4 + 8))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    locationLatitudeDeg = self->_locationLatitudeDeg;
    if (locationLatitudeDeg < 0.0)
    {
      locationLatitudeDeg = -locationLatitudeDeg;
    }

    *v2.i64 = floor(locationLatitudeDeg + 0.5);
    v6 = (locationLatitudeDeg - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 4) != 0)
  {
    locationLongitudeDeg = self->_locationLongitudeDeg;
    if (locationLongitudeDeg < 0.0)
    {
      locationLongitudeDeg = -locationLongitudeDeg;
    }

    *v2.i64 = floor(locationLongitudeDeg + 0.5);
    v10 = (locationLongitudeDeg - *v2.i64) * 1.84467441e19;
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

  if (*&self->_has)
  {
    locationHorizontalUncertaintyMeters = self->_locationHorizontalUncertaintyMeters;
    if (locationHorizontalUncertaintyMeters < 0.0)
    {
      locationHorizontalUncertaintyMeters = -locationHorizontalUncertaintyMeters;
    }

    *v2.i64 = floor(locationHorizontalUncertaintyMeters + 0.5);
    v14 = (locationHorizontalUncertaintyMeters - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 8) != 0)
  {
    v16 = 2654435761 * self->_locationReferenceFrame;
  }

  else
  {
    v16 = 0;
  }

  return v8 ^ v4 ^ v12 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_locationLatitudeDeg = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_locationLongitudeDeg = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 36);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_locationHorizontalUncertaintyMeters = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 36) & 8) != 0)
  {
LABEL_5:
    self->_locationReferenceFrame = *(v4 + 8);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end