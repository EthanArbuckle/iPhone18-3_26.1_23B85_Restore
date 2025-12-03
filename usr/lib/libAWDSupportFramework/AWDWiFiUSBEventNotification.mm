@interface AWDWiFiUSBEventNotification
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsVendorApple:(BOOL)apple;
- (void)setHasSmartCCADesenseSupported:(BOOL)supported;
- (void)setHasUsbAction:(BOOL)action;
- (void)setHasUsbTotal:(BOOL)total;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiUSBEventNotification

- (void)setHasUsbAction:(BOOL)action
{
  if (action)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUsbTotal:(BOOL)total
{
  if (total)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsVendorApple:(BOOL)apple
{
  if (apple)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSmartCCADesenseSupported:(BOOL)supported
{
  if (supported)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiUSBEventNotification;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiUSBEventNotification description](&v3, sel_description), -[AWDWiFiUSBEventNotification dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_usbAction), @"usbAction"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_usbTotal), @"usbTotal"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isVendorApple), @"isVendorApple"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return dictionary;
    }

    goto LABEL_6;
  }

LABEL_10:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_durationSinceUSBEventInSeconds), @"durationSinceUSBEventInSeconds"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 0x10) != 0)
  {
LABEL_6:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_smartCCADesenseSupported), @"smartCCADesenseSupported"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    usbAction = self->_usbAction;
    PBDataWriterWriteUint32Field();
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

  usbTotal = self->_usbTotal;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    isVendorApple = self->_isVendorApple;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  durationSinceUSBEventInSeconds = self->_durationSinceUSBEventInSeconds;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_11:
  smartCCADesenseSupported = self->_smartCCADesenseSupported;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 4) = self->_usbAction;
    *(to + 28) |= 2u;
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

  *(to + 5) = self->_usbTotal;
  *(to + 28) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(to + 1) = self->_durationSinceUSBEventInSeconds;
  *(to + 28) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_11:
    *(to + 25) = self->_smartCCADesenseSupported;
    *(to + 28) |= 0x10u;
    return;
  }

LABEL_10:
  *(to + 24) = self->_isVendorApple;
  *(to + 28) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 4) = self->_usbAction;
    *(result + 28) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_usbTotal;
  *(result + 28) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 1) = self->_durationSinceUSBEventInSeconds;
  *(result + 28) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 24) = self->_isVendorApple;
  *(result + 28) |= 8u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 25) = self->_smartCCADesenseSupported;
  *(result + 28) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0 || self->_usbAction != *(equal + 4))
      {
        goto LABEL_25;
      }
    }

    else if ((*(equal + 28) & 2) != 0)
    {
      goto LABEL_25;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 28) & 4) == 0 || self->_usbTotal != *(equal + 5))
      {
        goto LABEL_25;
      }
    }

    else if ((*(equal + 28) & 4) != 0)
    {
      goto LABEL_25;
    }

    if (*&self->_has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_durationSinceUSBEventInSeconds != *(equal + 1))
      {
        goto LABEL_25;
      }
    }

    else if (*(equal + 28))
    {
      goto LABEL_25;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 28) & 8) == 0)
      {
        goto LABEL_25;
      }

      v6 = *(equal + 24);
      if (self->_isVendorApple)
      {
        if ((*(equal + 24) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (*(equal + 24))
      {
        goto LABEL_25;
      }
    }

    else if ((*(equal + 28) & 8) != 0)
    {
      goto LABEL_25;
    }

    LOBYTE(v5) = (*(equal + 28) & 0x10) == 0;
    if ((*&self->_has & 0x10) == 0)
    {
      return v5;
    }

    if ((*(equal + 28) & 0x10) != 0)
    {
      if (self->_smartCCADesenseSupported)
      {
        if (*(equal + 25))
        {
          goto LABEL_33;
        }
      }

      else if (!*(equal + 25))
      {
LABEL_33:
        LOBYTE(v5) = 1;
        return v5;
      }
    }

LABEL_25:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_usbAction;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_usbTotal;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
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
  if (*&self->_has)
  {
LABEL_4:
    v4 = 2654435761u * self->_durationSinceUSBEventInSeconds;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_isVendorApple;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_smartCCADesenseSupported;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if ((v3 & 2) != 0)
  {
    self->_usbAction = *(from + 4);
    *&self->_has |= 2u;
    v3 = *(from + 28);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(from + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_usbTotal = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 28);
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  self->_durationSinceUSBEventInSeconds = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 28);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_11:
    self->_smartCCADesenseSupported = *(from + 25);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_10:
  self->_isVendorApple = *(from + 24);
  *&self->_has |= 8u;
  if ((*(from + 28) & 0x10) != 0)
  {
    goto LABEL_11;
  }
}

@end