@interface AWDSymptomsNetworkAnalyticsHistorical
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkType:(id)type;
- (int)networkType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBytesOut:(BOOL)out;
- (void)setHasConnAttempts:(BOOL)attempts;
- (void)setHasConnSuccess:(BOOL)success;
- (void)setHasDnsCompleteFailures:(BOOL)failures;
- (void)setHasDnsPartialFailures:(BOOL)failures;
- (void)setHasEpochs:(BOOL)epochs;
- (void)setHasFaultyStaySecs:(BOOL)secs;
- (void)setHasNetworkType:(BOOL)type;
- (void)setHasPacketsIn:(BOOL)in;
- (void)setHasPacketsOut:(BOOL)out;
- (void)setHasSecsSinceLastTrimmed:(BOOL)trimmed;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTotalStaySecs:(BOOL)secs;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsNetworkAnalyticsHistorical

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (int)networkType
{
  if ((*&self->_has & 0x2000) != 0)
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
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
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

- (void)setHasEpochs:(BOOL)epochs
{
  if (epochs)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTotalStaySecs:(BOOL)secs
{
  if (secs)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasFaultyStaySecs:(BOOL)secs
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

- (void)setHasConnAttempts:(BOOL)attempts
{
  if (attempts)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasConnSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasPacketsIn:(BOOL)in
{
  if (in)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasPacketsOut:(BOOL)out
{
  if (out)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasBytesOut:(BOOL)out
{
  if (out)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSecsSinceLastTrimmed:(BOOL)trimmed
{
  if (trimmed)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasDnsPartialFailures:(BOOL)failures
{
  if (failures)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasDnsCompleteFailures:(BOOL)failures
{
  if (failures)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNetworkAnalyticsHistorical;
  v4 = [(AWDSymptomsNetworkAnalyticsHistorical *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsNetworkAnalyticsHistorical *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 0x800) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    v9 = self->_networkType - 1;
    if (v9 >= 3)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_networkType];
    }

    else
    {
      v10 = off_27898CC00[v9];
    }

    [dictionary setObject:v10 forKey:@"networkType"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_epochs];
  [dictionary setObject:v11 forKey:@"epochs"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_totalStaySecs];
  [dictionary setObject:v12 forKey:@"totalStaySecs"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_faultyStaySecs];
  [dictionary setObject:v13 forKey:@"faultyStaySecs"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_connAttempts];
  [dictionary setObject:v14 forKey:@"connAttempts"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_connSuccess];
  [dictionary setObject:v15 forKey:@"connSuccess"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetsIn];
  [dictionary setObject:v16 forKey:@"packetsIn"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetsOut];
  [dictionary setObject:v17 forKey:@"packetsOut"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bytesIn];
  [dictionary setObject:v18 forKey:@"bytesIn"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bytesOut];
  [dictionary setObject:v19 forKey:@"bytesOut"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_secsSinceLastTrimmed];
  [dictionary setObject:v20 forKey:@"secsSinceLastTrimmed"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_36:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_dnsPartialFailures];
  [dictionary setObject:v21 forKey:@"dnsPartialFailures"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_dnsCompleteFailures];
    [dictionary setObject:v7 forKey:@"dnsCompleteFailures"];
  }

LABEL_19:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x800) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    networkType = self->_networkType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  epochs = self->_epochs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  totalStaySecs = self->_totalStaySecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  faultyStaySecs = self->_faultyStaySecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  connAttempts = self->_connAttempts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  connSuccess = self->_connSuccess;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  packetsIn = self->_packetsIn;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  packetsOut = self->_packetsOut;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  bytesIn = self->_bytesIn;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  bytesOut = self->_bytesOut;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  secsSinceLastTrimmed = self->_secsSinceLastTrimmed;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_33:
  dnsPartialFailures = self->_dnsPartialFailures;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    dnsCompleteFailures = self->_dnsCompleteFailures;
    PBDataWriterWriteUint64Field();
  }

LABEL_19:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x800) != 0)
  {
    toCopy[12] = self->_timestamp;
    *(toCopy + 62) |= 0x800u;
  }

  if (self->_identifier)
  {
    v6 = toCopy;
    [toCopy setIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    *(toCopy + 30) = self->_networkType;
    *(toCopy + 62) |= 0x2000u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  toCopy[7] = self->_epochs;
  *(toCopy + 62) |= 0x40u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  toCopy[13] = self->_totalStaySecs;
  *(toCopy + 62) |= 0x1000u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  toCopy[8] = self->_faultyStaySecs;
  *(toCopy + 62) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  toCopy[3] = self->_connAttempts;
  *(toCopy + 62) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  toCopy[4] = self->_connSuccess;
  *(toCopy + 62) |= 8u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  toCopy[9] = self->_packetsIn;
  *(toCopy + 62) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  toCopy[10] = self->_packetsOut;
  *(toCopy + 62) |= 0x200u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  toCopy[1] = self->_bytesIn;
  *(toCopy + 62) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  toCopy[2] = self->_bytesOut;
  *(toCopy + 62) |= 2u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  toCopy[11] = self->_secsSinceLastTrimmed;
  *(toCopy + 62) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_33:
  toCopy[6] = self->_dnsPartialFailures;
  *(toCopy + 62) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    toCopy[5] = self->_dnsCompleteFailures;
    *(toCopy + 62) |= 0x10u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x800) != 0)
  {
    *(v5 + 96) = self->_timestamp;
    *(v5 + 124) |= 0x800u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  v8 = *(v6 + 112);
  *(v6 + 112) = v7;

  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    *(v6 + 120) = self->_networkType;
    *(v6 + 124) |= 0x2000u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_5:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 56) = self->_epochs;
  *(v6 + 124) |= 0x40u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v6 + 104) = self->_totalStaySecs;
  *(v6 + 124) |= 0x1000u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v6 + 64) = self->_faultyStaySecs;
  *(v6 + 124) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v6 + 24) = self->_connAttempts;
  *(v6 + 124) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v6 + 32) = self->_connSuccess;
  *(v6 + 124) |= 8u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v6 + 72) = self->_packetsIn;
  *(v6 + 124) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v6 + 80) = self->_packetsOut;
  *(v6 + 124) |= 0x200u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v6 + 8) = self->_bytesIn;
  *(v6 + 124) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 16) = self->_bytesOut;
  *(v6 + 124) |= 2u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    *(v6 + 48) = self->_dnsPartialFailures;
    *(v6 + 124) |= 0x20u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v6;
    }

    goto LABEL_16;
  }

