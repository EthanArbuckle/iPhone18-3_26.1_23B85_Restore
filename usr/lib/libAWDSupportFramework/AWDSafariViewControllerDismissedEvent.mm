@interface AWDSafariViewControllerDismissedEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMethod:(id)method;
- (int)method;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMethod:(BOOL)method;
- (void)writeTo:(id)to;
@end

@implementation AWDSafariViewControllerDismissedEvent

- (int)method
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_method;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMethod:(BOOL)method
{
  if (method)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsMethod:(id)method
{
  if ([method isEqualToString:@"SFVC_OTHER_DISMISSAL"])
  {
    return 0;
  }

  if ([method isEqualToString:@"SFVC_EDGE_SWIPE"])
  {
    return 1;
  }

  if ([method isEqualToString:@"SFVC_DONE_BUTTON_IN_TOOLBAR"])
  {
    return 2;
  }

  if ([method isEqualToString:@"SFVC_KEYBOARD_DISMISSAL"])
  {
    return 3;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariViewControllerDismissedEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariViewControllerDismissedEvent description](&v3, sel_description), -[AWDSafariViewControllerDismissedEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    method = self->_method;
    if (method >= 4)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_method];
    }

    else
    {
      v6 = off_29EE32FE8[method];
    }

    [dictionary setObject:v6 forKey:@"method"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    method = self->_method;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

LABEL_5:
    *(to + 4) = self->_method;
    *(to + 20) |= 2u;
    return;
  }

  *(to + 1) = self->_timestamp;
  *(to + 20) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_5;
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
  }

  if ((has & 2) != 0)
  {
    *(result + 4) = self->_method;
    *(result + 20) |= 2u;
  }

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
        goto LABEL_11;
      }
    }

    else if (*(equal + 20))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(equal + 20) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 20) & 2) == 0 || self->_method != *(equal + 4))
      {
        goto LABEL_11;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_method;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 20) & 1) == 0)
  {
    if ((*(from + 20) & 2) == 0)
    {
      return;
    }

LABEL_5:
    self->_method = *(from + 4);
    *&self->_has |= 2u;
    return;
  }

  self->_timestamp = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 20) & 2) != 0)
  {
    goto LABEL_5;
  }
}

@end