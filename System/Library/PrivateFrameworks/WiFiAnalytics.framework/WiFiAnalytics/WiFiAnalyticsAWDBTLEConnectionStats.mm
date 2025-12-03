@interface WiFiAnalyticsAWDBTLEConnectionStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDc0:(BOOL)dc0;
- (void)setHasDc1:(BOOL)dc1;
- (void)setHasDc2:(BOOL)dc2;
- (void)setHasDc3:(BOOL)dc3;
- (void)setHasDc4:(BOOL)dc4;
- (void)setHasDc5:(BOOL)dc5;
- (void)setHasPeakOutage:(BOOL)outage;
- (void)setHasStart:(BOOL)start;
- (void)setHasTotalDuration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDBTLEConnectionStats

- (void)setHasStart:(BOOL)start
{
  if (start)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasPeakOutage:(BOOL)outage
{
  if (outage)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasTotalDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasDc0:(BOOL)dc0
{
  if (dc0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasDc1:(BOOL)dc1
{
  if (dc1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasDc2:(BOOL)dc2
{
  if (dc2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasDc3:(BOOL)dc3
{
  if (dc3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasDc4:(BOOL)dc4
{
  if (dc4)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasDc5:(BOOL)dc5
{
  if (dc5)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDBTLEConnectionStats;
  v4 = [(WiFiAnalyticsAWDBTLEConnectionStats *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDBTLEConnectionStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_start];
    [dictionary setObject:v7 forKey:@"start"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_complete];
  [dictionary setObject:v8 forKey:@"complete"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_peakOutage];
  [dictionary setObject:v9 forKey:@"peakOutage"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_totalDuration];
  [dictionary setObject:v10 forKey:@"totalDuration"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dc0];
  [dictionary setObject:v11 forKey:@"dc0"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dc1];
  [dictionary setObject:v12 forKey:@"dc1"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dc2];
  [dictionary setObject:v13 forKey:@"dc2"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dc3];
  [dictionary setObject:v14 forKey:@"dc3"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dc4];
  [dictionary setObject:v15 forKey:@"dc4"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dc5];
    [dictionary setObject:v5 forKey:@"dc5"];
  }

LABEL_12:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    start = self->_start;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  complete = self->_complete;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  peakOutage = self->_peakOutage;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  totalDuration = self->_totalDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  dc0 = self->_dc0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  dc1 = self->_dc1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  dc2 = self->_dc2;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  dc3 = self->_dc3;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  dc4 = self->_dc4;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    dc5 = self->_dc5;
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    toCopy[10] = self->_start;
    *(toCopy + 24) |= 0x100u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = self->_complete;
  *(toCopy + 24) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  toCopy[9] = self->_peakOutage;
  *(toCopy + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[11] = self->_totalDuration;
  *(toCopy + 24) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  toCopy[3] = self->_dc0;
  *(toCopy + 24) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[4] = self->_dc1;
  *(toCopy + 24) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  toCopy[5] = self->_dc2;
  *(toCopy + 24) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  toCopy[6] = self->_dc3;
  *(toCopy + 24) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  toCopy[7] = self->_dc4;
  *(toCopy + 24) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    toCopy[8] = self->_dc5;
    *(toCopy + 24) |= 0x40u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(result + 10) = self->_start;
    *(result + 24) |= 0x100u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_complete;
  *(result + 24) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 9) = self->_peakOutage;
  *(result + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 11) = self->_totalDuration;
  *(result + 24) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 3) = self->_dc0;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 4) = self->_dc1;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 5) = self->_dc2;
  *(result + 24) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 6) = self->_dc3;
  *(result + 24) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(result + 7) = self->_dc4;
  *(result + 24) |= 0x20u;
  if ((*&self->_has & 0x40) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 8) = self->_dc5;
  *(result + 24) |= 0x40u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 24) & 0x100) == 0 || self->_start != *(equalCopy + 10))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 24) & 0x100) != 0)
  {
LABEL_52:
    v7 = 0;
    goto LABEL_53;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_complete != *(equalCopy + 2))
    {
      goto LABEL_52;
    }
  }

  else if (v6)
  {
    goto LABEL_52;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_peakOutage != *(equalCopy + 9))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 24) & 0x200) == 0 || self->_totalDuration != *(equalCopy + 11))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 24) & 0x200) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_dc0 != *(equalCopy + 3))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_dc1 != *(equalCopy + 4))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_dc2 != *(equalCopy + 5))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_dc3 != *(equalCopy + 6))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_dc4 != *(equalCopy + 7))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_dc5 != *(equalCopy + 8))
    {
      goto LABEL_52;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x40) == 0;
  }

LABEL_53:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v3 = 2654435761 * self->_start;
    if (has)
    {
LABEL_3:
      v4 = 2654435761 * self->_complete;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if (has)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_peakOutage;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_totalDuration;
    if ((has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 2) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_dc0;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_dc1;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_dc2;
    if ((has & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_dc3;
    if ((has & 0x20) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761 * self->_dc4;
  if ((has & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761 * self->_dc5;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 0x100) != 0)
  {
    self->_start = *(fromCopy + 10);
    *&self->_has |= 0x100u;
    v5 = *(fromCopy + 24);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_complete = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 24);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_peakOutage = *(fromCopy + 9);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 24);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_totalDuration = *(fromCopy + 11);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 24);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_dc0 = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 24);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_dc1 = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 24);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_dc2 = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_dc3 = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  self->_dc4 = *(fromCopy + 7);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 24) & 0x40) != 0)
  {
LABEL_11:
    self->_dc5 = *(fromCopy + 8);
    *&self->_has |= 0x40u;
  }

LABEL_12:
}

@end