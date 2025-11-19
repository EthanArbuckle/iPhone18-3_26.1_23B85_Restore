@interface AWDSafariContactAutoFillDidShowSetsEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsShowingMeCardSets:(BOOL)a3;
- (void)setHasIsShowingPreviouslyCustomizedSet:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSafariContactAutoFillDidShowSetsEvent

- (void)setHasIsShowingMeCardSets:(BOOL)a3
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

- (void)setHasIsShowingPreviouslyCustomizedSet:(BOOL)a3
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
  v3.super_class = AWDSafariContactAutoFillDidShowSetsEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariContactAutoFillDidShowSetsEvent description](&v3, sel_description), -[AWDSafariContactAutoFillDidShowSetsEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isShowingMeCardSets), @"isShowingMeCardSets"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_4;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isShowingPreviouslyCustomizedSet), @"isShowingPreviouslyCustomizedSet"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    isShowingMeCardSets = self->_isShowingMeCardSets;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_7:
  isShowingPreviouslyCustomizedSet = self->_isShowingPreviouslyCustomizedSet;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 20) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return;
      }

LABEL_7:
      *(a3 + 17) = self->_isShowingPreviouslyCustomizedSet;
      *(a3 + 20) |= 4u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 16) = self->_isShowingMeCardSets;
  *(a3 + 20) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 20) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  *(result + 16) = self->_isShowingMeCardSets;
  *(result + 20) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 17) = self->_isShowingPreviouslyCustomizedSet;
  *(result + 20) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 20) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_15;
      }
    }

    else if (*(a3 + 20))
    {
      goto LABEL_15;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 20) & 2) == 0)
      {
        goto LABEL_15;
      }

      v6 = *(a3 + 16);
      if (self->_isShowingMeCardSets)
      {
        if ((*(a3 + 16) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (*(a3 + 16))
      {
        goto LABEL_15;
      }
    }

    else if ((*(a3 + 20) & 2) != 0)
    {
      goto LABEL_15;
    }

    LOBYTE(v5) = (*(a3 + 20) & 4) == 0;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    if ((*(a3 + 20) & 4) != 0)
    {
      if (self->_isShowingPreviouslyCustomizedSet)
      {
        if (*(a3 + 17))
        {
          goto LABEL_23;
        }
      }

      else if (!*(a3 + 17))
      {
LABEL_23:
        LOBYTE(v5) = 1;
        return v5;
      }
    }

LABEL_15:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_isShowingMeCardSets;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_isShowingPreviouslyCustomizedSet;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 20);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 20);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        return;
      }

LABEL_7:
      self->_isShowingPreviouslyCustomizedSet = *(a3 + 17);
      *&self->_has |= 4u;
      return;
    }
  }

  else if ((*(a3 + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_isShowingMeCardSets = *(a3 + 16);
  *&self->_has |= 2u;
  if ((*(a3 + 20) & 4) != 0)
  {
    goto LABEL_7;
  }
}

@end