LABEL_28:
  *(v6 + 88) = self->_secsSinceLastTrimmed;
  *(v6 + 124) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  if ((has & 0x10) != 0)
  {
LABEL_16:
    *(v6 + 40) = self->_dnsCompleteFailures;
    *(v6 + 124) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_75;
  }

  has = self->_has;
  v6 = *(equalCopy + 62);
  if ((has & 0x800) != 0)
  {
    if ((*(equalCopy + 62) & 0x800) == 0 || self->_timestamp != *(equalCopy + 12))
    {
      goto LABEL_75;
    }
  }

  else if ((*(equalCopy + 62) & 0x800) != 0)
  {
    goto LABEL_75;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 14))
  {
    if (![(NSString *)identifier isEqual:?])
    {
LABEL_75:
      v9 = 0;
      goto LABEL_76;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 62);
  if ((has & 0x2000) != 0)
  {
    if ((*(equalCopy + 62) & 0x2000) == 0 || self->_networkType != *(equalCopy + 30))
    {
      goto LABEL_75;
    }
  }

  else if ((*(equalCopy + 62) & 0x2000) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_epochs != *(equalCopy + 7))
    {
      goto LABEL_75;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x1000) != 0)
  {
    if ((*(equalCopy + 62) & 0x1000) == 0 || self->_totalStaySecs != *(equalCopy + 13))
    {
      goto LABEL_75;
    }
  }

  else if ((*(equalCopy + 62) & 0x1000) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_faultyStaySecs != *(equalCopy + 8))
    {
      goto LABEL_75;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_connAttempts != *(equalCopy + 3))
    {
      goto LABEL_75;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_connSuccess != *(equalCopy + 4))
    {
      goto LABEL_75;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 62) & 0x100) == 0 || self->_packetsIn != *(equalCopy + 9))
    {
      goto LABEL_75;
    }
  }

  else if ((*(equalCopy + 62) & 0x100) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x200) != 0)
  {
    if ((*(equalCopy + 62) & 0x200) == 0 || self->_packetsOut != *(equalCopy + 10))
    {
      goto LABEL_75;
    }
  }

  else if ((*(equalCopy + 62) & 0x200) != 0)
  {
    goto LABEL_75;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_bytesIn != *(equalCopy + 1))
    {
      goto LABEL_75;
    }
  }

  else if (v8)
  {
    goto LABEL_75;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_bytesOut != *(equalCopy + 2))
    {
      goto LABEL_75;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x400) != 0)
  {
    if ((*(equalCopy + 62) & 0x400) == 0 || self->_secsSinceLastTrimmed != *(equalCopy + 11))
    {
      goto LABEL_75;
    }
  }

  else if ((*(equalCopy + 62) & 0x400) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_dnsPartialFailures != *(equalCopy + 6))
    {
      goto LABEL_75;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_dnsCompleteFailures != *(equalCopy + 5))
    {
      goto LABEL_75;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v8 & 0x10) == 0;
  }

