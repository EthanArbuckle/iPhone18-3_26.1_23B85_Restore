@interface AppTelemetryInvestigation
- (AppTelemetryInvestigation)init;
- (BOOL)isEqual:(id)equal;
- (double)_daysSinceLastOSUpdate;
- (double)_dbAgeFromDbCreationDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasEventTimestamp:(BOOL)timestamp;
- (void)setHasHasForegroundClients:(BOOL)clients;
- (void)setHasIsConsolidated:(BOOL)consolidated;
- (void)setHasIsEnhancedDrivePrivacyEnabled:(BOOL)enabled;
- (void)setHasIsPCSChained:(BOOL)chained;
- (void)setHasLastOSUpdate:(BOOL)update;
- (void)setHasNonDiscretionary:(BOOL)discretionary;
- (void)setHasSharedZone:(BOOL)zone;
- (void)setHasUnderlyingErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation AppTelemetryInvestigation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AppTelemetryInvestigation;
  v4 = [(AppTelemetryInvestigation *)&v8 description];
  dictionaryRepresentation = [(AppTelemetryInvestigation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  zoneName = self->_zoneName;
  if (zoneName)
  {
    [dictionary setObject:zoneName forKey:@"zoneName"];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_sharedZone];
    [v4 setObject:v6 forKey:@"sharedZone"];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v4 setObject:errorDomain forKey:@"errorDomain"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_errorCode];
    [v4 setObject:v8 forKey:@"errorCode"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v4 setObject:errorDescription forKey:@"errorDescription"];
  }

  lastStep = self->_lastStep;
  if (lastStep)
  {
    [v4 setObject:lastStep forKey:@"lastStep"];
  }

  itemID = self->_itemID;
  if (itemID)
  {
    [v4 setObject:itemID forKey:@"itemID"];
  }

  reason = self->_reason;
  if (reason)
  {
    [v4 setObject:reason forKey:@"reason"];
  }

  operationType = self->_operationType;
  if (operationType)
  {
    [v4 setObject:operationType forKey:@"operationType"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithBool:self->_nonDiscretionary];
    [v4 setObject:v35 forKey:@"nonDiscretionary"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_21:
      if ((has & 0x100) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_21;
  }

  v36 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasForegroundClients];
  [v4 setObject:v36 forKey:@"hasForegroundClients"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_22:
    v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPCSChained];
    [v4 setObject:v15 forKey:@"isPCSChained"];
  }

