@interface AWDWiFiMetricsManagerAwdlUsage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addHopCountHistogram:(id)a3;
- (void)addParentRssiHistogram:(id)a3;
- (void)addServices:(id)a3;
- (void)addStates:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAdvertiseAddFilteredCount:(BOOL)a3;
- (void)setHasAdvertiseAddTotalCount:(BOOL)a3;
- (void)setHasAdvertiseDeleteFilteredCount:(BOOL)a3;
- (void)setHasAdvertiseDeleteTotalCount:(BOOL)a3;
- (void)setHasAppRxBytes:(BOOL)a3;
- (void)setHasAppTxBytes:(BOOL)a3;
- (void)setHasBrowseAddFilteredCount:(BOOL)a3;
- (void)setHasBrowseAddTotalCount:(BOOL)a3;
- (void)setHasBrowseDeleteFilteredCount:(BOOL)a3;
- (void)setHasBrowseDeleteTotalCount:(BOOL)a3;
- (void)setHasCachedPeersCapOther:(BOOL)a3;
- (void)setHasCachedPeersDifferentInfra:(BOOL)a3;
- (void)setHasCachedPeersNotAssociated:(BOOL)a3;
- (void)setHasCachedPeersOn24G:(BOOL)a3;
- (void)setHasCachedPeersOn5G:(BOOL)a3;
- (void)setHasCachedPeersOnDFS:(BOOL)a3;
- (void)setHasCachedPeersOnOther:(BOOL)a3;
- (void)setHasCachedPeersSameInfra:(BOOL)a3;
- (void)setHasDfspAirplayConnected:(BOOL)a3;
- (void)setHasDfspAirplayFailed:(BOOL)a3;
- (void)setHasDfspCSAReceivedFromAP:(BOOL)a3;
- (void)setHasDfspCSAReceivedFromPeer:(BOOL)a3;
- (void)setHasDfspResume:(BOOL)a3;
- (void)setHasDfspSuspect:(BOOL)a3;
- (void)setHasFlags:(BOOL)a3;
- (void)setHasIfPacketFailures:(BOOL)a3;
- (void)setHasIfRxBytes:(BOOL)a3;
- (void)setHasIfTxBytes:(BOOL)a3;
- (void)setHasNumAirplaySessions:(BOOL)a3;
- (void)setHasNumDynSdbAirplayAllowed:(BOOL)a3;
- (void)setHasNumDynSdbEntrySuccess:(BOOL)a3;
- (void)setHasNumDynSdbExitDueToRate:(BOOL)a3;
- (void)setHasNumDynSdbReEntrySuccess:(BOOL)a3;
- (void)setHasNumOfCachedPeers:(BOOL)a3;
- (void)setHasNumOfPeers:(BOOL)a3;
- (void)setHasPeerInfraChannel:(BOOL)a3;
- (void)setHasPeerInfraChannelFlags:(BOOL)a3;
- (void)setHasPeriodInMinutes:(BOOL)a3;
- (void)setHasSelfCapOther:(BOOL)a3;
- (void)setHasSelfInfraChannel:(BOOL)a3;
- (void)setHasSelfInfraChannelFlags:(BOOL)a3;
- (void)setHasSyncChangesCount:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerAwdlUsage

- (void)dealloc
{
  [(AWDWiFiMetricsManagerAwdlUsage *)self setStates:0];
  [(AWDWiFiMetricsManagerAwdlUsage *)self setServices:0];
  [(AWDWiFiMetricsManagerAwdlUsage *)self setHopCountHistograms:0];
  [(AWDWiFiMetricsManagerAwdlUsage *)self setParentRssiHistograms:0];
  [(AWDWiFiMetricsManagerAwdlUsage *)self setD2dMigrationStats:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerAwdlUsage;
  [(AWDWiFiMetricsManagerAwdlUsage *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasSelfInfraChannel:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasPeerInfraChannel:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasNumOfPeers:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasNumOfCachedPeers:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasCachedPeersOn24G:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasCachedPeersOn5G:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasCachedPeersOnDFS:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasCachedPeersNotAssociated:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasFlags:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasIfPacketFailures:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasIfRxBytes:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasIfTxBytes:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasAppRxBytes:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasAppTxBytes:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasPeriodInMinutes:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)addStates:(id)a3
{
  states = self->_states;
  if (!states)
  {
    states = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_states = states;
  }

  [(NSMutableArray *)states addObject:a3];
}

- (void)setHasBrowseAddTotalCount:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasBrowseAddFilteredCount:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasBrowseDeleteTotalCount:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasBrowseDeleteFilteredCount:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasAdvertiseAddTotalCount:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasAdvertiseAddFilteredCount:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasAdvertiseDeleteTotalCount:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasAdvertiseDeleteFilteredCount:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)addServices:(id)a3
{
  services = self->_services;
  if (!services)
  {
    services = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_services = services;
  }

  [(NSMutableArray *)services addObject:a3];
}

- (void)setHasCachedPeersSameInfra:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasCachedPeersDifferentInfra:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasDfspCSAReceivedFromPeer:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasDfspCSAReceivedFromAP:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasDfspSuspect:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasDfspResume:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasDfspAirplayConnected:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasDfspAirplayFailed:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)addHopCountHistogram:(id)a3
{
  hopCountHistograms = self->_hopCountHistograms;
  if (!hopCountHistograms)
  {
    hopCountHistograms = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_hopCountHistograms = hopCountHistograms;
  }

  [(NSMutableArray *)hopCountHistograms addObject:a3];
}

- (void)addParentRssiHistogram:(id)a3
{
  parentRssiHistograms = self->_parentRssiHistograms;
  if (!parentRssiHistograms)
  {
    parentRssiHistograms = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_parentRssiHistograms = parentRssiHistograms;
  }

  [(NSMutableArray *)parentRssiHistograms addObject:a3];
}

- (void)setHasSyncChangesCount:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasNumAirplaySessions:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasNumDynSdbAirplayAllowed:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasNumDynSdbEntrySuccess:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasNumDynSdbExitDueToRate:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasNumDynSdbReEntrySuccess:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasSelfInfraChannelFlags:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasPeerInfraChannelFlags:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasCachedPeersOnOther:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasSelfCapOther:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasCachedPeersCapOther:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerAwdlUsage;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerAwdlUsage description](&v3, sel_description), -[AWDWiFiMetricsManagerAwdlUsage dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v56 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x40000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    }
  }

  else if ((*&has & 0x40000000000) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_selfInfraChannel), @"selfInfraChannel"}];
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_92;
  }

LABEL_91:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerInfraChannel), @"peerInfraChannel"}];
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_93;
  }

LABEL_92:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numOfPeers), @"numOfPeers"}];
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_94;
  }

LABEL_93:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numOfCachedPeers), @"numOfCachedPeers"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_95;
  }

LABEL_94:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cachedPeersOn24G), @"cachedPeersOn24G"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_96;
  }

LABEL_95:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cachedPeersOn5G), @"cachedPeersOn5G"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_97;
  }

LABEL_96:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cachedPeersOnDFS), @"cachedPeersOnDFS"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_98;
  }

LABEL_97:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cachedPeersNotAssociated), @"cachedPeersNotAssociated"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_99;
  }

LABEL_98:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_flags), @"flags"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_100;
  }

LABEL_99:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ifPacketFailures), @"ifPacketFailures"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_101;
  }

LABEL_100:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ifRxBytes), @"ifRxBytes"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_102;
  }

LABEL_101:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ifTxBytes), @"ifTxBytes"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_103;
  }

LABEL_102:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_appRxBytes), @"appRxBytes"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_103:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_appTxBytes), @"appTxBytes"}];
  if ((*&self->_has & 0x10000000000) != 0)
  {
LABEL_17:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_periodInMinutes), @"periodInMinutes"}];
  }

LABEL_18:
  if ([(NSMutableArray *)self->_states count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_states, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    states = self->_states;
    v7 = [(NSMutableArray *)states countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v49;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v49 != v9)
          {
            objc_enumerationMutation(states);
          }

          [v5 addObject:{objc_msgSend(*(*(&v48 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)states countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"states"];
  }

  v11 = self->_has;
  if (*&v11)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_noServiceIdleTime), @"noServiceIdleTime"}];
    v11 = self->_has;
    if ((*&v11 & 0x400) == 0)
    {
LABEL_29:
      if ((*&v11 & 0x200) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_107;
    }
  }

  else if ((*&v11 & 0x400) == 0)
  {
    goto LABEL_29;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_browseAddTotalCount), @"browseAddTotalCount"}];
  v11 = self->_has;
  if ((*&v11 & 0x200) == 0)
  {
LABEL_30:
    if ((*&v11 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_108;
  }

LABEL_107:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_browseAddFilteredCount), @"browseAddFilteredCount"}];
  v11 = self->_has;
  if ((*&v11 & 0x1000) == 0)
  {
LABEL_31:
    if ((*&v11 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_109;
  }

LABEL_108:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_browseDeleteTotalCount), @"browseDeleteTotalCount"}];
  v11 = self->_has;
  if ((*&v11 & 0x800) == 0)
  {
LABEL_32:
    if ((*&v11 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_110;
  }

LABEL_109:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_browseDeleteFilteredCount), @"browseDeleteFilteredCount"}];
  v11 = self->_has;
  if ((*&v11 & 0x10) == 0)
  {
LABEL_33:
    if ((*&v11 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_111;
  }

LABEL_110:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_advertiseAddTotalCount), @"advertiseAddTotalCount"}];
  v11 = self->_has;
  if ((*&v11 & 8) == 0)
  {
LABEL_34:
    if ((*&v11 & 0x40) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_112;
  }

LABEL_111:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_advertiseAddFilteredCount), @"advertiseAddFilteredCount"}];
  v11 = self->_has;
  if ((*&v11 & 0x40) == 0)
  {
LABEL_35:
    if ((*&v11 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_112:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_advertiseDeleteTotalCount), @"advertiseDeleteTotalCount"}];
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_36:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_advertiseDeleteFilteredCount), @"advertiseDeleteFilteredCount"}];
  }

