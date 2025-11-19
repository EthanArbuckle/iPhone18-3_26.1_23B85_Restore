@interface AWDWiFiMetricsManagerRCU1CoexModeChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasChannelNum:(BOOL)a3;
- (void)setHasDisableDuration:(BOOL)a3;
- (void)setHasFwDenyCount:(BOOL)a3;
- (void)setHasOffAirplayMode:(BOOL)a3;
- (void)setHasOffWifiMode:(BOOL)a3;
- (void)setHasOnAirplayMode:(BOOL)a3;
- (void)setHasOnWifiMode:(BOOL)a3;
- (void)setHasPowerOnDuration:(BOOL)a3;
- (void)setHasTddDuration:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerRCU1CoexModeChange

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasChannelNum:(BOOL)a3
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

- (void)setHasOnWifiMode:(BOOL)a3
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

- (void)setHasOffWifiMode:(BOOL)a3
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

- (void)setHasOnAirplayMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasOffAirplayMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasPowerOnDuration:(BOOL)a3
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

- (void)setHasDisableDuration:(BOOL)a3
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

- (void)setHasTddDuration:(BOOL)a3
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

- (void)setHasFwDenyCount:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerRCU1CoexModeChange;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerRCU1CoexModeChange description](&v3, sel_description), -[AWDWiFiMetricsManagerRCU1CoexModeChange dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelNum), @"channel_num"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_onWifiMode), @"on_wifi_mode"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_offWifiMode), @"off_wifi_mode"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_onAirplayMode), @"on_airplay_mode"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_offAirplayMode), @"off_airplay_mode"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerOnDuration), @"power_on_duration"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_disableDuration), @"disable_duration"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tddDuration), @"tdd_duration"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return v3;
    }

    goto LABEL_12;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_denyDuration), @"deny_duration"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((has & 0x40) != 0)
  {
LABEL_12:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_fwDenyCount), @"fw_deny_count"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  channelNum = self->_channelNum;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  onWifiMode = self->_onWifiMode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  offWifiMode = self->_offWifiMode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  onAirplayMode = self->_onAirplayMode;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  offAirplayMode = self->_offAirplayMode;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  powerOnDuration = self->_powerOnDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  disableDuration = self->_disableDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    tddDuration = self->_tddDuration;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  denyDuration = self->_denyDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((has & 0x40) == 0)
  {
    return;
  }

LABEL_23:
  fwDenyCount = self->_fwDenyCount;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(a3 + 5) = self->_timestamp;
    *(a3 + 34) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 12) = self->_channelNum;
  *(a3 + 34) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 15) = self->_onWifiMode;
  *(a3 + 34) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 14) = self->_offWifiMode;
  *(a3 + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 65) = self->_onAirplayMode;
  *(a3 + 34) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 64) = self->_offAirplayMode;
  *(a3 + 34) |= 0x200u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 3) = self->_powerOnDuration;
  *(a3 + 34) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 2) = self->_disableDuration;
  *(a3 + 34) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 1) = self->_denyDuration;
  *(a3 + 34) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      return;
    }

LABEL_23:
    *(a3 + 13) = self->_fwDenyCount;
    *(a3 + 34) |= 0x40u;
    return;
  }

LABEL_22:
  *(a3 + 4) = self->_tddDuration;
  *(a3 + 34) |= 8u;
  if ((*&self->_has & 0x40) != 0)
  {
    goto LABEL_23;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 5) = self->_timestamp;
    *(result + 34) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 12) = self->_channelNum;
  *(result + 34) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 15) = self->_onWifiMode;
  *(result + 34) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 14) = self->_offWifiMode;
  *(result + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 65) = self->_onAirplayMode;
  *(result + 34) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 64) = self->_offAirplayMode;
  *(result + 34) |= 0x200u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 3) = self->_powerOnDuration;
  *(result + 34) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 2) = self->_disableDuration;
  *(result + 34) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 1) = self->_denyDuration;
  *(result + 34) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(result + 4) = self->_tddDuration;
  *(result + 34) |= 8u;
  if ((*&self->_has & 0x40) == 0)
  {
    return result;
  }

