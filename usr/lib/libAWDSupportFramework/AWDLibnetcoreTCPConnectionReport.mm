@interface AWDLibnetcoreTCPConnectionReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReportReason:(id)a3;
- (int)reportReason;
- (unint64_t)hash;
- (void)addConnectionAttemptStatisticsReports:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDelegated:(BOOL)a3;
- (void)setHasReportReason:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDLibnetcoreTCPConnectionReport

- (void)dealloc
{
  [(AWDLibnetcoreTCPConnectionReport *)self setClientIdentifier:0];
  [(AWDLibnetcoreTCPConnectionReport *)self setConnectionStatisticsReport:0];
  [(AWDLibnetcoreTCPConnectionReport *)self setCellularFallbackReport:0];
  [(AWDLibnetcoreTCPConnectionReport *)self setConnectionAttemptStatisticsReports:0];
  [(AWDLibnetcoreTCPConnectionReport *)self setSourceAppIdentifier:0];
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreTCPConnectionReport;
  [(AWDLibnetcoreTCPConnectionReport *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDelegated:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)reportReason
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_reportReason;
  }

  else
  {
    return 1;
  }
}

- (void)setHasReportReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsReportReason:(id)a3
{
  if ([a3 isEqualToString:@"REPORT_REASON_FALLBACK_SIGNAL"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"REPORT_REASON_MPTCP"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"REPORT_REASON_DATA_STALL_AT_APP_LAYER"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"REPORT_REASON_CELL_FALLBACK_METRICS_TESTING"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"REPORT_REASON_TLS_HANDSHAKE_TIMEOUT"])
  {
    return 5;
  }

  return 1;
}

