@interface AWDSymptomsNoBackhaulPopUpMetric
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)action;
- (int)StringAsNetworkType:(id)type;
- (int)action;
- (int)networkType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAction:(BOOL)action;
- (void)setHasNetworkType:(BOOL)type;
- (void)setHasNetworksShownAtLeastOnceInLast24Hrs:(BOOL)hrs;
- (void)setHasPopUpShownForSecs:(BOOL)secs;
- (void)setHasTimeSinceShownOnSameNetworkSecs:(BOOL)secs;
- (void)setHasTimesShownOnAnyNetworkLast24Hrs:(BOOL)hrs;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsNoBackhaulPopUpMetric

- (int)networkType
{
  if ((*&self->_has & 4) != 0)
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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

- (void)setHasPopUpShownForSecs:(BOOL)secs
{
  if (secs)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTimeSinceShownOnSameNetworkSecs:(BOOL)secs
{
  if (secs)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTimesShownOnAnyNetworkLast24Hrs:(BOOL)hrs
{
  if (hrs)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasNetworksShownAtLeastOnceInLast24Hrs:(BOOL)hrs
{
  if (hrs)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)action
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_action;
  }

  else
  {
    return 1;
  }
}

- (void)setHasAction:(BOOL)action
{
  if (action)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"SIMULATED_DISPLAY"])
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"POP_UP_RECALLED_NO_ACTION"])
  {
    v4 = 2;
  }

  else if ([actionCopy isEqualToString:@"USE_CELLULAR_DATA_ACTION"])
  {
    v4 = 3;
  }

  else if ([actionCopy isEqualToString:@"KEEP_TRYING_ACTION"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNoBackhaulPopUpMetric;
  v4 = [(AWDSymptomsNoBackhaulPopUpMetric *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsNoBackhaulPopUpMetric *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = self->_networkType - 1;
  if (v6 >= 3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_networkType];
  }

  else
  {
    v7 = *(&off_27898E3D8 + v6);
  }

  [dictionary setObject:v7 forKey:@"networkType"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_popUpShownForSecs];
  [dictionary setObject:v8 forKey:@"popUpShownForSecs"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_timeSinceShownOnSameNetworkSecs];
  [dictionary setObject:v9 forKey:@"timeSinceShownOnSameNetworkSecs"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_networksShownAtLeastOnceInLast24Hrs];
    [dictionary setObject:v11 forKey:@"networksShownAtLeastOnceInLast24Hrs"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_18:
    v12 = self->_action - 1;
    if (v12 >= 4)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_action];
    }

    else
    {
      v13 = *(&off_27898E3F0 + v12);
    }

    [dictionary setObject:v13 forKey:@"action"];

    goto LABEL_22;
  }

LABEL_16:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_timesShownOnAnyNetworkLast24Hrs];
  [dictionary setObject:v10 forKey:@"timesShownOnAnyNetworkLast24Hrs"];

  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  if ((has & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_22:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  networkType = self->_networkType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  popUpShownForSecs = self->_popUpShownForSecs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  timeSinceShownOnSameNetworkSecs = self->_timeSinceShownOnSameNetworkSecs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  timesShownOnAnyNetworkLast24Hrs = self->_timesShownOnAnyNetworkLast24Hrs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  networksShownAtLeastOnceInLast24Hrs = self->_networksShownAtLeastOnceInLast24Hrs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    action = self->_action;
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 40) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 5) = self->_networkType;
  *(toCopy + 40) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(toCopy + 7) = self->_popUpShownForSecs;
  *(toCopy + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(toCopy + 8) = self->_timeSinceShownOnSameNetworkSecs;
  *(toCopy + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(toCopy + 9) = self->_timesShownOnAnyNetworkLast24Hrs;
  *(toCopy + 40) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  *(toCopy + 6) = self->_networksShownAtLeastOnceInLast24Hrs;
  *(toCopy + 40) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    *(toCopy + 4) = self->_action;
    *(toCopy + 40) |= 2u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 40) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_networkType;
  *(result + 40) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 7) = self->_popUpShownForSecs;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 8) = self->_timeSinceShownOnSameNetworkSecs;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 9) = self->_timesShownOnAnyNetworkLast24Hrs;
  *(result + 40) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 6) = self->_networksShownAtLeastOnceInLast24Hrs;
  *(result + 40) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 4) = self->_action;
  *(result + 40) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_networkType != *(equalCopy + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 40) & 0x10) == 0 || self->_popUpShownForSecs != *(equalCopy + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 40) & 0x20) == 0 || self->_timeSinceShownOnSameNetworkSecs != *(equalCopy + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 40) & 0x40) == 0 || self->_timesShownOnAnyNetworkLast24Hrs != *(equalCopy + 9))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 0x40) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_networksShownAtLeastOnceInLast24Hrs != *(equalCopy + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_36;
  }

  v5 = (*(equalCopy + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_action != *(equalCopy + 4))
    {
      goto LABEL_36;
    }

    v5 = 1;
  }

LABEL_37:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_networkType;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_popUpShownForSecs;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_timeSinceShownOnSameNetworkSecs;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_timesShownOnAnyNetworkLast24Hrs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_networksShownAtLeastOnceInLast24Hrs;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_action;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_networkType = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_popUpShownForSecs = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_timeSinceShownOnSameNetworkSecs = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_timesShownOnAnyNetworkLast24Hrs = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 40);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_networksShownAtLeastOnceInLast24Hrs = *(fromCopy + 6);
  *&self->_has |= 8u;
  if ((*(fromCopy + 40) & 2) != 0)
  {
LABEL_8:
    self->_action = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

LABEL_9:
}

@end