@interface AWDSafariTappedOnToolbarButtonEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsButton:(id)a3;
- (int)button;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasButton:(BOOL)a3;
- (void)setHasUsedLongTap:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSafariTappedOnToolbarButtonEvent

- (int)button
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_button;
  }

  else
  {
    return 0;
  }
}

- (void)setHasButton:(BOOL)a3
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

- (int)StringAsButton:(id)a3
{
  if ([a3 isEqualToString:@"BACK_BUTTON"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"FORWARD_BUTTON"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"SHARE_BUTTON"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"BOOKMARK_BUTTON"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"TAB_EXPOSE_BUTTON"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"RELOAD_BUTTON"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"STOP_BUTTON"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"ADD_TAB_BUTTON"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"DOWNLOADS_BUTTON"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"FORMAT_MENU_BUTTON"])
  {
    return 9;
  }

  return 0;
}

- (void)setHasUsedLongTap:(BOOL)a3
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
  v3.super_class = AWDSafariTappedOnToolbarButtonEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariTappedOnToolbarButtonEvent description](&v3, sel_description), -[AWDSafariTappedOnToolbarButtonEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
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
    button = self->_button;
    if (button >= 0xA)
    {
      v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_button];
    }

    else
    {
      v7 = off_29EE32F30[button];
    }

    [v3 setObject:v7 forKey:@"button"];
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    return v3;
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
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_usedLongTap), @"usedLongTap"}];
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
    button = self->_button;
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
  usedLongTap = self->_usedLongTap;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return;
      }

LABEL_7:
      *(a3 + 20) = self->_usedLongTap;
      *(a3 + 24) |= 4u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_button;
  *(a3 + 24) |= 2u;
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

  *(result + 4) = self->_button;
  *(result + 24) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 20) = self->_usedLongTap;
  *(result + 24) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(a3 + 24))
    {
      goto LABEL_14;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 24) & 2) == 0 || self->_button != *(a3 + 4))
      {
        goto LABEL_14;
      }
    }

    else if ((*(a3 + 24) & 2) != 0)
    {
      goto LABEL_14;
    }

    LOBYTE(v5) = (*(a3 + 24) & 4) == 0;
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 24) & 4) == 0)
      {
LABEL_14:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_usedLongTap)
      {
        if ((*(a3 + 20) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (*(a3 + 20))
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
  v3 = 2654435761 * self->_button;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_usedLongTap;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 24);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 24);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        return;
      }

LABEL_7:
      self->_usedLongTap = *(a3 + 20);
      *&self->_has |= 4u;
      return;
    }
  }

  else if ((*(a3 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_button = *(a3 + 4);
  *&self->_has |= 2u;
  if ((*(a3 + 24) & 4) != 0)
  {
    goto LABEL_7;
  }
}

@end