LABEL_37:
  if ([(NSMutableArray *)self->_services count])
  {
    v12 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_services, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    services = self->_services;
    v14 = [(NSMutableArray *)services countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v45;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(services);
          }

          [v12 addObject:{objc_msgSend(*(*(&v44 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v15 = [(NSMutableArray *)services countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"services"];
  }

  v18 = self->_has;
  if ((*&v18 & 0x100000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cachedPeersSameInfra), @"cachedPeersSameInfra"}];
    v18 = self->_has;
    if ((*&v18 & 0x4000) == 0)
    {
LABEL_48:
      if ((*&v18 & 0x1000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_116;
    }
  }

  else if ((*&v18 & 0x4000) == 0)
  {
    goto LABEL_48;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cachedPeersDifferentInfra), @"cachedPeersDifferentInfra"}];
  v18 = self->_has;
  if ((*&v18 & 0x1000000) == 0)
  {
LABEL_49:
    if ((*&v18 & 0x800000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_117;
  }

LABEL_116:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dfspCSAReceivedFromPeer), @"dfspCSAReceivedFromPeer"}];
  v18 = self->_has;
  if ((*&v18 & 0x800000) == 0)
  {
LABEL_50:
    if ((*&v18 & 0x4000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_118;
  }

LABEL_117:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dfspCSAReceivedFromAP), @"dfspCSAReceivedFromAP"}];
  v18 = self->_has;
  if ((*&v18 & 0x4000000) == 0)
  {
LABEL_51:
    if ((*&v18 & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_119;
  }

LABEL_118:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dfspSuspect), @"dfspSuspect"}];
  v18 = self->_has;
  if ((*&v18 & 0x2000000) == 0)
  {
LABEL_52:
    if ((*&v18 & 0x200000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_120;
  }

LABEL_119:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dfspResume), @"dfspResume"}];
  v18 = self->_has;
  if ((*&v18 & 0x200000) == 0)
  {
LABEL_53:
    if ((*&v18 & 0x400000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_120:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dfspAirplayConnected), @"dfspAirplayConnected"}];
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_54:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dfspAirplayFailed), @"dfspAirplayFailed"}];
  }

LABEL_55:
  if ([(NSMutableArray *)self->_hopCountHistograms count])
  {
    v19 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_hopCountHistograms, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    hopCountHistograms = self->_hopCountHistograms;
    v21 = [(NSMutableArray *)hopCountHistograms countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v41;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(hopCountHistograms);
          }

          [v19 addObject:{objc_msgSend(*(*(&v40 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v22 = [(NSMutableArray *)hopCountHistograms countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKey:@"hopCountHistogram"];
  }

  if ([(NSMutableArray *)self->_parentRssiHistograms count])
  {
    v25 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_parentRssiHistograms, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    parentRssiHistograms = self->_parentRssiHistograms;
    v27 = [(NSMutableArray *)parentRssiHistograms countByEnumeratingWithState:&v36 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(parentRssiHistograms);
          }

          [v25 addObject:{objc_msgSend(*(*(&v36 + 1) + 8 * m), "dictionaryRepresentation")}];
        }

        v28 = [(NSMutableArray *)parentRssiHistograms countByEnumeratingWithState:&v36 objects:v52 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKey:@"parentRssiHistogram"];
  }

  v31 = self->_has;
  if ((*&v31 & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_syncChangesCount), @"syncChangesCount"}];
    v31 = self->_has;
    if ((*&v31 & 0x80000000) == 0)
    {
LABEL_75:
      if ((*&v31 & 0x100000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_124;
    }
  }

  else if ((*&v31 & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numAirplaySessions), @"numAirplaySessions"}];
  v31 = self->_has;
  if ((*&v31 & 0x100000000) == 0)
  {
LABEL_76:
    if ((*&v31 & 0x200000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_125;
  }

LABEL_124:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numDynSdbAirplayAllowed), @"numDynSdbAirplayAllowed"}];
  v31 = self->_has;
  if ((*&v31 & 0x200000000) == 0)
  {
LABEL_77:
    if ((*&v31 & 0x400000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_126;
  }

LABEL_125:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numDynSdbEntrySuccess), @"numDynSdbEntrySuccess"}];
  v31 = self->_has;
  if ((*&v31 & 0x400000000) == 0)
  {
LABEL_78:
    if ((*&v31 & 0x800000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_126:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numDynSdbExitDueToRate), @"numDynSdbExitDueToRate"}];
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_79:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numDynSdbReEntrySuccess), @"numDynSdbReEntrySuccess"}];
  }

LABEL_80:
  d2dMigrationStats = self->_d2dMigrationStats;
  if (d2dMigrationStats)
  {
    [v3 setObject:-[AWDWifiAwdlD2dMigrationStats dictionaryRepresentation](d2dMigrationStats forKey:{"dictionaryRepresentation"), @"d2dMigrationStats"}];
  }

  v33 = self->_has;
  if ((*&v33 & 0x80000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_selfInfraChannelFlags), @"selfInfraChannelFlags"}];
    v33 = self->_has;
    if ((*&v33 & 0x8000000000) == 0)
    {
LABEL_84:
      if ((*&v33 & 0x80000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_130;
    }
  }

  else if ((*&v33 & 0x8000000000) == 0)
  {
    goto LABEL_84;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerInfraChannelFlags), @"peerInfraChannelFlags"}];
  v33 = self->_has;
  if ((*&v33 & 0x80000) == 0)
  {
LABEL_85:
    if ((*&v33 & 0x20000000000) == 0)
    {
      goto LABEL_86;
    }

LABEL_131:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_selfCapOther), @"selfCapOther"}];
    if ((*&self->_has & 0x2000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_130:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cachedPeersOnOther), @"cachedPeersOnOther"}];
  v33 = self->_has;
  if ((*&v33 & 0x20000000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_86:
  if ((*&v33 & 0x2000) != 0)
  {
LABEL_87:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cachedPeersCapOther), @"cachedPeersCapOther"}];
  }

LABEL_88:
  v34 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v98 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x40000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_83;
    }
  }

  else if ((*&has & 0x40000000000) == 0)
  {
    goto LABEL_3;
  }

  selfInfraChannel = self->_selfInfraChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_84;
  }

LABEL_83:
  peerInfraChannel = self->_peerInfraChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_85;
  }

LABEL_84:
  numOfPeers = self->_numOfPeers;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_86;
  }

LABEL_85:
  numOfCachedPeers = self->_numOfCachedPeers;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_87;
  }

LABEL_86:
  cachedPeersOn24G = self->_cachedPeersOn24G;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_88;
  }

LABEL_87:
  cachedPeersOn5G = self->_cachedPeersOn5G;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_89;
  }

LABEL_88:
  cachedPeersOnDFS = self->_cachedPeersOnDFS;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_90;
  }

LABEL_89:
  cachedPeersNotAssociated = self->_cachedPeersNotAssociated;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_91;
  }

LABEL_90:
  flags = self->_flags;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_92;
  }

LABEL_91:
  ifPacketFailures = self->_ifPacketFailures;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_93;
  }

LABEL_92:
  ifRxBytes = self->_ifRxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_94;
  }

LABEL_93:
  ifTxBytes = self->_ifTxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_95;
  }

