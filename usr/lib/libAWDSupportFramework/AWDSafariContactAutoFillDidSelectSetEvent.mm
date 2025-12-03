@interface AWDSafariContactAutoFillDidSelectSetEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSelectedSet:(id)set;
- (int)selectedSet;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHadPreviouslyCustomizedSet:(BOOL)set;
- (void)setHasSelectedSet:(BOOL)set;
- (void)writeTo:(id)to;
@end

@implementation AWDSafariContactAutoFillDidSelectSetEvent

- (int)selectedSet
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_selectedSet;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSelectedSet:(BOOL)set
{
  if (set)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsSelectedSet:(id)set
{
  if ([set isEqualToString:@"HOME_CONTACT"])
  {
    return 0;
  }

  if ([set isEqualToString:@"WORK_CONTACT"])
  {
    return 1;
  }

  if ([set isEqualToString:@"PREVIOUSLY_CUSTOMIZED_CONTACT"])
  {
    return 2;
  }

  if ([set isEqualToString:@"NEW_CUSTOMIZED_CONTACT"])
  {
    return 3;
  }

  if ([set isEqualToString:@"OTHER_CONTACT"])
  {
    return 4;
  }

  if ([set isEqualToString:@"SINGLE_VALUE_SET"])
  {
    return 5;
  }

  return 0;
}

- (void)setHasHadPreviouslyCustomizedSet:(BOOL)set
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
  v3.super_class = AWDSafariContactAutoFillDidSelectSetEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariContactAutoFillDidSelectSetEvent description](&v3, sel_description), -[AWDSafariContactAutoFillDidSelectSetEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
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
    selectedSet = self->_selectedSet;
    if (selectedSet >= 6)
    {
      v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_selectedSet];
    }

    else
    {
      v7 = off_29EE32CC8[selectedSet];
    }

    [dictionary setObject:v7 forKey:@"selectedSet"];
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    return dictionary;
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
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_hadPreviouslyCustomizedSet), @"hadPreviouslyCustomizedSet"}];
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
    selectedSet = self->_selectedSet;
    PBDataWriterWriteInt32Field();
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
  hadPreviouslyCustomizedSet = self->_hadPreviouslyCustomizedSet;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return;
      }

LABEL_7:
      *(to + 20) = self->_hadPreviouslyCustomizedSet;
      *(to + 24) |= 4u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_selectedSet;
  *(to + 24) |= 2u;
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
    *(result + 24) |= 1u;
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

  *(result + 4) = self->_selectedSet;
  *(result + 24) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 20) = self->_hadPreviouslyCustomizedSet;
  *(result + 24) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 24))
    {
      goto LABEL_14;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 24) & 2) == 0 || self->_selectedSet != *(equal + 4))
      {
        goto LABEL_14;
      }
    }

    else if ((*(equal + 24) & 2) != 0)
    {
      goto LABEL_14;
    }

    LOBYTE(v5) = (*(equal + 24) & 4) == 0;
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 24) & 4) == 0)
      {
LABEL_14:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_hadPreviouslyCustomizedSet)
      {
        if ((*(equal + 20) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (*(equal + 20))
      {
        goto LABEL_14;
      }

      LOBYTE(v5) = 1;
    }
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
  v3 = 2654435761 * self->_selectedSet;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_hadPreviouslyCustomizedSet;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 24);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 24);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        return;
      }

LABEL_7:
      self->_hadPreviouslyCustomizedSet = *(from + 20);
      *&self->_has |= 4u;
      return;
    }
  }

  else if ((*(from + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_selectedSet = *(from + 4);
  *&self->_has |= 2u;
  if ((*(from + 24) & 4) != 0)
  {
    goto LABEL_7;
  }
}

@end