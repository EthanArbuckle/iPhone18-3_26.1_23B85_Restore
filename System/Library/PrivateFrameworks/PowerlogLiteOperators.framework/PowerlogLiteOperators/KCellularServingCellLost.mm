@interface KCellularServingCellLost
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLastSysMode:(id)mode;
- (int)lastSysMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLastSysMode:(BOOL)mode;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularServingCellLost

- (int)lastSysMode
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_lastSysMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLastSysMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsLastSysMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"SYS_MODE_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_LTE_V2"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_CDMA"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 3;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_HDR"])
  {
    v4 = 4;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_WCDMA"])
  {
    v4 = 5;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_EHRPD"])
  {
    v4 = 6;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_GW"])
  {
    v4 = 7;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_WLAN"])
  {
    v4 = 8;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 9;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_GWL"])
  {
    v4 = 10;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_UMTS"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularServingCellLost;
  v4 = [(KCellularServingCellLost *)&v8 description];
  dictionaryRepresentation = [(KCellularServingCellLost *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  lastSysMode = self->_lastSysMode;
  if (lastSysMode >= 0xC)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_lastSysMode];
  }

  else
  {
    v9 = off_27825B500[lastSysMode];
  }

  [dictionary setObject:v9 forKey:@"last_sys_mode"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [dictionary setObject:v5 forKey:@"subs_id"];

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  lastSysMode = self->_lastSysMode;
  PBDataWriterWriteInt32Field();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 4) = self->_lastSysMode;
  *(toCopy + 24) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(toCopy + 5) = self->_subsId;
    *(toCopy + 24) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  *(result + 4) = self->_lastSysMode;
  *(result + 24) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 5) = self->_subsId;
  *(result + 24) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_lastSysMode != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 24) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_subsId != *(equalCopy + 5))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_lastSysMode;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_lastSysMode = *(fromCopy + 4);
  *&self->_has |= 2u;
  if ((*(fromCopy + 24) & 4) != 0)
  {
LABEL_4:
    self->_subsId = *(fromCopy + 5);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end