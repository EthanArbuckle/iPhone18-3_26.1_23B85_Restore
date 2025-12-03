@interface AWDAppBBPower
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRAT:(id)t;
- (int)rAT;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasRAT:(BOOL)t;
- (void)writeTo:(id)to;
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

- (void)setHasRAT:(BOOL)t
{
  if (t)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsRAT:(id)t
{
  if ([t isEqualToString:@"RAT_TYPE_UNKNOWN"])
  {
    return 0;
  }

  if ([t isEqualToString:@"RAT_TYPE_UMTS"])
  {
    return 1;
  }

  if ([t isEqualToString:@"RAT_TYPE_GSM"])
  {
    return 2;
  }

  if ([t isEqualToString:@"RAT_TYPE_WCDMA"])
  {
    return 3;
  }

  if ([t isEqualToString:@"RAT_TYPE_1xEVDO"])
  {
    return 4;
  }

  if ([t isEqualToString:@"RAT_TYPE_LTE"])
  {
    return 5;
  }

  if ([t isEqualToString:@"RAT_TYPE_TDSCDMA"])
  {
    return 6;
  }

  if ([t isEqualToString:@"RAT_TYPE_TDLTE"])
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
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

    [dictionary setObject:v5 forKey:@"RAT"];
  }

  bundleName = self->_bundleName;
  if (bundleName)
  {
    [dictionary setObject:bundleName forKey:@"bundleName"];
  }

  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_powerMicroWatt), @"powerMicroWatt"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if ((*&self->_has & 2) != 0)
  {
    *(to + 5) = self->_rAT;
    *(to + 24) |= 2u;
  }

  if (self->_bundleName)
  {
    [to setBundleName:?];
  }

  if (*&self->_has)
  {
    *(to + 4) = self->_powerMicroWatt;
    *(to + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_rAT;
    *(v5 + 24) |= 2u;
  }

  *(v6 + 8) = [(NSString *)self->_bundleName copyWithZone:zone];
  if (*&self->_has)
  {
    *(v6 + 16) = self->_powerMicroWatt;
    *(v6 + 24) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 24);
    if ((has & 2) != 0)
    {
      if ((*(equal + 24) & 2) == 0 || self->_rAT != *(equal + 5))
      {
        goto LABEL_14;
      }
    }

    else if ((*(equal + 24) & 2) != 0)
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    bundleName = self->_bundleName;
    if (bundleName | *(equal + 1))
    {
      v5 = [(NSString *)bundleName isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(equal + 24) & 1) == 0;
    if (has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_powerMicroWatt != *(equal + 4))
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

- (void)mergeFrom:(id)from
{
  if ((*(from + 24) & 2) != 0)
  {
    self->_rAT = *(from + 5);
    *&self->_has |= 2u;
  }

  if (*(from + 1))
  {
    [(AWDAppBBPower *)self setBundleName:?];
  }

  if (*(from + 24))
  {
    self->_powerMicroWatt = *(from + 4);
    *&self->_has |= 1u;
  }
}

@end