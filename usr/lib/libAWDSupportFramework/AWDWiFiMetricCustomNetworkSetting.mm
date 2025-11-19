@interface AWDWiFiMetricCustomNetworkSetting
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAutoProxySetCount:(BOOL)a3;
- (void)setHasBootpSetCount:(BOOL)a3;
- (void)setHasCustomNetworkCount:(BOOL)a3;
- (void)setHasDhcpSetCount:(BOOL)a3;
- (void)setHasManualProxySetCount:(BOOL)a3;
- (void)setHasStaticSetCount:(BOOL)a3;
- (void)setHasTotalNetworkCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricCustomNetworkSetting

- (void)setHasCustomNetworkCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTotalNetworkCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasDhcpSetCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasBootpSetCount:(BOOL)a3
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

- (void)setHasStaticSetCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasManualProxySetCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasAutoProxySetCount:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricCustomNetworkSetting;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricCustomNetworkSetting description](&v3, sel_description), -[AWDWiFiMetricCustomNetworkSetting dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_customNetworkCount), @"customNetworkCount"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalNetworkCount), @"totalNetworkCount"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dhcpSetCount), @"dhcpSetCount"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bootpSetCount), @"bootpSetCount"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_manualProxySetCount), @"manualProxySetCount"}];
    if ((*&self->_has & 2) == 0)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_staticSetCount), @"staticSetCount"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 2) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_autoProxySetCount), @"autoProxySetCount"}];
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
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  customNetworkCount = self->_customNetworkCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  totalNetworkCount = self->_totalNetworkCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  dhcpSetCount = self->_dhcpSetCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  bootpSetCount = self->_bootpSetCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    manualProxySetCount = self->_manualProxySetCount;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  staticSetCount = self->_staticSetCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_17:
  autoProxySetCount = self->_autoProxySetCount;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 44) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 6) = self->_customNetworkCount;
  *(a3 + 44) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a3 + 10) = self->_totalNetworkCount;
  *(a3 + 44) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a3 + 7) = self->_dhcpSetCount;
  *(a3 + 44) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 5) = self->_bootpSetCount;
  *(a3 + 44) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 9) = self->_staticSetCount;
  *(a3 + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_17:
    *(a3 + 4) = self->_autoProxySetCount;
    *(a3 + 44) |= 2u;
    return;
  }

LABEL_16:
  *(a3 + 8) = self->_manualProxySetCount;
  *(a3 + 44) |= 0x20u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_17;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 44) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_customNetworkCount;
  *(result + 44) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 10) = self->_totalNetworkCount;
  *(result + 44) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 7) = self->_dhcpSetCount;
  *(result + 44) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 5) = self->_bootpSetCount;
  *(result + 44) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 9) = self->_staticSetCount;
  *(result + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 8) = self->_manualProxySetCount;
  *(result + 44) |= 0x20u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 4) = self->_autoProxySetCount;
  *(result + 44) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 44) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_41;
      }
    }

    else if (*(a3 + 44))
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 44) & 8) == 0 || self->_customNetworkCount != *(a3 + 6))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 44) & 8) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x80) != 0)
    {
      if ((*(a3 + 44) & 0x80) == 0 || self->_totalNetworkCount != *(a3 + 10))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 44) & 0x80) != 0)
    {
LABEL_41:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 44) & 0x10) == 0 || self->_dhcpSetCount != *(a3 + 7))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 44) & 0x10) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 44) & 4) == 0 || self->_bootpSetCount != *(a3 + 5))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 44) & 4) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(a3 + 44) & 0x40) == 0 || self->_staticSetCount != *(a3 + 9))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 44) & 0x40) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 44) & 0x20) == 0 || self->_manualProxySetCount != *(a3 + 8))
      {
        goto LABEL_41;
      }
    }

    else if ((*(a3 + 44) & 0x20) != 0)
    {
      goto LABEL_41;
    }

    LOBYTE(v5) = (*(a3 + 44) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 44) & 2) == 0 || self->_autoProxySetCount != *(a3 + 4))
      {
        goto LABEL_41;
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
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_customNetworkCount;
      if ((*&self->_has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_totalNetworkCount;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_dhcpSetCount;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_bootpSetCount;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_staticSetCount;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_manualProxySetCount;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_autoProxySetCount;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 44);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 44);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a3 + 44) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_customNetworkCount = *(a3 + 6);
  *&self->_has |= 8u;
  v3 = *(a3 + 44);
  if ((v3 & 0x80) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_totalNetworkCount = *(a3 + 10);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 44);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_dhcpSetCount = *(a3 + 7);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 44);
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_bootpSetCount = *(a3 + 5);
  *&self->_has |= 4u;
  v3 = *(a3 + 44);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_staticSetCount = *(a3 + 9);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 44);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_17:
    self->_autoProxySetCount = *(a3 + 4);
    *&self->_has |= 2u;
    return;
  }

LABEL_16:
  self->_manualProxySetCount = *(a3 + 8);
  *&self->_has |= 0x20u;
  if ((*(a3 + 44) & 2) != 0)
  {
    goto LABEL_17;
  }
}

@end