LABEL_76:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x800) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_identifier hash];
  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    v6 = 2654435761 * self->_networkType;
    if ((has & 0x40) != 0)
    {
LABEL_6:
      v7 = 2654435761u * self->_epochs;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v6 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_totalStaySecs;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_faultyStaySecs;
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
    v10 = 2654435761u * self->_connAttempts;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((has & 8) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_connSuccess;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_packetsIn;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_12:
    v13 = 2654435761u * self->_packetsOut;
    if (has)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = 0;
  if (has)
  {
LABEL_13:
    v14 = 2654435761u * self->_bytesIn;
    if ((has & 2) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = 0;
  if ((has & 2) != 0)
  {
LABEL_14:
    v15 = 2654435761u * self->_bytesOut;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_15:
    v16 = 2654435761u * self->_secsSinceLastTrimmed;
    if ((has & 0x20) != 0)
    {
      goto LABEL_16;
    }

LABEL_29:
    v17 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_17;
    }

LABEL_30:
    v18 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

LABEL_28:
  v16 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  v17 = 2654435761u * self->_dnsPartialFailures;
  if ((has & 0x10) == 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = 2654435761u * self->_dnsCompleteFailures;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 62) & 0x800) != 0)
  {
    self->_timestamp = *(fromCopy + 12);
    *&self->_has |= 0x800u;
  }

  if (*(fromCopy + 14))
  {
    v6 = fromCopy;
    [(AWDSymptomsNetworkAnalyticsHistorical *)self setIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 62);
  if ((v5 & 0x2000) != 0)
  {
    self->_networkType = *(fromCopy + 30);
    *&self->_has |= 0x2000u;
    v5 = *(fromCopy + 62);
    if ((v5 & 0x40) == 0)
    {
LABEL_7:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  self->_epochs = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 62);
  if ((v5 & 0x1000) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_totalStaySecs = *(fromCopy + 13);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 62);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_faultyStaySecs = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 62);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_connAttempts = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 62);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_connSuccess = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 62);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_packetsIn = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 62);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_packetsOut = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 62);
  if ((v5 & 1) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_bytesIn = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 62);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_bytesOut = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 62);
  if ((v5 & 0x400) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_secsSinceLastTrimmed = *(fromCopy + 11);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 62);
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_33:
  self->_dnsPartialFailures = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 62) & 0x10) != 0)
  {
LABEL_18:
    self->_dnsCompleteFailures = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

LABEL_19:
}

@end