@interface AWDLibnetcoreCellularFallbackReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDenyReason:(id)a3;
- (int)StringAsNetworkEvents:(id)a3;
- (int)denyReason;
- (int)networkEventsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)timeToNetworkEventsMsecsAtIndex:(unint64_t)a3;
- (void)addDataUsageSnapshotsAtNetworkEvents:(id)a3;
- (void)addPrimaryInterfaceAttemptStatisticsReports:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDenyReason:(BOOL)a3;
- (void)setHasFellback:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDLibnetcoreCellularFallbackReport

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedUInt64Clear();
  [(AWDLibnetcoreCellularFallbackReport *)self setPrimaryInterfaceAttemptStatisticsReports:0];
  [(AWDLibnetcoreCellularFallbackReport *)self setDataUsageSnapshotsAtNetworkEvents:0];
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreCellularFallbackReport;
  [(AWDLibnetcoreCellularFallbackReport *)&v3 dealloc];
}

- (void)setHasFellback:(BOOL)a3
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

- (int)denyReason
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_denyReason;
  }

  else
  {
    return 1;
  }
}

- (void)setHasDenyReason:(BOOL)a3
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

- (int)StringAsDenyReason:(id)a3
{
  if ([a3 isEqualToString:@"DENY_REASON_BLOCKED_FROM_USING_CELL_DATA"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"DENY_REASON_EXCEEDED_CELL_FALLBACK_DATA_BUDGET"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"DENY_REASON_METRICS_TESTING_DENIED"])
  {
    return 3;
  }

  return 1;
}

- (int)networkEventsAtIndex:(unint64_t)a3
{
  p_networkEvents = &self->_networkEvents;
  count = self->_networkEvents.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_networkEvents->list[a3];
}

- (int)StringAsNetworkEvents:(id)a3
{
  if ([a3 isEqualToString:@"NETWORK_EVENT_USER_TURNING_OFF_WIFI"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NETWORK_EVENT_WIFI_TRIGGER_DISCONNECT"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NETWORK_EVENT_SYMPTOMS_SENDING_WIFI_RECOMMENDED_SIGNAL"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NETWORK_EVENT_SYMPTOMS_SENDING_WEAK_FALLBACK_SIGNAL"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"NETWORK_EVENT_SYMPTOMS_SENDING_STRONG_FALLBACK_SIGNAL"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"NETWORK_EVENT_CONNECTION_BEING_REUSED"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"NETWORK_EVENT_DATA_STALL_AT_APP_LAYER"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"NETWORK_EVENT_BETTER_ROUTE"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"NETWORK_EVENT_CELLULAR_FALLBACK_TIMER_START"])
  {
    return 9;
  }

  if ([a3 isEqualToString:@"NETWORK_EVENT_CELLULAR_FALLBACK_ATTEMPT_START"])
  {
    return 10;
  }

  return 1;
}

- (unint64_t)timeToNetworkEventsMsecsAtIndex:(unint64_t)a3
{
  p_timeToNetworkEventsMsecs = &self->_timeToNetworkEventsMsecs;
  count = self->_timeToNetworkEventsMsecs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_timeToNetworkEventsMsecs->list[a3];
}

- (void)addPrimaryInterfaceAttemptStatisticsReports:(id)a3
{
  primaryInterfaceAttemptStatisticsReports = self->_primaryInterfaceAttemptStatisticsReports;
  if (!primaryInterfaceAttemptStatisticsReports)
  {
    primaryInterfaceAttemptStatisticsReports = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_primaryInterfaceAttemptStatisticsReports = primaryInterfaceAttemptStatisticsReports;
  }

  [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports addObject:a3];
}

- (void)addDataUsageSnapshotsAtNetworkEvents:(id)a3
{
  dataUsageSnapshotsAtNetworkEvents = self->_dataUsageSnapshotsAtNetworkEvents;
  if (!dataUsageSnapshotsAtNetworkEvents)
  {
    dataUsageSnapshotsAtNetworkEvents = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_dataUsageSnapshotsAtNetworkEvents = dataUsageSnapshotsAtNetworkEvents;
  }

  [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreCellularFallbackReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreCellularFallbackReport description](&v3, sel_description), -[AWDLibnetcoreCellularFallbackReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_fellback), @"fellback"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v24 = self->_denyReason - 1;
  if (v24 >= 3)
  {
    v25 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_denyReason];
  }

  else
  {
    v25 = off_29EE326D8[v24];
  }

  [v3 setObject:v25 forKey:@"denyReason"];
  if (*&self->_has)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_fallbackTimerMsecs), @"fallbackTimer_msecs"}];
  }

