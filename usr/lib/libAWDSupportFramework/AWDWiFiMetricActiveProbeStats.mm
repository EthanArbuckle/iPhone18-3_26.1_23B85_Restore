@interface AWDWiFiMetricActiveProbeStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAvgRTTLargePktSize:(BOOL)size;
- (void)setHasAvgRTTMediumPktSize:(BOOL)size;
- (void)setHasAvgRTTSmallPktSize:(BOOL)size;
- (void)setHasMaxRTTLargePktSize:(BOOL)size;
- (void)setHasMaxRTTMediumPktSize:(BOOL)size;
- (void)setHasMaxRTTSmallPktSize:(BOOL)size;
- (void)setHasMinRTTLargePktSize:(BOOL)size;
- (void)setHasMinRTTMediumPktSize:(BOOL)size;
- (void)setHasMinRTTSmallPktSize:(BOOL)size;
- (void)setHasPerLargePktSize:(BOOL)size;
- (void)setHasPerMediumPktSize:(BOOL)size;
- (void)setHasPerSmallPktSize:(BOOL)size;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricActiveProbeStats

- (void)setHasMinRTTSmallPktSize:(BOOL)size
{
  if (size)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasMaxRTTSmallPktSize:(BOOL)size
{
  if (size)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasAvgRTTSmallPktSize:(BOOL)size
{
  if (size)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasPerSmallPktSize:(BOOL)size
{
  if (size)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasMinRTTMediumPktSize:(BOOL)size
{
  if (size)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasMaxRTTMediumPktSize:(BOOL)size
{
  if (size)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasAvgRTTMediumPktSize:(BOOL)size
{
  if (size)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPerMediumPktSize:(BOOL)size
{
  if (size)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasMinRTTLargePktSize:(BOOL)size
{
  if (size)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasMaxRTTLargePktSize:(BOOL)size
{
  if (size)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasAvgRTTLargePktSize:(BOOL)size
{
  if (size)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasPerLargePktSize:(BOOL)size
{
  if (size)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricActiveProbeStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricActiveProbeStats description](&v3, sel_description), -[AWDWiFiMetricActiveProbeStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_minRTTSmallPktSize), @"minRTTSmallPktSize"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_maxRTTSmallPktSize), @"maxRTTSmallPktSize"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgRTTSmallPktSize), @"avgRTTSmallPktSize"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_perSmallPktSize), @"perSmallPktSize"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_minRTTMediumPktSize), @"minRTTMediumPktSize"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_maxRTTMediumPktSize), @"maxRTTMediumPktSize"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgRTTMediumPktSize), @"avgRTTMediumPktSize"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_perMediumPktSize), @"perMediumPktSize"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_minRTTLargePktSize), @"minRTTLargePktSize"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgRTTLargePktSize), @"avgRTTLargePktSize"}];
    if ((*&self->_has & 0x400) == 0)
    {
      return dictionary;
    }

    goto LABEL_14;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_maxRTTLargePktSize), @"maxRTTLargePktSize"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((has & 0x400) != 0)
  {
LABEL_14:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_perLargePktSize), @"perLargePktSize"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  minRTTSmallPktSize = self->_minRTTSmallPktSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  maxRTTSmallPktSize = self->_maxRTTSmallPktSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  avgRTTSmallPktSize = self->_avgRTTSmallPktSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  perSmallPktSize = self->_perSmallPktSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  minRTTMediumPktSize = self->_minRTTMediumPktSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  maxRTTMediumPktSize = self->_maxRTTMediumPktSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  avgRTTMediumPktSize = self->_avgRTTMediumPktSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  perMediumPktSize = self->_perMediumPktSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  minRTTLargePktSize = self->_minRTTLargePktSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    avgRTTLargePktSize = self->_avgRTTLargePktSize;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x400) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_25:
  maxRTTLargePktSize = self->_maxRTTLargePktSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((has & 0x400) == 0)
  {
    return;
  }

LABEL_27:
  perLargePktSize = self->_perLargePktSize;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(to + 12) = self->_minRTTSmallPktSize;
  *(to + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 9) = self->_maxRTTSmallPktSize;
  *(to + 32) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 6) = self->_avgRTTSmallPktSize;
  *(to + 32) |= 8u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 15) = self->_perSmallPktSize;
  *(to + 32) |= 0x1000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 11) = self->_minRTTMediumPktSize;
  *(to + 32) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 8) = self->_maxRTTMediumPktSize;
  *(to + 32) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 5) = self->_avgRTTMediumPktSize;
  *(to + 32) |= 4u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 14) = self->_perMediumPktSize;
  *(to + 32) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 10) = self->_minRTTLargePktSize;
  *(to + 32) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 7) = self->_maxRTTLargePktSize;
  *(to + 32) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      return;
    }

LABEL_27:
    *(to + 13) = self->_perLargePktSize;
    *(to + 32) |= 0x400u;
    return;
  }

