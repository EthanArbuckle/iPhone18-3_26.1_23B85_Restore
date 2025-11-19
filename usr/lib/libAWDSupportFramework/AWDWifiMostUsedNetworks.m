@interface AWDWifiMostUsedNetworks
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasApOUI:(BOOL)a3;
- (void)setHasNetworkScore:(BOOL)a3;
- (void)setHasNetworkScoreBitMap:(BOOL)a3;
- (void)setHasSecurityType:(BOOL)a3;
- (void)setHasSwitchToCount:(BOOL)a3;
- (void)setHasSwitchedAwayFromCount:(BOOL)a3;
- (void)setHasTimeUsedMinutes:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWifiMostUsedNetworks

- (void)dealloc
{
  [(AWDWifiMostUsedNetworks *)self setApOui:0];
  [(AWDWifiMostUsedNetworks *)self setBundleID:0];
  v3.receiver = self;
  v3.super_class = AWDWifiMostUsedNetworks;
  [(AWDWifiMostUsedNetworks *)&v3 dealloc];
}

- (void)setHasApOUI:(BOOL)a3
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

- (void)setHasSecurityType:(BOOL)a3
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

- (void)setHasTimeUsedMinutes:(BOOL)a3
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

- (void)setHasNetworkScoreBitMap:(BOOL)a3
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

- (void)setHasSwitchedAwayFromCount:(BOOL)a3
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

- (void)setHasSwitchToCount:(BOOL)a3
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

- (void)setHasNetworkScore:(BOOL)a3
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
  v3.super_class = AWDWifiMostUsedNetworks;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWifiMostUsedNetworks description](&v3, sel_description), -[AWDWifiMostUsedNetworks dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_apOUI), @"apOUI"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityType), @"securityType"}];
  if (*&self->_has)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_timeUsed), @"timeUsed"}];
  }

LABEL_5:
  apOui = self->_apOui;
  if (apOui)
  {
    [v3 setObject:apOui forKey:@"ap_oui"];
  }

  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_timeUsedMinutes), @"timeUsedMinutes"}];
  *&v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_networkScoreBitMap), @"networkScoreBitMap"}];
    *&v6 = self->_has;
  }

LABEL_10:
  if ((*&v6 & 0x40) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_switchedAwayFromCount), @"switchedAwayFromCount"}];
    *&v6 = self->_has;
    if ((*&v6 & 0x20) == 0)
    {
LABEL_12:
      if ((*&v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*&v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_switchToCount), @"switchToCount"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_networkScore), @"networkScore"}];
  }

LABEL_14:
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    apOUI = self->_apOUI;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  securityType = self->_securityType;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_4:
    timeUsed = self->_timeUsed;
    PBDataWriterWriteDoubleField();
  }

LABEL_5:
  if (self->_apOui)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  timeUsedMinutes = self->_timeUsedMinutes;
  PBDataWriterWriteUint32Field();
  *&v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
LABEL_9:
    networkScoreBitMap = self->_networkScoreBitMap;
    PBDataWriterWriteUint32Field();
    *&v6 = self->_has;
  }

