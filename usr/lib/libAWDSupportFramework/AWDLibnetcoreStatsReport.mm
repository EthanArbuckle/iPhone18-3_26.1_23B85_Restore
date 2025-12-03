@interface AWDLibnetcoreStatsReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTcpECNInterfaceReport:(id)report;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasReportReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation AWDLibnetcoreStatsReport

- (void)dealloc
{
  [(AWDLibnetcoreStatsReport *)self setMbufStatisticsReport:0];
  [(AWDLibnetcoreStatsReport *)self setTcpStatisticsReport:0];
  [(AWDLibnetcoreStatsReport *)self setTcpECNStatisticsReport:0];
  [(AWDLibnetcoreStatsReport *)self setTcpTFOStatisticsReport:0];
  [(AWDLibnetcoreStatsReport *)self setNetworkdStatisticsReport:0];
  [(AWDLibnetcoreStatsReport *)self setTcpECNInterfaceReports:0];
  [(AWDLibnetcoreStatsReport *)self setNwAPIUsageReport:0];
  [(AWDLibnetcoreStatsReport *)self setMptcpStatisticsReport:0];
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreStatsReport;
  [(AWDLibnetcoreStatsReport *)&v3 dealloc];
}

- (void)setHasReportReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addTcpECNInterfaceReport:(id)report
{
  tcpECNInterfaceReports = self->_tcpECNInterfaceReports;
  if (!tcpECNInterfaceReports)
  {
    tcpECNInterfaceReports = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_tcpECNInterfaceReports = tcpECNInterfaceReports;
  }

  [(NSMutableArray *)tcpECNInterfaceReports addObject:report];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreStatsReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreStatsReport description](&v3, sel_description), -[AWDLibnetcoreStatsReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_reportReason), @"reportReason"}];
  }

  mbufStatisticsReport = self->_mbufStatisticsReport;
  if (mbufStatisticsReport)
  {
    [dictionary setObject:-[AWDLibnetcoreMbufStatsReport dictionaryRepresentation](mbufStatisticsReport forKey:{"dictionaryRepresentation"), @"mbufStatisticsReport"}];
  }

  tcpStatisticsReport = self->_tcpStatisticsReport;
  if (tcpStatisticsReport)
  {
    [dictionary setObject:-[AWDLibnetcoreTCPStatsReport dictionaryRepresentation](tcpStatisticsReport forKey:{"dictionaryRepresentation"), @"tcpStatisticsReport"}];
  }

  tcpECNStatisticsReport = self->_tcpECNStatisticsReport;
  if (tcpECNStatisticsReport)
  {
    [dictionary setObject:-[AWDLibnetcoreTCPECNStatsReport dictionaryRepresentation](tcpECNStatisticsReport forKey:{"dictionaryRepresentation"), @"tcpECNStatisticsReport"}];
  }

  tcpTFOStatisticsReport = self->_tcpTFOStatisticsReport;
  if (tcpTFOStatisticsReport)
  {
    [dictionary setObject:-[AWDLibnetcoreTCPTFOStatsReport dictionaryRepresentation](tcpTFOStatisticsReport forKey:{"dictionaryRepresentation"), @"tcpTFOStatisticsReport"}];
  }

  networkdStatisticsReport = self->_networkdStatisticsReport;
  if (networkdStatisticsReport)
  {
    [dictionary setObject:-[AWDLibnetcoreNetworkdStatsReport dictionaryRepresentation](networkdStatisticsReport forKey:{"dictionaryRepresentation"), @"networkdStatisticsReport"}];
  }

  if ([(NSMutableArray *)self->_tcpECNInterfaceReports count])
  {
    v10 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_tcpECNInterfaceReports, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    tcpECNInterfaceReports = self->_tcpECNInterfaceReports;
    v12 = [(NSMutableArray *)tcpECNInterfaceReports countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(tcpECNInterfaceReports);
          }

          [v10 addObject:{objc_msgSend(*(*(&v20 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)tcpECNInterfaceReports countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"tcpECNInterfaceReport"];
  }

  nwAPIUsageReport = self->_nwAPIUsageReport;
  if (nwAPIUsageReport)
  {
    [dictionary setObject:-[AWDNWAPIUsage dictionaryRepresentation](nwAPIUsageReport forKey:{"dictionaryRepresentation"), @"nwAPIUsageReport"}];
  }

  mptcpStatisticsReport = self->_mptcpStatisticsReport;
  if (mptcpStatisticsReport)
  {
    [dictionary setObject:-[AWDLibnetcoreMPTCPStatsReport dictionaryRepresentation](mptcpStatisticsReport forKey:{"dictionaryRepresentation"), @"mptcpStatisticsReport"}];
  }

  v18 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    reportReason = self->_reportReason;
    PBDataWriterWriteUint32Field();
  }

  if (self->_mbufStatisticsReport)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_tcpStatisticsReport)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_tcpECNStatisticsReport)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_tcpTFOStatisticsReport)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_networkdStatisticsReport)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  tcpECNInterfaceReports = self->_tcpECNInterfaceReports;
  v8 = [(NSMutableArray *)tcpECNInterfaceReports countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(tcpECNInterfaceReports);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)tcpECNInterfaceReports countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (self->_nwAPIUsageReport)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_mptcpStatisticsReport)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 12) = self->_reportReason;
    *(to + 88) |= 2u;
  }

  if (self->_mbufStatisticsReport)
  {
    [to setMbufStatisticsReport:?];
  }

  if (self->_tcpStatisticsReport)
  {
    [to setTcpStatisticsReport:?];
  }

  if (self->_tcpECNStatisticsReport)
  {
    [to setTcpECNStatisticsReport:?];
  }

  if (self->_tcpTFOStatisticsReport)
  {
    [to setTcpTFOStatisticsReport:?];
  }

  if (self->_networkdStatisticsReport)
  {
    [to setNetworkdStatisticsReport:?];
  }

  if ([(AWDLibnetcoreStatsReport *)self tcpECNInterfaceReportsCount])
  {
    [to clearTcpECNInterfaceReports];
    tcpECNInterfaceReportsCount = [(AWDLibnetcoreStatsReport *)self tcpECNInterfaceReportsCount];
    if (tcpECNInterfaceReportsCount)
    {
      v7 = tcpECNInterfaceReportsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addTcpECNInterfaceReport:{-[AWDLibnetcoreStatsReport tcpECNInterfaceReportAtIndex:](self, "tcpECNInterfaceReportAtIndex:", i)}];
      }
    }
  }

  if (self->_nwAPIUsageReport)
  {
    [to setNwAPIUsageReport:?];
  }

  if (self->_mptcpStatisticsReport)
  {

    [to setMptcpStatisticsReport:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_reportReason;
    *(v5 + 88) |= 2u;
  }

  *(v6 + 16) = [(AWDLibnetcoreMbufStatsReport *)self->_mbufStatisticsReport copyWithZone:zone];
  *(v6 + 72) = [(AWDLibnetcoreTCPStatsReport *)self->_tcpStatisticsReport copyWithZone:zone];

  *(v6 + 64) = [(AWDLibnetcoreTCPECNStatsReport *)self->_tcpECNStatisticsReport copyWithZone:zone];
  *(v6 + 80) = [(AWDLibnetcoreTCPTFOStatsReport *)self->_tcpTFOStatisticsReport copyWithZone:zone];

  *(v6 + 32) = [(AWDLibnetcoreNetworkdStatsReport *)self->_networkdStatisticsReport copyWithZone:zone];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  tcpECNInterfaceReports = self->_tcpECNInterfaceReports;
  v9 = [(NSMutableArray *)tcpECNInterfaceReports countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(tcpECNInterfaceReports);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:zone];
        [v6 addTcpECNInterfaceReport:v13];
      }

      v10 = [(NSMutableArray *)tcpECNInterfaceReports countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  *(v6 + 40) = [(AWDNWAPIUsage *)self->_nwAPIUsageReport copyWithZone:zone];
  *(v6 + 24) = [(AWDLibnetcoreMPTCPStatsReport *)self->_mptcpStatisticsReport copyWithZone:zone];
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 88);
    if (*&self->_has)
    {
      if ((*(equal + 88) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_28;
      }
    }

    else if (*(equal + 88))
    {
LABEL_28:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 88) & 2) == 0 || self->_reportReason != *(equal + 12))
      {
        goto LABEL_28;
      }
    }

    else if ((*(equal + 88) & 2) != 0)
    {
      goto LABEL_28;
    }

    mbufStatisticsReport = self->_mbufStatisticsReport;
    if (!(mbufStatisticsReport | *(equal + 2)) || (v5 = [(AWDLibnetcoreMbufStatsReport *)mbufStatisticsReport isEqual:?]) != 0)
    {
      tcpStatisticsReport = self->_tcpStatisticsReport;
      if (!(tcpStatisticsReport | *(equal + 9)) || (v5 = [(AWDLibnetcoreTCPStatsReport *)tcpStatisticsReport isEqual:?]) != 0)
      {
        tcpECNStatisticsReport = self->_tcpECNStatisticsReport;
        if (!(tcpECNStatisticsReport | *(equal + 8)) || (v5 = [(AWDLibnetcoreTCPECNStatsReport *)tcpECNStatisticsReport isEqual:?]) != 0)
        {
          tcpTFOStatisticsReport = self->_tcpTFOStatisticsReport;
          if (!(tcpTFOStatisticsReport | *(equal + 10)) || (v5 = [(AWDLibnetcoreTCPTFOStatsReport *)tcpTFOStatisticsReport isEqual:?]) != 0)
          {
            networkdStatisticsReport = self->_networkdStatisticsReport;
            if (!(networkdStatisticsReport | *(equal + 4)) || (v5 = [(AWDLibnetcoreNetworkdStatsReport *)networkdStatisticsReport isEqual:?]) != 0)
            {
              tcpECNInterfaceReports = self->_tcpECNInterfaceReports;
              if (!(tcpECNInterfaceReports | *(equal + 7)) || (v5 = [(NSMutableArray *)tcpECNInterfaceReports isEqual:?]) != 0)
              {
                nwAPIUsageReport = self->_nwAPIUsageReport;
                if (!(nwAPIUsageReport | *(equal + 5)) || (v5 = [(AWDNWAPIUsage *)nwAPIUsageReport isEqual:?]) != 0)
                {
                  mptcpStatisticsReport = self->_mptcpStatisticsReport;
                  if (mptcpStatisticsReport | *(equal + 3))
                  {

                    LOBYTE(v5) = [(AWDLibnetcoreMPTCPStatsReport *)mptcpStatisticsReport isEqual:?];
                  }

                  else
                  {
                    LOBYTE(v5) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_reportReason;
LABEL_6:
  v5 = v4 ^ v3 ^ [(AWDLibnetcoreMbufStatsReport *)self->_mbufStatisticsReport hash];
  v6 = [(AWDLibnetcoreTCPStatsReport *)self->_tcpStatisticsReport hash];
  v7 = v5 ^ v6 ^ [(AWDLibnetcoreTCPECNStatsReport *)self->_tcpECNStatisticsReport hash];
  v8 = [(AWDLibnetcoreTCPTFOStatsReport *)self->_tcpTFOStatisticsReport hash];
  v9 = v8 ^ [(AWDLibnetcoreNetworkdStatsReport *)self->_networkdStatisticsReport hash];
  v10 = v7 ^ v9 ^ [(NSMutableArray *)self->_tcpECNInterfaceReports hash];
  v11 = [(AWDNWAPIUsage *)self->_nwAPIUsageReport hash];
  return v10 ^ v11 ^ [(AWDLibnetcoreMPTCPStatsReport *)self->_mptcpStatisticsReport hash];
}

- (void)mergeFrom:(id)from
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = *(from + 88);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 88);
  }

  if ((v5 & 2) != 0)
  {
    self->_reportReason = *(from + 12);
    *&self->_has |= 2u;
  }

  mbufStatisticsReport = self->_mbufStatisticsReport;
  v7 = *(from + 2);
  if (mbufStatisticsReport)
  {
    if (v7)
    {
      [(AWDLibnetcoreMbufStatsReport *)mbufStatisticsReport mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDLibnetcoreStatsReport *)self setMbufStatisticsReport:?];
  }

  tcpStatisticsReport = self->_tcpStatisticsReport;
  v9 = *(from + 9);
  if (tcpStatisticsReport)
  {
    if (v9)
    {
      [(AWDLibnetcoreTCPStatsReport *)tcpStatisticsReport mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDLibnetcoreStatsReport *)self setTcpStatisticsReport:?];
  }

  tcpECNStatisticsReport = self->_tcpECNStatisticsReport;
  v11 = *(from + 8);
  if (tcpECNStatisticsReport)
  {
    if (v11)
    {
      [(AWDLibnetcoreTCPECNStatsReport *)tcpECNStatisticsReport mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDLibnetcoreStatsReport *)self setTcpECNStatisticsReport:?];
  }

  tcpTFOStatisticsReport = self->_tcpTFOStatisticsReport;
  v13 = *(from + 10);
  if (tcpTFOStatisticsReport)
  {
    if (v13)
    {
      [(AWDLibnetcoreTCPTFOStatsReport *)tcpTFOStatisticsReport mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(AWDLibnetcoreStatsReport *)self setTcpTFOStatisticsReport:?];
  }

  networkdStatisticsReport = self->_networkdStatisticsReport;
  v15 = *(from + 4);
  if (networkdStatisticsReport)
  {
    if (v15)
    {
      [(AWDLibnetcoreNetworkdStatsReport *)networkdStatisticsReport mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(AWDLibnetcoreStatsReport *)self setNetworkdStatisticsReport:?];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = *(from + 7);
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(AWDLibnetcoreStatsReport *)self addTcpECNInterfaceReport:*(*(&v26 + 1) + 8 * i)];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  nwAPIUsageReport = self->_nwAPIUsageReport;
  v22 = *(from + 5);
  if (nwAPIUsageReport)
  {
    if (v22)
    {
      [(AWDNWAPIUsage *)nwAPIUsageReport mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(AWDLibnetcoreStatsReport *)self setNwAPIUsageReport:?];
  }

  mptcpStatisticsReport = self->_mptcpStatisticsReport;
  v24 = *(from + 3);
  if (mptcpStatisticsReport)
  {
    if (v24)
    {
      [(AWDLibnetcoreMPTCPStatsReport *)mptcpStatisticsReport mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(AWDLibnetcoreStatsReport *)self setMptcpStatisticsReport:?];
  }

  v25 = *MEMORY[0x29EDCA608];
}

@end