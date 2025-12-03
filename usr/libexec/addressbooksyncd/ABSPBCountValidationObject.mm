@interface ABSPBCountValidationObject
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRawCount:(BOOL)count;
- (void)setHasShowAlert:(BOOL)alert;
- (void)setHasUnifiedCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation ABSPBCountValidationObject

- (void)setHasRawCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUnifiedCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasShowAlert:(BOOL)alert
{
  if (alert)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBCountValidationObject;
  v3 = [(ABSPBCountValidationObject *)&v7 description];
  dictionaryRepresentation = [(ABSPBCountValidationObject *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithLongLong:self->_rawCount];
    [v3 setObject:v7 forKey:@"rawCount"];

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

  v8 = [NSNumber numberWithLongLong:self->_unifiedCount];
  [v3 setObject:v8 forKey:@"unifiedCount"];

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
  v9 = [NSNumber numberWithLongLong:self->_favoritesCount];
  [v3 setObject:v9 forKey:@"favoritesCount"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithBool:self->_showAlert];
    [v3 setObject:v5 forKey:@"showAlert"];
  }

LABEL_6:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    rawCount = self->_rawCount;
    PBDataWriterWriteInt64Field();
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

  unifiedCount = self->_unifiedCount;
  PBDataWriterWriteInt64Field();
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
  favoritesCount = self->_favoritesCount;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    showAlert = self->_showAlert;
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_rawCount;
    *(toCopy + 36) |= 2u;
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

  toCopy[3] = self->_unifiedCount;
  *(toCopy + 36) |= 4u;
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
  toCopy[1] = self->_favoritesCount;
  *(toCopy + 36) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(toCopy + 32) = self->_showAlert;
    *(toCopy + 36) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_rawCount;
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

  *(result + 3) = self->_unifiedCount;
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
  *(result + 1) = self->_favoritesCount;
  *(result + 36) |= 1u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 32) = self->_showAlert;
  *(result + 36) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_rawCount != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_unifiedCount != *(equalCopy + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_favoritesCount != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_19;
  }

  v5 = (*(equalCopy + 36) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0)
    {
LABEL_19:
      v5 = 0;
      goto LABEL_20;
    }

    if (self->_showAlert)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_19;
    }

    v5 = 1;
  }

LABEL_20:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_rawCount;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_unifiedCount;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_favoritesCount;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_showAlert;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_rawCount = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
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

  else if ((*(fromCopy + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_unifiedCount = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 36);
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
  self->_favoritesCount = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 36) & 8) != 0)
  {
LABEL_5:
    self->_showAlert = *(fromCopy + 32);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end