@interface AWDSpringBoardSwitcherToAppTransition
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasIsGoingToHomeScreen:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSpringBoardSwitcherToAppTransition

- (void)dealloc
{
  [(AWDSpringBoardSwitcherToAppTransition *)self setSwitcherName:0];
  v3.receiver = self;
  v3.super_class = AWDSpringBoardSwitcherToAppTransition;
  [(AWDSpringBoardSwitcherToAppTransition *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasIsGoingToHomeScreen:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSpringBoardSwitcherToAppTransition;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSpringBoardSwitcherToAppTransition description](&v3, sel_description), -[AWDSpringBoardSwitcherToAppTransition dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  switcherName = self->_switcherName;
  if (switcherName)
  {
    [v3 setObject:switcherName forKey:@"switcherName"];
  }

  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_absoluteDistanceInList), @"absoluteDistanceInList"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isGoingToHomeScreen), @"isGoingToHomeScreen"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_switcherName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    absoluteDistanceInList = self->_absoluteDistanceInList;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    isGoingToHomeScreen = self->_isGoingToHomeScreen;

    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 36) |= 2u;
  }

  if (self->_switcherName)
  {
    [a3 setSwitcherName:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_absoluteDistanceInList;
    *(a3 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(a3 + 32) = self->_isGoingToHomeScreen;
    *(a3 + 36) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 36) |= 2u;
  }

  *(v6 + 24) = [(NSString *)self->_switcherName copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_absoluteDistanceInList;
    *(v6 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 32) = self->_isGoingToHomeScreen;
    *(v6 + 36) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 36);
    if ((has & 2) != 0)
    {
      if ((*(a3 + 36) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_17;
      }
    }

    else if ((*(a3 + 36) & 2) != 0)
    {
      goto LABEL_17;
    }

    switcherName = self->_switcherName;
    if (switcherName | *(a3 + 3))
    {
      v5 = [(NSString *)switcherName isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if (has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_absoluteDistanceInList != *(a3 + 1))
      {
        goto LABEL_17;
      }
    }

    else if (*(a3 + 36))
    {
      goto LABEL_17;
    }

    LOBYTE(v5) = (*(a3 + 36) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(a3 + 36) & 4) == 0)
      {
LABEL_17:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_isGoingToHomeScreen)
      {
        if ((*(a3 + 32) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (*(a3 + 32))
      {
        goto LABEL_17;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_switcherName hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_absoluteDistanceInList;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_isGoingToHomeScreen;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 36) & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
  }

  if (*(a3 + 3))
  {
    [(AWDSpringBoardSwitcherToAppTransition *)self setSwitcherName:?];
  }

  v5 = *(a3 + 36);
  if (v5)
  {
    self->_absoluteDistanceInList = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 36);
  }

  if ((v5 & 4) != 0)
  {
    self->_isGoingToHomeScreen = *(a3 + 32);
    *&self->_has |= 4u;
  }
}

@end