LABEL_12:
  *(result + 13) = self->_fwDenyCount;
  *(result + 34) |= 0x40u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 34);
  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_timestamp != *(a3 + 5))
    {
      goto LABEL_62;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_channelNum != *(a3 + 12))
    {
      goto LABEL_62;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(a3 + 34) & 0x100) == 0 || self->_onWifiMode != *(a3 + 15))
    {
      goto LABEL_62;
    }
  }

  else if ((*(a3 + 34) & 0x100) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_offWifiMode != *(a3 + 14))
    {
      goto LABEL_62;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(a3 + 34) & 0x400) == 0)
    {
      goto LABEL_62;
    }

    v8 = *(a3 + 65);
    if (self->_onAirplayMode)
    {
      if ((*(a3 + 65) & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (*(a3 + 65))
    {
      goto LABEL_62;
    }
  }

  else if ((*(a3 + 34) & 0x400) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(a3 + 34) & 0x200) != 0)
    {
      v9 = *(a3 + 64);
      if (self->_offAirplayMode)
      {
        if ((*(a3 + 64) & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      else if (*(a3 + 64))
      {
        goto LABEL_62;
      }

      goto LABEL_26;
    }

LABEL_62:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 34) & 0x200) != 0)
  {
    goto LABEL_62;
  }

LABEL_26:
  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_powerOnDuration != *(a3 + 3))
    {
      goto LABEL_62;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_disableDuration != *(a3 + 2))
    {
      goto LABEL_62;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_62;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_denyDuration != *(a3 + 1))
    {
      goto LABEL_62;
    }
  }

  else if (v7)
  {
    goto LABEL_62;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_tddDuration != *(a3 + 4))
    {
      goto LABEL_62;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_62;
  }

  LOBYTE(v5) = (v7 & 0x40) == 0;
  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_fwDenyCount != *(a3 + 13))
    {
      goto LABEL_62;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_channelNum;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_onWifiMode;
    if ((has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_offWifiMode;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_onAirplayMode;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_offAirplayMode;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_powerOnDuration;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((has & 2) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_disableDuration;
    if (has)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if (has)
  {
LABEL_10:
    v11 = 2654435761u * self->_denyDuration;
    if ((has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v12 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_21:
  v11 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = 2654435761u * self->_tddDuration;
  if ((has & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v13 = 2654435761 * self->_fwDenyCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 34);
  if ((v3 & 0x10) != 0)
  {
    self->_timestamp = *(a3 + 5);
    *&self->_has |= 0x10u;
    v3 = *(a3 + 34);
    if ((v3 & 0x20) == 0)
    {
LABEL_3:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_channelNum = *(a3 + 12);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 34);
  if ((v3 & 0x100) == 0)
  {
LABEL_4:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_onWifiMode = *(a3 + 15);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 34);
  if ((v3 & 0x80) == 0)
  {
LABEL_5:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_offWifiMode = *(a3 + 14);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 34);
  if ((v3 & 0x400) == 0)
  {
LABEL_6:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_onAirplayMode = *(a3 + 65);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 34);
  if ((v3 & 0x200) == 0)
  {
LABEL_7:
    if ((v3 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_offAirplayMode = *(a3 + 64);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 34);
  if ((v3 & 4) == 0)
  {
LABEL_8:
    if ((v3 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_powerOnDuration = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 34);
  if ((v3 & 2) == 0)
  {
LABEL_9:
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_disableDuration = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 34);
  if ((v3 & 1) == 0)
  {
LABEL_10:
    if ((v3 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_denyDuration = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 34);
  if ((v3 & 8) == 0)
  {
LABEL_11:
    if ((v3 & 0x40) == 0)
    {
      return;
    }

LABEL_23:
    self->_fwDenyCount = *(a3 + 13);
    *&self->_has |= 0x40u;
    return;
  }

LABEL_22:
  self->_tddDuration = *(a3 + 4);
  *&self->_has |= 8u;
  if ((*(a3 + 34) & 0x40) != 0)
  {
    goto LABEL_23;
  }
}

@end