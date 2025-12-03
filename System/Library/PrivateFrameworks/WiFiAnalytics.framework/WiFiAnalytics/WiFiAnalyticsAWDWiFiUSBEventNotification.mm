@interface WiFiAnalyticsAWDWiFiUSBEventNotification
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

@implementation WiFiAnalyticsAWDWiFiUSBEventNotification

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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiUSBEventNotification;
  v4 = [(WiFiAnalyticsAWDWiFiUSBEventNotification *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiUSBEventNotification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_usbAction];
    [dictionary setObject:v7 forKey:@"usbAction"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_usbTotal];
  [dictionary setObject:v8 forKey:@"usbTotal"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_durationSinceUSBEventInSeconds];
  [dictionary setObject:v9 forKey:@"durationSinceUSBEventInSeconds"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isVendorApple];
  [dictionary setObject:v10 forKey:@"isVendorApple"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_smartCCADesenseSupported];
    [dictionary setObject:v5 forKey:@"smartCCADesenseSupported"];
  }

LABEL_7:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

      goto LABEL_12;
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

    goto LABEL_13;
  }

LABEL_12:
  durationSinceUSBEventInSeconds = self->_durationSinceUSBEventInSeconds;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  isVendorApple = self->_isVendorApple;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    smartCCADesenseSupported = self->_smartCCADesenseSupported;
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[4] = self->_usbAction;
    *(toCopy + 28) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[5] = self->_usbTotal;
  *(toCopy + 28) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(toCopy + 1) = self->_durationSinceUSBEventInSeconds;
  *(toCopy + 28) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  *(toCopy + 24) = self->_isVendorApple;
  *(toCopy + 28) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(toCopy + 25) = self->_smartCCADesenseSupported;
    *(toCopy + 28) |= 0x10u;
  }

LABEL_7:
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
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_usbAction != *(equalCopy + 4))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_usbTotal != *(equalCopy + 5))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_durationSinceUSBEventInSeconds != *(equalCopy + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 28) & 8) == 0)
    {
      goto LABEL_25;
    }

    v7 = *(equalCopy + 24);
    if (self->_isVendorApple)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 28) & 8) != 0)
  {
    goto LABEL_25;
  }

  v5 = (*(equalCopy + 28) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 28) & 0x10) != 0)
    {
      if (self->_smartCCADesenseSupported)
      {
        if (*(equalCopy + 25))
        {
          goto LABEL_33;
        }
      }

      else if (!*(equalCopy + 25))
      {
LABEL_33:
        v5 = 1;
        goto LABEL_26;
      }
    }

LABEL_25:
    v5 = 0;
  }

LABEL_26:

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
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_usbAction = *(fromCopy + 4);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_usbTotal = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_durationSinceUSBEventInSeconds = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 28);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_isVendorApple = *(fromCopy + 24);
  *&self->_has |= 8u;
  if ((*(fromCopy + 28) & 0x10) != 0)
  {
LABEL_6:
    self->_smartCCADesenseSupported = *(fromCopy + 25);
    *&self->_has |= 0x10u;
  }

LABEL_7:
}

@end