LABEL_23:
  eventGroupUUID = self->_eventGroupUUID;
  if (eventGroupUUID)
  {
    [v4 setObject:eventGroupUUID forKey:@"eventGroupUUID"];
  }

  migrationUUID = self->_migrationUUID;
  if (migrationUUID)
  {
    [v4 setObject:migrationUUID forKey:@"migrationUUID"];
  }

  qbsInvestigation = self->_qbsInvestigation;
  if (qbsInvestigation)
  {
    dictionaryRepresentation = [(AppTelemetryQBSInvestigation *)qbsInvestigation dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"qbsInvestigation"];
  }

  qbsPerformance = self->_qbsPerformance;
  if (qbsPerformance)
  {
    dictionaryRepresentation2 = [(AppTelemetryQBSPerformance *)qbsPerformance dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"qbsPerformance"];
  }

  fpfsMigrationInvestigation = self->_fpfsMigrationInvestigation;
  if (fpfsMigrationInvestigation)
  {
    dictionaryRepresentation3 = [(AppTelemetryFPFSMigrationInvestigation *)fpfsMigrationInvestigation dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"fpfsMigrationInvestigation"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_eventTimestamp];
    [v4 setObject:v24 forKey:@"eventTimestamp"];
  }

  itemStatsInvestigation = self->_itemStatsInvestigation;
  if (itemStatsInvestigation)
  {
    dictionaryRepresentation4 = [(AppTelemetryItemStatsInvestigation *)itemStatsInvestigation dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"itemStatsInvestigation"];
  }

  stuckStatus = self->_stuckStatus;
  if (stuckStatus)
  {
    dictionaryRepresentation5 = [(AppTelemetryStuckStatus *)stuckStatus dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"stuckStatus"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEnhancedDrivePrivacyEnabled];
    [v4 setObject:v29 forKey:@"isEnhancedDrivePrivacyEnabled"];
  }

  underlyingErrorDomain = self->_underlyingErrorDomain;
  if (underlyingErrorDomain)
  {
    [v4 setObject:underlyingErrorDomain forKey:@"underlyingErrorDomain"];
  }

  v31 = self->_has;
  if ((v31 & 0x10) != 0)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_underlyingErrorCode];
    [v4 setObject:v37 forKey:@"underlyingErrorCode"];

    v31 = self->_has;
    if ((v31 & 8) == 0)
    {
LABEL_45:
      if ((v31 & 0x40) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_58;
    }
  }

  else if ((v31 & 8) == 0)
  {
    goto LABEL_45;
  }

  v38 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastOSUpdate];
  [v4 setObject:v38 forKey:@"lastOSUpdate"];

  v31 = self->_has;
  if ((v31 & 0x40) == 0)
  {
LABEL_46:
    if ((v31 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_58:
  v39 = [MEMORY[0x277CCABB0] numberWithBool:self->_isConsolidated];
  [v4 setObject:v39 forKey:@"isConsolidated"];

  if (*&self->_has)
  {
LABEL_47:
    v32 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbAge];
    [v4 setObject:v32 forKey:@"dbAge"];
  }

LABEL_48:
  errorsChain = self->_errorsChain;
  if (errorsChain)
  {
    [v4 setObject:errorsChain forKey:@"errorsChain"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (self->_zoneName)
  {
    PBDataWriterWriteDataField();
    toCopy = v18;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    sharedZone = self->_sharedZone;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if ((*&self->_has & 2) != 0)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
    toCopy = v18;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_lastStep)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_itemID)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_operationType)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    nonDiscretionary = self->_nonDiscretionary;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_21:
      if ((has & 0x100) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_21;
  }

  hasForegroundClients = self->_hasForegroundClients;
  PBDataWriterWriteBOOLField();
  toCopy = v18;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_22:
    isPCSChained = self->_isPCSChained;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
  }

LABEL_23:
  if (self->_eventGroupUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_migrationUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_qbsInvestigation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v18;
  }

  if (self->_qbsPerformance)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v18;
  }

  if (self->_fpfsMigrationInvestigation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v18;
  }

  if ((*&self->_has & 4) != 0)
  {
    eventTimestamp = self->_eventTimestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v18;
  }

  if (self->_itemStatsInvestigation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v18;
  }

  if (self->_stuckStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v18;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    isEnhancedDrivePrivacyEnabled = self->_isEnhancedDrivePrivacyEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
  }

  if (self->_underlyingErrorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    underlyingErrorCode = self->_underlyingErrorCode;
    PBDataWriterWriteInt64Field();
    toCopy = v18;
    v11 = self->_has;
    if ((v11 & 8) == 0)
    {
LABEL_45:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_58;
    }
  }

  else if ((v11 & 8) == 0)
  {
    goto LABEL_45;
  }

  lastOSUpdate = self->_lastOSUpdate;
  PBDataWriterWriteInt64Field();
  toCopy = v18;
  v11 = self->_has;
  if ((v11 & 0x40) == 0)
  {
LABEL_46:
    if ((v11 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_58:
  isConsolidated = self->_isConsolidated;
  PBDataWriterWriteBOOLField();
  toCopy = v18;
  if (*&self->_has)
  {
LABEL_47:
    dbAge = self->_dbAge;
    PBDataWriterWriteInt64Field();
    toCopy = v18;
  }

LABEL_48:
  if (self->_errorsChain)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_zoneName)
  {
    [toCopy setZoneName:?];
    toCopy = v7;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(toCopy + 181) = self->_sharedZone;
    *(toCopy + 92) |= 0x400u;
  }

  if (self->_errorDomain)
  {
    [v7 setErrorDomain:?];
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_errorCode;
    *(toCopy + 92) |= 2u;
  }

  if (self->_errorDescription)
  {
    [v7 setErrorDescription:?];
    toCopy = v7;
  }

  if (self->_lastStep)
  {
    [v7 setLastStep:?];
    toCopy = v7;
  }

  if (self->_itemID)
  {
    [v7 setItemID:?];
    toCopy = v7;
  }

  if (self->_reason)
  {
    [v7 setReason:?];
    toCopy = v7;
  }

  if (self->_operationType)
  {
    [v7 setOperationType:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(toCopy + 180) = self->_nonDiscretionary;
    *(toCopy + 92) |= 0x200u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_21:
      if ((has & 0x100) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_21;
  }

  *(toCopy + 176) = self->_hasForegroundClients;
  *(toCopy + 92) |= 0x20u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_22:
    *(toCopy + 179) = self->_isPCSChained;
    *(toCopy + 92) |= 0x100u;
  }

LABEL_23:
  if (self->_eventGroupUUID)
  {
    [v7 setEventGroupUUID:?];
    toCopy = v7;
  }

  if (self->_migrationUUID)
  {
    [v7 setMigrationUUID:?];
    toCopy = v7;
  }

  if (self->_qbsInvestigation)
  {
    [v7 setQbsInvestigation:?];
    toCopy = v7;
  }

  if (self->_qbsPerformance)
  {
    [v7 setQbsPerformance:?];
    toCopy = v7;
  }

  if (self->_fpfsMigrationInvestigation)
  {
    [v7 setFpfsMigrationInvestigation:?];
    toCopy = v7;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 3) = self->_eventTimestamp;
    *(toCopy + 92) |= 4u;
  }

  if (self->_itemStatsInvestigation)
  {
    [v7 setItemStatsInvestigation:?];
    toCopy = v7;
  }

  if (self->_stuckStatus)
  {
    [v7 setStuckStatus:?];
    toCopy = v7;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(toCopy + 178) = self->_isEnhancedDrivePrivacyEnabled;
    *(toCopy + 92) |= 0x80u;
  }

  if (self->_underlyingErrorDomain)
  {
    [v7 setUnderlyingErrorDomain:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 5) = self->_underlyingErrorCode;
    *(toCopy + 92) |= 0x10u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_45:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_58;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_45;
  }

  *(toCopy + 4) = self->_lastOSUpdate;
  *(toCopy + 92) |= 8u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_46:
    if ((v6 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_58:
  *(toCopy + 177) = self->_isConsolidated;
  *(toCopy + 92) |= 0x40u;
  if (*&self->_has)
  {
LABEL_47:
    *(toCopy + 1) = self->_dbAge;
    *(toCopy + 92) |= 1u;
  }

LABEL_48:
  if (self->_errorsChain)
  {
    [v7 setErrorsChain:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_zoneName copyWithZone:zone];
  v7 = *(v5 + 168);
  *(v5 + 168) = v6;

  if ((*&self->_has & 0x400) != 0)
  {
    *(v5 + 181) = self->_sharedZone;
    *(v5 + 184) |= 0x400u;
  }

  v8 = [(NSString *)self->_errorDomain copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_errorCode;
    *(v5 + 184) |= 2u;
  }

  v10 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_lastStep copyWithZone:zone];
  v13 = *(v5 + 104);
  *(v5 + 104) = v12;

  v14 = [(NSString *)self->_itemID copyWithZone:zone];
  v15 = *(v5 + 88);
  *(v5 + 88) = v14;

  v16 = [(NSString *)self->_reason copyWithZone:zone];
  v17 = *(v5 + 144);
  *(v5 + 144) = v16;

  v18 = [(NSString *)self->_operationType copyWithZone:zone];
  v19 = *(v5 + 120);
  *(v5 + 120) = v18;

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v5 + 180) = self->_nonDiscretionary;
    *(v5 + 184) |= 0x200u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_7:
      if ((has & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 176) = self->_hasForegroundClients;
  *(v5 + 184) |= 0x20u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    *(v5 + 179) = self->_isPCSChained;
    *(v5 + 184) |= 0x100u;
  }

LABEL_9:
  v21 = [(NSString *)self->_eventGroupUUID copyWithZone:zone];
  v22 = *(v5 + 72);
  *(v5 + 72) = v21;

  v23 = [(NSString *)self->_migrationUUID copyWithZone:zone];
  v24 = *(v5 + 112);
  *(v5 + 112) = v23;

  v25 = [(AppTelemetryQBSInvestigation *)self->_qbsInvestigation copyWithZone:zone];
  v26 = *(v5 + 128);
  *(v5 + 128) = v25;

  v27 = [(AppTelemetryQBSPerformance *)self->_qbsPerformance copyWithZone:zone];
  v28 = *(v5 + 136);
  *(v5 + 136) = v27;

  v29 = [(AppTelemetryFPFSMigrationInvestigation *)self->_fpfsMigrationInvestigation copyWithZone:zone];
  v30 = *(v5 + 80);
  *(v5 + 80) = v29;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_eventTimestamp;
    *(v5 + 184) |= 4u;
  }

  v31 = [(AppTelemetryItemStatsInvestigation *)self->_itemStatsInvestigation copyWithZone:zone];
  v32 = *(v5 + 96);
  *(v5 + 96) = v31;

  v33 = [(AppTelemetryStuckStatus *)self->_stuckStatus copyWithZone:zone];
  v34 = *(v5 + 152);
  *(v5 + 152) = v33;

  if ((*&self->_has & 0x80) != 0)
  {
    *(v5 + 178) = self->_isEnhancedDrivePrivacyEnabled;
    *(v5 + 184) |= 0x80u;
  }

  v35 = [(NSString *)self->_underlyingErrorDomain copyWithZone:zone];
  v36 = *(v5 + 160);
  *(v5 + 160) = v35;

  v37 = self->_has;
  if ((v37 & 0x10) != 0)
  {
    *(v5 + 40) = self->_underlyingErrorCode;
    *(v5 + 184) |= 0x10u;
    v37 = self->_has;
    if ((v37 & 8) == 0)
    {
LABEL_15:
      if ((v37 & 0x40) == 0)
      {
        goto LABEL_16;
      }

LABEL_24:
      *(v5 + 177) = self->_isConsolidated;
      *(v5 + 184) |= 0x40u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v37 & 8) == 0)
  {
    goto LABEL_15;
  }

  *(v5 + 32) = self->_lastOSUpdate;
  *(v5 + 184) |= 8u;
  v37 = self->_has;
  if ((v37 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (v37)
  {
LABEL_17:
    *(v5 + 8) = self->_dbAge;
    *(v5 + 184) |= 1u;
  }

LABEL_18:
  v38 = [(NSString *)self->_errorsChain copyWithZone:zone];
  v39 = *(v5 + 64);
  *(v5 + 64) = v38;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  zoneName = self->_zoneName;
  if (zoneName | *(equalCopy + 21))
  {
    if (![(NSData *)zoneName isEqual:?])
    {
      goto LABEL_48;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 92);
  if ((has & 0x400) != 0)
  {
    if ((*(equalCopy + 92) & 0x400) == 0)
    {
      goto LABEL_48;
    }

    v10 = *(equalCopy + 181);
    if (self->_sharedZone)
    {
      if ((*(equalCopy + 181) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 181))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 92) & 0x400) != 0)
  {
    goto LABEL_48;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equalCopy + 7))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
      goto LABEL_48;
    }

    has = self->_has;
  }

  v9 = *(equalCopy + 92);
  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_errorCode != *(equalCopy + 2))
    {
      goto LABEL_48;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_48;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 6) && ![(NSString *)errorDescription isEqual:?])
  {
    goto LABEL_48;
  }

  lastStep = self->_lastStep;
  if (lastStep | *(equalCopy + 13))
  {
    if (![(NSString *)lastStep isEqual:?])
    {
      goto LABEL_48;
    }
  }

  itemID = self->_itemID;
  if (itemID | *(equalCopy + 11))
  {
    if (![(NSString *)itemID isEqual:?])
    {
      goto LABEL_48;
    }
  }

  reason = self->_reason;
  if (reason | *(equalCopy + 18))
  {
    if (![(NSString *)reason isEqual:?])
    {
      goto LABEL_48;
    }
  }

  operationType = self->_operationType;
  if (operationType | *(equalCopy + 15))
  {
    if (![(NSString *)operationType isEqual:?])
    {
      goto LABEL_48;
    }
  }

  v16 = self->_has;
  v17 = *(equalCopy + 92);
  if ((v16 & 0x200) != 0)
  {
    if ((*(equalCopy + 92) & 0x200) == 0)
    {
      goto LABEL_48;
    }

    v26 = *(equalCopy + 180);
    if (self->_nonDiscretionary)
    {
      if ((*(equalCopy + 180) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 180))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 92) & 0x200) != 0)
  {
    goto LABEL_48;
  }

  if ((v16 & 0x20) != 0)
  {
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    v27 = *(equalCopy + 176);
    if (self->_hasForegroundClients)
    {
      if ((*(equalCopy + 176) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 176))
    {
      goto LABEL_48;
    }
  }

  else if ((v17 & 0x20) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 92) & 0x100) == 0)
    {
      goto LABEL_48;
    }

    v28 = *(equalCopy + 179);
    if (self->_isPCSChained)
    {
      if ((*(equalCopy + 179) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 179))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 92) & 0x100) != 0)
  {
    goto LABEL_48;
  }

  eventGroupUUID = self->_eventGroupUUID;
  if (eventGroupUUID | *(equalCopy + 9) && ![(NSString *)eventGroupUUID isEqual:?])
  {
    goto LABEL_48;
  }

  migrationUUID = self->_migrationUUID;
  if (migrationUUID | *(equalCopy + 14))
  {
    if (![(NSString *)migrationUUID isEqual:?])
    {
      goto LABEL_48;
    }
  }

  qbsInvestigation = self->_qbsInvestigation;
  if (qbsInvestigation | *(equalCopy + 16))
  {
    if (![(AppTelemetryQBSInvestigation *)qbsInvestigation isEqual:?])
    {
      goto LABEL_48;
    }
  }

  qbsPerformance = self->_qbsPerformance;
  if (qbsPerformance | *(equalCopy + 17))
  {
    if (![(AppTelemetryQBSPerformance *)qbsPerformance isEqual:?])
    {
      goto LABEL_48;
    }
  }

  fpfsMigrationInvestigation = self->_fpfsMigrationInvestigation;
  if (fpfsMigrationInvestigation | *(equalCopy + 10))
  {
    if (![(AppTelemetryFPFSMigrationInvestigation *)fpfsMigrationInvestigation isEqual:?])
    {
      goto LABEL_48;
    }
  }

  v23 = *(equalCopy + 92);
  if ((*&self->_has & 4) != 0)
  {
    if ((v23 & 4) == 0 || self->_eventTimestamp != *(equalCopy + 3))
    {
      goto LABEL_48;
    }
  }

  else if ((v23 & 4) != 0)
  {
    goto LABEL_48;
  }

  itemStatsInvestigation = self->_itemStatsInvestigation;
  if (itemStatsInvestigation | *(equalCopy + 12) && ![(AppTelemetryItemStatsInvestigation *)itemStatsInvestigation isEqual:?])
  {
    goto LABEL_48;
  }

  stuckStatus = self->_stuckStatus;
  if (stuckStatus | *(equalCopy + 19))
  {
    if (![(AppTelemetryStuckStatus *)stuckStatus isEqual:?])
    {
      goto LABEL_48;
    }
  }

  v31 = self->_has;
  v32 = *(equalCopy + 92);
  if ((v31 & 0x80) != 0)
  {
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_48;
    }

    v35 = *(equalCopy + 178);
    if (self->_isEnhancedDrivePrivacyEnabled)
    {
      if ((*(equalCopy + 178) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 178))
    {
      goto LABEL_48;
    }
  }

  else if ((v32 & 0x80) != 0)
  {
    goto LABEL_48;
  }

  underlyingErrorDomain = self->_underlyingErrorDomain;
  if (underlyingErrorDomain | *(equalCopy + 20))
  {
    if (![(NSString *)underlyingErrorDomain isEqual:?])
    {
      goto LABEL_48;
    }

    v31 = self->_has;
  }

  v34 = *(equalCopy + 92);
  if ((v31 & 0x10) != 0)
  {
    if ((v34 & 0x10) == 0 || self->_underlyingErrorCode != *(equalCopy + 5))
    {
      goto LABEL_48;
    }
  }

  else if ((v34 & 0x10) != 0)
  {
    goto LABEL_48;
  }

  if ((v31 & 8) != 0)
  {
    if ((v34 & 8) == 0 || self->_lastOSUpdate != *(equalCopy + 4))
    {
      goto LABEL_48;
    }
  }

  else if ((v34 & 8) != 0)
  {
    goto LABEL_48;
  }

  if ((v31 & 0x40) != 0)
  {
    if ((v34 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    v36 = *(equalCopy + 177);
    if (self->_isConsolidated)
    {
      if ((*(equalCopy + 177) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 177))
    {
      goto LABEL_48;
    }
  }

  else if ((v34 & 0x40) != 0)
  {
    goto LABEL_48;
  }

  if ((v31 & 1) == 0)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_106;
    }

LABEL_48:
    v24 = 0;
    goto LABEL_49;
  }

  if ((v34 & 1) == 0 || self->_dbAge != *(equalCopy + 1))
  {
    goto LABEL_48;
  }

LABEL_106:
  errorsChain = self->_errorsChain;
  if (errorsChain | *(equalCopy + 8))
  {
    v24 = [(NSString *)errorsChain isEqual:?];
  }

  else
  {
    v24 = 1;
  }

LABEL_49:

  return v24;
}

