@interface AWDSymptomsNetworkAnalyticsInstant
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkType:(id)type;
- (int)networkType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasArpThreshold:(BOOL)threshold;
- (void)setHasArpThresholded:(BOOL)thresholded;
- (void)setHasBytesOut:(BOOL)out;
- (void)setHasConnAttempts:(BOOL)attempts;
- (void)setHasConnSuccess:(BOOL)success;
- (void)setHasCumulInternetOutageSecs:(BOOL)secs;
- (void)setHasDnsServers:(BOOL)servers;
- (void)setHasHasInternetConn:(BOOL)conn;
- (void)setHasLastReportedL2TxFail:(BOOL)fail;
- (void)setHasLastReportedL2TxFrames:(BOOL)frames;
- (void)setHasLastReportedL2TxReTry:(BOOL)try;
- (void)setHasLastReportedLQM:(BOOL)m;
- (void)setHasLastReportedRSSI:(BOOL)i;
- (void)setHasNetworkType:(BOOL)type;
- (void)setHasPacketsIn:(BOOL)in;
- (void)setHasPacketsOut:(BOOL)out;
- (void)setHasPenalizedDnsServers:(BOOL)servers;
- (void)setHasRttMinUsecs:(BOOL)usecs;
- (void)setHasRxSignalThreshold:(BOOL)threshold;
- (void)setHasRxSignalThresholded:(BOOL)thresholded;
- (void)setHasSupportsIPv4:(BOOL)pv4;
- (void)setHasSupportsIPv6:(BOOL)pv6;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsNetworkAnalyticsInstant

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

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (int)networkType
{
  if (*(&self->_has + 2))
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
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
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

- (void)setHasHasInternetConn:(BOOL)conn
{
  if (conn)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasCumulInternetOutageSecs:(BOOL)secs
{
  if (secs)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
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

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
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

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
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

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
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

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
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

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasRttMinUsecs:(BOOL)usecs
{
  if (usecs)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasDnsServers:(BOOL)servers
{
  if (servers)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasPenalizedDnsServers:(BOOL)servers
{
  if (servers)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasRxSignalThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasRxSignalThresholded:(BOOL)thresholded
{
  if (thresholded)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasArpThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasArpThresholded:(BOOL)thresholded
{
  if (thresholded)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasSupportsIPv4:(BOOL)pv4
{
  if (pv4)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasSupportsIPv6:(BOOL)pv6
{
  if (pv6)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasLastReportedRSSI:(BOOL)i
{
  if (i)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasLastReportedLQM:(BOOL)m
{
  if (m)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasLastReportedL2TxFrames:(BOOL)frames
{
  if (frames)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasLastReportedL2TxReTry:(BOOL)try
{
  if (try)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasLastReportedL2TxFail:(BOOL)fail
{
  if (fail)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNetworkAnalyticsInstant;
  v4 = [(AWDSymptomsNetworkAnalyticsInstant *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsNetworkAnalyticsInstant *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*(&self->_has + 1) & 8) != 0)
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
  if ((*&has & 0x10000) != 0)
  {
    v9 = self->_networkType - 1;
    if (v9 >= 3)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_networkType];
    }

    else
    {
      v10 = off_27898CED8[v9];
    }

    [dictionary setObject:v10 forKey:@"networkType"];

    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_7:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasInternetConn];
  [dictionary setObject:v11 forKey:@"hasInternetConn"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_cumulInternetOutageSecs];
  [dictionary setObject:v12 forKey:@"cumulInternetOutageSecs"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_connAttempts];
  [dictionary setObject:v13 forKey:@"connAttempts"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_connSuccess];
  [dictionary setObject:v14 forKey:@"connSuccess"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetsIn];
  [dictionary setObject:v15 forKey:@"packetsIn"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetsOut];
  [dictionary setObject:v16 forKey:@"packetsOut"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bytesIn];
  [dictionary setObject:v17 forKey:@"bytesIn"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bytesOut];
  [dictionary setObject:v18 forKey:@"bytesOut"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_rttMinUsecs];
  [dictionary setObject:v19 forKey:@"rttMinUsecs"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dnsServers];
  [dictionary setObject:v20 forKey:@"dnsServers"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_penalizedDnsServers];
  [dictionary setObject:v21 forKey:@"penalizedDnsServers"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rxSignalThreshold];
  [dictionary setObject:v22 forKey:@"rxSignalThreshold"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_rxSignalThresholded];
  [dictionary setObject:v23 forKey:@"rxSignalThresholded"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_arpThreshold];
  [dictionary setObject:v24 forKey:@"arpThreshold"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_21:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_arpThresholded];
  [dictionary setObject:v25 forKey:@"arpThresholded"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_22:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsIPv4];
  [dictionary setObject:v26 forKey:@"supportsIPv4"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsIPv6];
  [dictionary setObject:v27 forKey:@"supportsIPv6"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_24:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lastReportedRSSI];
  [dictionary setObject:v28 forKey:@"lastReportedRSSI"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_25:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  v29 = [MEMORY[0x277CCABB0] numberWithInt:self->_lastReportedLQM];
  [dictionary setObject:v29 forKey:@"lastReportedLQM"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_26:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_lastReportedL2TxFrames];
  [dictionary setObject:v30 forKey:@"lastReportedL2TxFrames"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_56:
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_lastReportedL2TxReTry];
  [dictionary setObject:v31 forKey:@"lastReportedL2TxReTry"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_28:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_lastReportedL2TxFail];
    [dictionary setObject:v7 forKey:@"lastReportedL2TxFail"];
  }

LABEL_29:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*(&self->_has + 1) & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    networkType = self->_networkType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_7:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_7;
  }

  hasInternetConn = self->_hasInternetConn;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  cumulInternetOutageSecs = self->_cumulInternetOutageSecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  connAttempts = self->_connAttempts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  connSuccess = self->_connSuccess;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  packetsIn = self->_packetsIn;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  packetsOut = self->_packetsOut;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  bytesIn = self->_bytesIn;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  bytesOut = self->_bytesOut;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  rttMinUsecs = self->_rttMinUsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  dnsServers = self->_dnsServers;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  penalizedDnsServers = self->_penalizedDnsServers;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  rxSignalThreshold = self->_rxSignalThreshold;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  rxSignalThresholded = self->_rxSignalThresholded;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  arpThreshold = self->_arpThreshold;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_21:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  arpThresholded = self->_arpThresholded;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_22:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  supportsIPv4 = self->_supportsIPv4;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  supportsIPv6 = self->_supportsIPv6;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_24:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  lastReportedRSSI = self->_lastReportedRSSI;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_25:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  lastReportedLQM = self->_lastReportedLQM;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_26:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  lastReportedL2TxFrames = self->_lastReportedL2TxFrames;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_53:
  lastReportedL2TxReTry = self->_lastReportedL2TxReTry;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_28:
    lastReportedL2TxFail = self->_lastReportedL2TxFail;
    PBDataWriterWriteUint64Field();
  }

LABEL_29:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*(&self->_has + 1) & 8) != 0)
  {
    toCopy[12] = self->_timestamp;
    *(toCopy + 37) |= 0x800u;
  }

  if (self->_identifier)
  {
    v6 = toCopy;
    [toCopy setIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    *(toCopy + 32) = self->_networkType;
    *(toCopy + 37) |= 0x10000u;
    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_7:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 141) = self->_hasInternetConn;
  *(toCopy + 37) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  toCopy[5] = self->_cumulInternetOutageSecs;
  *(toCopy + 37) |= 0x10u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  toCopy[3] = self->_connAttempts;
  *(toCopy + 37) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  toCopy[4] = self->_connSuccess;
  *(toCopy + 37) |= 8u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  toCopy[9] = self->_packetsIn;
  *(toCopy + 37) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  toCopy[10] = self->_packetsOut;
  *(toCopy + 37) |= 0x200u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  toCopy[1] = self->_bytesIn;
  *(toCopy + 37) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  toCopy[2] = self->_bytesOut;
  *(toCopy + 37) |= 2u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  toCopy[11] = self->_rttMinUsecs;
  *(toCopy + 37) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 27) = self->_dnsServers;
  *(toCopy + 37) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 33) = self->_penalizedDnsServers;
  *(toCopy + 37) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 34) = self->_rxSignalThreshold;
  *(toCopy + 37) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 142) = self->_rxSignalThresholded;
  *(toCopy + 37) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 26) = self->_arpThreshold;
  *(toCopy + 37) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_21:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 140) = self->_arpThresholded;
  *(toCopy + 37) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_22:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 143) = self->_supportsIPv4;
  *(toCopy + 37) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 144) = self->_supportsIPv6;
  *(toCopy + 37) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_24:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(toCopy + 31) = self->_lastReportedRSSI;
  *(toCopy + 37) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_25:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(toCopy + 30) = self->_lastReportedLQM;
  *(toCopy + 37) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_26:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  toCopy[7] = self->_lastReportedL2TxFrames;
  *(toCopy + 37) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_53:
  toCopy[8] = self->_lastReportedL2TxReTry;
  *(toCopy + 37) |= 0x80u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_28:
    toCopy[6] = self->_lastReportedL2TxFail;
    *(toCopy + 37) |= 0x20u;
  }

LABEL_29:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*(&self->_has + 1) & 8) != 0)
  {
    *(v5 + 96) = self->_timestamp;
    *(v5 + 148) |= 0x800u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  v8 = *(v6 + 112);
  *(v6 + 112) = v7;

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    *(v6 + 128) = self->_networkType;
    *(v6 + 148) |= 0x10000u;
    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_5:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 141) = self->_hasInternetConn;
  *(v6 + 148) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v6 + 40) = self->_cumulInternetOutageSecs;
  *(v6 + 148) |= 0x10u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v6 + 24) = self->_connAttempts;
  *(v6 + 148) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v6 + 32) = self->_connSuccess;
  *(v6 + 148) |= 8u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v6 + 72) = self->_packetsIn;
  *(v6 + 148) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v6 + 80) = self->_packetsOut;
  *(v6 + 148) |= 0x200u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v6 + 8) = self->_bytesIn;
  *(v6 + 148) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v6 + 16) = self->_bytesOut;
  *(v6 + 148) |= 2u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v6 + 88) = self->_rttMinUsecs;
  *(v6 + 148) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v6 + 108) = self->_dnsServers;
  *(v6 + 148) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v6 + 132) = self->_penalizedDnsServers;
  *(v6 + 148) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 136) = self->_rxSignalThreshold;
  *(v6 + 148) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 142) = self->_rxSignalThresholded;
  *(v6 + 148) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 104) = self->_arpThreshold;
  *(v6 + 148) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v6 + 140) = self->_arpThresholded;
  *(v6 + 148) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_20:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 143) = self->_supportsIPv4;
  *(v6 + 148) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_21:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 144) = self->_supportsIPv6;
  *(v6 + 148) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v6 + 124) = self->_lastReportedRSSI;
  *(v6 + 148) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_23:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 120) = self->_lastReportedLQM;
  *(v6 + 148) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_24:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_25;
    }