LABEL_94:
  appRxBytes = self->_appRxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_95:
  appTxBytes = self->_appTxBytes;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10000000000) != 0)
  {
LABEL_17:
    periodInMinutes = self->_periodInMinutes;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  states = self->_states;
  v7 = [(NSMutableArray *)states countByEnumeratingWithState:&v90 objects:v97 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v91;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v91 != v9)
        {
          objc_enumerationMutation(states);
        }

        v11 = *(*(&v90 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)states countByEnumeratingWithState:&v90 objects:v97 count:16];
    }

    while (v8);
  }

  v12 = self->_has;
  if (*&v12)
  {
    noServiceIdleTime = self->_noServiceIdleTime;
    PBDataWriterWriteUint64Field();
    v12 = self->_has;
    if ((*&v12 & 0x400) == 0)
    {
LABEL_27:
      if ((*&v12 & 0x200) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_99;
    }
  }

  else if ((*&v12 & 0x400) == 0)
  {
    goto LABEL_27;
  }

  browseAddTotalCount = self->_browseAddTotalCount;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((*&v12 & 0x200) == 0)
  {
LABEL_28:
    if ((*&v12 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_100;
  }

LABEL_99:
  browseAddFilteredCount = self->_browseAddFilteredCount;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((*&v12 & 0x1000) == 0)
  {
LABEL_29:
    if ((*&v12 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_101;
  }

LABEL_100:
  browseDeleteTotalCount = self->_browseDeleteTotalCount;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((*&v12 & 0x800) == 0)
  {
LABEL_30:
    if ((*&v12 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_102;
  }

LABEL_101:
  browseDeleteFilteredCount = self->_browseDeleteFilteredCount;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((*&v12 & 0x10) == 0)
  {
LABEL_31:
    if ((*&v12 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_103;
  }

LABEL_102:
  advertiseAddTotalCount = self->_advertiseAddTotalCount;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((*&v12 & 8) == 0)
  {
LABEL_32:
    if ((*&v12 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_104;
  }

LABEL_103:
  advertiseAddFilteredCount = self->_advertiseAddFilteredCount;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((*&v12 & 0x40) == 0)
  {
LABEL_33:
    if ((*&v12 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_104:
  advertiseDeleteTotalCount = self->_advertiseDeleteTotalCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_34:
    advertiseDeleteFilteredCount = self->_advertiseDeleteFilteredCount;
    PBDataWriterWriteUint32Field();
  }

LABEL_35:
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  services = self->_services;
  v15 = [(NSMutableArray *)services countByEnumeratingWithState:&v86 objects:v96 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v87;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v87 != v17)
        {
          objc_enumerationMutation(services);
        }

        v19 = *(*(&v86 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)services countByEnumeratingWithState:&v86 objects:v96 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if ((*&v20 & 0x100000) != 0)
  {
    cachedPeersSameInfra = self->_cachedPeersSameInfra;
    PBDataWriterWriteUint32Field();
    v20 = self->_has;
    if ((*&v20 & 0x4000) == 0)
    {
LABEL_44:
      if ((*&v20 & 0x1000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_108;
    }
  }

  else if ((*&v20 & 0x4000) == 0)
  {
    goto LABEL_44;
  }

  cachedPeersDifferentInfra = self->_cachedPeersDifferentInfra;
  PBDataWriterWriteUint32Field();
  v20 = self->_has;
  if ((*&v20 & 0x1000000) == 0)
  {
LABEL_45:
    if ((*&v20 & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_109;
  }

LABEL_108:
  dfspCSAReceivedFromPeer = self->_dfspCSAReceivedFromPeer;
  PBDataWriterWriteUint32Field();
  v20 = self->_has;
  if ((*&v20 & 0x800000) == 0)
  {
LABEL_46:
    if ((*&v20 & 0x4000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_110;
  }

LABEL_109:
  dfspCSAReceivedFromAP = self->_dfspCSAReceivedFromAP;
  PBDataWriterWriteUint32Field();
  v20 = self->_has;
  if ((*&v20 & 0x4000000) == 0)
  {
LABEL_47:
    if ((*&v20 & 0x2000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_111;
  }

LABEL_110:
  dfspSuspect = self->_dfspSuspect;
  PBDataWriterWriteUint32Field();
  v20 = self->_has;
  if ((*&v20 & 0x2000000) == 0)
  {
LABEL_48:
    if ((*&v20 & 0x200000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_112;
  }

LABEL_111:
  dfspResume = self->_dfspResume;
  PBDataWriterWriteUint32Field();
  v20 = self->_has;
  if ((*&v20 & 0x200000) == 0)
  {
LABEL_49:
    if ((*&v20 & 0x400000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_112:
  dfspAirplayConnected = self->_dfspAirplayConnected;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_50:
    dfspAirplayFailed = self->_dfspAirplayFailed;
    PBDataWriterWriteUint32Field();
  }

LABEL_51:
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  hopCountHistograms = self->_hopCountHistograms;
  v23 = [(NSMutableArray *)hopCountHistograms countByEnumeratingWithState:&v82 objects:v95 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v83;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v83 != v25)
        {
          objc_enumerationMutation(hopCountHistograms);
        }

        v27 = *(*(&v82 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v24 = [(NSMutableArray *)hopCountHistograms countByEnumeratingWithState:&v82 objects:v95 count:16];
    }

    while (v24);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  parentRssiHistograms = self->_parentRssiHistograms;
  v29 = [(NSMutableArray *)parentRssiHistograms countByEnumeratingWithState:&v78 objects:v94 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v79;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v79 != v31)
        {
          objc_enumerationMutation(parentRssiHistograms);
        }

        v33 = *(*(&v78 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v30 = [(NSMutableArray *)parentRssiHistograms countByEnumeratingWithState:&v78 objects:v94 count:16];
    }

    while (v30);
  }

  v34 = self->_has;
  if ((*&v34 & 2) != 0)
  {
    syncChangesCount = self->_syncChangesCount;
    PBDataWriterWriteUint64Field();
    v34 = self->_has;
    if ((*&v34 & 0x80000000) == 0)
    {
LABEL_67:
      if ((*&v34 & 0x100000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_116;
    }
  }

  else if ((*&v34 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

  numAirplaySessions = self->_numAirplaySessions;
  PBDataWriterWriteUint32Field();
  v34 = self->_has;
  if ((*&v34 & 0x100000000) == 0)
  {
LABEL_68:
    if ((*&v34 & 0x200000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_117;
  }

LABEL_116:
  numDynSdbAirplayAllowed = self->_numDynSdbAirplayAllowed;
  PBDataWriterWriteUint32Field();
  v34 = self->_has;
  if ((*&v34 & 0x200000000) == 0)
  {
LABEL_69:
    if ((*&v34 & 0x400000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_118;
  }

LABEL_117:
  numDynSdbEntrySuccess = self->_numDynSdbEntrySuccess;
  PBDataWriterWriteUint32Field();
  v34 = self->_has;
  if ((*&v34 & 0x400000000) == 0)
  {
LABEL_70:
    if ((*&v34 & 0x800000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_118:
  numDynSdbExitDueToRate = self->_numDynSdbExitDueToRate;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_71:
    numDynSdbReEntrySuccess = self->_numDynSdbReEntrySuccess;
    PBDataWriterWriteUint32Field();
  }

LABEL_72:
  if (self->_d2dMigrationStats)
  {
    PBDataWriterWriteSubmessage();
  }

  v36 = self->_has;
  if ((*&v36 & 0x80000000000) != 0)
  {
    selfInfraChannelFlags = self->_selfInfraChannelFlags;
    PBDataWriterWriteUint32Field();
    v36 = self->_has;
    if ((*&v36 & 0x8000000000) == 0)
    {
LABEL_76:
      if ((*&v36 & 0x80000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_122;
    }
  }

  else if ((*&v36 & 0x8000000000) == 0)
  {
    goto LABEL_76;
  }

  peerInfraChannelFlags = self->_peerInfraChannelFlags;
  PBDataWriterWriteUint32Field();
  v36 = self->_has;
  if ((*&v36 & 0x80000) == 0)
  {
LABEL_77:
    if ((*&v36 & 0x20000000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_123:
    selfCapOther = self->_selfCapOther;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x2000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_122:
  cachedPeersOnOther = self->_cachedPeersOnOther;
  PBDataWriterWriteUint32Field();
  v36 = self->_has;
  if ((*&v36 & 0x20000000000) != 0)
  {
    goto LABEL_123;
  }

LABEL_78:
  if ((*&v36 & 0x2000) != 0)
  {
LABEL_79:
    cachedPeersCapOther = self->_cachedPeersCapOther;
    PBDataWriterWriteUint32Field();
  }

LABEL_80:
  v38 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 30) |= 4uLL;
    has = self->_has;
    if ((*&has & 0x40000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_71;
    }
  }

  else if ((*&has & 0x40000000000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 54) = self->_selfInfraChannel;
  *(a3 + 30) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(a3 + 50) = self->_peerInfraChannel;
  *(a3 + 30) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a3 + 47) = self->_numOfPeers;
  *(a3 + 30) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a3 + 46) = self->_numOfCachedPeers;
  *(a3 + 30) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(a3 + 21) = self->_cachedPeersOn24G;
  *(a3 + 30) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(a3 + 22) = self->_cachedPeersOn5G;
  *(a3 + 30) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a3 + 23) = self->_cachedPeersOnDFS;
  *(a3 + 30) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(a3 + 20) = self->_cachedPeersNotAssociated;
  *(a3 + 30) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(a3 + 34) = self->_flags;
  *(a3 + 30) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(a3 + 38) = self->_ifPacketFailures;
  *(a3 + 30) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(a3 + 39) = self->_ifRxBytes;
  *(a3 + 30) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(a3 + 40) = self->_ifTxBytes;
  *(a3 + 30) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

LABEL_83:
    *(a3 + 13) = self->_appTxBytes;
    *(a3 + 30) |= 0x100uLL;
    if ((*&self->_has & 0x10000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_82:
  *(a3 + 12) = self->_appRxBytes;
  *(a3 + 30) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    goto LABEL_83;
  }

LABEL_16:
  if ((*&has & 0x10000000000) != 0)
  {
LABEL_17:
    *(a3 + 52) = self->_periodInMinutes;
    *(a3 + 30) |= 0x10000000000uLL;
  }

LABEL_18:
  if ([(AWDWiFiMetricsManagerAwdlUsage *)self statesCount])
  {
    [a3 clearStates];
    v6 = [(AWDWiFiMetricsManagerAwdlUsage *)self statesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addStates:{-[AWDWiFiMetricsManagerAwdlUsage statesAtIndex:](self, "statesAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if (*&v9)
  {
    *(a3 + 1) = self->_noServiceIdleTime;
    *(a3 + 30) |= 1uLL;
    v9 = self->_has;
    if ((*&v9 & 0x400) == 0)
    {
LABEL_24:
      if ((*&v9 & 0x200) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_87;
    }
  }

  else if ((*&v9 & 0x400) == 0)
  {
    goto LABEL_24;
  }

  *(a3 + 15) = self->_browseAddTotalCount;
  *(a3 + 30) |= 0x400uLL;
  v9 = self->_has;
  if ((*&v9 & 0x200) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(a3 + 14) = self->_browseAddFilteredCount;
  *(a3 + 30) |= 0x200uLL;
  v9 = self->_has;
  if ((*&v9 & 0x1000) == 0)
  {
LABEL_26:
    if ((*&v9 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(a3 + 17) = self->_browseDeleteTotalCount;
  *(a3 + 30) |= 0x1000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x800) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(a3 + 16) = self->_browseDeleteFilteredCount;
  *(a3 + 30) |= 0x800uLL;
  v9 = self->_has;
  if ((*&v9 & 0x10) == 0)
  {
LABEL_28:
    if ((*&v9 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(a3 + 9) = self->_advertiseAddTotalCount;
  *(a3 + 30) |= 0x10uLL;
  v9 = self->_has;
  if ((*&v9 & 8) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x40) == 0)
    {
      goto LABEL_30;
    }

LABEL_92:
    *(a3 + 11) = self->_advertiseDeleteTotalCount;
    *(a3 + 30) |= 0x40uLL;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_91:
  *(a3 + 8) = self->_advertiseAddFilteredCount;
  *(a3 + 30) |= 8uLL;
  v9 = self->_has;
  if ((*&v9 & 0x40) != 0)
  {
    goto LABEL_92;
  }

LABEL_30:
  if ((*&v9 & 0x20) != 0)
  {
LABEL_31:
    *(a3 + 10) = self->_advertiseDeleteFilteredCount;
    *(a3 + 30) |= 0x20uLL;
  }

LABEL_32:
  if ([(AWDWiFiMetricsManagerAwdlUsage *)self servicesCount])
  {
    [a3 clearServices];
    v10 = [(AWDWiFiMetricsManagerAwdlUsage *)self servicesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        [a3 addServices:{-[AWDWiFiMetricsManagerAwdlUsage servicesAtIndex:](self, "servicesAtIndex:", j)}];
      }
    }
  }

  v13 = self->_has;
  if ((*&v13 & 0x100000) != 0)
  {
    *(a3 + 25) = self->_cachedPeersSameInfra;
    *(a3 + 30) |= 0x100000uLL;
    v13 = self->_has;
    if ((*&v13 & 0x4000) == 0)
    {
LABEL_38:
      if ((*&v13 & 0x1000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_96;
    }
  }

  else if ((*&v13 & 0x4000) == 0)
  {
    goto LABEL_38;
  }

  *(a3 + 19) = self->_cachedPeersDifferentInfra;
  *(a3 + 30) |= 0x4000uLL;
  v13 = self->_has;
  if ((*&v13 & 0x1000000) == 0)
  {
LABEL_39:
    if ((*&v13 & 0x800000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(a3 + 31) = self->_dfspCSAReceivedFromPeer;
  *(a3 + 30) |= 0x1000000uLL;
  v13 = self->_has;
  if ((*&v13 & 0x800000) == 0)
  {
LABEL_40:
    if ((*&v13 & 0x4000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(a3 + 30) = self->_dfspCSAReceivedFromAP;
  *(a3 + 30) |= 0x800000uLL;
  v13 = self->_has;
  if ((*&v13 & 0x4000000) == 0)
  {
LABEL_41:
    if ((*&v13 & 0x2000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(a3 + 33) = self->_dfspSuspect;
  *(a3 + 30) |= 0x4000000uLL;
  v13 = self->_has;
  if ((*&v13 & 0x2000000) == 0)
  {
LABEL_42:
    if ((*&v13 & 0x200000) == 0)
    {
      goto LABEL_43;
    }

LABEL_100:
    *(a3 + 28) = self->_dfspAirplayConnected;
    *(a3 + 30) |= 0x200000uLL;
    if ((*&self->_has & 0x400000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_99:
  *(a3 + 32) = self->_dfspResume;
  *(a3 + 30) |= 0x2000000uLL;
  v13 = self->_has;
  if ((*&v13 & 0x200000) != 0)
  {
    goto LABEL_100;
  }

LABEL_43:
  if ((*&v13 & 0x400000) != 0)
  {
LABEL_44:
    *(a3 + 29) = self->_dfspAirplayFailed;
    *(a3 + 30) |= 0x400000uLL;
  }

LABEL_45:
  if ([(AWDWiFiMetricsManagerAwdlUsage *)self hopCountHistogramsCount])
  {
    [a3 clearHopCountHistograms];
    v14 = [(AWDWiFiMetricsManagerAwdlUsage *)self hopCountHistogramsCount];
    if (v14)
    {
      v15 = v14;
      for (k = 0; k != v15; ++k)
      {
        [a3 addHopCountHistogram:{-[AWDWiFiMetricsManagerAwdlUsage hopCountHistogramAtIndex:](self, "hopCountHistogramAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiMetricsManagerAwdlUsage *)self parentRssiHistogramsCount])
  {
    [a3 clearParentRssiHistograms];
    v17 = [(AWDWiFiMetricsManagerAwdlUsage *)self parentRssiHistogramsCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        [a3 addParentRssiHistogram:{-[AWDWiFiMetricsManagerAwdlUsage parentRssiHistogramAtIndex:](self, "parentRssiHistogramAtIndex:", m)}];
      }
    }
  }

  v20 = self->_has;
  if ((*&v20 & 2) != 0)
  {
    *(a3 + 2) = self->_syncChangesCount;
    *(a3 + 30) |= 2uLL;
    v20 = self->_has;
    if ((*&v20 & 0x80000000) == 0)
    {
LABEL_55:
      if ((*&v20 & 0x100000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_104;
    }
  }

  else if ((*&v20 & 0x80000000) == 0)
  {
    goto LABEL_55;
  }

  *(a3 + 41) = self->_numAirplaySessions;
  *(a3 + 30) |= 0x80000000uLL;
  v20 = self->_has;
  if ((*&v20 & 0x100000000) == 0)
  {
LABEL_56:
    if ((*&v20 & 0x200000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(a3 + 42) = self->_numDynSdbAirplayAllowed;
  *(a3 + 30) |= 0x100000000uLL;
  v20 = self->_has;
  if ((*&v20 & 0x200000000) == 0)
  {
LABEL_57:
    if ((*&v20 & 0x400000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(a3 + 43) = self->_numDynSdbEntrySuccess;
  *(a3 + 30) |= 0x200000000uLL;
  v20 = self->_has;
  if ((*&v20 & 0x400000000) == 0)
  {
LABEL_58:
    if ((*&v20 & 0x800000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_106:
  *(a3 + 44) = self->_numDynSdbExitDueToRate;
  *(a3 + 30) |= 0x400000000uLL;
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_59:
    *(a3 + 45) = self->_numDynSdbReEntrySuccess;
    *(a3 + 30) |= 0x800000000uLL;
  }

LABEL_60:
  if (self->_d2dMigrationStats)
  {
    [a3 setD2dMigrationStats:?];
  }

  v21 = self->_has;
  if ((*&v21 & 0x80000000000) != 0)
  {
    *(a3 + 55) = self->_selfInfraChannelFlags;
    *(a3 + 30) |= 0x80000000000uLL;
    v21 = self->_has;
    if ((*&v21 & 0x8000000000) == 0)
    {
LABEL_64:
      if ((*&v21 & 0x80000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_110;
    }
  }

  else if ((*&v21 & 0x8000000000) == 0)
  {
    goto LABEL_64;
  }

  *(a3 + 51) = self->_peerInfraChannelFlags;
  *(a3 + 30) |= 0x8000000000uLL;
  v21 = self->_has;
  if ((*&v21 & 0x80000) == 0)
  {
LABEL_65:
    if ((*&v21 & 0x20000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(a3 + 24) = self->_cachedPeersOnOther;
  *(a3 + 30) |= 0x80000uLL;
  v21 = self->_has;
  if ((*&v21 & 0x20000000000) == 0)
  {
LABEL_66:
    if ((*&v21 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_67;
  }

LABEL_111:
  *(a3 + 53) = self->_selfCapOther;
  *(a3 + 30) |= 0x20000000000uLL;
  if ((*&self->_has & 0x2000) == 0)
  {
    return;
  }

LABEL_67:
  *(a3 + 18) = self->_cachedPeersCapOther;
  *(a3 + 30) |= 0x2000uLL;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v58 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 240) |= 4uLL;
    has = self->_has;
    if ((*&has & 0x40000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_81;
    }
  }

  else if ((*&has & 0x40000000000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 216) = self->_selfInfraChannel;
  *(v5 + 240) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v5 + 200) = self->_peerInfraChannel;
  *(v5 + 240) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v5 + 188) = self->_numOfPeers;
  *(v5 + 240) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v5 + 184) = self->_numOfCachedPeers;
  *(v5 + 240) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v5 + 84) = self->_cachedPeersOn24G;
  *(v5 + 240) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v5 + 88) = self->_cachedPeersOn5G;
  *(v5 + 240) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v5 + 92) = self->_cachedPeersOnDFS;
  *(v5 + 240) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v5 + 80) = self->_cachedPeersNotAssociated;
  *(v5 + 240) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v5 + 136) = self->_flags;
  *(v5 + 240) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v5 + 152) = self->_ifPacketFailures;
  *(v5 + 240) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v5 + 156) = self->_ifRxBytes;
  *(v5 + 240) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v5 + 160) = self->_ifTxBytes;
  *(v5 + 240) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v5 + 48) = self->_appRxBytes;
  *(v5 + 240) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_93:
  *(v5 + 52) = self->_appTxBytes;
  *(v5 + 240) |= 0x100uLL;
  if ((*&self->_has & 0x10000000000) != 0)
  {
LABEL_17:
    *(v5 + 208) = self->_periodInMinutes;
    *(v5 + 240) |= 0x10000000000uLL;
  }

LABEL_18:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  states = self->_states;
  v9 = [(NSMutableArray *)states countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(states);
        }

        v13 = [*(*(&v50 + 1) + 8 * i) copyWithZone:a3];
        [v6 addStates:v13];
      }

      v10 = [(NSMutableArray *)states countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if (*&v14)
  {
    *(v6 + 8) = self->_noServiceIdleTime;
    *(v6 + 240) |= 1uLL;
    v14 = self->_has;
    if ((*&v14 & 0x400) == 0)
    {
LABEL_27:
      if ((*&v14 & 0x200) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_97;
    }
  }

  else if ((*&v14 & 0x400) == 0)
  {
    goto LABEL_27;
  }

  *(v6 + 60) = self->_browseAddTotalCount;
  *(v6 + 240) |= 0x400uLL;
  v14 = self->_has;
  if ((*&v14 & 0x200) == 0)
  {
LABEL_28:
    if ((*&v14 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v6 + 56) = self->_browseAddFilteredCount;
  *(v6 + 240) |= 0x200uLL;
  v14 = self->_has;
  if ((*&v14 & 0x1000) == 0)
  {
LABEL_29:
    if ((*&v14 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v6 + 68) = self->_browseDeleteTotalCount;
  *(v6 + 240) |= 0x1000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x800) == 0)
  {
LABEL_30:
    if ((*&v14 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v6 + 64) = self->_browseDeleteFilteredCount;
  *(v6 + 240) |= 0x800uLL;
  v14 = self->_has;
  if ((*&v14 & 0x10) == 0)
  {
LABEL_31:
    if ((*&v14 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v6 + 36) = self->_advertiseAddTotalCount;
  *(v6 + 240) |= 0x10uLL;
  v14 = self->_has;
  if ((*&v14 & 8) == 0)
  {
LABEL_32:
    if ((*&v14 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v6 + 32) = self->_advertiseAddFilteredCount;
  *(v6 + 240) |= 8uLL;
  v14 = self->_has;
  if ((*&v14 & 0x40) == 0)
  {
LABEL_33:
    if ((*&v14 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_102:
  *(v6 + 44) = self->_advertiseDeleteTotalCount;
  *(v6 + 240) |= 0x40uLL;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_34:
    *(v6 + 40) = self->_advertiseDeleteFilteredCount;
    *(v6 + 240) |= 0x20uLL;
  }

LABEL_35:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  services = self->_services;
  v16 = [(NSMutableArray *)services countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v47;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(services);
        }

        v20 = [*(*(&v46 + 1) + 8 * j) copyWithZone:a3];
        [v6 addServices:v20];
      }

      v17 = [(NSMutableArray *)services countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v17);
  }

  v21 = self->_has;
  if ((*&v21 & 0x100000) != 0)
  {
    *(v6 + 100) = self->_cachedPeersSameInfra;
    *(v6 + 240) |= 0x100000uLL;
    v21 = self->_has;
    if ((*&v21 & 0x4000) == 0)
    {
LABEL_44:
      if ((*&v21 & 0x1000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_106;
    }
  }

  else if ((*&v21 & 0x4000) == 0)
  {
    goto LABEL_44;
  }

  *(v6 + 76) = self->_cachedPeersDifferentInfra;
  *(v6 + 240) |= 0x4000uLL;
  v21 = self->_has;
  if ((*&v21 & 0x1000000) == 0)
  {
LABEL_45:
    if ((*&v21 & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v6 + 124) = self->_dfspCSAReceivedFromPeer;
  *(v6 + 240) |= 0x1000000uLL;
  v21 = self->_has;
  if ((*&v21 & 0x800000) == 0)
  {
LABEL_46:
    if ((*&v21 & 0x4000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v6 + 120) = self->_dfspCSAReceivedFromAP;
  *(v6 + 240) |= 0x800000uLL;
  v21 = self->_has;
  if ((*&v21 & 0x4000000) == 0)
  {
LABEL_47:
    if ((*&v21 & 0x2000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v6 + 132) = self->_dfspSuspect;
  *(v6 + 240) |= 0x4000000uLL;
  v21 = self->_has;
  if ((*&v21 & 0x2000000) == 0)
  {
LABEL_48:
    if ((*&v21 & 0x200000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v6 + 128) = self->_dfspResume;
  *(v6 + 240) |= 0x2000000uLL;
  v21 = self->_has;
  if ((*&v21 & 0x200000) == 0)
  {
LABEL_49:
    if ((*&v21 & 0x400000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_110:
  *(v6 + 112) = self->_dfspAirplayConnected;
  *(v6 + 240) |= 0x200000uLL;
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_50:
    *(v6 + 116) = self->_dfspAirplayFailed;
    *(v6 + 240) |= 0x400000uLL;
  }

LABEL_51:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  hopCountHistograms = self->_hopCountHistograms;
  v23 = [(NSMutableArray *)hopCountHistograms countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v43;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(hopCountHistograms);
        }

        v27 = [*(*(&v42 + 1) + 8 * k) copyWithZone:a3];
        [v6 addHopCountHistogram:v27];
      }

      v24 = [(NSMutableArray *)hopCountHistograms countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v24);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  parentRssiHistograms = self->_parentRssiHistograms;
  v29 = [(NSMutableArray *)parentRssiHistograms countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v39;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(parentRssiHistograms);
        }

        v33 = [*(*(&v38 + 1) + 8 * m) copyWithZone:a3];
        [v6 addParentRssiHistogram:v33];
      }

      v30 = [(NSMutableArray *)parentRssiHistograms countByEnumeratingWithState:&v38 objects:v54 count:16];
    }

    while (v30);
  }

  v34 = self->_has;
  if ((*&v34 & 2) != 0)
  {
    *(v6 + 16) = self->_syncChangesCount;
    *(v6 + 240) |= 2uLL;
    v34 = self->_has;
    if ((*&v34 & 0x80000000) == 0)
    {
LABEL_67:
      if ((*&v34 & 0x100000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_114;
    }
  }

  else if ((*&v34 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

  *(v6 + 164) = self->_numAirplaySessions;
  *(v6 + 240) |= 0x80000000uLL;
  v34 = self->_has;
  if ((*&v34 & 0x100000000) == 0)
  {
LABEL_68:
    if ((*&v34 & 0x200000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(v6 + 168) = self->_numDynSdbAirplayAllowed;
  *(v6 + 240) |= 0x100000000uLL;
  v34 = self->_has;
  if ((*&v34 & 0x200000000) == 0)
  {
LABEL_69:
    if ((*&v34 & 0x400000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(v6 + 172) = self->_numDynSdbEntrySuccess;
  *(v6 + 240) |= 0x200000000uLL;
  v34 = self->_has;
  if ((*&v34 & 0x400000000) == 0)
  {
LABEL_70:
    if ((*&v34 & 0x800000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_116:
  *(v6 + 176) = self->_numDynSdbExitDueToRate;
  *(v6 + 240) |= 0x400000000uLL;
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_71:
    *(v6 + 180) = self->_numDynSdbReEntrySuccess;
    *(v6 + 240) |= 0x800000000uLL;
  }

LABEL_72:

  *(v6 + 104) = [(AWDWifiAwdlD2dMigrationStats *)self->_d2dMigrationStats copyWithZone:a3];
  v35 = self->_has;
  if ((*&v35 & 0x80000000000) != 0)
  {
    *(v6 + 220) = self->_selfInfraChannelFlags;
    *(v6 + 240) |= 0x80000000000uLL;
    v35 = self->_has;
    if ((*&v35 & 0x8000000000) == 0)
    {
LABEL_74:
      if ((*&v35 & 0x80000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_120;
    }
  }

  else if ((*&v35 & 0x8000000000) == 0)
  {
    goto LABEL_74;
  }

  *(v6 + 204) = self->_peerInfraChannelFlags;
  *(v6 + 240) |= 0x8000000000uLL;
  v35 = self->_has;
  if ((*&v35 & 0x80000) == 0)
  {
LABEL_75:
    if ((*&v35 & 0x20000000000) == 0)
    {
      goto LABEL_76;
    }

LABEL_121:
    *(v6 + 212) = self->_selfCapOther;
    *(v6 + 240) |= 0x20000000000uLL;
    if ((*&self->_has & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_120:
  *(v6 + 96) = self->_cachedPeersOnOther;
  *(v6 + 240) |= 0x80000uLL;
  v35 = self->_has;
  if ((*&v35 & 0x20000000000) != 0)
  {
    goto LABEL_121;
  }

LABEL_76:
  if ((*&v35 & 0x2000) != 0)
  {
LABEL_77:
    *(v6 + 72) = self->_cachedPeersCapOther;
    *(v6 + 240) |= 0x2000uLL;
  }

LABEL_78:
  v36 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 30);
    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_timestamp != *(a3 + 3))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 4) != 0)
    {
LABEL_234:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x40000000000) != 0)
    {
      if ((v7 & 0x40000000000) == 0 || self->_selfInfraChannel != *(a3 + 54))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x40000000000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x4000000000) != 0)
    {
      if ((v7 & 0x4000000000) == 0 || self->_peerInfraChannel != *(a3 + 50))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x4000000000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x2000000000) != 0)
    {
      if ((v7 & 0x2000000000) == 0 || self->_numOfPeers != *(a3 + 47))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x2000000000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x1000000000) != 0)
    {
      if ((v7 & 0x1000000000) == 0 || self->_numOfCachedPeers != *(a3 + 46))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x1000000000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_cachedPeersOn24G != *(a3 + 21))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_cachedPeersOn5G != *(a3 + 22))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_cachedPeersOnDFS != *(a3 + 23))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_cachedPeersNotAssociated != *(a3 + 20))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x8000000) != 0)
    {
      if ((v7 & 0x8000000) == 0 || self->_flags != *(a3 + 34))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x10000000) != 0)
    {
      if ((v7 & 0x10000000) == 0 || self->_ifPacketFailures != *(a3 + 38))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x10000000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x20000000) != 0)
    {
      if ((v7 & 0x20000000) == 0 || self->_ifRxBytes != *(a3 + 39))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x20000000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x40000000) != 0)
    {
      if ((v7 & 0x40000000) == 0 || self->_ifTxBytes != *(a3 + 40))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x40000000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_appRxBytes != *(a3 + 12))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_appTxBytes != *(a3 + 13))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x10000000000) != 0)
    {
      if ((v7 & 0x10000000000) == 0 || self->_periodInMinutes != *(a3 + 52))
      {
        goto LABEL_234;
      }
    }

    else if ((v7 & 0x10000000000) != 0)
    {
      goto LABEL_234;
    }

    states = self->_states;
    if (states | *(a3 + 29))
    {
      v5 = [(NSMutableArray *)states isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 30);
    if (*&has)
    {
      if ((v9 & 1) == 0 || self->_noServiceIdleTime != *(a3 + 1))
      {
        goto LABEL_234;
      }
    }

    else if (v9)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v9 & 0x400) == 0 || self->_browseAddTotalCount != *(a3 + 15))
      {
        goto LABEL_234;
      }
    }

    else if ((v9 & 0x400) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v9 & 0x200) == 0 || self->_browseAddFilteredCount != *(a3 + 14))
      {
        goto LABEL_234;
      }
    }

    else if ((v9 & 0x200) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v9 & 0x1000) == 0 || self->_browseDeleteTotalCount != *(a3 + 17))
      {
        goto LABEL_234;
      }
    }

    else if ((v9 & 0x1000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v9 & 0x800) == 0 || self->_browseDeleteFilteredCount != *(a3 + 16))
      {
        goto LABEL_234;
      }
    }

    else if ((v9 & 0x800) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v9 & 0x10) == 0 || self->_advertiseAddTotalCount != *(a3 + 9))
      {
        goto LABEL_234;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 8) != 0)
    {
      if ((v9 & 8) == 0 || self->_advertiseAddFilteredCount != *(a3 + 8))
      {
        goto LABEL_234;
      }
    }

    else if ((v9 & 8) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v9 & 0x40) == 0 || self->_advertiseDeleteTotalCount != *(a3 + 11))
      {
        goto LABEL_234;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v9 & 0x20) == 0 || self->_advertiseDeleteFilteredCount != *(a3 + 10))
      {
        goto LABEL_234;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      goto LABEL_234;
    }

    services = self->_services;
    if (services | *(a3 + 28))
    {
      v5 = [(NSMutableArray *)services isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v11 = *(a3 + 30);
    if ((*&has & 0x100000) != 0)
    {
      if ((v11 & 0x100000) == 0 || self->_cachedPeersSameInfra != *(a3 + 25))
      {
        goto LABEL_234;
      }
    }

    else if ((v11 & 0x100000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v11 & 0x4000) == 0 || self->_cachedPeersDifferentInfra != *(a3 + 19))
      {
        goto LABEL_234;
      }
    }

    else if ((v11 & 0x4000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v11 & 0x1000000) == 0 || self->_dfspCSAReceivedFromPeer != *(a3 + 31))
      {
        goto LABEL_234;
      }
    }

    else if ((v11 & 0x1000000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v11 & 0x800000) == 0 || self->_dfspCSAReceivedFromAP != *(a3 + 30))
      {
        goto LABEL_234;
      }
    }

    else if ((v11 & 0x800000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x4000000) != 0)
    {
      if ((v11 & 0x4000000) == 0 || self->_dfspSuspect != *(a3 + 33))
      {
        goto LABEL_234;
      }
    }

    else if ((v11 & 0x4000000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x2000000) != 0)
    {
      if ((v11 & 0x2000000) == 0 || self->_dfspResume != *(a3 + 32))
      {
        goto LABEL_234;
      }
    }

    else if ((v11 & 0x2000000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v11 & 0x200000) == 0 || self->_dfspAirplayConnected != *(a3 + 28))
      {
        goto LABEL_234;
      }
    }

    else if ((v11 & 0x200000) != 0)
    {
      goto LABEL_234;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v11 & 0x400000) == 0 || self->_dfspAirplayFailed != *(a3 + 29))
      {
        goto LABEL_234;
      }
    }

    else if ((v11 & 0x400000) != 0)
    {
      goto LABEL_234;
    }

    hopCountHistograms = self->_hopCountHistograms;
    if (!(hopCountHistograms | *(a3 + 18)) || (v5 = [(NSMutableArray *)hopCountHistograms isEqual:?]) != 0)
    {
      parentRssiHistograms = self->_parentRssiHistograms;
      if (!(parentRssiHistograms | *(a3 + 24)) || (v5 = [(NSMutableArray *)parentRssiHistograms isEqual:?]) != 0)
      {
        v14 = self->_has;
        v15 = *(a3 + 30);
        if ((*&v14 & 2) != 0)
        {
          if ((v15 & 2) == 0 || self->_syncChangesCount != *(a3 + 2))
          {
            goto LABEL_234;
          }
        }

        else if ((v15 & 2) != 0)
        {
          goto LABEL_234;
        }

        if ((*&v14 & 0x80000000) != 0)
        {
          if ((v15 & 0x80000000) == 0 || self->_numAirplaySessions != *(a3 + 41))
          {
            goto LABEL_234;
          }
        }

        else if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_234;
        }

        if ((*&v14 & 0x100000000) != 0)
        {
          if ((v15 & 0x100000000) == 0 || self->_numDynSdbAirplayAllowed != *(a3 + 42))
          {
            goto LABEL_234;
          }
        }

        else if ((v15 & 0x100000000) != 0)
        {
          goto LABEL_234;
        }

        if ((*&v14 & 0x200000000) != 0)
        {
          if ((v15 & 0x200000000) == 0 || self->_numDynSdbEntrySuccess != *(a3 + 43))
          {
            goto LABEL_234;
          }
        }

        else if ((v15 & 0x200000000) != 0)
        {
          goto LABEL_234;
        }

        if ((*&v14 & 0x400000000) != 0)
        {
          if ((v15 & 0x400000000) == 0 || self->_numDynSdbExitDueToRate != *(a3 + 44))
          {
            goto LABEL_234;
          }
        }

        else if ((v15 & 0x400000000) != 0)
        {
          goto LABEL_234;
        }

        if ((*&v14 & 0x800000000) != 0)
        {
          if ((v15 & 0x800000000) == 0 || self->_numDynSdbReEntrySuccess != *(a3 + 45))
          {
            goto LABEL_234;
          }
        }

        else if ((v15 & 0x800000000) != 0)
        {
          goto LABEL_234;
        }

        d2dMigrationStats = self->_d2dMigrationStats;
        if (d2dMigrationStats | *(a3 + 13))
        {
          v5 = [(AWDWifiAwdlD2dMigrationStats *)d2dMigrationStats isEqual:?];
          if (!v5)
          {
            return v5;
          }

          v14 = self->_has;
        }

        v17 = *(a3 + 30);
        if ((*&v14 & 0x80000000000) != 0)
        {
          if ((v17 & 0x80000000000) == 0 || self->_selfInfraChannelFlags != *(a3 + 55))
          {
            goto LABEL_234;
          }
        }

        else if ((v17 & 0x80000000000) != 0)
        {
          goto LABEL_234;
        }

        if ((*&v14 & 0x8000000000) != 0)
        {
          if ((v17 & 0x8000000000) == 0 || self->_peerInfraChannelFlags != *(a3 + 51))
          {
            goto LABEL_234;
          }
        }

        else if ((v17 & 0x8000000000) != 0)
        {
          goto LABEL_234;
        }

        if ((*&v14 & 0x80000) != 0)
        {
          if ((v17 & 0x80000) == 0 || self->_cachedPeersOnOther != *(a3 + 24))
          {
            goto LABEL_234;
          }
        }

        else if ((v17 & 0x80000) != 0)
        {
          goto LABEL_234;
        }

        if ((*&v14 & 0x20000000000) != 0)
        {
          if ((v17 & 0x20000000000) == 0 || self->_selfCapOther != *(a3 + 53))
          {
            goto LABEL_234;
          }
        }

        else if ((v17 & 0x20000000000) != 0)
        {
          goto LABEL_234;
        }

        LOBYTE(v5) = (*(a3 + 30) & 0x2000) == 0;
        if ((*&v14 & 0x2000) != 0)
        {
          if ((v17 & 0x2000) == 0 || self->_cachedPeersCapOther != *(a3 + 18))
          {
            goto LABEL_234;
          }

          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    v57 = 2654435761u * self->_timestamp;
    if ((*&has & 0x40000000000) != 0)
    {
LABEL_3:
      v56 = 2654435761 * self->_selfInfraChannel;
      if ((*&has & 0x4000000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v57 = 0;
    if ((*&has & 0x40000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v56 = 0;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_4:
    v55 = 2654435761 * self->_peerInfraChannel;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v55 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_5:
    v54 = 2654435761 * self->_numOfPeers;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v54 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_6:
    v53 = 2654435761 * self->_numOfCachedPeers;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v53 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_7:
    v52 = 2654435761 * self->_cachedPeersOn24G;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v52 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_8:
    v51 = 2654435761 * self->_cachedPeersOn5G;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v51 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_9:
    v50 = 2654435761 * self->_cachedPeersOnDFS;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v50 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_10:
    v49 = 2654435761 * self->_cachedPeersNotAssociated;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v49 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_11:
    v48 = 2654435761 * self->_flags;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v48 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_12:
    v47 = 2654435761 * self->_ifPacketFailures;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v47 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_13:
    v46 = 2654435761 * self->_ifRxBytes;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v46 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_14:
    v45 = 2654435761 * self->_ifTxBytes;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v45 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_15:
    v44 = 2654435761 * self->_appRxBytes;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v43 = 0;
    if ((*&has & 0x10000000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_31:
  v44 = 0;
  if ((*&has & 0x100) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v43 = 2654435761 * self->_appTxBytes;
  if ((*&has & 0x10000000000) != 0)
  {
LABEL_17:
    v42 = 2654435761 * self->_periodInMinutes;
    goto LABEL_34;
  }

LABEL_33:
  v42 = 0;
LABEL_34:
  v41 = [(NSMutableArray *)self->_states hash];
  v4 = self->_has;
  if (*&v4)
  {
    v40 = 2654435761u * self->_noServiceIdleTime;
    if ((*&v4 & 0x400) != 0)
    {
LABEL_36:
      v39 = 2654435761 * self->_browseAddTotalCount;
      if ((*&v4 & 0x200) != 0)
      {
        goto LABEL_37;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v40 = 0;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_36;
    }
  }

  v39 = 0;
  if ((*&v4 & 0x200) != 0)
  {
LABEL_37:
    v38 = 2654435761 * self->_browseAddFilteredCount;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

LABEL_46:
  v38 = 0;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_38:
    v37 = 2654435761 * self->_browseDeleteTotalCount;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_48;
  }

LABEL_47:
  v37 = 0;
  if ((*&v4 & 0x800) != 0)
  {
LABEL_39:
    v36 = 2654435761 * self->_browseDeleteFilteredCount;
    if ((*&v4 & 0x10) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_49;
  }

LABEL_48:
  v36 = 0;
  if ((*&v4 & 0x10) != 0)
  {
LABEL_40:
    v35 = 2654435761 * self->_advertiseAddTotalCount;
    if ((*&v4 & 8) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_50;
  }

LABEL_49:
  v35 = 0;
  if ((*&v4 & 8) != 0)
  {
LABEL_41:
    v34 = 2654435761 * self->_advertiseAddFilteredCount;
    if ((*&v4 & 0x40) != 0)
    {
      goto LABEL_42;
    }

LABEL_51:
    v33 = 0;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_52;
  }

LABEL_50:
  v34 = 0;
  if ((*&v4 & 0x40) == 0)
  {
    goto LABEL_51;
  }

LABEL_42:
  v33 = 2654435761 * self->_advertiseDeleteTotalCount;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_43:
    v32 = 2654435761 * self->_advertiseDeleteFilteredCount;
    goto LABEL_53;
  }

LABEL_52:
  v32 = 0;
LABEL_53:
  v31 = [(NSMutableArray *)self->_services hash];
  v5 = self->_has;
  if ((*&v5 & 0x100000) != 0)
  {
    v30 = 2654435761 * self->_cachedPeersSameInfra;
    if ((*&v5 & 0x4000) != 0)
    {
LABEL_55:
      v29 = 2654435761 * self->_cachedPeersDifferentInfra;
      if ((*&v5 & 0x1000000) != 0)
      {
        goto LABEL_56;
      }

      goto LABEL_64;
    }
  }

  else
  {
    v30 = 0;
    if ((*&v5 & 0x4000) != 0)
    {
      goto LABEL_55;
    }
  }

  v29 = 0;
  if ((*&v5 & 0x1000000) != 0)
  {
LABEL_56:
    v28 = 2654435761 * self->_dfspCSAReceivedFromPeer;
    if ((*&v5 & 0x800000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_65;
  }

LABEL_64:
  v28 = 0;
  if ((*&v5 & 0x800000) != 0)
  {
LABEL_57:
    v27 = 2654435761 * self->_dfspCSAReceivedFromAP;
    if ((*&v5 & 0x4000000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_66;
  }

LABEL_65:
  v27 = 0;
  if ((*&v5 & 0x4000000) != 0)
  {
LABEL_58:
    v26 = 2654435761 * self->_dfspSuspect;
    if ((*&v5 & 0x2000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_67;
  }

LABEL_66:
  v26 = 0;
  if ((*&v5 & 0x2000000) != 0)
  {
LABEL_59:
    v25 = 2654435761 * self->_dfspResume;
    if ((*&v5 & 0x200000) != 0)
    {
      goto LABEL_60;
    }

LABEL_68:
    v24 = 0;
    if ((*&v5 & 0x400000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_69;
  }

LABEL_67:
  v25 = 0;
  if ((*&v5 & 0x200000) == 0)
  {
    goto LABEL_68;
  }

LABEL_60:
  v24 = 2654435761 * self->_dfspAirplayConnected;
  if ((*&v5 & 0x400000) != 0)
  {
LABEL_61:
    v23 = 2654435761 * self->_dfspAirplayFailed;
    goto LABEL_70;
  }

LABEL_69:
  v23 = 0;
LABEL_70:
  v22 = [(NSMutableArray *)self->_hopCountHistograms hash];
  v6 = [(NSMutableArray *)self->_parentRssiHistograms hash];
  v7 = self->_has;
  if ((*&v7 & 2) != 0)
  {
    v8 = 2654435761u * self->_syncChangesCount;
    if ((*&v7 & 0x80000000) != 0)
    {
LABEL_72:
      v9 = 2654435761 * self->_numAirplaySessions;
      if ((*&v7 & 0x100000000) != 0)
      {
        goto LABEL_73;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v8 = 0;
    if ((*&v7 & 0x80000000) != 0)
    {
      goto LABEL_72;
    }
  }

  v9 = 0;
  if ((*&v7 & 0x100000000) != 0)
  {
LABEL_73:
    v10 = 2654435761 * self->_numDynSdbAirplayAllowed;
    if ((*&v7 & 0x200000000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_80;
  }

LABEL_79:
  v10 = 0;
  if ((*&v7 & 0x200000000) != 0)
  {
LABEL_74:
    v11 = 2654435761 * self->_numDynSdbEntrySuccess;
    if ((*&v7 & 0x400000000) != 0)
    {
      goto LABEL_75;
    }

LABEL_81:
    v12 = 0;
    if ((*&v7 & 0x800000000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_82;
  }

LABEL_80:
  v11 = 0;
  if ((*&v7 & 0x400000000) == 0)
  {
    goto LABEL_81;
  }

LABEL_75:
  v12 = 2654435761 * self->_numDynSdbExitDueToRate;
  if ((*&v7 & 0x800000000) != 0)
  {
LABEL_76:
    v13 = 2654435761 * self->_numDynSdbReEntrySuccess;
    goto LABEL_83;
  }

LABEL_82:
  v13 = 0;
LABEL_83:
  v14 = [(AWDWifiAwdlD2dMigrationStats *)self->_d2dMigrationStats hash];
  v15 = self->_has;
  if ((*&v15 & 0x80000000000) != 0)
  {
    v16 = 2654435761 * self->_selfInfraChannelFlags;
    if ((*&v15 & 0x8000000000) != 0)
    {
LABEL_85:
      v17 = 2654435761 * self->_peerInfraChannelFlags;
      if ((*&v15 & 0x80000) != 0)
      {
        goto LABEL_86;
      }

      goto LABEL_91;
    }
  }

  else
  {
    v16 = 0;
    if ((*&v15 & 0x8000000000) != 0)
    {
      goto LABEL_85;
    }
  }

  v17 = 0;
  if ((*&v15 & 0x80000) != 0)
  {
LABEL_86:
    v18 = 2654435761 * self->_cachedPeersOnOther;
    if ((*&v15 & 0x20000000000) != 0)
    {
      goto LABEL_87;
    }

LABEL_92:
    v19 = 0;
    if ((*&v15 & 0x2000) != 0)
    {
      goto LABEL_88;
    }

LABEL_93:
    v20 = 0;
    return v56 ^ v57 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v41 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
  }

LABEL_91:
  v18 = 0;
  if ((*&v15 & 0x20000000000) == 0)
  {
    goto LABEL_92;
  }

LABEL_87:
  v19 = 2654435761 * self->_selfCapOther;
  if ((*&v15 & 0x2000) == 0)
  {
    goto LABEL_93;
  }

LABEL_88:
  v20 = 2654435761 * self->_cachedPeersCapOther;
  return v56 ^ v57 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v41 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
}

- (void)mergeFrom:(id)a3
{
  v53 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 30);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4uLL;
    v5 = *(a3 + 30);
    if ((v5 & 0x40000000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x4000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_77;
    }
  }

  else if ((v5 & 0x40000000000) == 0)
  {
    goto LABEL_3;
  }

  self->_selfInfraChannel = *(a3 + 54);
  *&self->_has |= 0x40000000000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_peerInfraChannel = *(a3 + 50);
  *&self->_has |= 0x4000000000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_numOfPeers = *(a3 + 47);
  *&self->_has |= 0x2000000000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_numOfCachedPeers = *(a3 + 46);
  *&self->_has |= 0x1000000000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x10000) == 0)
  {
LABEL_7:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_cachedPeersOn24G = *(a3 + 21);
  *&self->_has |= 0x10000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x20000) == 0)
  {
LABEL_8:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_cachedPeersOn5G = *(a3 + 22);
  *&self->_has |= 0x20000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x40000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_cachedPeersOnDFS = *(a3 + 23);
  *&self->_has |= 0x40000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_cachedPeersNotAssociated = *(a3 + 20);
  *&self->_has |= 0x8000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_flags = *(a3 + 34);
  *&self->_has |= 0x8000000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_ifPacketFailures = *(a3 + 38);
  *&self->_has |= 0x10000000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_ifRxBytes = *(a3 + 39);
  *&self->_has |= 0x20000000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_ifTxBytes = *(a3 + 40);
  *&self->_has |= 0x40000000uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_15:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_appRxBytes = *(a3 + 12);
  *&self->_has |= 0x80uLL;
  v5 = *(a3 + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_89:
  self->_appTxBytes = *(a3 + 13);
  *&self->_has |= 0x100uLL;
  if ((*(a3 + 30) & 0x10000000000) != 0)
  {
LABEL_17:
    self->_periodInMinutes = *(a3 + 52);
    *&self->_has |= 0x10000000000uLL;
  }

LABEL_18:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = *(a3 + 29);
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDWiFiMetricsManagerAwdlUsage *)self addStates:*(*(&v45 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v8);
  }

  v11 = *(a3 + 30);
  if (v11)
  {
    self->_noServiceIdleTime = *(a3 + 1);
    *&self->_has |= 1uLL;
    v11 = *(a3 + 30);
    if ((v11 & 0x400) == 0)
    {
LABEL_27:
      if ((v11 & 0x200) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_93;
    }
  }

  else if ((v11 & 0x400) == 0)
  {
    goto LABEL_27;
  }

  self->_browseAddTotalCount = *(a3 + 15);
  *&self->_has |= 0x400uLL;
  v11 = *(a3 + 30);
  if ((v11 & 0x200) == 0)
  {
LABEL_28:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_browseAddFilteredCount = *(a3 + 14);
  *&self->_has |= 0x200uLL;
  v11 = *(a3 + 30);
  if ((v11 & 0x1000) == 0)
  {
LABEL_29:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_browseDeleteTotalCount = *(a3 + 17);
  *&self->_has |= 0x1000uLL;
  v11 = *(a3 + 30);
  if ((v11 & 0x800) == 0)
  {
LABEL_30:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_browseDeleteFilteredCount = *(a3 + 16);
  *&self->_has |= 0x800uLL;
  v11 = *(a3 + 30);
  if ((v11 & 0x10) == 0)
  {
LABEL_31:
    if ((v11 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_advertiseAddTotalCount = *(a3 + 9);
  *&self->_has |= 0x10uLL;
  v11 = *(a3 + 30);
  if ((v11 & 8) == 0)
  {
LABEL_32:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_advertiseAddFilteredCount = *(a3 + 8);
  *&self->_has |= 8uLL;
  v11 = *(a3 + 30);
  if ((v11 & 0x40) == 0)
  {
LABEL_33:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_98:
  self->_advertiseDeleteTotalCount = *(a3 + 11);
  *&self->_has |= 0x40uLL;
  if ((*(a3 + 30) & 0x20) != 0)
  {
LABEL_34:
    self->_advertiseDeleteFilteredCount = *(a3 + 10);
    *&self->_has |= 0x20uLL;
  }

LABEL_35:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = *(a3 + 28);
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AWDWiFiMetricsManagerAwdlUsage *)self addServices:*(*(&v41 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v14);
  }

  v17 = *(a3 + 30);
  if ((v17 & 0x100000) != 0)
  {
    self->_cachedPeersSameInfra = *(a3 + 25);
    *&self->_has |= 0x100000uLL;
    v17 = *(a3 + 30);
    if ((v17 & 0x4000) == 0)
    {
LABEL_44:
      if ((v17 & 0x1000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_102;
    }
  }

  else if ((v17 & 0x4000) == 0)
  {
    goto LABEL_44;
  }

  self->_cachedPeersDifferentInfra = *(a3 + 19);
  *&self->_has |= 0x4000uLL;
  v17 = *(a3 + 30);
  if ((v17 & 0x1000000) == 0)
  {
LABEL_45:
    if ((v17 & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_dfspCSAReceivedFromPeer = *(a3 + 31);
  *&self->_has |= 0x1000000uLL;
  v17 = *(a3 + 30);
  if ((v17 & 0x800000) == 0)
  {
LABEL_46:
    if ((v17 & 0x4000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_dfspCSAReceivedFromAP = *(a3 + 30);
  *&self->_has |= 0x800000uLL;
  v17 = *(a3 + 30);
  if ((v17 & 0x4000000) == 0)
  {
LABEL_47:
    if ((v17 & 0x2000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_dfspSuspect = *(a3 + 33);
  *&self->_has |= 0x4000000uLL;
  v17 = *(a3 + 30);
  if ((v17 & 0x2000000) == 0)
  {
LABEL_48:
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_dfspResume = *(a3 + 32);
  *&self->_has |= 0x2000000uLL;
  v17 = *(a3 + 30);
  if ((v17 & 0x200000) == 0)
  {
LABEL_49:
    if ((v17 & 0x400000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_106:
  self->_dfspAirplayConnected = *(a3 + 28);
  *&self->_has |= 0x200000uLL;
  if ((*(a3 + 30) & 0x400000) != 0)
  {
LABEL_50:
    self->_dfspAirplayFailed = *(a3 + 29);
    *&self->_has |= 0x400000uLL;
  }

LABEL_51:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = *(a3 + 18);
  v19 = [v18 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(AWDWiFiMetricsManagerAwdlUsage *)self addHopCountHistogram:*(*(&v37 + 1) + 8 * k)];
      }

      v20 = [v18 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v20);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = *(a3 + 24);
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(AWDWiFiMetricsManagerAwdlUsage *)self addParentRssiHistogram:*(*(&v33 + 1) + 8 * m)];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v25);
  }

  v28 = *(a3 + 30);
  if ((v28 & 2) != 0)
  {
    self->_syncChangesCount = *(a3 + 2);
    *&self->_has |= 2uLL;
    v28 = *(a3 + 30);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_67:
      if ((v28 & 0x100000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_110;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

  self->_numAirplaySessions = *(a3 + 41);
  *&self->_has |= 0x80000000uLL;
  v28 = *(a3 + 30);
  if ((v28 & 0x100000000) == 0)
  {
LABEL_68:
    if ((v28 & 0x200000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_111;
  }

LABEL_110:
  self->_numDynSdbAirplayAllowed = *(a3 + 42);
  *&self->_has |= 0x100000000uLL;
  v28 = *(a3 + 30);
  if ((v28 & 0x200000000) == 0)
  {
LABEL_69:
    if ((v28 & 0x400000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_112;
  }

LABEL_111:
  self->_numDynSdbEntrySuccess = *(a3 + 43);
  *&self->_has |= 0x200000000uLL;
  v28 = *(a3 + 30);
  if ((v28 & 0x400000000) == 0)
  {
LABEL_70:
    if ((v28 & 0x800000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_112:
  self->_numDynSdbExitDueToRate = *(a3 + 44);
  *&self->_has |= 0x400000000uLL;
  if ((*(a3 + 30) & 0x800000000) != 0)
  {
LABEL_71:
    self->_numDynSdbReEntrySuccess = *(a3 + 45);
    *&self->_has |= 0x800000000uLL;
  }

LABEL_72:
  d2dMigrationStats = self->_d2dMigrationStats;
  v30 = *(a3 + 13);
  if (d2dMigrationStats)
  {
    if (v30)
    {
      [(AWDWifiAwdlD2dMigrationStats *)d2dMigrationStats mergeFrom:?];
    }
  }

  else if (v30)
  {
    [(AWDWiFiMetricsManagerAwdlUsage *)self setD2dMigrationStats:?];
  }

  v31 = *(a3 + 30);
  if ((v31 & 0x80000000000) != 0)
  {
    self->_selfInfraChannelFlags = *(a3 + 55);
    *&self->_has |= 0x80000000000uLL;
    v31 = *(a3 + 30);
    if ((v31 & 0x8000000000) == 0)
    {
LABEL_118:
      if ((v31 & 0x80000) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_125;
    }
  }

  else if ((v31 & 0x8000000000) == 0)
  {
    goto LABEL_118;
  }

  self->_peerInfraChannelFlags = *(a3 + 51);
  *&self->_has |= 0x8000000000uLL;
  v31 = *(a3 + 30);
  if ((v31 & 0x80000) == 0)
  {
LABEL_119:
    if ((v31 & 0x20000000000) == 0)
    {
      goto LABEL_120;
    }

LABEL_126:
    self->_selfCapOther = *(a3 + 53);
    *&self->_has |= 0x20000000000uLL;
    if ((*(a3 + 30) & 0x2000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

LABEL_125:
  self->_cachedPeersOnOther = *(a3 + 24);
  *&self->_has |= 0x80000uLL;
  v31 = *(a3 + 30);
  if ((v31 & 0x20000000000) != 0)
  {
    goto LABEL_126;
  }

LABEL_120:
  if ((v31 & 0x2000) != 0)
  {
LABEL_121:
    self->_cachedPeersCapOther = *(a3 + 18);
    *&self->_has |= 0x2000uLL;
  }

LABEL_122:
  v32 = *MEMORY[0x29EDCA608];
}

@end