- (unint64_t)hash
{
  v31 = [(NSData *)self->_zoneName hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v30 = 2654435761 * self->_sharedZone;
  }

  else
  {
    v30 = 0;
  }

  v29 = [(NSString *)self->_errorDomain hash];
  if ((*&self->_has & 2) != 0)
  {
    v28 = 2654435761 * self->_errorCode;
  }

  else
  {
    v28 = 0;
  }

  v27 = [(NSString *)self->_errorDescription hash];
  v26 = [(NSString *)self->_lastStep hash];
  v25 = [(NSString *)self->_itemID hash];
  v24 = [(NSString *)self->_reason hash];
  v23 = [(NSString *)self->_operationType hash];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
    v22 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v21 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v22 = 2654435761 * self->_nonDiscretionary;
  if ((has & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v21 = 2654435761 * self->_hasForegroundClients;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v20 = 2654435761 * self->_isPCSChained;
    goto LABEL_14;
  }

LABEL_13:
  v20 = 0;
LABEL_14:
  v19 = [(NSString *)self->_eventGroupUUID hash];
  v18 = [(NSString *)self->_migrationUUID hash];
  v4 = [(AppTelemetryQBSInvestigation *)self->_qbsInvestigation hash];
  v5 = [(AppTelemetryQBSPerformance *)self->_qbsPerformance hash];
  v6 = [(AppTelemetryFPFSMigrationInvestigation *)self->_fpfsMigrationInvestigation hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761u * self->_eventTimestamp;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(AppTelemetryItemStatsInvestigation *)self->_itemStatsInvestigation hash];
  v9 = [(AppTelemetryStuckStatus *)self->_stuckStatus hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v10 = 2654435761 * self->_isEnhancedDrivePrivacyEnabled;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(NSString *)self->_underlyingErrorDomain hash];
  v12 = self->_has;
  if ((v12 & 0x10) != 0)
  {
    v13 = 2654435761 * self->_underlyingErrorCode;
    if ((v12 & 8) != 0)
    {
LABEL_22:
      v14 = 2654435761 * self->_lastOSUpdate;
      if ((v12 & 0x40) != 0)
      {
        goto LABEL_23;
      }

LABEL_27:
      v15 = 0;
      if (v12)
      {
        goto LABEL_24;
      }

LABEL_28:
      v16 = 0;
      return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ [(NSString *)self->_errorsChain hash];
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_22;
    }
  }

  v14 = 0;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v15 = 2654435761 * self->_isConsolidated;
  if ((v12 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = 2654435761 * self->_dbAge;
  return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ [(NSString *)self->_errorsChain hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v17 = fromCopy;
  if (*(fromCopy + 21))
  {
    [(AppTelemetryInvestigation *)self setZoneName:?];
    fromCopy = v17;
  }

  if ((*(fromCopy + 92) & 0x400) != 0)
  {
    self->_sharedZone = *(fromCopy + 181);
    *&self->_has |= 0x400u;
  }

  if (*(fromCopy + 7))
  {
    [(AppTelemetryInvestigation *)self setErrorDomain:?];
    fromCopy = v17;
  }

  if ((*(fromCopy + 92) & 2) != 0)
  {
    self->_errorCode = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 6))
  {
    [(AppTelemetryInvestigation *)self setErrorDescription:?];
    fromCopy = v17;
  }

  if (*(fromCopy + 13))
  {
    [(AppTelemetryInvestigation *)self setLastStep:?];
    fromCopy = v17;
  }

  if (*(fromCopy + 11))
  {
    [(AppTelemetryInvestigation *)self setItemID:?];
    fromCopy = v17;
  }

  if (*(fromCopy + 18))
  {
    [(AppTelemetryInvestigation *)self setReason:?];
    fromCopy = v17;
  }

  if (*(fromCopy + 15))
  {
    [(AppTelemetryInvestigation *)self setOperationType:?];
    fromCopy = v17;
  }

  v5 = *(fromCopy + 92);
  if ((v5 & 0x200) != 0)
  {
    self->_nonDiscretionary = *(fromCopy + 180);
    *&self->_has |= 0x200u;
    v5 = *(fromCopy + 92);
    if ((v5 & 0x20) == 0)
    {
LABEL_21:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_21;
  }

  self->_hasForegroundClients = *(fromCopy + 176);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 92) & 0x100) != 0)
  {
LABEL_22:
    self->_isPCSChained = *(fromCopy + 179);
    *&self->_has |= 0x100u;
  }

LABEL_23:
  if (*(fromCopy + 9))
  {
    [(AppTelemetryInvestigation *)self setEventGroupUUID:?];
    fromCopy = v17;
  }

  if (*(fromCopy + 14))
  {
    [(AppTelemetryInvestigation *)self setMigrationUUID:?];
    fromCopy = v17;
  }

  qbsInvestigation = self->_qbsInvestigation;
  v7 = *(fromCopy + 16);
  if (qbsInvestigation)
  {
    if (!v7)
    {
      goto LABEL_36;
    }

    [(AppTelemetryQBSInvestigation *)qbsInvestigation mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_36;
    }

    [(AppTelemetryInvestigation *)self setQbsInvestigation:?];
  }

  fromCopy = v17;
LABEL_36:
  qbsPerformance = self->_qbsPerformance;
  v9 = *(fromCopy + 17);
  if (qbsPerformance)
  {
    if (!v9)
    {
      goto LABEL_42;
    }

    [(AppTelemetryQBSPerformance *)qbsPerformance mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_42;
    }

    [(AppTelemetryInvestigation *)self setQbsPerformance:?];
  }

  fromCopy = v17;
LABEL_42:
  fpfsMigrationInvestigation = self->_fpfsMigrationInvestigation;
  v11 = *(fromCopy + 10);
  if (fpfsMigrationInvestigation)
  {
    if (!v11)
    {
      goto LABEL_48;
    }

    [(AppTelemetryFPFSMigrationInvestigation *)fpfsMigrationInvestigation mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_48;
    }

    [(AppTelemetryInvestigation *)self setFpfsMigrationInvestigation:?];
  }

  fromCopy = v17;
LABEL_48:
  if ((*(fromCopy + 92) & 4) != 0)
  {
    self->_eventTimestamp = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

  itemStatsInvestigation = self->_itemStatsInvestigation;
  v13 = *(fromCopy + 12);
  if (itemStatsInvestigation)
  {
    if (!v13)
    {
      goto LABEL_56;
    }

    [(AppTelemetryItemStatsInvestigation *)itemStatsInvestigation mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_56;
    }

    [(AppTelemetryInvestigation *)self setItemStatsInvestigation:?];
  }

  fromCopy = v17;
LABEL_56:
  stuckStatus = self->_stuckStatus;
  v15 = *(fromCopy + 19);
  if (stuckStatus)
  {
    if (!v15)
    {
      goto LABEL_62;
    }

    [(AppTelemetryStuckStatus *)stuckStatus mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_62;
    }

    [(AppTelemetryInvestigation *)self setStuckStatus:?];
  }

  fromCopy = v17;
LABEL_62:
  if ((*(fromCopy + 92) & 0x80) != 0)
  {
    self->_isEnhancedDrivePrivacyEnabled = *(fromCopy + 178);
    *&self->_has |= 0x80u;
  }

  if (*(fromCopy + 20))
  {
    [(AppTelemetryInvestigation *)self setUnderlyingErrorDomain:?];
    fromCopy = v17;
  }

  v16 = *(fromCopy + 92);
  if ((v16 & 0x10) != 0)
  {
    self->_underlyingErrorCode = *(fromCopy + 5);
    *&self->_has |= 0x10u;
    v16 = *(fromCopy + 92);
    if ((v16 & 8) == 0)
    {
LABEL_68:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_78;
    }
  }

  else if ((v16 & 8) == 0)
  {
    goto LABEL_68;
  }

  self->_lastOSUpdate = *(fromCopy + 4);
  *&self->_has |= 8u;
  v16 = *(fromCopy + 92);
  if ((v16 & 0x40) == 0)
  {
LABEL_69:
    if ((v16 & 1) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_78:
  self->_isConsolidated = *(fromCopy + 177);
  *&self->_has |= 0x40u;
  if (*(fromCopy + 92))
  {
LABEL_70:
    self->_dbAge = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_71:
  if (*(fromCopy + 8))
  {
    [(AppTelemetryInvestigation *)self setErrorsChain:?];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setHasSharedZone:(BOOL)zone
{
  if (zone)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasNonDiscretionary:(BOOL)discretionary
{
  if (discretionary)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasHasForegroundClients:(BOOL)clients
{
  if (clients)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsPCSChained:(BOOL)chained
{
  if (chained)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasEventTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsEnhancedDrivePrivacyEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasUnderlyingErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasLastOSUpdate:(BOOL)update
{
  if (update)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasIsConsolidated:(BOOL)consolidated
{
  if (consolidated)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (AppTelemetryInvestigation)init
{
  v10.receiver = self;
  v10.super_class = AppTelemetryInvestigation;
  v2 = [(AppTelemetryInvestigation *)&v10 init];
  if (v2)
  {
    v3 = +[BRCAccountsManager sharedManager];
    accountHandlerForCurrentPersona = [v3 accountHandlerForCurrentPersona];
    session = [accountHandlerForCurrentPersona session];

    if (session)
    {
      -[AppTelemetryInvestigation setIsConsolidated:](v2, "setIsConsolidated:", [session isConsolidatedAccount]);
      dbCreationDate = [session dbCreationDate];
      [(AppTelemetryInvestigation *)v2 _dbAgeFromDbCreationDate:dbCreationDate];
      [(AppTelemetryInvestigation *)v2 setDbAge:v7];
    }

    [(AppTelemetryInvestigation *)v2 _daysSinceLastOSUpdate];
    if (v8 != -1)
    {
      [(AppTelemetryInvestigation *)v2 setLastOSUpdate:?];
    }
  }

  return v2;
}

- (double)_daysSinceLastOSUpdate
{
  if (_daysSinceLastOSUpdate_onceToken != -1)
  {
    [AppTelemetryInvestigation(BRCAdditions) _daysSinceLastOSUpdate];
  }

  if (!_daysSinceLastOSUpdate_lastOSUpdateDate)
  {
    return -1.0;
  }

  [_daysSinceLastOSUpdate_lastOSUpdateDate timeIntervalSinceNow];
  if (ceil(v2 / -86400.0) == -1.0)
  {
    return -1.0;
  }

  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = [v3 br_round:1];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)_dbAgeFromDbCreationDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (dateCopy)
  {
    [dateCopy timeIntervalSinceNow];
    v6 = -1.0;
    if (ceil(v5 / -86400.0) != -1.0)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v8 = [v7 br_round:1];
      [v8 doubleValue];
      v6 = v9;
    }
  }

  else
  {
    v6 = -1.0;
  }

  return v6;
}

@end