LABEL_26:
  *(to + 4) = self->_avgRTTLargePktSize;
  *(to + 32) |= 2u;
  if ((*&self->_has & 0x400) != 0)
  {
    goto LABEL_27;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(result + 12) = self->_minRTTSmallPktSize;
  *(result + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 9) = self->_maxRTTSmallPktSize;
  *(result + 32) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 6) = self->_avgRTTSmallPktSize;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 15) = self->_perSmallPktSize;
  *(result + 32) |= 0x1000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 11) = self->_minRTTMediumPktSize;
  *(result + 32) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 8) = self->_maxRTTMediumPktSize;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 5) = self->_avgRTTMediumPktSize;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 14) = self->_perMediumPktSize;
  *(result + 32) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 10) = self->_minRTTLargePktSize;
  *(result + 32) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 7) = self->_maxRTTLargePktSize;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_27:
  *(result + 4) = self->_avgRTTLargePktSize;
  *(result + 32) |= 2u;
  if ((*&self->_has & 0x400) == 0)
  {
    return result;
  }

LABEL_14:
  *(result + 13) = self->_perLargePktSize;
  *(result + 32) |= 0x400u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 32);
    if (has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_66;
      }
    }

    else if (v7)
    {
LABEL_66:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 32) & 0x200) == 0 || self->_minRTTSmallPktSize != *(equal + 12))
      {
        goto LABEL_66;
      }
    }

    else if ((*(equal + 32) & 0x200) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_maxRTTSmallPktSize != *(equal + 9))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_avgRTTSmallPktSize != *(equal + 6))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x1000) != 0)
    {
      if ((*(equal + 32) & 0x1000) == 0 || self->_perSmallPktSize != *(equal + 15))
      {
        goto LABEL_66;
      }
    }

    else if ((*(equal + 32) & 0x1000) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 32) & 0x100) == 0 || self->_minRTTMediumPktSize != *(equal + 11))
      {
        goto LABEL_66;
      }
    }

    else if ((*(equal + 32) & 0x100) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_maxRTTMediumPktSize != *(equal + 8))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_avgRTTMediumPktSize != *(equal + 5))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 32) & 0x800) == 0 || self->_perMediumPktSize != *(equal + 14))
      {
        goto LABEL_66;
      }
    }

    else if ((*(equal + 32) & 0x800) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_minRTTLargePktSize != *(equal + 10))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_maxRTTLargePktSize != *(equal + 7))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_avgRTTLargePktSize != *(equal + 4))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_66;
    }

    LOBYTE(v5) = (v7 & 0x400) == 0;
    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 32) & 0x400) == 0 || self->_perLargePktSize != *(equal + 13))
      {
        goto LABEL_66;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_minRTTSmallPktSize;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_maxRTTSmallPktSize;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_avgRTTSmallPktSize;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_perSmallPktSize;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_minRTTMediumPktSize;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_maxRTTMediumPktSize;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((has & 4) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_avgRTTMediumPktSize;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_perMediumPktSize;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_minRTTLargePktSize;
    if ((has & 0x10) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_maxRTTLargePktSize;
    if ((has & 2) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v14 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_14;
    }

LABEL_27:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_25:
  v13 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v14 = 2654435761 * self->_avgRTTLargePktSize;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v15 = 2654435761 * self->_perLargePktSize;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 32);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 32);
    if ((v3 & 0x200) == 0)
    {
LABEL_3:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(from + 32) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_minRTTSmallPktSize = *(from + 12);
  *&self->_has |= 0x200u;
  v3 = *(from + 32);
  if ((v3 & 0x40) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_maxRTTSmallPktSize = *(from + 9);
  *&self->_has |= 0x40u;
  v3 = *(from + 32);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_avgRTTSmallPktSize = *(from + 6);
  *&self->_has |= 8u;
  v3 = *(from + 32);
  if ((v3 & 0x1000) == 0)
  {
LABEL_6:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_perSmallPktSize = *(from + 15);
  *&self->_has |= 0x1000u;
  v3 = *(from + 32);
  if ((v3 & 0x100) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_minRTTMediumPktSize = *(from + 11);
  *&self->_has |= 0x100u;
  v3 = *(from + 32);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_maxRTTMediumPktSize = *(from + 8);
  *&self->_has |= 0x20u;
  v3 = *(from + 32);
  if ((v3 & 4) == 0)
  {
LABEL_9:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_avgRTTMediumPktSize = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 32);
  if ((v3 & 0x800) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_perMediumPktSize = *(from + 14);
  *&self->_has |= 0x800u;
  v3 = *(from + 32);
  if ((v3 & 0x80) == 0)
  {
LABEL_11:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_minRTTLargePktSize = *(from + 10);
  *&self->_has |= 0x80u;
  v3 = *(from + 32);
  if ((v3 & 0x10) == 0)
  {
LABEL_12:
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_maxRTTLargePktSize = *(from + 7);
  *&self->_has |= 0x10u;
  v3 = *(from + 32);
  if ((v3 & 2) == 0)
  {
LABEL_13:
    if ((v3 & 0x400) == 0)
    {
      return;
    }

LABEL_27:
    self->_perLargePktSize = *(from + 13);
    *&self->_has |= 0x400u;
    return;
  }

LABEL_26:
  self->_avgRTTLargePktSize = *(from + 4);
  *&self->_has |= 2u;
  if ((*(from + 32) & 0x400) != 0)
  {
    goto LABEL_27;
  }
}

@end