LABEL_5:
  p_networkEvents = &self->_networkEvents;
  if (self->_networkEvents.count)
  {
    v6 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:?];
    if (self->_networkEvents.count)
    {
      v7 = 0;
      do
      {
        v8 = p_networkEvents->list[v7] - 1;
        if (v8 >= 0xA)
        {
          v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", p_networkEvents->list[v7]];
        }

        else
        {
          v9 = off_29EE326F0[v8];
        }

        [v6 addObject:v9];
        ++v7;
      }

      while (v7 < self->_networkEvents.count);
    }

    [v3 setObject:v6 forKey:@"networkEvents"];
  }

  [v3 setObject:PBRepeatedUInt64NSArray() forKey:@"timeToNetworkEvents_msecs"];
  if ([(NSMutableArray *)self->_primaryInterfaceAttemptStatisticsReports count])
  {
    v10 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_primaryInterfaceAttemptStatisticsReports, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    primaryInterfaceAttemptStatisticsReports = self->_primaryInterfaceAttemptStatisticsReports;
    v12 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(primaryInterfaceAttemptStatisticsReports);
          }

          [v10 addObject:{objc_msgSend(*(*(&v30 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"primaryInterfaceAttemptStatisticsReports"];
  }

  if ([(NSMutableArray *)self->_dataUsageSnapshotsAtNetworkEvents count])
  {
    v16 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_dataUsageSnapshotsAtNetworkEvents, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    dataUsageSnapshotsAtNetworkEvents = self->_dataUsageSnapshotsAtNetworkEvents;
    v18 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(dataUsageSnapshotsAtNetworkEvents);
          }

          [v16 addObject:{objc_msgSend(*(*(&v26 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v19 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKey:@"dataUsageSnapshotsAtNetworkEvents"];
  }

  v22 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 4) != 0)
  {
    fellback = self->_fellback;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  denyReason = self->_denyReason;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_4:
    fallbackTimerMsecs = self->_fallbackTimerMsecs;
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  if (self->_networkEvents.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_networkEvents.list[v6];
      PBDataWriterWriteInt32Field();
      ++v6;
    }

    while (v6 < self->_networkEvents.count);
  }

  if (self->_timeToNetworkEventsMsecs.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_timeToNetworkEventsMsecs.list[v8];
      PBDataWriterWriteUint64Field();
      ++v8;
    }

    while (v8 < self->_timeToNetworkEventsMsecs.count);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  primaryInterfaceAttemptStatisticsReports = self->_primaryInterfaceAttemptStatisticsReports;
  v11 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(primaryInterfaceAttemptStatisticsReports);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v12);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  dataUsageSnapshotsAtNetworkEvents = self->_dataUsageSnapshotsAtNetworkEvents;
  v17 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(dataUsageSnapshotsAtNetworkEvents);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_23:
    *(a3 + 18) = self->_denyReason;
    *(a3 + 92) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(a3 + 88) = self->_fellback;
  *(a3 + 92) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(a3 + 7) = self->_fallbackTimerMsecs;
    *(a3 + 92) |= 1u;
  }

LABEL_5:
  if ([(AWDLibnetcoreCellularFallbackReport *)self networkEventsCount])
  {
    [a3 clearNetworkEvents];
    v6 = [(AWDLibnetcoreCellularFallbackReport *)self networkEventsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addNetworkEvents:{-[AWDLibnetcoreCellularFallbackReport networkEventsAtIndex:](self, "networkEventsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDLibnetcoreCellularFallbackReport *)self timeToNetworkEventsMsecsCount])
  {
    [a3 clearTimeToNetworkEventsMsecs];
    v9 = [(AWDLibnetcoreCellularFallbackReport *)self timeToNetworkEventsMsecsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [a3 addTimeToNetworkEventsMsecs:{-[AWDLibnetcoreCellularFallbackReport timeToNetworkEventsMsecsAtIndex:](self, "timeToNetworkEventsMsecsAtIndex:", j)}];
      }
    }
  }

  if ([(AWDLibnetcoreCellularFallbackReport *)self primaryInterfaceAttemptStatisticsReportsCount])
  {
    [a3 clearPrimaryInterfaceAttemptStatisticsReports];
    v12 = [(AWDLibnetcoreCellularFallbackReport *)self primaryInterfaceAttemptStatisticsReportsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        [a3 addPrimaryInterfaceAttemptStatisticsReports:{-[AWDLibnetcoreCellularFallbackReport primaryInterfaceAttemptStatisticsReportsAtIndex:](self, "primaryInterfaceAttemptStatisticsReportsAtIndex:", k)}];
      }
    }
  }

  if ([(AWDLibnetcoreCellularFallbackReport *)self dataUsageSnapshotsAtNetworkEventsCount])
  {
    [a3 clearDataUsageSnapshotsAtNetworkEvents];
    v15 = [(AWDLibnetcoreCellularFallbackReport *)self dataUsageSnapshotsAtNetworkEventsCount];
    if (v15)
    {
      v16 = v15;
      for (m = 0; m != v16; ++m)
      {
        [a3 addDataUsageSnapshotsAtNetworkEvents:{-[AWDLibnetcoreCellularFallbackReport dataUsageSnapshotsAtNetworkEventsAtIndex:](self, "dataUsageSnapshotsAtNetworkEventsAtIndex:", m)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 88) = self->_fellback;
    *(v5 + 92) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 72) = self->_denyReason;
  *(v5 + 92) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 56) = self->_fallbackTimerMsecs;
    *(v5 + 92) |= 1u;
  }

LABEL_5:
  PBRepeatedInt32Copy();
  PBRepeatedUInt64Copy();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  primaryInterfaceAttemptStatisticsReports = self->_primaryInterfaceAttemptStatisticsReports;
  v9 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(primaryInterfaceAttemptStatisticsReports);
        }

        v13 = [*(*(&v26 + 1) + 8 * i) copyWithZone:a3];
        [v6 addPrimaryInterfaceAttemptStatisticsReports:v13];
      }

      v10 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  dataUsageSnapshotsAtNetworkEvents = self->_dataUsageSnapshotsAtNetworkEvents;
  v15 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(dataUsageSnapshotsAtNetworkEvents);
        }

        v19 = [*(*(&v22 + 1) + 8 * j) copyWithZone:a3];
        [v6 addDataUsageSnapshotsAtNetworkEvents:v19];
      }

      v16 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (!IsEqual)
  {
    return IsEqual;
  }

  v6 = *(a3 + 92);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(a3 + 92) & 4) != 0)
    {
      v7 = *(a3 + 88);
      if (self->_fellback)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if (*(a3 + 88))
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_26:
    LOBYTE(IsEqual) = 0;
    return IsEqual;
  }

  if ((*(a3 + 92) & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_4:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 92) & 2) == 0 || self->_denyReason != *(a3 + 18))
    {
      goto LABEL_26;
    }
  }

  else if ((*(a3 + 92) & 2) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(a3 + 92) & 1) == 0 || self->_fallbackTimerMsecs != *(a3 + 7))
    {
      goto LABEL_26;
    }
  }

  else if (*(a3 + 92))
  {
    goto LABEL_26;
  }

  IsEqual = PBRepeatedInt32IsEqual();
  if (IsEqual)
  {
    IsEqual = PBRepeatedUInt64IsEqual();
    if (IsEqual)
    {
      primaryInterfaceAttemptStatisticsReports = self->_primaryInterfaceAttemptStatisticsReports;
      if (!(primaryInterfaceAttemptStatisticsReports | *(a3 + 10)) || (IsEqual = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports isEqual:?]) != 0)
      {
        dataUsageSnapshotsAtNetworkEvents = self->_dataUsageSnapshotsAtNetworkEvents;
        if (dataUsageSnapshotsAtNetworkEvents | *(a3 + 8))
        {

          LOBYTE(IsEqual) = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents isEqual:?];
        }

        else
        {
          LOBYTE(IsEqual) = 1;
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_fellback;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_denyReason;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761u * self->_fallbackTimerMsecs;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ PBRepeatedInt32Hash();
  v7 = v6 ^ PBRepeatedUInt64Hash();
  v8 = v7 ^ [(NSMutableArray *)self->_primaryInterfaceAttemptStatisticsReports hash];
  return v8 ^ [(NSMutableArray *)self->_dataUsageSnapshotsAtNetworkEvents hash];
}

- (void)mergeFrom:(id)a3
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 92);
  if ((v5 & 4) != 0)
  {
    self->_fellback = *(a3 + 88);
    *&self->_has |= 4u;
    v5 = *(a3 + 92);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a3 + 92) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_denyReason = *(a3 + 18);
  *&self->_has |= 2u;
  if (*(a3 + 92))
  {
LABEL_4:
    self->_fallbackTimerMsecs = *(a3 + 7);
    *&self->_has |= 1u;
  }

LABEL_5:
  v6 = [a3 networkEventsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDLibnetcoreCellularFallbackReport addNetworkEvents:](self, "addNetworkEvents:", [a3 networkEventsAtIndex:i]);
    }
  }

  v9 = [a3 timeToNetworkEventsMsecsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[AWDLibnetcoreCellularFallbackReport addTimeToNetworkEventsMsecs:](self, "addTimeToNetworkEventsMsecs:", [a3 timeToNetworkEventsMsecsAtIndex:j]);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = *(a3 + 10);
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (k = 0; k != v14; ++k)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AWDLibnetcoreCellularFallbackReport *)self addPrimaryInterfaceAttemptStatisticsReports:*(*(&v27 + 1) + 8 * k)];
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v14);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = *(a3 + 8);
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (m = 0; m != v19; ++m)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(AWDLibnetcoreCellularFallbackReport *)self addDataUsageSnapshotsAtNetworkEvents:*(*(&v23 + 1) + 8 * m)];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x29EDCA608];
}

@end