@interface AWDWifiAssociation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBand:(BOOL)a3;
- (void)setHasChannel:(BOOL)a3;
- (void)setHasDeauthReason:(BOOL)a3;
- (void)setHasError:(BOOL)a3;
- (void)setHasNoise:(BOOL)a3;
- (void)setHasPhymode:(BOOL)a3;
- (void)setHasSignal:(BOOL)a3;
- (void)setHasTxrate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWifiAssociation

- (void)dealloc
{
  [(AWDWifiAssociation *)self setBssidOui:0];
  [(AWDWifiAssociation *)self setSecurity:0];
  [(AWDWifiAssociation *)self setDeauthSourceOui:0];
  [(AWDWifiAssociation *)self setCountryCode:0];
  [(AWDWifiAssociation *)self setPrivateMacType:0];
  v3.receiver = self;
  v3.super_class = AWDWifiAssociation;
  [(AWDWifiAssociation *)&v3 dealloc];
}

- (void)setHasError:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasChannel:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasSignal:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasDeauthReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNoise:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTxrate:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasPhymode:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasBand:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWifiAssociation;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWifiAssociation description](&v3, sel_description), -[AWDWifiAssociation dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_error), @"error"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_29:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_channel), @"channel"}];
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_5:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_signal), @"signal"}];
  }

LABEL_6:
  bssidOui = self->_bssidOui;
  if (bssidOui)
  {
    [v3 setObject:bssidOui forKey:@"bssid_oui"];
  }

  security = self->_security;
  if (security)
  {
    [v3 setObject:security forKey:@"security"];
  }

  if ((*&self->_has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_deauthReason), @"deauth_reason"}];
  }

  deauthSourceOui = self->_deauthSourceOui;
  if (deauthSourceOui)
  {
    [v3 setObject:deauthSourceOui forKey:@"deauth_source_oui"];
  }

  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_noise), @"noise"}];
    v8 = self->_has;
  }

  if ((v8 & 0x100) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_txrate), @"txrate"}];
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v3 setObject:countryCode forKey:@"country_code"];
  }

  v10 = self->_has;
  if ((v10 & 0x40) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_phymode), @"phymode"}];
    v10 = self->_has;
  }

  if ((v10 & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_band), @"band"}];
  }

  privateMacType = self->_privateMacType;
  if (privateMacType)
  {
    [v3 setObject:privateMacType forKey:@"privateMacType"];
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  error = self->_error;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_30:
  channel = self->_channel;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_5:
    signal = self->_signal;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  if (self->_bssidOui)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_security)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    deauthReason = self->_deauthReason;
    PBDataWriterWriteInt32Field();
  }

  if (self->_deauthSourceOui)
  {
    PBDataWriterWriteDataField();
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    noise = self->_noise;
    PBDataWriterWriteInt32Field();
    v7 = self->_has;
  }

  if ((v7 & 0x100) != 0)
  {
    txrate = self->_txrate;
    PBDataWriterWriteInt32Field();
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((v10 & 0x40) != 0)
  {
    phymode = self->_phymode;
    PBDataWriterWriteUint32Field();
    v10 = self->_has;
  }

  if ((v10 & 2) != 0)
  {
    band = self->_band;
    PBDataWriterWriteInt32Field();
  }

  if (self->_privateMacType)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 52) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 16) = self->_error;
  *(a3 + 52) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_30:
  *(a3 + 8) = self->_channel;
  *(a3 + 52) |= 4u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_5:
    *(a3 + 24) = self->_signal;
    *(a3 + 52) |= 0x80u;
  }

