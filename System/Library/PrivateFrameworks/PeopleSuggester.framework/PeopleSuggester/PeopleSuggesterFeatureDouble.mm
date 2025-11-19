@interface PeopleSuggesterFeatureDouble
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDefaultValue:(BOOL)a3;
- (void)setHasWasImputed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PeopleSuggesterFeatureDouble

- (void)setHasWasImputed:(BOOL)a3
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

- (void)setHasDefaultValue:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PeopleSuggesterFeatureDouble;
  v4 = [(PeopleSuggesterFeatureDouble *)&v8 description];
  v5 = [(PeopleSuggesterFeatureDouble *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_value];
    [v3 setObject:v7 forKey:@"value"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_wasImputed];
  [v3 setObject:v8 forKey:@"wasImputed"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_defaultValue];
    [v3 setObject:v5 forKey:@"defaultValue"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    value = self->_value;
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  wasImputed = self->_wasImputed;
  PBDataWriterWriteBOOLField();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    defaultValue = self->_defaultValue;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = *&self->_value;
    *(v4 + 20) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 17) = self->_wasImputed;
  *(v4 + 20) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v4 + 16) = self->_defaultValue;
    *(v4 + 20) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = *&self->_value;
    *(result + 20) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 17) = self->_wasImputed;
  *(result + 20) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 16) = self->_defaultValue;
  *(result + 20) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_value != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0)
    {
      goto LABEL_15;
    }

    v7 = *(v4 + 17);
    if (self->_wasImputed)
    {
      if ((*(v4 + 17) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(v4 + 17))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 20) & 4) != 0)
  {
    goto LABEL_15;
  }

  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) != 0)
    {
      if (self->_defaultValue)
      {
        if (*(v4 + 16))
        {
          goto LABEL_23;
        }
      }

      else if (!*(v4 + 16))
      {
LABEL_23:
        v5 = 1;
        goto LABEL_16;
      }
    }

LABEL_15:
    v5 = 0;
  }

LABEL_16:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    value = self->_value;
    if (value < 0.0)
    {
      value = -value;
    }

    *v2.i64 = floor(value + 0.5);
    v6 = (value - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
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
    v8 = 2654435761 * self->_wasImputed;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v9 = 0;
    return v8 ^ v4 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v9 = 2654435761 * self->_defaultValue;
  return v8 ^ v4 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if (v5)
  {
    self->_value = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 20);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 20) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_wasImputed = *(v4 + 17);
  *&self->_has |= 4u;
  if ((*(v4 + 20) & 2) != 0)
  {
LABEL_4:
    self->_defaultValue = *(v4 + 16);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end