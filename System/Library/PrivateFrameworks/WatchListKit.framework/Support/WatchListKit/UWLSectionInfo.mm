@interface UWLSectionInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsDone:(BOOL)done;
- (void)setHasPlayheadInMilliseconds:(BOOL)milliseconds;
- (void)writeTo:(id)to;
@end

@implementation UWLSectionInfo

- (void)setHasIsDone:(BOOL)done
{
  if (done)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPlayheadInMilliseconds:(BOOL)milliseconds
{
  if (milliseconds)
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
  dictionaryRepresentation = [(UWLSectionInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 4) != 0)
  {
    isDone = self->_isDone;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
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
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_4:
    lengthInMilliseconds = self->_lengthInMilliseconds;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
  }

LABEL_5:
  if (self->_passThrough)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[32] = self->_isDone;
    toCopy[36] |= 4u;
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

  *(toCopy + 2) = self->_playheadInMilliseconds;
  toCopy[36] |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(toCopy + 1) = self->_lengthInMilliseconds;
    toCopy[36] |= 1u;
  }

LABEL_5:
  if (self->_passThrough)
  {
    v6 = toCopy;
    [toCopy setPassThrough:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(NSString *)self->_passThrough copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(equalCopy + 36);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 36) & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  if ((*(equalCopy + 36) & 4) == 0)
  {
    goto LABEL_22;
  }

  v6 = *(equalCopy + 32);
  if (self->_isDone)
  {
    if ((*(equalCopy + 32) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_22;
  }

LABEL_4:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_playheadInMilliseconds != *(equalCopy + 2))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_lengthInMilliseconds != *(equalCopy + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_22;
  }

  passThrough = self->_passThrough;
  if (passThrough | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if ((v5 & 4) != 0)
  {
    self->_isDone = *(fromCopy + 32);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 36);
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

  else if ((*(fromCopy + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_playheadInMilliseconds = *(fromCopy + 2);
  *&self->_has |= 2u;
  if (*(fromCopy + 36))
  {
LABEL_4:
    self->_lengthInMilliseconds = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(UWLSectionInfo *)self setPassThrough:?];
    fromCopy = v6;
  }
}

@end