@interface AWDSymptomsNetworkAnalyticsScoring
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkType:(id)type;
- (int)StringAsScoringCompletionCode:(id)code;
- (int)networkType;
- (int)scoringCompletionCode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNetworkType:(BOOL)type;
- (void)setHasNumberEntriesWithHomeLOI:(BOOL)i;
- (void)setHasNumberEntriesWithUnapprovedLOI:(BOOL)i;
- (void)setHasNumberEntriesWithUndefinedLOI:(BOOL)i;
- (void)setHasNumberEntriesWithWorkLOI:(BOOL)i;
- (void)setHasScoredEntries:(BOOL)entries;
- (void)setHasScoredKnownGood:(BOOL)good;
- (void)setHasScoringCompletionCode:(BOOL)code;
- (void)setHasTimeSinceLastScoringSecs:(BOOL)secs;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsNetworkAnalyticsScoring

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)networkType
{
  if ((*&self->_has & 0x200) != 0)
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
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
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

- (void)setHasTimeSinceLastScoringSecs:(BOOL)secs
{
  if (secs)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)scoringCompletionCode
{
  if ((*&self->_has & 0x400) != 0)
  {
    return self->_scoringCompletionCode;
  }

  else
  {
    return 1;
  }
}

- (void)setHasScoringCompletionCode:(BOOL)code
{
  if (code)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)StringAsScoringCompletionCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"SUCCESS"])
  {
    v4 = 1;
  }

  else if ([codeCopy isEqualToString:@"INSUFFICIENT_DATA"])
  {
    v4 = 2;
  }

  else if ([codeCopy isEqualToString:@"ERRORS"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasScoredEntries:(BOOL)entries
{
  if (entries)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasScoredKnownGood:(BOOL)good
{
  if (good)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumberEntriesWithHomeLOI:(BOOL)i
{
  if (i)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasNumberEntriesWithWorkLOI:(BOOL)i
{
  if (i)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumberEntriesWithUndefinedLOI:(BOOL)i
{
  if (i)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumberEntriesWithUnapprovedLOI:(BOOL)i
{
  if (i)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNetworkAnalyticsScoring;
  v4 = [(AWDSymptomsNetworkAnalyticsScoring *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsNetworkAnalyticsScoring *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
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
    v9 = off_27898F020[v8];
  }

  [dictionary setObject:v9 forKey:@"networkType"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timeSinceLastScoringSecs];
  [dictionary setObject:v10 forKey:@"timeSinceLastScoringSecs"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_22:
  v11 = self->_scoringCompletionCode - 1;
  if (v11 >= 3)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scoringCompletionCode];
  }

  else
  {
    v12 = off_27898F038[v11];
  }

  [dictionary setObject:v12 forKey:@"scoringCompletionCode"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_scoredEntries];
  [dictionary setObject:v13 forKey:@"scoredEntries"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_scoredKnownGood];
  [dictionary setObject:v14 forKey:@"scoredKnownGood"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_lifetimeOldestItemSecs];
  [dictionary setObject:v15 forKey:@"lifetimeOldestItemSecs"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberEntriesWithHomeLOI];
  [dictionary setObject:v16 forKey:@"numberEntriesWithHomeLOI"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberEntriesWithWorkLOI];
  [dictionary setObject:v17 forKey:@"numberEntriesWithWorkLOI"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_31:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberEntriesWithUndefinedLOI];
  [dictionary setObject:v18 forKey:@"numberEntriesWithUndefinedLOI"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberEntriesWithUnapprovedLOI];
    [dictionary setObject:v5 forKey:@"numberEntriesWithUnapprovedLOI"];
  }

LABEL_13:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
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

  networkType = self->_networkType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  timeSinceLastScoringSecs = self->_timeSinceLastScoringSecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  scoringCompletionCode = self->_scoringCompletionCode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  scoredEntries = self->_scoredEntries;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  scoredKnownGood = self->_scoredKnownGood;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  lifetimeOldestItemSecs = self->_lifetimeOldestItemSecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  numberEntriesWithHomeLOI = self->_numberEntriesWithHomeLOI;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  numberEntriesWithWorkLOI = self->_numberEntriesWithWorkLOI;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  numberEntriesWithUndefinedLOI = self->_numberEntriesWithUndefinedLOI;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    numberEntriesWithUnapprovedLOI = self->_numberEntriesWithUnapprovedLOI;
    PBDataWriterWriteUint64Field();
  }

LABEL_13:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    toCopy[9] = self->_timestamp;
    *(toCopy + 44) |= 0x100u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
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

  *(toCopy + 20) = self->_networkType;
  *(toCopy + 44) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[8] = self->_timeSinceLastScoringSecs;
  *(toCopy + 44) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(toCopy + 21) = self->_scoringCompletionCode;
  *(toCopy + 44) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[6] = self->_scoredEntries;
  *(toCopy + 44) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  toCopy[7] = self->_scoredKnownGood;
  *(toCopy + 44) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  toCopy[1] = self->_lifetimeOldestItemSecs;
  *(toCopy + 44) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  toCopy[2] = self->_numberEntriesWithHomeLOI;
  *(toCopy + 44) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  toCopy[5] = self->_numberEntriesWithWorkLOI;
  *(toCopy + 44) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  toCopy[4] = self->_numberEntriesWithUndefinedLOI;
  *(toCopy + 44) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    toCopy[3] = self->_numberEntriesWithUnapprovedLOI;
    *(toCopy + 44) |= 4u;
  }

LABEL_13:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(result + 9) = self->_timestamp;
    *(result + 44) |= 0x100u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(result + 20) = self->_networkType;
  *(result + 44) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 8) = self->_timeSinceLastScoringSecs;
  *(result + 44) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 21) = self->_scoringCompletionCode;
  *(result + 44) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 6) = self->_scoredEntries;
  *(result + 44) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 7) = self->_scoredKnownGood;
  *(result + 44) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 1) = self->_lifetimeOldestItemSecs;
  *(result + 44) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 2) = self->_numberEntriesWithHomeLOI;
  *(result + 44) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 5) = self->_numberEntriesWithWorkLOI;
  *(result + 44) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(result + 4) = self->_numberEntriesWithUndefinedLOI;
  *(result + 44) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_12:
  *(result + 3) = self->_numberEntriesWithUnapprovedLOI;
  *(result + 44) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 44) & 0x100) == 0 || self->_timestamp != *(equalCopy + 9))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 44) & 0x100) != 0)
  {
LABEL_57:
    v7 = 0;
    goto LABEL_58;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 44) & 0x200) == 0 || self->_networkType != *(equalCopy + 20))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 44) & 0x200) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_timeSinceLastScoringSecs != *(equalCopy + 8))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_57;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 44) & 0x400) == 0 || self->_scoringCompletionCode != *(equalCopy + 21))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 44) & 0x400) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_scoredEntries != *(equalCopy + 6))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_scoredKnownGood != *(equalCopy + 7))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_57;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_lifetimeOldestItemSecs != *(equalCopy + 1))
    {
      goto LABEL_57;
    }
  }

  else if (v6)
  {
    goto LABEL_57;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_numberEntriesWithHomeLOI != *(equalCopy + 2))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_numberEntriesWithWorkLOI != *(equalCopy + 5))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_numberEntriesWithUndefinedLOI != *(equalCopy + 4))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_numberEntriesWithUnapprovedLOI != *(equalCopy + 3))
    {
      goto LABEL_57;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 4) == 0;
  }

