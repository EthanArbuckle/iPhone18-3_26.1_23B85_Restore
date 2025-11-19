@interface AWDRATConnectedPower
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRAT:(id)a3;
- (int)rAT;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPowerConnectedMicroWatt:(BOOL)a3;
- (void)setHasRAT:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDRATConnectedPower

- (int)rAT
{
  if ((*&self->_has & 4) != 0)
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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

- (void)setHasPowerConnectedMicroWatt:(BOOL)a3
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
  v3.super_class = AWDRATConnectedPower;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDRATConnectedPower description](&v3, sel_description), -[AWDRATConnectedPower dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    rAT = self->_rAT;
    if (rAT >= 8)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_rAT];
    }

    else
    {
      v6 = off_29EE32BC8[rAT];
    }

    [v3 setObject:v6 forKey:@"RAT"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_powerConnectedMicroWatt), @"powerConnectedMicroWatt"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_powerConnSetupMicroWatt), @"powerConnSetupMicroWatt"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    powerConnectedMicroWatt = self->_powerConnectedMicroWatt;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  rAT = self->_rAT;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_7:
  powerConnSetupMicroWatt = self->_powerConnSetupMicroWatt;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 4) = self->_rAT;
    *(a3 + 20) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return;
      }

LABEL_7:
      *(a3 + 2) = self->_powerConnSetupMicroWatt;
      *(a3 + 20) |= 1u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 3) = self->_powerConnectedMicroWatt;
  *(a3 + 20) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = self->_rAT;
    *(result + 20) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  *(result + 3) = self->_powerConnectedMicroWatt;
  *(result + 20) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 2) = self->_powerConnSetupMicroWatt;
  *(result + 20) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 20) & 4) == 0 || self->_rAT != *(a3 + 4))
      {
        goto LABEL_16;
      }
    }

    else if ((*(a3 + 20) & 4) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 20) & 2) == 0 || self->_powerConnectedMicroWatt != *(a3 + 3))
      {
        goto LABEL_16;
      }
    }

    else if ((*(a3 + 20) & 2) != 0)
    {
      goto LABEL_16;
    }

    LOBYTE(v5) = (*(a3 + 20) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 20) & 1) == 0 || self->_powerConnSetupMicroWatt != *(a3 + 2))
      {
        goto LABEL_16;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_rAT;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_powerConnectedMicroWatt;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_powerConnSetupMicroWatt;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 20);
  if ((v3 & 4) != 0)
  {
    self->_rAT = *(a3 + 4);
    *&self->_has |= 4u;
    v3 = *(a3 + 20);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        return;
      }

LABEL_7:
      self->_powerConnSetupMicroWatt = *(a3 + 2);
      *&self->_has |= 1u;
      return;
    }
  }

  else if ((*(a3 + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_powerConnectedMicroWatt = *(a3 + 3);
  *&self->_has |= 2u;
  if (*(a3 + 20))
  {
    goto LABEL_7;
  }
}

@end