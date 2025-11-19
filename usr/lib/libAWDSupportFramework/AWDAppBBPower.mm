@interface AWDAppBBPower
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
- (void)setHasRAT:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDAppBBPower

- (void)dealloc
{
  [(AWDAppBBPower *)self setBundleName:0];
  v3.receiver = self;
  v3.super_class = AWDAppBBPower;
  [(AWDAppBBPower *)&v3 dealloc];
}

- (int)rAT
{
  if ((*&self->_has & 2) != 0)
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDAppBBPower;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDAppBBPower description](&v3, sel_description), -[AWDAppBBPower dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    rAT = self->_rAT;
    if (rAT >= 8)
    {
      v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_rAT];
    }

    else
    {
      v5 = off_29EE32B28[rAT];
    }

    [v3 setObject:v5 forKey:@"RAT"];
  }

  bundleName = self->_bundleName;
  if (bundleName)
  {
    [v3 setObject:bundleName forKey:@"bundleName"];
  }

  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_powerMicroWatt), @"powerMicroWatt"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 2) != 0)
  {
    rAT = self->_rAT;
    PBDataWriterWriteInt32Field();
  }

  if (self->_bundleName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    powerMicroWatt = self->_powerMicroWatt;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 5) = self->_rAT;
    *(a3 + 24) |= 2u;
  }

  if (self->_bundleName)
  {
    [a3 setBundleName:?];
  }

  if (*&self->_has)
  {
    *(a3 + 4) = self->_powerMicroWatt;
    *(a3 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_rAT;
    *(v5 + 24) |= 2u;
  }

  *(v6 + 8) = [(NSString *)self->_bundleName copyWithZone:a3];
  if (*&self->_has)
  {
    *(v6 + 16) = self->_powerMicroWatt;
    *(v6 + 24) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 24);
    if ((has & 2) != 0)
    {
      if ((*(a3 + 24) & 2) == 0 || self->_rAT != *(a3 + 5))
      {
        goto LABEL_14;
      }
    }

    else if ((*(a3 + 24) & 2) != 0)
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    bundleName = self->_bundleName;
    if (bundleName | *(a3 + 1))
    {
      v5 = [(NSString *)bundleName isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(a3 + 24) & 1) == 0;
    if (has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_powerMicroWatt != *(a3 + 4))
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
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_rAT;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_bundleName hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_powerMicroWatt;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 24) & 2) != 0)
  {
    self->_rAT = *(a3 + 5);
    *&self->_has |= 2u;
  }

  if (*(a3 + 1))
  {
    [(AWDAppBBPower *)self setBundleName:?];
  }

  if (*(a3 + 24))
  {
    self->_powerMicroWatt = *(a3 + 4);
    *&self->_has |= 1u;
  }
}

@end