LABEL_49:
    *(v6 + 64) = self->_lastReportedL2TxReTry;
    *(v6 + 148) |= 0x80u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v6;
    }

    goto LABEL_26;
  }

LABEL_48:
  *(v6 + 56) = self->_lastReportedL2TxFrames;
  *(v6 + 148) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    goto LABEL_49;
  }

LABEL_25:
  if ((*&has & 0x20) != 0)
  {
LABEL_26:
    *(v6 + 48) = self->_lastReportedL2TxFail;
    *(v6 + 148) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_140;
  }

  has = self->_has;
  v6 = *(equalCopy + 37);
  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_timestamp != *(equalCopy + 12))
    {
      goto LABEL_140;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_140;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 14))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_140;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 37);
  if ((*&has & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0 || self->_networkType != *(equalCopy + 32))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x10000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_140;
    }

    v9 = *(equalCopy + 141);
    if (self->_hasInternetConn)
    {
      if ((*(equalCopy + 141) & 1) == 0)
      {
        goto LABEL_140;
      }
    }

    else if (*(equalCopy + 141))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x100000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_cumulInternetOutageSecs != *(equalCopy + 5))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_connAttempts != *(equalCopy + 3))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_connSuccess != *(equalCopy + 4))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v8 & 0x100) == 0 || self->_packetsIn != *(equalCopy + 9))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x100) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0 || self->_packetsOut != *(equalCopy + 10))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_140;
  }

  if (*&has)
  {
    if ((v8 & 1) == 0 || self->_bytesIn != *(equalCopy + 1))
    {
      goto LABEL_140;
    }
  }

  else if (v8)
  {
    goto LABEL_140;
  }

  if ((*&has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_bytesOut != *(equalCopy + 2))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || self->_rttMinUsecs != *(equalCopy + 11))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_dnsServers != *(equalCopy + 27))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0 || self->_penalizedDnsServers != *(equalCopy + 33))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x20000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0 || self->_rxSignalThreshold != *(equalCopy + 34))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_140;
    }

    v10 = *(equalCopy + 142);
    if (self->_rxSignalThresholded)
    {
      if ((*(equalCopy + 142) & 1) == 0)
      {
        goto LABEL_140;
      }
    }

    else if (*(equalCopy + 142))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0 || self->_arpThreshold != *(equalCopy + 26))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_140;
    }

    v11 = *(equalCopy + 140);
    if (self->_arpThresholded)
    {
      if ((*(equalCopy + 140) & 1) == 0)
      {
        goto LABEL_140;
      }
    }

    else if (*(equalCopy + 140))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x80000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_140;
    }

    v12 = *(equalCopy + 143);
    if (self->_supportsIPv4)
    {
      if ((*(equalCopy + 143) & 1) == 0)
      {
        goto LABEL_140;
      }
    }

    else if (*(equalCopy + 143))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x400000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x800000) == 0)
  {
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_97;
    }

