@interface AWDSymptomsNetworkUsageAttributionMetric
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkType:(id)type;
- (int)networkType;
- (int)usageAttributedTo;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNetworkType:(BOOL)type;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasUsageAttributedTo:(BOOL)to;
- (void)setHasUsageBytes:(BOOL)bytes;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsNetworkUsageAttributionMetric

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)networkType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_networkType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasNetworkType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsNetworkType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"WIFI"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CELLULAR"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"WIRED_ETHERNET"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)usageAttributedTo
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_usageAttributedTo;
  }

  else
  {
    return 1;
  }
}

- (void)setHasUsageAttributedTo:(BOOL)to
{
  if (to)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUsageBytes:(BOOL)bytes
{
  if (bytes)
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
  v8.super_class = AWDSymptomsNetworkUsageAttributionMetric;
  v4 = [(AWDSymptomsNetworkUsageAttributionMetric *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsNetworkUsageAttributionMetric *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = self->_networkType - 1;
  if (v8 >= 3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_networkType];
  }

  else
  {
    v9 = off_278989EF8[v8];
  }

  [dictionary setObject:v9 forKey:@"networkType"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_15:
  if (self->_usageAttributedTo == 1)
  {
    v10 = @"TRIGGER_DISCONNECT";
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_usageAttributedTo];
  }

  [dictionary setObject:v10 forKey:@"usageAttributedTo"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_usageBytes];
  [dictionary setObject:v11 forKey:@"usageBytes"];

  if (*&self->_has)
  {
LABEL_6:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_flowsImpactedCount];
    [dictionary setObject:v5 forKey:@"flowsImpactedCount"];
  }

LABEL_7:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  networkType = self->_networkType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  usageAttributedTo = self->_usageAttributedTo;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  usageBytes = self->_usageBytes;
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_6:
    flowsImpactedCount = self->_flowsImpactedCount;
    PBDataWriterWriteUint64Field();
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_timestamp;
    *(toCopy + 40) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 8) = self->_networkType;
  *(toCopy + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(toCopy + 9) = self->_usageAttributedTo;
  *(toCopy + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  toCopy[3] = self->_usageBytes;
  *(toCopy + 40) |= 4u;
  if (*&self->_has)
  {
LABEL_6:
    toCopy[1] = self->_flowsImpactedCount;
    *(toCopy + 40) |= 1u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 40) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_networkType;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 9) = self->_usageAttributedTo;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 3) = self->_usageBytes;
  *(result + 40) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 1) = self->_flowsImpactedCount;
  *(result + 40) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_networkType != *(equalCopy + 8))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 40) & 0x10) == 0 || self->_usageAttributedTo != *(equalCopy + 9))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 40) & 0x10) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_usageBytes != *(equalCopy + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_flowsImpactedCount != *(equalCopy + 1))
    {
      goto LABEL_26;
    }

    v5 = 1;
  }

LABEL_27:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_networkType;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_usageAttributedTo;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761u * self->_usageBytes;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761u * self->_flowsImpactedCount;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_networkType = *(fromCopy + 8);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_usageAttributedTo = *(fromCopy + 9);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 40);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_usageBytes = *(fromCopy + 3);
  *&self->_has |= 4u;
  if (*(fromCopy + 40))
  {
LABEL_6:
    self->_flowsImpactedCount = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_7:
}

@end