LABEL_6:
  if (self->_bssidOui)
  {
    [a3 setBssidOui:?];
  }

  if (self->_security)
  {
    [a3 setSecurity:?];
  }

  if ((*&self->_has & 8) != 0)
  {
    *(a3 + 12) = self->_deauthReason;
    *(a3 + 52) |= 8u;
  }

  if (self->_deauthSourceOui)
  {
    [a3 setDeauthSourceOui:?];
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    *(a3 + 17) = self->_noise;
    *(a3 + 52) |= 0x20u;
    v6 = self->_has;
  }

  if ((v6 & 0x100) != 0)
  {
    *(a3 + 25) = self->_txrate;
    *(a3 + 52) |= 0x100u;
  }

  if (self->_countryCode)
  {
    [a3 setCountryCode:?];
  }

  v7 = self->_has;
  if ((v7 & 0x40) != 0)
  {
    *(a3 + 18) = self->_phymode;
    *(a3 + 52) |= 0x40u;
    v7 = self->_has;
  }

  if ((v7 & 2) != 0)
  {
    *(a3 + 4) = self->_band;
    *(a3 + 52) |= 2u;
  }

  if (self->_privateMacType)
  {

    [a3 setPrivateMacType:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 104) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 64) = self->_error;
  *(v5 + 104) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  *(v5 + 32) = self->_channel;
  *(v5 + 104) |= 4u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_5:
    *(v5 + 96) = self->_signal;
    *(v5 + 104) |= 0x80u;
  }