LABEL_140:
    v14 = 0;
    goto LABEL_141;
  }

  if ((v8 & 0x800000) == 0)
  {
    goto LABEL_140;
  }

  v13 = *(equalCopy + 144);
  if (self->_supportsIPv6)
  {
    if ((*(equalCopy + 144) & 1) == 0)
    {
      goto LABEL_140;
    }
  }

  else if (*(equalCopy + 144))
  {
    goto LABEL_140;
  }

LABEL_97:
  if ((*&has & 0x8000) != 0)
  {
    if ((v8 & 0x8000) == 0 || self->_lastReportedRSSI != *(equalCopy + 31))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x8000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v8 & 0x4000) == 0 || self->_lastReportedLQM != *(equalCopy + 30))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x4000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_lastReportedL2TxFrames != *(equalCopy + 7))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_lastReportedL2TxReTry != *(equalCopy + 8))
    {
      goto LABEL_140;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_lastReportedL2TxFail != *(equalCopy + 6))
    {
      goto LABEL_140;
    }

    v14 = 1;
  }

  else
  {
    v14 = (*(equalCopy + 37) & 0x20) == 0;
  }

LABEL_141:

  return v14;
}

- (unint64_t)hash
{
  if ((*(&self->_has + 1) & 8) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_identifier hash];
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    v6 = 2654435761 * self->_networkType;
    if ((*&has & 0x100000) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_hasInternetConn;
      if ((*&has & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v6 = 0;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_cumulInternetOutageSecs;
    if ((*&has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  v8 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_connAttempts;
    if ((*&has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_connSuccess;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_packetsIn;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_packetsOut;
    if (*&has)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = 0;
  if (*&has)
  {
LABEL_12:
    v13 = 2654435761u * self->_bytesIn;
    if ((*&has & 2) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_13:
    v14 = 2654435761u * self->_bytesOut;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  v14 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_14:
    v15 = 2654435761u * self->_rttMinUsecs;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  v15 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_dnsServers;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  v16 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_penalizedDnsServers;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  v17 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_17:
    v18 = 2654435761 * self->_rxSignalThreshold;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  v18 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_18:
    v19 = 2654435761 * self->_rxSignalThresholded;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_19:
    v20 = 2654435761 * self->_arpThreshold;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_20:
    v21 = 2654435761 * self->_arpThresholded;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  v21 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_21:
    v22 = 2654435761 * self->_supportsIPv4;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  v22 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_22:
    v23 = 2654435761 * self->_supportsIPv6;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  v23 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_23:
    v24 = 2654435761 * self->_lastReportedRSSI;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_24:
    v25 = 2654435761 * self->_lastReportedLQM;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  v25 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_25:
    v26 = 2654435761u * self->_lastReportedL2TxFrames;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_26;
    }

LABEL_49:
    v27 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_27;
    }

LABEL_50:
    v28 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_48:
  v26 = 0;
  if ((*&has & 0x80) == 0)
  {
    goto LABEL_49;
  }

LABEL_26:
  v27 = 2654435761u * self->_lastReportedL2TxReTry;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_50;
  }

LABEL_27:
  v28 = 2654435761u * self->_lastReportedL2TxFail;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 149) & 8) != 0)
  {
    self->_timestamp = *(fromCopy + 12);
    *&self->_has |= 0x800u;
  }

  if (*(fromCopy + 14))
  {
    v6 = fromCopy;
    [(AWDSymptomsNetworkAnalyticsInstant *)self setIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 37);
  if ((v5 & 0x10000) != 0)
  {
    self->_networkType = *(fromCopy + 32);
    *&self->_has |= 0x10000u;
    v5 = *(fromCopy + 37);
    if ((v5 & 0x100000) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x100000) == 0)
  {
    goto LABEL_7;
  }

  self->_hasInternetConn = *(fromCopy + 141);
  *&self->_has |= 0x100000u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_cumulInternetOutageSecs = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 37);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_connAttempts = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 37);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_connSuccess = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_packetsIn = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_packetsOut = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 37);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_bytesIn = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 37);
  if ((v5 & 2) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_bytesOut = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_rttMinUsecs = *(fromCopy + 11);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_dnsServers = *(fromCopy + 27);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x20000) == 0)
  {
LABEL_17:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_penalizedDnsServers = *(fromCopy + 33);
  *&self->_has |= 0x20000u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x40000) == 0)
  {
LABEL_18:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_rxSignalThreshold = *(fromCopy + 34);
  *&self->_has |= 0x40000u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x200000) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_rxSignalThresholded = *(fromCopy + 142);
  *&self->_has |= 0x200000u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_arpThreshold = *(fromCopy + 26);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_arpThresholded = *(fromCopy + 140);
  *&self->_has |= 0x80000u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x400000) == 0)
  {
LABEL_22:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_supportsIPv4 = *(fromCopy + 143);
  *&self->_has |= 0x400000u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x800000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_supportsIPv6 = *(fromCopy + 144);
  *&self->_has |= 0x800000u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x8000) == 0)
  {
LABEL_24:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_lastReportedRSSI = *(fromCopy + 31);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x4000) == 0)
  {
LABEL_25:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_lastReportedLQM = *(fromCopy + 30);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x40) == 0)
  {
LABEL_26:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_lastReportedL2TxFrames = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 37);
  if ((v5 & 0x80) == 0)
  {
LABEL_27:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_53:
  self->_lastReportedL2TxReTry = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 37) & 0x20) != 0)
  {
LABEL_28:
    self->_lastReportedL2TxFail = *(fromCopy + 6);
    *&self->_has |= 0x20u;
  }

LABEL_29:
}

@end