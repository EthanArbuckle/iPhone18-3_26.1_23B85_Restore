@interface AWDSymptomsNetworkAnalyticsHistorical
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkType:(id)a3;
- (int)networkType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBytesOut:(BOOL)a3;
- (void)setHasConnAttempts:(BOOL)a3;
- (void)setHasConnSuccess:(BOOL)a3;
- (void)setHasDnsCompleteFailures:(BOOL)a3;
- (void)setHasDnsPartialFailures:(BOOL)a3;
- (void)setHasEpochs:(BOOL)a3;
- (void)setHasFaultyStaySecs:(BOOL)a3;
- (void)setHasNetworkType:(BOOL)a3;
- (void)setHasPacketsIn:(BOOL)a3;
- (void)setHasPacketsOut:(BOOL)a3;
- (void)setHasSecsSinceLastTrimmed:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTotalStaySecs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsNetworkAnalyticsHistorical

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
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

- (void)setHasNetworkType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (int)StringAsNetworkType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WIFI"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CELLULAR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WIRED_ETHERNET"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasEpochs:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTotalStaySecs:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasFaultyStaySecs:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasConnAttempts:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasConnSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasPacketsIn:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasPacketsOut:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasBytesOut:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSecsSinceLastTrimmed:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasDnsPartialFailures:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasDnsCompleteFailures:(BOOL)a3
{
  if (a3)
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
  v5 = [(AWDSymptomsNetworkAnalyticsHistorical *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 0x800) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
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

    [v3 setObject:v10 forKey:@"networkType"];

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
  [v3 setObject:v11 forKey:@"epochs"];

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
  [v3 setObject:v12 forKey:@"totalStaySecs"];

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
  [v3 setObject:v13 forKey:@"faultyStaySecs"];

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
  [v3 setObject:v14 forKey:@"connAttempts"];

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
  [v3 setObject:v15 forKey:@"connSuccess"];

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
  [v3 setObject:v16 forKey:@"packetsIn"];

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
  [v3 setObject:v17 forKey:@"packetsOut"];

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
  [v3 setObject:v18 forKey:@"bytesIn"];

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
  [v3 setObject:v19 forKey:@"bytesOut"];

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
  [v3 setObject:v20 forKey:@"secsSinceLastTrimmed"];

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
  [v3 setObject:v21 forKey:@"dnsPartialFailures"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_dnsCompleteFailures];
    [v3 setObject:v7 forKey:@"dnsCompleteFailures"];
  }

LABEL_19:

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x800) != 0)
  {
    v4[12] = self->_timestamp;
    *(v4 + 62) |= 0x800u;
  }

  if (self->_identifier)
  {
    v6 = v4;
    [v4 setIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    *(v4 + 30) = self->_networkType;
    *(v4 + 62) |= 0x2000u;
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

  v4[7] = self->_epochs;
  *(v4 + 62) |= 0x40u;
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
  v4[13] = self->_totalStaySecs;
  *(v4 + 62) |= 0x1000u;
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
  v4[8] = self->_faultyStaySecs;
  *(v4 + 62) |= 0x80u;
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
  v4[3] = self->_connAttempts;
  *(v4 + 62) |= 4u;
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
  v4[4] = self->_connSuccess;
  *(v4 + 62) |= 8u;
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
  v4[9] = self->_packetsIn;
  *(v4 + 62) |= 0x100u;
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
  v4[10] = self->_packetsOut;
  *(v4 + 62) |= 0x200u;
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
  v4[1] = self->_bytesIn;
  *(v4 + 62) |= 1u;
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
  v4[2] = self->_bytesOut;
  *(v4 + 62) |= 2u;
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
  v4[11] = self->_secsSinceLastTrimmed;
  *(v4 + 62) |= 0x400u;
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
  v4[6] = self->_dnsPartialFailures;
  *(v4 + 62) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    v4[5] = self->_dnsCompleteFailures;
    *(v4 + 62) |= 0x10u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x800) != 0)
  {
    *(v5 + 96) = self->_timestamp;
    *(v5 + 124) |= 0x800u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_75;
  }

  has = self->_has;
  v6 = *(v4 + 62);
  if ((has & 0x800) != 0)
  {
    if ((*(v4 + 62) & 0x800) == 0 || self->_timestamp != *(v4 + 12))
    {
      goto LABEL_75;
    }
  }

  else if ((*(v4 + 62) & 0x800) != 0)
  {
    goto LABEL_75;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 14))
  {
    if (![(NSString *)identifier isEqual:?])
    {
LABEL_75:
      v9 = 0;
      goto LABEL_76;
    }

    has = self->_has;
  }

  v8 = *(v4 + 62);
  if ((has & 0x2000) != 0)
  {
    if ((*(v4 + 62) & 0x2000) == 0 || self->_networkType != *(v4 + 30))
    {
      goto LABEL_75;
    }
  }

  else if ((*(v4 + 62) & 0x2000) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_epochs != *(v4 + 7))
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
    if ((*(v4 + 62) & 0x1000) == 0 || self->_totalStaySecs != *(v4 + 13))
    {
      goto LABEL_75;
    }
  }

  else if ((*(v4 + 62) & 0x1000) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_faultyStaySecs != *(v4 + 8))
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
    if ((v8 & 4) == 0 || self->_connAttempts != *(v4 + 3))
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
    if ((v8 & 8) == 0 || self->_connSuccess != *(v4 + 4))
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
    if ((*(v4 + 62) & 0x100) == 0 || self->_packetsIn != *(v4 + 9))
    {
      goto LABEL_75;
    }
  }

  else if ((*(v4 + 62) & 0x100) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x200) != 0)
  {
    if ((*(v4 + 62) & 0x200) == 0 || self->_packetsOut != *(v4 + 10))
    {
      goto LABEL_75;
    }
  }

  else if ((*(v4 + 62) & 0x200) != 0)
  {
    goto LABEL_75;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_bytesIn != *(v4 + 1))
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
    if ((v8 & 2) == 0 || self->_bytesOut != *(v4 + 2))
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
    if ((*(v4 + 62) & 0x400) == 0 || self->_secsSinceLastTrimmed != *(v4 + 11))
    {
      goto LABEL_75;
    }
  }

  else if ((*(v4 + 62) & 0x400) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_dnsPartialFailures != *(v4 + 6))
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
    if ((v8 & 0x10) == 0 || self->_dnsCompleteFailures != *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 62) & 0x800) != 0)
  {
    self->_timestamp = *(v4 + 12);
    *&self->_has |= 0x800u;
  }

  if (*(v4 + 14))
  {
    v6 = v4;
    [(AWDSymptomsNetworkAnalyticsHistorical *)self setIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 62);
  if ((v5 & 0x2000) != 0)
  {
    self->_networkType = *(v4 + 30);
    *&self->_has |= 0x2000u;
    v5 = *(v4 + 62);
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

  self->_epochs = *(v4 + 7);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 62);
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
  self->_totalStaySecs = *(v4 + 13);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 62);
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
  self->_faultyStaySecs = *(v4 + 8);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 62);
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
  self->_connAttempts = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 62);
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
  self->_connSuccess = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 62);
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
  self->_packetsIn = *(v4 + 9);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 62);
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
  self->_packetsOut = *(v4 + 10);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 62);
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
  self->_bytesIn = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 62);
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
  self->_bytesOut = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 62);
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
  self->_secsSinceLastTrimmed = *(v4 + 11);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 62);
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
  self->_dnsPartialFailures = *(v4 + 6);
  *&self->_has |= 0x20u;
  if ((*(v4 + 62) & 0x10) != 0)
  {
LABEL_18:
    self->_dnsCompleteFailures = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

LABEL_19:
}

@end