LABEL_58:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_networkType;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
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
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_timeSinceLastScoringSecs;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_scoringCompletionCode;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_scoredEntries;
    if ((has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_scoredKnownGood;
    if (has)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
  if (has)
  {
LABEL_8:
    v9 = 2654435761u * self->_lifetimeOldestItemSecs;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((has & 2) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_numberEntriesWithHomeLOI;
    if ((has & 0x10) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_numberEntriesWithWorkLOI;
    if ((has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v12 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_21:
  v11 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = 2654435761u * self->_numberEntriesWithUndefinedLOI;
  if ((has & 4) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v13 = 2654435761u * self->_numberEntriesWithUnapprovedLOI;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x100) != 0)
  {
    self->_timestamp = *(fromCopy + 9);
    *&self->_has |= 0x100u;
    v5 = *(fromCopy + 44);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(fromCopy + 44) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_networkType = *(fromCopy + 20);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_timeSinceLastScoringSecs = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x400) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_scoringCompletionCode = *(fromCopy + 21);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_scoredEntries = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_scoredKnownGood = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 44);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_lifetimeOldestItemSecs = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 44);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_numberEntriesWithHomeLOI = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_numberEntriesWithWorkLOI = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 44);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  self->_numberEntriesWithUndefinedLOI = *(fromCopy + 4);
  *&self->_has |= 8u;
  if ((*(fromCopy + 44) & 4) != 0)
  {
LABEL_12:
    self->_numberEntriesWithUnapprovedLOI = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_13:
}

@end