LABEL_10:
  if ((*&v6 & 0x40) != 0)
  {
    switchedAwayFromCount = self->_switchedAwayFromCount;
    PBDataWriterWriteUint32Field();
    *&v6 = self->_has;
    if ((*&v6 & 0x20) == 0)
    {
LABEL_12:
      if ((*&v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*&v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

  switchToCount = self->_switchToCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    networkScore = self->_networkScore;
    PBDataWriterWriteInt32Field();
  }

LABEL_14:
  if (self->_bundleID)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_apOUI;
    *(a3 + 64) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 12) = self->_securityType;
  *(a3 + 64) |= 0x10u;
  if (*&self->_has)
  {
LABEL_4:
    *(a3 + 1) = *&self->_timeUsed;
    *(a3 + 64) |= 1u;
  }

LABEL_5:
  if (self->_apOui)
  {
    [a3 setApOui:?];
  }

  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(a3 + 15) = self->_timeUsedMinutes;
  *(a3 + 64) |= 0x80u;
  *&v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
LABEL_9:
    *(a3 + 11) = self->_networkScoreBitMap;
    *(a3 + 64) |= 8u;
    *&v6 = self->_has;
  }

LABEL_10:
  if ((*&v6 & 0x40) != 0)
  {
    *(a3 + 14) = self->_switchedAwayFromCount;
    *(a3 + 64) |= 0x40u;
    *&v6 = self->_has;
    if ((*&v6 & 0x20) == 0)
    {
LABEL_12:
      if ((*&v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*&v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

  *(a3 + 13) = self->_switchToCount;
  *(a3 + 64) |= 0x20u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    *(a3 + 10) = self->_networkScore;
    *(a3 + 64) |= 4u;
  }

LABEL_14:
  if (self->_bundleID)
  {

    [a3 setBundleID:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_apOUI;
    *(v5 + 64) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 48) = self->_securityType;
  *(v5 + 64) |= 0x10u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_timeUsed;
    *(v5 + 64) |= 1u;
  }

LABEL_5:

  *(v6 + 24) = [(NSData *)self->_apOui copyWithZone:a3];
  v8 = self->_has;
  if ((*&v8 & 0x80000000) == 0)
  {
    if ((*&v8 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(v6 + 60) = self->_timeUsedMinutes;
  *(v6 + 64) |= 0x80u;
  *&v8 = self->_has;
  if ((*&v8 & 8) != 0)
  {
LABEL_7:
    *(v6 + 44) = self->_networkScoreBitMap;
    *(v6 + 64) |= 8u;
    *&v8 = self->_has;
  }

LABEL_8:
  if ((*&v8 & 0x40) == 0)
  {
    if ((*&v8 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    *(v6 + 52) = self->_switchToCount;
    *(v6 + 64) |= 0x20u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *(v6 + 56) = self->_switchedAwayFromCount;
  *(v6 + 64) |= 0x40u;
  *&v8 = self->_has;
  if ((*&v8 & 0x20) != 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((*&v8 & 4) != 0)
  {
LABEL_11:
    *(v6 + 40) = self->_networkScore;
    *(v6 + 64) |= 4u;
  }

LABEL_12:

  *(v6 + 32) = [(NSString *)self->_bundleID copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 64);
    if ((has & 2) != 0)
    {
      if ((*(a3 + 64) & 2) == 0 || self->_apOUI != *(a3 + 4))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 64) & 2) != 0)
    {
      goto LABEL_47;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 64) & 0x10) == 0 || self->_securityType != *(a3 + 12))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 64) & 0x10) != 0)
    {
      goto LABEL_47;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 64) & 1) == 0 || self->_timeUsed != *(a3 + 1))
      {
        goto LABEL_47;
      }
    }

    else if (*(a3 + 64))
    {
      goto LABEL_47;
    }

    apOui = self->_apOui;
    if (apOui | *(a3 + 3))
    {
      v5 = [(NSData *)apOui isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 64);
    if (has < 0)
    {
      if ((*(a3 + 64) & 0x80) == 0 || self->_timeUsedMinutes != *(a3 + 15))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 64) & 0x80) != 0)
    {
LABEL_47:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 64) & 8) == 0 || self->_networkScoreBitMap != *(a3 + 11))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 64) & 8) != 0)
    {
      goto LABEL_47;
    }

    if ((has & 0x40) != 0)
    {
      if ((*(a3 + 64) & 0x40) == 0 || self->_switchedAwayFromCount != *(a3 + 14))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 64) & 0x40) != 0)
    {
      goto LABEL_47;
    }

    if ((has & 0x20) != 0)
    {
      if ((*(a3 + 64) & 0x20) == 0 || self->_switchToCount != *(a3 + 13))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 64) & 0x20) != 0)
    {
      goto LABEL_47;
    }

    if ((has & 4) != 0)
    {
      if ((*(a3 + 64) & 4) == 0 || self->_networkScore != *(a3 + 10))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 64) & 4) != 0)
    {
      goto LABEL_47;
    }

    bundleID = self->_bundleID;
    if (bundleID | *(a3 + 4))
    {

      LOBYTE(v5) = [(NSString *)bundleID isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v5 = 2654435761 * self->_apOUI;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = 2654435761 * self->_securityType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  timeUsed = self->_timeUsed;
  if (timeUsed < 0.0)
  {
    timeUsed = -timeUsed;
  }

  *v2.i64 = floor(timeUsed + 0.5);
  v8 = (timeUsed - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_11:
  v11 = [(NSData *)self->_apOui hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v12 = 2654435761 * self->_timeUsedMinutes;
    if ((*&self->_has & 8) == 0)
    {
LABEL_13:
      v13 = 0;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = 0;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_13;
    }
  }

  v13 = 2654435761 * self->_networkScoreBitMap;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_14:
    v14 = 2654435761 * self->_switchedAwayFromCount;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v15 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v16 = 0;
    return v6 ^ v5 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v11 ^ [(NSString *)self->_bundleID hash];
  }

LABEL_19:
  v14 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v15 = 2654435761 * self->_switchToCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v16 = 2654435761 * self->_networkScore;
  return v6 ^ v5 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v11 ^ [(NSString *)self->_bundleID hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 64);
  if ((v5 & 2) != 0)
  {
    self->_apOUI = *(a3 + 4);
    *&self->_has |= 2u;
    v5 = *(a3 + 64);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a3 + 64) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_securityType = *(a3 + 12);
  *&self->_has |= 0x10u;
  if (*(a3 + 64))
  {
LABEL_4:
    self->_timeUsed = *(a3 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(a3 + 3))
  {
    [(AWDWifiMostUsedNetworks *)self setApOui:?];
  }

  v6 = *(a3 + 64);
  if ((v6 & 0x80000000) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  self->_timeUsedMinutes = *(a3 + 15);
  *&self->_has |= 0x80u;
  LOBYTE(v6) = *(a3 + 64);
  if ((v6 & 8) != 0)
  {
LABEL_9:
    self->_networkScoreBitMap = *(a3 + 11);
    *&self->_has |= 8u;
    LOBYTE(v6) = *(a3 + 64);
  }

LABEL_10:
  if ((v6 & 0x40) != 0)
  {
    self->_switchedAwayFromCount = *(a3 + 14);
    *&self->_has |= 0x40u;
    LOBYTE(v6) = *(a3 + 64);
    if ((v6 & 0x20) == 0)
    {
LABEL_12:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

  self->_switchToCount = *(a3 + 13);
  *&self->_has |= 0x20u;
  if ((*(a3 + 64) & 4) != 0)
  {
LABEL_13:
    self->_networkScore = *(a3 + 10);
    *&self->_has |= 4u;
  }

LABEL_14:
  if (*(a3 + 4))
  {

    [(AWDWifiMostUsedNetworks *)self setBundleID:?];
  }
}

@end