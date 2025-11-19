@interface AWDAppRRCConnectionStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRAT:(id)a3;
- (int)rAT;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBundleFGDuration:(BOOL)a3;
- (void)setHasNumMOConnectionTriggered:(BOOL)a3;
- (void)setHasNumMTConnectionTriggered:(BOOL)a3;
- (void)setHasRAT:(BOOL)a3;
- (void)setHasTotalBytesTransferred:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDAppRRCConnectionStats

- (void)dealloc
{
  [(AWDAppRRCConnectionStats *)self setBundleName:0];
  v3.receiver = self;
  v3.super_class = AWDAppRRCConnectionStats;
  [(AWDAppRRCConnectionStats *)&v3 dealloc];
}

- (int)rAT
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_rAT;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRAT:(BOOL)a3
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

- (int)StringAsRAT:(id)a3
{
  if ([a3 isEqualToString:@"RAT_TYPE_UNKNOWN"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"RAT_TYPE_UMTS"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"RAT_TYPE_GSM"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"RAT_TYPE_WCDMA"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"RAT_TYPE_1xEVDO"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"RAT_TYPE_LTE"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"RAT_TYPE_TDSCDMA"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"RAT_TYPE_TDLTE"])
  {
    return 7;
  }

  return 0;
}

- (void)setHasBundleFGDuration:(BOOL)a3
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

- (void)setHasNumMOConnectionTriggered:(BOOL)a3
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

- (void)setHasNumMTConnectionTriggered:(BOOL)a3
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

- (void)setHasTotalBytesTransferred:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDAppRRCConnectionStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDAppRRCConnectionStats description](&v3, sel_description), -[AWDAppRRCConnectionStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    rAT = self->_rAT;
    if (rAT >= 8)
    {
      v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_rAT];
    }

    else
    {
      v5 = off_29EE32B68[rAT];
    }

    [v3 setObject:v5 forKey:@"RAT"];
  }

  bundleName = self->_bundleName;
  if (bundleName)
  {
    [v3 setObject:bundleName forKey:@"bundleName"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bundleFGDuration), @"bundleFGDuration"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_10:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bundleBGDuration), @"bundleBGDuration"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numMTConnectionTriggered), @"numMTConnectionTriggered"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return v3;
    }

    goto LABEL_13;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numMOConnectionTriggered), @"numMOConnectionTriggered"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((has & 0x20) != 0)
  {
LABEL_13:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalBytesTransferred), @"totalBytesTransferred"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 0x10) != 0)
  {
    rAT = self->_rAT;
    PBDataWriterWriteInt32Field();
  }

  if (self->_bundleName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    bundleFGDuration = self->_bundleFGDuration;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  bundleBGDuration = self->_bundleBGDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    numMTConnectionTriggered = self->_numMTConnectionTriggered;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  numMOConnectionTriggered = self->_numMOConnectionTriggered;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_15:
  totalBytesTransferred = self->_totalBytesTransferred;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 0x10) != 0)
  {
    *(a3 + 8) = self->_rAT;
    *(a3 + 40) |= 0x10u;
  }

  if (self->_bundleName)
  {
    [a3 setBundleName:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 3) = self->_bundleFGDuration;
    *(a3 + 40) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 2) = self->_bundleBGDuration;
  *(a3 + 40) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 6) = self->_numMOConnectionTriggered;
  *(a3 + 40) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_15:
  *(a3 + 7) = self->_numMTConnectionTriggered;
  *(a3 + 40) |= 8u;
  if ((*&self->_has & 0x20) == 0)
  {
    return;
  }

LABEL_10:
  *(a3 + 9) = self->_totalBytesTransferred;
  *(a3 + 40) |= 0x20u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 32) = self->_rAT;
    *(v5 + 40) |= 0x10u;
  }

  *(v6 + 16) = [(NSString *)self->_bundleName copyWithZone:a3];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 12) = self->_bundleFGDuration;
    *(v6 + 40) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 8) = self->_bundleBGDuration;
  *(v6 + 40) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    *(v6 + 28) = self->_numMTConnectionTriggered;
    *(v6 + 40) |= 8u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(v6 + 24) = self->_numMOConnectionTriggered;
  *(v6 + 40) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 0x20) != 0)
  {
LABEL_8:
    *(v6 + 36) = self->_totalBytesTransferred;
    *(v6 + 40) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 40);
    if ((has & 0x10) != 0)
    {
      if ((*(a3 + 40) & 0x10) == 0 || self->_rAT != *(a3 + 8))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 40) & 0x10) != 0)
    {
LABEL_34:
      LOBYTE(v5) = 0;
      return v5;
    }

    bundleName = self->_bundleName;
    if (bundleName | *(a3 + 2))
    {
      v5 = [(NSString *)bundleName isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_bundleFGDuration != *(a3 + 3))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 40) & 2) != 0)
    {
      goto LABEL_34;
    }

    if (has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_bundleBGDuration != *(a3 + 2))
      {
        goto LABEL_34;
      }
    }

    else if (*(a3 + 40))
    {
      goto LABEL_34;
    }

    if ((has & 4) != 0)
    {
      if ((*(a3 + 40) & 4) == 0 || self->_numMOConnectionTriggered != *(a3 + 6))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 40) & 4) != 0)
    {
      goto LABEL_34;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 40) & 8) == 0 || self->_numMTConnectionTriggered != *(a3 + 7))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 40) & 8) != 0)
    {
      goto LABEL_34;
    }

    LOBYTE(v5) = (*(a3 + 40) & 0x20) == 0;
    if ((has & 0x20) != 0)
    {
      if ((*(a3 + 40) & 0x20) == 0 || self->_totalBytesTransferred != *(a3 + 9))
      {
        goto LABEL_34;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_rAT;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_bundleName hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_bundleFGDuration;
    if (*&self->_has)
    {
LABEL_6:
      v6 = 2654435761 * self->_bundleBGDuration;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_numMOConnectionTriggered;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = 2654435761 * self->_numMTConnectionTriggered;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = 2654435761 * self->_totalBytesTransferred;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 40) & 0x10) != 0)
  {
    self->_rAT = *(a3 + 8);
    *&self->_has |= 0x10u;
  }

  if (*(a3 + 2))
  {
    [(AWDAppRRCConnectionStats *)self setBundleName:?];
  }

  v5 = *(a3 + 40);
  if ((v5 & 2) != 0)
  {
    self->_bundleFGDuration = *(a3 + 3);
    *&self->_has |= 2u;
    v5 = *(a3 + 40);
    if ((v5 & 1) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a3 + 40) & 1) == 0)
  {
    goto LABEL_7;
  }

  self->_bundleBGDuration = *(a3 + 2);
  *&self->_has |= 1u;
  v5 = *(a3 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_numMOConnectionTriggered = *(a3 + 6);
  *&self->_has |= 4u;
  v5 = *(a3 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_15:
  self->_numMTConnectionTriggered = *(a3 + 7);
  *&self->_has |= 8u;
  if ((*(a3 + 40) & 0x20) == 0)
  {
    return;
  }

LABEL_10:
  self->_totalBytesTransferred = *(a3 + 9);
  *&self->_has |= 0x20u;
}

@end