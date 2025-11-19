@interface UWLSectionInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsDone:(BOOL)a3;
- (void)setHasPlayheadInMilliseconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation UWLSectionInfo

- (void)setHasIsDone:(BOOL)a3
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

- (void)setHasPlayheadInMilliseconds:(BOOL)a3
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
  v7.super_class = UWLSectionInfo;
  v3 = [(UWLSectionInfo *)&v7 description];
  v4 = [(UWLSectionInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_isDone];
    [v3 setObject:v8 forKey:@"is_done"];

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

  v9 = [NSNumber numberWithLongLong:self->_playheadInMilliseconds];
  [v3 setObject:v9 forKey:@"playhead_in_milliseconds"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [NSNumber numberWithLongLong:self->_lengthInMilliseconds];
    [v3 setObject:v5 forKey:@"length_in_milliseconds"];
  }

LABEL_5:
  passThrough = self->_passThrough;
  if (passThrough)
  {
    [v3 setObject:passThrough forKey:@"pass_through"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 4) != 0)
  {
    isDone = self->_isDone;
    PBDataWriterWriteBOOLField();
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

  playheadInMilliseconds = self->_playheadInMilliseconds;
  PBDataWriterWriteInt64Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    lengthInMilliseconds = self->_lengthInMilliseconds;
    PBDataWriterWriteInt64Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_passThrough)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[32] = self->_isDone;
    v4[36] |= 4u;
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

  *(v4 + 2) = self->_playheadInMilliseconds;
  v4[36] |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v4 + 1) = self->_lengthInMilliseconds;
    v4[36] |= 1u;
  }

LABEL_5:
  if (self->_passThrough)
  {
    v6 = v4;
    [v4 setPassThrough:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5[2] = self->_playheadInMilliseconds;
    *(v5 + 36) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 32) = self->_isDone;
  *(v5 + 36) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    v5[1] = self->_lengthInMilliseconds;
    *(v5 + 36) |= 1u;
  }

LABEL_5:
  v8 = [(NSString *)self->_passThrough copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(v4 + 36);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 36) & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  if ((*(v4 + 36) & 4) == 0)
  {
    goto LABEL_22;
  }

  v6 = *(v4 + 32);
  if (self->_isDone)
  {
    if ((*(v4 + 32) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_22;
  }

LABEL_4:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_playheadInMilliseconds != *(v4 + 2))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_lengthInMilliseconds != *(v4 + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_22;
  }

  passThrough = self->_passThrough;
  if (passThrough | *(v4 + 3))
  {
    v8 = [(NSString *)passThrough isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_23:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSString *)self->_passThrough hash:v3];
  }

  v6 = 2654435761 * self->_isDone;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_playheadInMilliseconds;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_lengthInMilliseconds;
  return v7 ^ v6 ^ v8 ^ [(NSString *)self->_passThrough hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 4) != 0)
  {
    self->_isDone = *(v4 + 32);
    *&self->_has |= 4u;
    v5 = *(v4 + 36);
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

  else if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_playheadInMilliseconds = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 36))
  {
LABEL_4:
    self->_lengthInMilliseconds = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(v4 + 3))
  {
    v6 = v4;
    [(UWLSectionInfo *)self setPassThrough:?];
    v4 = v6;
  }
}

@end