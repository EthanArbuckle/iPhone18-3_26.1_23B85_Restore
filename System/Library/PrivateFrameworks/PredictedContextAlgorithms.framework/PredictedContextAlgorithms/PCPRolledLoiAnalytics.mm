@interface PCPRolledLoiAnalytics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsWork:(BOOL)work;
- (void)setHasLoiIsMissingFromCurrentVisitHistory:(BOOL)history;
- (void)writeTo:(id)to;
@end

@implementation PCPRolledLoiAnalytics

- (void)setHasLoiIsMissingFromCurrentVisitHistory:(BOOL)history
{
  if (history)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsWork:(BOOL)work
{
  if (work)
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
  v8.super_class = PCPRolledLoiAnalytics;
  v4 = [(PCPRolledLoiAnalytics *)&v8 description];
  dictionaryRepresentation = [(PCPRolledLoiAnalytics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_loiIsMissingFromCurrentVisitHistory];
    [dictionary setObject:v7 forKey:@"loiIsMissingFromCurrentVisitHistory"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isHome];
  [dictionary setObject:v8 forKey:@"isHome"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isWork];
    [dictionary setObject:v5 forKey:@"isWork"];
  }

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 4) != 0)
  {
    loiIsMissingFromCurrentVisitHistory = self->_loiIsMissingFromCurrentVisitHistory;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  isHome = self->_isHome;
  PBDataWriterWriteBOOLField();
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    isWork = self->_isWork;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[10] = self->_loiIsMissingFromCurrentVisitHistory;
    toCopy[12] |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[8] = self->_isHome;
  toCopy[12] |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    toCopy[9] = self->_isWork;
    toCopy[12] |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 10) = self->_loiIsMissingFromCurrentVisitHistory;
    *(result + 12) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_isHome;
  *(result + 12) |= 1u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 9) = self->_isWork;
  *(result + 12) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[12] & 4) == 0)
    {
      goto LABEL_24;
    }

    v6 = equalCopy[10];
    if (self->_loiIsMissingFromCurrentVisitHistory)
    {
      if ((equalCopy[10] & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (equalCopy[10])
    {
      goto LABEL_24;
    }
  }

  else if ((equalCopy[12] & 4) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((equalCopy[12] & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  if ((equalCopy[12] & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = equalCopy[8];
  if (self->_isHome)
  {
    if ((equalCopy[8] & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (equalCopy[8])
  {
    goto LABEL_24;
  }

LABEL_6:
  v5 = (equalCopy[12] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[12] & 2) != 0)
    {
      if (self->_isWork)
      {
        if (equalCopy[9])
        {
          goto LABEL_26;
        }
      }

      else if (!equalCopy[9])
      {
LABEL_26:
        v5 = 1;
        goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

LABEL_25:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_loiIsMissingFromCurrentVisitHistory;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_isHome;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_isWork;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[12];
  if ((v5 & 4) != 0)
  {
    self->_loiIsMissingFromCurrentVisitHistory = fromCopy[10];
    *&self->_has |= 4u;
    v5 = fromCopy[12];
    if (!v5)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!fromCopy[12])
  {
    goto LABEL_3;
  }

  self->_isHome = fromCopy[8];
  *&self->_has |= 1u;
  if ((fromCopy[12] & 2) != 0)
  {
LABEL_4:
    self->_isWork = fromCopy[9];
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end