- (void)addConnectionAttemptStatisticsReports:(id)a3
{
  connectionAttemptStatisticsReports = self->_connectionAttemptStatisticsReports;
  if (!connectionAttemptStatisticsReports)
  {
    connectionAttemptStatisticsReports = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_connectionAttemptStatisticsReports = connectionAttemptStatisticsReports;
  }

  [(NSMutableArray *)connectionAttemptStatisticsReports addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreTCPConnectionReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreTCPConnectionReport description](&v3, sel_description), -[AWDLibnetcoreTCPConnectionReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [v3 setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_delegated), @"delegated"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = self->_reportReason - 1;
    if (v6 >= 5)
    {
      v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_reportReason];
    }

    else
    {
      v7 = off_29EE32760[v6];
    }

    [v3 setObject:v7 forKey:@"reportReason"];
  }

  connectionStatisticsReport = self->_connectionStatisticsReport;
  if (connectionStatisticsReport)
  {
    [v3 setObject:-[AWDLibnetcoreConnectionStatisticsReport dictionaryRepresentation](connectionStatisticsReport forKey:{"dictionaryRepresentation"), @"connectionStatisticsReport"}];
  }

  cellularFallbackReport = self->_cellularFallbackReport;
  if (cellularFallbackReport)
  {
    [v3 setObject:-[AWDLibnetcoreCellularFallbackReport dictionaryRepresentation](cellularFallbackReport forKey:{"dictionaryRepresentation"), @"cellularFallbackReport"}];
  }

  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_iPAddressAttemptCount), @"IPAddressAttemptCount"}];
  }

  if ([(NSMutableArray *)self->_connectionAttemptStatisticsReports count])
  {
    v10 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_connectionAttemptStatisticsReports, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    connectionAttemptStatisticsReports = self->_connectionAttemptStatisticsReports;
    v12 = [(NSMutableArray *)connectionAttemptStatisticsReports countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(connectionAttemptStatisticsReports);
          }

          [v10 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)connectionAttemptStatisticsReports countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"connectionAttemptStatisticsReports"];
  }

  sourceAppIdentifier = self->_sourceAppIdentifier;
  if (sourceAppIdentifier)
  {
    [v3 setObject:sourceAppIdentifier forKey:@"sourceAppIdentifier"];
  }

  v17 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    delegated = self->_delegated;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    reportReason = self->_reportReason;
    PBDataWriterWriteInt32Field();
  }

  if (self->_connectionStatisticsReport)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_cellularFallbackReport)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    iPAddressAttemptCount = self->_iPAddressAttemptCount;
    PBDataWriterWriteUint64Field();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  connectionAttemptStatisticsReports = self->_connectionAttemptStatisticsReports;
  v10 = [(NSMutableArray *)connectionAttemptStatisticsReports countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(connectionAttemptStatisticsReports);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)connectionAttemptStatisticsReports countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if (self->_sourceAppIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v15 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 76) |= 2u;
  }

  if (self->_clientIdentifier)
  {
    [a3 setClientIdentifier:?];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(a3 + 72) = self->_delegated;
    *(a3 + 76) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(a3 + 14) = self->_reportReason;
    *(a3 + 76) |= 4u;
  }

  if (self->_connectionStatisticsReport)
  {
    [a3 setConnectionStatisticsReport:?];
  }

  if (self->_cellularFallbackReport)
  {
    [a3 setCellularFallbackReport:?];
  }

  if (*&self->_has)
  {
    *(a3 + 1) = self->_iPAddressAttemptCount;
    *(a3 + 76) |= 1u;
  }

  if ([(AWDLibnetcoreTCPConnectionReport *)self connectionAttemptStatisticsReportsCount])
  {
    [a3 clearConnectionAttemptStatisticsReports];
    v6 = [(AWDLibnetcoreTCPConnectionReport *)self connectionAttemptStatisticsReportsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addConnectionAttemptStatisticsReports:{-[AWDLibnetcoreTCPConnectionReport connectionAttemptStatisticsReportsAtIndex:](self, "connectionAttemptStatisticsReportsAtIndex:", i)}];
      }
    }
  }

  if (self->_sourceAppIdentifier)
  {

    [a3 setSourceAppIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 76) |= 2u;
  }

  *(v6 + 32) = [(NSString *)self->_clientIdentifier copyWithZone:a3];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 72) = self->_delegated;
    *(v6 + 76) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 56) = self->_reportReason;
    *(v6 + 76) |= 4u;
  }

  *(v6 + 48) = [(AWDLibnetcoreConnectionStatisticsReport *)self->_connectionStatisticsReport copyWithZone:a3];
  *(v6 + 24) = [(AWDLibnetcoreCellularFallbackReport *)self->_cellularFallbackReport copyWithZone:a3];
  if (*&self->_has)
  {
    *(v6 + 8) = self->_iPAddressAttemptCount;
    *(v6 + 76) |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  connectionAttemptStatisticsReports = self->_connectionAttemptStatisticsReports;
  v9 = [(NSMutableArray *)connectionAttemptStatisticsReports countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(connectionAttemptStatisticsReports);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:a3];
        [v6 addConnectionAttemptStatisticsReports:v13];
      }

      v10 = [(NSMutableArray *)connectionAttemptStatisticsReports countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  *(v6 + 64) = [(NSString *)self->_sourceAppIdentifier copyWithZone:a3];
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 76);
  if ((has & 2) != 0)
  {
    if ((*(a3 + 76) & 2) == 0 || self->_timestamp != *(a3 + 2))
    {
      goto LABEL_36;
    }
  }

  else if ((*(a3 + 76) & 2) != 0)
  {
    goto LABEL_36;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(a3 + 4))
  {
    v5 = [(NSString *)clientIdentifier isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v9 = *(a3 + 76);
  if ((has & 8) != 0)
  {
    if ((*(a3 + 76) & 8) != 0)
    {
      v10 = *(a3 + 72);
      if (self->_delegated)
      {
        if ((*(a3 + 72) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (*(a3 + 72))
      {
        goto LABEL_36;
      }

      goto LABEL_12;
    }

LABEL_36:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 76) & 8) != 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  if ((has & 4) != 0)
  {
    if ((*(a3 + 76) & 4) == 0 || self->_reportReason != *(a3 + 14))
    {
      goto LABEL_36;
    }
  }

  else if ((*(a3 + 76) & 4) != 0)
  {
    goto LABEL_36;
  }

  connectionStatisticsReport = self->_connectionStatisticsReport;
  if (!(connectionStatisticsReport | *(a3 + 6)) || (v5 = [(AWDLibnetcoreConnectionStatisticsReport *)connectionStatisticsReport isEqual:?]) != 0)
  {
    cellularFallbackReport = self->_cellularFallbackReport;
    if (!(cellularFallbackReport | *(a3 + 3)) || (v5 = [(AWDLibnetcoreCellularFallbackReport *)cellularFallbackReport isEqual:?]) != 0)
    {
      v13 = *(a3 + 76);
      if (*&self->_has)
      {
        if ((*(a3 + 76) & 1) == 0 || self->_iPAddressAttemptCount != *(a3 + 1))
        {
          goto LABEL_36;
        }
      }

      else if (*(a3 + 76))
      {
        goto LABEL_36;
      }

      connectionAttemptStatisticsReports = self->_connectionAttemptStatisticsReports;
      if (!(connectionAttemptStatisticsReports | *(a3 + 5)) || (v5 = [(NSMutableArray *)connectionAttemptStatisticsReports isEqual:?]) != 0)
      {
        sourceAppIdentifier = self->_sourceAppIdentifier;
        if (sourceAppIdentifier | *(a3 + 8))
        {

          LOBYTE(v5) = [(NSString *)sourceAppIdentifier isEqual:?];
        }

        else
        {
          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_clientIdentifier hash];
  if ((*&self->_has & 8) != 0)
  {
    v5 = 2654435761 * self->_delegated;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_reportReason;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = [(AWDLibnetcoreConnectionStatisticsReport *)self->_connectionStatisticsReport hash];
  v8 = [(AWDLibnetcoreCellularFallbackReport *)self->_cellularFallbackReport hash];
  if (*&self->_has)
  {
    v9 = 2654435761u * self->_iPAddressAttemptCount;
  }

  else
  {
    v9 = 0;
  }

  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSMutableArray *)self->_connectionAttemptStatisticsReports hash];
  return v10 ^ [(NSString *)self->_sourceAppIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  if ((*(a3 + 76) & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
  }

  if (*(a3 + 4))
  {
    [(AWDLibnetcoreTCPConnectionReport *)self setClientIdentifier:?];
  }

  v5 = *(a3 + 76);
  if ((v5 & 8) != 0)
  {
    self->_delegated = *(a3 + 72);
    *&self->_has |= 8u;
    v5 = *(a3 + 76);
  }

  if ((v5 & 4) != 0)
  {
    self->_reportReason = *(a3 + 14);
    *&self->_has |= 4u;
  }

  connectionStatisticsReport = self->_connectionStatisticsReport;
  v7 = *(a3 + 6);
  if (connectionStatisticsReport)
  {
    if (v7)
    {
      [(AWDLibnetcoreConnectionStatisticsReport *)connectionStatisticsReport mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDLibnetcoreTCPConnectionReport *)self setConnectionStatisticsReport:?];
  }

  cellularFallbackReport = self->_cellularFallbackReport;
  v9 = *(a3 + 3);
  if (cellularFallbackReport)
  {
    if (v9)
    {
      [(AWDLibnetcoreCellularFallbackReport *)cellularFallbackReport mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDLibnetcoreTCPConnectionReport *)self setCellularFallbackReport:?];
  }

  if (*(a3 + 76))
  {
    self->_iPAddressAttemptCount = *(a3 + 1);
    *&self->_has |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(a3 + 5);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDLibnetcoreTCPConnectionReport *)self addConnectionAttemptStatisticsReports:*(*(&v16 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  if (*(a3 + 8))
  {
    [(AWDLibnetcoreTCPConnectionReport *)self setSourceAppIdentifier:?];
  }

  v15 = *MEMORY[0x29EDCA608];
}

@end