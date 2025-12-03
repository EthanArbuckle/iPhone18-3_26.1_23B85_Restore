@interface AWDSafariContactAutoFillDidShowSetsEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsShowingMeCardSets:(BOOL)sets;
- (void)setHasIsShowingPreviouslyCustomizedSet:(BOOL)set;
- (void)writeTo:(id)to;
@end

@implementation AWDSafariContactAutoFillDidShowSetsEvent

- (void)setHasIsShowingMeCardSets:(BOOL)sets
{
  if (sets)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsShowingPreviouslyCustomizedSet:(BOOL)set
{
  if (set)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isShowingMeCardSets), @"isShowingMeCardSets"}];
    if ((*&self->_has & 4) == 0)
    {
      return dictionary;
    }

    goto LABEL_4;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isShowingPreviouslyCustomizedSet), @"isShowingPreviouslyCustomizedSet"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 20) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return;
      }

LABEL_7:
      *(to + 17) = self->_isShowingPreviouslyCustomizedSet;
      *(to + 20) |= 4u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 16) = self->_isShowingMeCardSets;
  *(to + 20) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 20) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_15;
      }
    }

    else if (*(equal + 20))
    {
      goto LABEL_15;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 20) & 2) == 0)
      {
        goto LABEL_15;
      }

      v6 = *(equal + 16);
      if (self->_isShowingMeCardSets)
      {
        if ((*(equal + 16) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (*(equal + 16))
      {
        goto LABEL_15;
      }
    }

    else if ((*(equal + 20) & 2) != 0)
    {
      goto LABEL_15;
    }

    LOBYTE(v5) = (*(equal + 20) & 4) == 0;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    if ((*(equal + 20) & 4) != 0)
    {
      if (self->_isShowingPreviouslyCustomizedSet)
      {
        if (*(equal + 17))
        {
          goto LABEL_23;
        }
      }

      else if (!*(equal + 17))
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

- (void)mergeFrom:(id)from
{
  v3 = *(from + 20);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 20);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        return;
      }

LABEL_7:
      self->_isShowingPreviouslyCustomizedSet = *(from + 17);
      *&self->_has |= 4u;
      return;
    }
  }

  else if ((*(from + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_isShowingMeCardSets = *(from + 16);
  *&self->_has |= 2u;
  if ((*(from + 20) & 4) != 0)
  {
    goto LABEL_7;
  }
}

@end