LABEL_6:

  *(v6 + 24) = [(NSData *)self->_bssidOui copyWithZone:a3];
  *(v6 + 88) = [(NSString *)self->_security copyWithZone:a3];
  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 48) = self->_deauthReason;
    *(v6 + 104) |= 8u;
  }

  *(v6 + 56) = [(NSData *)self->_deauthSourceOui copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    *(v6 + 68) = self->_noise;
    *(v6 + 104) |= 0x20u;
    v8 = self->_has;
  }

  if ((v8 & 0x100) != 0)
  {
    *(v6 + 100) = self->_txrate;
    *(v6 + 104) |= 0x100u;
  }

  *(v6 + 40) = [(NSString *)self->_countryCode copyWithZone:a3];
  v9 = self->_has;
  if ((v9 & 0x40) != 0)
  {
    *(v6 + 72) = self->_phymode;
    *(v6 + 104) |= 0x40u;
    v9 = self->_has;
  }

  if ((v9 & 2) != 0)
  {
    *(v6 + 16) = self->_band;
    *(v6 + 104) |= 2u;
  }

  *(v6 + 80) = [(NSString *)self->_privateMacType copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 52);
    if (has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_59;
      }
    }

    else if (v7)
    {
LABEL_59:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_error != *(a3 + 16))
      {
        goto LABEL_59;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_59;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_channel != *(a3 + 8))
      {
        goto LABEL_59;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_59;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_signal != *(a3 + 24))
      {
        goto LABEL_59;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_59;
    }

    bssidOui = self->_bssidOui;
    if (!(bssidOui | *(a3 + 3)) || (v5 = [(NSData *)bssidOui isEqual:?]) != 0)
    {
      security = self->_security;
      if (!(security | *(a3 + 11)) || (v5 = [(NSString *)security isEqual:?]) != 0)
      {
        v10 = self->_has;
        v11 = *(a3 + 52);
        if ((v10 & 8) != 0)
        {
          if ((v11 & 8) == 0 || self->_deauthReason != *(a3 + 12))
          {
            goto LABEL_59;
          }
        }

        else if ((v11 & 8) != 0)
        {
          goto LABEL_59;
        }

        deauthSourceOui = self->_deauthSourceOui;
        if (deauthSourceOui | *(a3 + 7))
        {
          v5 = [(NSData *)deauthSourceOui isEqual:?];
          if (!v5)
          {
            return v5;
          }

          v10 = self->_has;
        }

        v13 = *(a3 + 52);
        if ((v10 & 0x20) != 0)
        {
          if ((v13 & 0x20) == 0 || self->_noise != *(a3 + 17))
          {
            goto LABEL_59;
          }
        }

        else if ((v13 & 0x20) != 0)
        {
          goto LABEL_59;
        }

        if ((v10 & 0x100) != 0)
        {
          if ((*(a3 + 52) & 0x100) == 0 || self->_txrate != *(a3 + 25))
          {
            goto LABEL_59;
          }
        }

        else if ((*(a3 + 52) & 0x100) != 0)
        {
          goto LABEL_59;
        }

        countryCode = self->_countryCode;
        if (countryCode | *(a3 + 5))
        {
          v5 = [(NSString *)countryCode isEqual:?];
          if (!v5)
          {
            return v5;
          }

          v10 = self->_has;
        }

        v15 = *(a3 + 52);
        if ((v10 & 0x40) != 0)
        {
          if ((v15 & 0x40) == 0 || self->_phymode != *(a3 + 18))
          {
            goto LABEL_59;
          }
        }

        else if ((v15 & 0x40) != 0)
        {
          goto LABEL_59;
        }

        if ((v10 & 2) != 0)
        {
          if ((v15 & 2) == 0 || self->_band != *(a3 + 4))
          {
            goto LABEL_59;
          }
        }

        else if ((v15 & 2) != 0)
        {
          goto LABEL_59;
        }

        privateMacType = self->_privateMacType;
        if (privateMacType | *(a3 + 10))
        {

          LOBYTE(v5) = [(NSString *)privateMacType isEqual:?];
        }

        else
        {
          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v18 = 2654435761u * self->_timestamp;
    if ((has & 0x10) != 0)
    {
LABEL_3:
      v17 = 2654435761 * self->_error;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v16 = 0;
      if ((has & 0x80) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v16 = 2654435761 * self->_channel;
  if ((has & 0x80) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_signal;
    goto LABEL_10;
  }

LABEL_9:
  v4 = 0;
LABEL_10:
  v5 = [(NSData *)self->_bssidOui hash];
  v6 = [(NSString *)self->_security hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761 * self->_deauthReason;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSData *)self->_deauthSourceOui hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v9 = 2654435761 * self->_noise;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_15:
      v10 = 2654435761 * self->_txrate;
      goto LABEL_18;
    }
  }

  v10 = 0;
LABEL_18:
  v11 = [(NSString *)self->_countryCode hash];
  v12 = self->_has;
  if ((v12 & 0x40) != 0)
  {
    v13 = 2654435761 * self->_phymode;
    if ((v12 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_22:
    v14 = 0;
    return v17 ^ v18 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ [(NSString *)self->_privateMacType hash];
  }

  v13 = 0;
  if ((v12 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v14 = 2654435761 * self->_band;
  return v17 ^ v18 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ [(NSString *)self->_privateMacType hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 52);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 52);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_error = *(a3 + 16);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_30:
  self->_channel = *(a3 + 8);
  *&self->_has |= 4u;
  if ((*(a3 + 52) & 0x80) != 0)
  {
LABEL_5:
    self->_signal = *(a3 + 24);
    *&self->_has |= 0x80u;
  }

LABEL_6:
  if (*(a3 + 3))
  {
    [(AWDWifiAssociation *)self setBssidOui:?];
  }

  if (*(a3 + 11))
  {
    [(AWDWifiAssociation *)self setSecurity:?];
  }

  if ((*(a3 + 52) & 8) != 0)
  {
    self->_deauthReason = *(a3 + 12);
    *&self->_has |= 8u;
  }

  if (*(a3 + 7))
  {
    [(AWDWifiAssociation *)self setDeauthSourceOui:?];
  }

  v6 = *(a3 + 52);
  if ((v6 & 0x20) != 0)
  {
    self->_noise = *(a3 + 17);
    *&self->_has |= 0x20u;
    v6 = *(a3 + 52);
  }

  if ((v6 & 0x100) != 0)
  {
    self->_txrate = *(a3 + 25);
    *&self->_has |= 0x100u;
  }

  if (*(a3 + 5))
  {
    [(AWDWifiAssociation *)self setCountryCode:?];
  }

  v7 = *(a3 + 52);
  if ((v7 & 0x40) != 0)
  {
    self->_phymode = *(a3 + 18);
    *&self->_has |= 0x40u;
    v7 = *(a3 + 52);
  }

  if ((v7 & 2) != 0)
  {
    self->_band = *(a3 + 4);
    *&self->_has |= 2u;
  }

  if (*(a3 + 10))
  {

    [(AWDWifiAssociation *)self setPrivateMacType:?];
  }
}

@end