@interface AWDSafariEnterTwoUpEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMethod:(id)a3;
- (int)method;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMethod:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSafariEnterTwoUpEvent

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

- (void)setHasMethod:(BOOL)a3
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

- (int)StringAsMethod:(id)a3
{
  if ([a3 isEqualToString:@"LONG_TAP_LINK"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"LONG_TAP_TAB_EXPOSE_BUTTON"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"LONG_TAP_DONE_BUTTON_IN_TAB_OVERVIEW"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"TWO_FINGER_TAP_LINK"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"DRAG_TAB_FROM_TAB_BAR"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"DRAG_TAB_FROM_TAB_OVERVIEW"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"KEYBOARD_SHORTCUT"])
  {
    return 6;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariEnterTwoUpEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariEnterTwoUpEvent description](&v3, sel_description), -[AWDSafariEnterTwoUpEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    method = self->_method;
    if (method >= 7)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_method];
    }

    else
    {
      v6 = off_29EE32D10[method];
    }

    [v3 setObject:v6 forKey:@"method"];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

LABEL_5:
    *(a3 + 4) = self->_method;
    *(a3 + 20) |= 2u;
    return;
  }

  *(a3 + 1) = self->_timestamp;
  *(a3 + 20) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_5;
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
  }

  if ((has & 2) != 0)
  {
    *(result + 4) = self->_method;
    *(result + 20) |= 2u;
  }

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
        goto LABEL_11;
      }
    }

    else if (*(a3 + 20))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(a3 + 20) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 20) & 2) == 0 || self->_method != *(a3 + 4))
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

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 20) & 1) == 0)
  {
    if ((*(a3 + 20) & 2) == 0)
    {
      return;
    }

LABEL_5:
    self->_method = *(a3 + 4);
    *&self->_has |= 2u;
    return;
  }

  self->_timestamp = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 20) & 2) != 0)
  {
    goto LABEL_5;
  }
}

@end