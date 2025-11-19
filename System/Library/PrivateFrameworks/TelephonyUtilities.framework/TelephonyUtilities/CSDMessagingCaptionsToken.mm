@interface CSDMessagingCaptionsToken
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLength:(BOOL)a3;
- (void)setHasLocation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingCaptionsToken

- (void)setHasLocation:(BOOL)a3
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

- (void)setHasLength:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = CSDMessagingCaptionsToken;
  v3 = [(CSDMessagingCaptionsToken *)&v7 description];
  v4 = [(CSDMessagingCaptionsToken *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  if (self->_text)
  {
    [v3 setObject:@"REDACTED" forKey:@"text"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [NSNumber numberWithDouble:self->_confidence];
    [v4 setObject:v8 forKey:@"confidence"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v9 = [NSNumber numberWithUnsignedInt:self->_location];
  [v4 setObject:v9 forKey:@"location"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v6 = [NSNumber numberWithUnsignedInt:self->_length];
    [v4 setObject:v6 forKey:@"length"];
  }

LABEL_7:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  location = self->_location;
  PBDataWriterWriteUint32Field();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    length = self->_length;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_7:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_text)
  {
    v6 = v4;
    [v4 setText:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_confidence;
    *(v4 + 32) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 5) = self->_location;
  *(v4 + 32) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(v4 + 4) = self->_length;
    *(v4 + 32) |= 2u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 5) = self->_location;
    *(v5 + 32) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  v5[1] = *&self->_confidence;
  *(v5 + 32) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 4) = self->_length;
    *(v5 + 32) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  text = self->_text;
  if (text | *(v4 + 3))
  {
    if (![(NSString *)text isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_confidence != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_location != *(v4 + 5))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(v4 + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_length != *(v4 + 4))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_text hash];
  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v4.i64 = floor(confidence + 0.5);
    v8 = (confidence - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_location;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    return v6 ^ v3 ^ v10 ^ v11;
  }

  v10 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v11 = 2654435761 * self->_length;
  return v6 ^ v3 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    v6 = v4;
    [(CSDMessagingCaptionsToken *)self setText:?];
    v4 = v6;
  }

  v5 = *(v4 + 32);
  if (v5)
  {
    self->_confidence = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 32) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_location = *(v4 + 5);
  *&self->_has |= 4u;
  if ((*(v4 + 32) & 2) != 0)
  {
LABEL_6:
    self->_length = *(v4 + 4);
    *&self->_has |= 2u;
  }

LABEL_7:
}

@end