@interface AWDWiFiMetricsScanObj
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumScans:(BOOL)scans;
- (void)setHasScanType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsScanObj

- (void)setHasScanType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumScans:(BOOL)scans
{
  if (scans)
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
  v3.super_class = AWDWiFiMetricsScanObj;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsScanObj description](&v3, sel_description), -[AWDWiFiMetricsScanObj dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numScans), @"num_scans"}];
    if ((*&self->_has & 1) == 0)
    {
      return dictionary;
    }

    goto LABEL_4;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_scanType), @"scan_type"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durScans), @"dur_scans"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    numScans = self->_numScans;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  scanType = self->_scanType;
  PBDataWriterWriteUint32Field();
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
  durScans = self->_durScans;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 4) = self->_scanType;
    *(to + 20) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return;
      }

LABEL_7:
      *(to + 2) = self->_durScans;
      *(to + 20) |= 1u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 3) = self->_numScans;
  *(to + 20) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = self->_scanType;
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

  *(result + 3) = self->_numScans;
  *(result + 20) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 2) = self->_durScans;
  *(result + 20) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 20) & 4) == 0 || self->_scanType != *(equal + 4))
      {
        goto LABEL_16;
      }
    }

    else if ((*(equal + 20) & 4) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 20) & 2) == 0 || self->_numScans != *(equal + 3))
      {
        goto LABEL_16;
      }
    }

    else if ((*(equal + 20) & 2) != 0)
    {
      goto LABEL_16;
    }

    LOBYTE(v5) = (*(equal + 20) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(equal + 20) & 1) == 0 || self->_durScans != *(equal + 2))
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

  v2 = 2654435761 * self->_scanType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_numScans;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_durScans;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 20);
  if ((v3 & 4) != 0)
  {
    self->_scanType = *(from + 4);
    *&self->_has |= 4u;
    v3 = *(from + 20);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        return;
      }

LABEL_7:
      self->_durScans = *(from + 2);
      *&self->_has |= 1u;
      return;
    }
  }

  else if ((*(from + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_numScans = *(from + 3);
  *&self->_has |= 2u;
  if (*(from + 20))
  {
    goto LABEL_7;
  }
}

@end