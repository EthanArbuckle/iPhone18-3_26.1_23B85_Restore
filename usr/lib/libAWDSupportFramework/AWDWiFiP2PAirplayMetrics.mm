@interface AWDWiFiP2PAirplayMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAvgCCAPeerInfraChannel:(id)channel;
- (void)addAvgCCASelfInfraChannel:(id)channel;
- (void)addAvgCCASocialChannel:(id)channel;
- (void)addPeerRSSI:(id)i;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAwdlVersion:(BOOL)version;
- (void)setHasClientModeDuration:(BOOL)duration;
- (void)setHasCsaDuringDfspMode:(BOOL)mode;
- (void)setHasCsaToDfsChannel:(BOOL)channel;
- (void)setHasDfsProxyMode:(BOOL)mode;
- (void)setHasForceRoamHasChannelsCnt:(BOOL)cnt;
- (void)setHasForceRoamHasNoChannel:(BOOL)channel;
- (void)setHasInRetroMode:(BOOL)mode;
- (void)setHasInfraDisconnectedCount:(BOOL)count;
- (void)setHasMissingAWStartEventCount:(BOOL)count;
- (void)setHasPeerInfraChannel:(BOOL)channel;
- (void)setHasPeerInfraChannelFlags:(BOOL)flags;
- (void)setHasPeerIsSDB:(BOOL)b;
- (void)setHasPsfEnabledCount:(BOOL)count;
- (void)setHasRoamOutOfOtherCount:(BOOL)count;
- (void)setHasRoamOutOfOtherFailure:(BOOL)failure;
- (void)setHasRoamOutOfOtherSuccess:(BOOL)success;
- (void)setHasRoutablePeerCount:(BOOL)count;
- (void)setHasSelfInfraChannel:(BOOL)channel;
- (void)setHasSelfInfraChannelFlags:(BOOL)flags;
- (void)setHasSelfIsSDB:(BOOL)b;
- (void)setHasSenderPlatform:(BOOL)platform;
- (void)setHasSequenceNumberNotUpdatedCount:(BOOL)count;
- (void)setHasServerModeDuration:(BOOL)duration;
- (void)setHasSplitModeDuration:(BOOL)duration;
- (void)setHasStartingRSSI:(BOOL)i;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTotalDuration:(BOOL)duration;
- (void)setHasTotalPeerCount:(BOOL)count;
- (void)setHasTxBytes:(BOOL)bytes;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiP2PAirplayMetrics

- (void)dealloc
{
  [(AWDWiFiP2PAirplayMetrics *)self setPeerRSSIs:0];
  [(AWDWiFiP2PAirplayMetrics *)self setAvgCCASocialChannels:0];
  [(AWDWiFiP2PAirplayMetrics *)self setAvgCCASelfInfraChannels:0];
  [(AWDWiFiP2PAirplayMetrics *)self setAvgCCAPeerInfraChannels:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiP2PAirplayMetrics;
  [(AWDWiFiP2PAirplayMetrics *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasTotalDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasServerModeDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasClientModeDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasSplitModeDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasTxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasStartingRSSI:(BOOL)i
{
  if (i)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasAwdlVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasTotalPeerCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasRoutablePeerCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasInfraDisconnectedCount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasSequenceNumberNotUpdatedCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasMissingAWStartEventCount:(BOOL)count
{
  if (count)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasPsfEnabledCount:(BOOL)count
{
  if (count)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasSelfInfraChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasPeerInfraChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasSenderPlatform:(BOOL)platform
{
  if (platform)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasCsaToDfsChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasCsaDuringDfspMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasDfsProxyMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasSelfIsSDB:(BOOL)b
{
  if (b)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xBFFFFFFF | v3);
}

- (void)setHasPeerIsSDB:(BOOL)b
{
  if (b)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasInRetroMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)addPeerRSSI:(id)i
{
  peerRSSIs = self->_peerRSSIs;
  if (!peerRSSIs)
  {
    peerRSSIs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_peerRSSIs = peerRSSIs;
  }

  [(NSMutableArray *)peerRSSIs addObject:i];
}

- (void)addAvgCCASocialChannel:(id)channel
{
  avgCCASocialChannels = self->_avgCCASocialChannels;
  if (!avgCCASocialChannels)
  {
    avgCCASocialChannels = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_avgCCASocialChannels = avgCCASocialChannels;
  }

  [(NSMutableArray *)avgCCASocialChannels addObject:channel];
}

- (void)addAvgCCASelfInfraChannel:(id)channel
{
  avgCCASelfInfraChannels = self->_avgCCASelfInfraChannels;
  if (!avgCCASelfInfraChannels)
  {
    avgCCASelfInfraChannels = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_avgCCASelfInfraChannels = avgCCASelfInfraChannels;
  }

  [(NSMutableArray *)avgCCASelfInfraChannels addObject:channel];
}

- (void)addAvgCCAPeerInfraChannel:(id)channel
{
  avgCCAPeerInfraChannels = self->_avgCCAPeerInfraChannels;
  if (!avgCCAPeerInfraChannels)
  {
    avgCCAPeerInfraChannels = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_avgCCAPeerInfraChannels = avgCCAPeerInfraChannels;
  }

  [(NSMutableArray *)avgCCAPeerInfraChannels addObject:channel];
}

- (void)setHasSelfInfraChannelFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasPeerInfraChannelFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRoamOutOfOtherCount:(BOOL)count
{
  if (count)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasRoamOutOfOtherSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasRoamOutOfOtherFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasForceRoamHasChannelsCnt:(BOOL)cnt
{
  if (cnt)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasForceRoamHasNoChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiP2PAirplayMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiP2PAirplayMetrics description](&v3, sel_description), -[AWDWiFiP2PAirplayMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v52 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_73;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalDuration), @"totalDuration"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_74;
  }

LABEL_73:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_serverModeDuration), @"serverModeDuration"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_75;
  }

LABEL_74:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_clientModeDuration), @"clientModeDuration"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_76;
  }

LABEL_75:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_splitModeDuration), @"splitModeDuration"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_77;
  }

LABEL_76:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txBytes), @"txBytes"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_78;
  }

LABEL_77:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxBytes), @"rxBytes"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_79;
  }

LABEL_78:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_startingRSSI), @"startingRSSI"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_80;
  }

LABEL_79:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_awdlVersion), @"awdlVersion"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_81;
  }

LABEL_80:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalPeerCount), @"totalPeerCount"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_82;
  }

LABEL_81:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_routablePeerCount), @"routablePeerCount"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_83;
  }

LABEL_82:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_infraDisconnectedCount), @"infraDisconnectedCount"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_84;
  }

LABEL_83:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sequenceNumberNotUpdatedCount), @"sequenceNumberNotUpdatedCount"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_85;
  }

LABEL_84:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_missingAWStartEventCount), @"missingAWStartEventCount"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_86;
  }

LABEL_85:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_psfEnabledCount), @"psfEnabledCount"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_87;
  }

LABEL_86:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_selfInfraChannel), @"selfInfraChannel"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_88;
  }

LABEL_87:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerInfraChannel), @"peerInfraChannel"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_89;
  }

LABEL_88:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_senderPlatform), @"senderPlatform"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_90;
  }

LABEL_89:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_csaToDfsChannel), @"csaToDfsChannel"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_91;
  }

LABEL_90:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_csaDuringDfspMode), @"csaDuringDfspMode"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_92;
  }

LABEL_91:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_dfsProxyMode), @"dfsProxyMode"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_93;
  }

LABEL_92:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_selfIsSDB), @"selfIsSDB"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_93:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_peerIsSDB), @"peerIsSDB"}];
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_25:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_inRetroMode), @"inRetroMode"}];
  }

LABEL_26:
  if ([(NSMutableArray *)self->_peerRSSIs count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_peerRSSIs, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    peerRSSIs = self->_peerRSSIs;
    v7 = [(NSMutableArray *)peerRSSIs countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v45;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(peerRSSIs);
          }

          [v5 addObject:{objc_msgSend(*(*(&v44 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)peerRSSIs countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"peerRSSI"];
  }

  if ([(NSMutableArray *)self->_avgCCASocialChannels count])
  {
    v11 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_avgCCASocialChannels, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    avgCCASocialChannels = self->_avgCCASocialChannels;
    v13 = [(NSMutableArray *)avgCCASocialChannels countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v41;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(avgCCASocialChannels);
          }

          [v11 addObject:{objc_msgSend(*(*(&v40 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v14 = [(NSMutableArray *)avgCCASocialChannels countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"avgCCASocialChannel"];
  }

  if ([(NSMutableArray *)self->_avgCCASelfInfraChannels count])
  {
    v17 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_avgCCASelfInfraChannels, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    avgCCASelfInfraChannels = self->_avgCCASelfInfraChannels;
    v19 = [(NSMutableArray *)avgCCASelfInfraChannels countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(avgCCASelfInfraChannels);
          }

          [v17 addObject:{objc_msgSend(*(*(&v36 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v20 = [(NSMutableArray *)avgCCASelfInfraChannels countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v20);
    }

    [dictionary setObject:v17 forKey:@"avgCCASelfInfraChannel"];
  }

  if ([(NSMutableArray *)self->_avgCCAPeerInfraChannels count])
  {
    v23 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_avgCCAPeerInfraChannels, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    avgCCAPeerInfraChannels = self->_avgCCAPeerInfraChannels;
    v25 = [(NSMutableArray *)avgCCAPeerInfraChannels countByEnumeratingWithState:&v32 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (m = 0; m != v26; ++m)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(avgCCAPeerInfraChannels);
          }

          [v23 addObject:{objc_msgSend(*(*(&v32 + 1) + 8 * m), "dictionaryRepresentation")}];
        }

        v26 = [(NSMutableArray *)avgCCAPeerInfraChannels countByEnumeratingWithState:&v32 objects:v48 count:16];
      }

      while (v26);
    }

    [dictionary setObject:v23 forKey:@"avgCCAPeerInfraChannel"];
  }

  v29 = self->_has;
  if ((*&v29 & 0x20000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_selfInfraChannelFlags), @"selfInfraChannelFlags"}];
    v29 = self->_has;
    if ((*&v29 & 0x400) == 0)
    {
LABEL_64:
      if ((*&v29 & 0x1000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_97;
    }
  }

  else if ((*&v29 & 0x400) == 0)
  {
    goto LABEL_64;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerInfraChannelFlags), @"peerInfraChannelFlags"}];
  v29 = self->_has;
  if ((*&v29 & 0x1000) == 0)
  {
LABEL_65:
    if ((*&v29 & 0x4000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_98;
  }

LABEL_97:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamOutOfOtherCount), @"roamOutOfOtherCount"}];
  v29 = self->_has;
  if ((*&v29 & 0x4000) == 0)
  {
LABEL_66:
    if ((*&v29 & 0x2000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_99;
  }

LABEL_98:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamOutOfOtherSuccess), @"roamOutOfOtherSuccess"}];
  v29 = self->_has;
  if ((*&v29 & 0x2000) == 0)
  {
LABEL_67:
    if ((*&v29 & 0x20) == 0)
    {
      goto LABEL_68;
    }

LABEL_100:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_forceRoamHasChannelsCnt), @"forceRoamHasChannelsCnt"}];
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_99:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamOutOfOtherFailure), @"roamOutOfOtherFailure"}];
  v29 = self->_has;
  if ((*&v29 & 0x20) != 0)
  {
    goto LABEL_100;
  }

LABEL_68:
  if ((*&v29 & 0x40) != 0)
  {
LABEL_69:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_forceRoamHasNoChannel), @"forceRoamHasNoChannel"}];
  }

LABEL_70:
  v30 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v82 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_65;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  totalDuration = self->_totalDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_66;
  }

LABEL_65:
  serverModeDuration = self->_serverModeDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_67;
  }

LABEL_66:
  clientModeDuration = self->_clientModeDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_68;
  }

LABEL_67:
  splitModeDuration = self->_splitModeDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_69;
  }

LABEL_68:
  txBytes = self->_txBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_70;
  }

LABEL_69:
  rxBytes = self->_rxBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_70:
  startingRSSI = self->_startingRSSI;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_72;
  }

LABEL_71:
  awdlVersion = self->_awdlVersion;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_73;
  }

LABEL_72:
  totalPeerCount = self->_totalPeerCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_74;
  }

LABEL_73:
  routablePeerCount = self->_routablePeerCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_75;
  }

LABEL_74:
  infraDisconnectedCount = self->_infraDisconnectedCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_76;
  }

LABEL_75:
  sequenceNumberNotUpdatedCount = self->_sequenceNumberNotUpdatedCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_77;
  }

LABEL_76:
  missingAWStartEventCount = self->_missingAWStartEventCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_78;
  }

LABEL_77:
  psfEnabledCount = self->_psfEnabledCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_79;
  }

LABEL_78:
  selfInfraChannel = self->_selfInfraChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_80;
  }

LABEL_79:
  peerInfraChannel = self->_peerInfraChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_81;
  }

LABEL_80:
  senderPlatform = self->_senderPlatform;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_82;
  }

LABEL_81:
  csaToDfsChannel = self->_csaToDfsChannel;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_83;
  }

LABEL_82:
  csaDuringDfspMode = self->_csaDuringDfspMode;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_84;
  }

LABEL_83:
  dfsProxyMode = self->_dfsProxyMode;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_85;
  }

LABEL_84:
  selfIsSDB = self->_selfIsSDB;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_85:
  peerIsSDB = self->_peerIsSDB;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_25:
    inRetroMode = self->_inRetroMode;
    PBDataWriterWriteBOOLField();
  }

LABEL_26:
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  peerRSSIs = self->_peerRSSIs;
  v7 = [(NSMutableArray *)peerRSSIs countByEnumeratingWithState:&v74 objects:v81 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v75;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v75 != v9)
        {
          objc_enumerationMutation(peerRSSIs);
        }

        v11 = *(*(&v74 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)peerRSSIs countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v8);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  avgCCASocialChannels = self->_avgCCASocialChannels;
  v13 = [(NSMutableArray *)avgCCASocialChannels countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v71;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v71 != v15)
        {
          objc_enumerationMutation(avgCCASocialChannels);
        }

        v17 = *(*(&v70 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)avgCCASocialChannels countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v14);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  avgCCASelfInfraChannels = self->_avgCCASelfInfraChannels;
  v19 = [(NSMutableArray *)avgCCASelfInfraChannels countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v67;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v67 != v21)
        {
          objc_enumerationMutation(avgCCASelfInfraChannels);
        }

        v23 = *(*(&v66 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v20 = [(NSMutableArray *)avgCCASelfInfraChannels countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v20);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  avgCCAPeerInfraChannels = self->_avgCCAPeerInfraChannels;
  v25 = [(NSMutableArray *)avgCCAPeerInfraChannels countByEnumeratingWithState:&v62 objects:v78 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v63;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v63 != v27)
        {
          objc_enumerationMutation(avgCCAPeerInfraChannels);
        }

        v29 = *(*(&v62 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v26 = [(NSMutableArray *)avgCCAPeerInfraChannels countByEnumeratingWithState:&v62 objects:v78 count:16];
    }

    while (v26);
  }

  v30 = self->_has;
  if ((*&v30 & 0x20000) != 0)
  {
    selfInfraChannelFlags = self->_selfInfraChannelFlags;
    PBDataWriterWriteUint32Field();
    v30 = self->_has;
    if ((*&v30 & 0x400) == 0)
    {
LABEL_56:
      if ((*&v30 & 0x1000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_89;
    }
  }

  else if ((*&v30 & 0x400) == 0)
  {
    goto LABEL_56;
  }

  peerInfraChannelFlags = self->_peerInfraChannelFlags;
  PBDataWriterWriteUint32Field();
  v30 = self->_has;
  if ((*&v30 & 0x1000) == 0)
  {
LABEL_57:
    if ((*&v30 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_90;
  }

LABEL_89:
  roamOutOfOtherCount = self->_roamOutOfOtherCount;
  PBDataWriterWriteUint32Field();
  v30 = self->_has;
  if ((*&v30 & 0x4000) == 0)
  {
LABEL_58:
    if ((*&v30 & 0x2000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_91;
  }

LABEL_90:
  roamOutOfOtherSuccess = self->_roamOutOfOtherSuccess;
  PBDataWriterWriteUint32Field();
  v30 = self->_has;
  if ((*&v30 & 0x2000) == 0)
  {
LABEL_59:
    if ((*&v30 & 0x20) == 0)
    {
      goto LABEL_60;
    }

LABEL_92:
    forceRoamHasChannelsCnt = self->_forceRoamHasChannelsCnt;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_91:
  roamOutOfOtherFailure = self->_roamOutOfOtherFailure;
  PBDataWriterWriteUint32Field();
  v30 = self->_has;
  if ((*&v30 & 0x20) != 0)
  {
    goto LABEL_92;
  }

LABEL_60:
  if ((*&v30 & 0x40) != 0)
  {
LABEL_61:
    forceRoamHasNoChannel = self->_forceRoamHasNoChannel;
    PBDataWriterWriteUint32Field();
  }

LABEL_62:
  v32 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 40) |= 2u;
    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  *(to + 36) = self->_totalDuration;
  *(to + 40) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(to + 33) = self->_serverModeDuration;
  *(to + 40) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(to + 15) = self->_clientModeDuration;
  *(to + 40) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(to + 34) = self->_splitModeDuration;
  *(to + 40) |= 0x200000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(to + 3) = self->_txBytes;
  *(to + 40) |= 4u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(to + 1) = self->_rxBytes;
  *(to + 40) |= 1u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(to + 35) = self->_startingRSSI;
  *(to + 40) |= 0x400000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(to + 14) = self->_awdlVersion;
  *(to + 40) |= 8u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(to + 37) = self->_totalPeerCount;
  *(to + 40) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(to + 28) = self->_routablePeerCount;
  *(to + 40) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(to + 18) = self->_infraDisconnectedCount;
  *(to + 40) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(to + 32) = self->_sequenceNumberNotUpdatedCount;
  *(to + 40) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(to + 19) = self->_missingAWStartEventCount;
  *(to + 40) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(to + 24) = self->_psfEnabledCount;
  *(to + 40) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(to + 29) = self->_selfInfraChannel;
  *(to + 40) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(to + 20) = self->_peerInfraChannel;
  *(to + 40) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(to + 31) = self->_senderPlatform;
  *(to + 40) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(to + 153) = self->_csaToDfsChannel;
  *(to + 40) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(to + 152) = self->_csaDuringDfspMode;
  *(to + 40) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(to + 154) = self->_dfsProxyMode;
  *(to + 40) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_73:
    *(to + 156) = self->_peerIsSDB;
    *(to + 40) |= 0x20000000u;
    if ((*&self->_has & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_72:
  *(to + 157) = self->_selfIsSDB;
  *(to + 40) |= 0x40000000u;
  has = self->_has;
  if ((*&has & 0x20000000) != 0)
  {
    goto LABEL_73;
  }

LABEL_24:
  if ((*&has & 0x10000000) != 0)
  {
LABEL_25:
    *(to + 155) = self->_inRetroMode;
    *(to + 40) |= 0x10000000u;
  }

LABEL_26:
  if ([(AWDWiFiP2PAirplayMetrics *)self peerRSSIsCount])
  {
    [to clearPeerRSSIs];
    peerRSSIsCount = [(AWDWiFiP2PAirplayMetrics *)self peerRSSIsCount];
    if (peerRSSIsCount)
    {
      v7 = peerRSSIsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addPeerRSSI:{-[AWDWiFiP2PAirplayMetrics peerRSSIAtIndex:](self, "peerRSSIAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiP2PAirplayMetrics *)self avgCCASocialChannelsCount])
  {
    [to clearAvgCCASocialChannels];
    avgCCASocialChannelsCount = [(AWDWiFiP2PAirplayMetrics *)self avgCCASocialChannelsCount];
    if (avgCCASocialChannelsCount)
    {
      v10 = avgCCASocialChannelsCount;
      for (j = 0; j != v10; ++j)
      {
        [to addAvgCCASocialChannel:{-[AWDWiFiP2PAirplayMetrics avgCCASocialChannelAtIndex:](self, "avgCCASocialChannelAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiP2PAirplayMetrics *)self avgCCASelfInfraChannelsCount])
  {
    [to clearAvgCCASelfInfraChannels];
    avgCCASelfInfraChannelsCount = [(AWDWiFiP2PAirplayMetrics *)self avgCCASelfInfraChannelsCount];
    if (avgCCASelfInfraChannelsCount)
    {
      v13 = avgCCASelfInfraChannelsCount;
      for (k = 0; k != v13; ++k)
      {
        [to addAvgCCASelfInfraChannel:{-[AWDWiFiP2PAirplayMetrics avgCCASelfInfraChannelAtIndex:](self, "avgCCASelfInfraChannelAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiP2PAirplayMetrics *)self avgCCAPeerInfraChannelsCount])
  {
    [to clearAvgCCAPeerInfraChannels];
    avgCCAPeerInfraChannelsCount = [(AWDWiFiP2PAirplayMetrics *)self avgCCAPeerInfraChannelsCount];
    if (avgCCAPeerInfraChannelsCount)
    {
      v16 = avgCCAPeerInfraChannelsCount;
      for (m = 0; m != v16; ++m)
      {
        [to addAvgCCAPeerInfraChannel:{-[AWDWiFiP2PAirplayMetrics avgCCAPeerInfraChannelAtIndex:](self, "avgCCAPeerInfraChannelAtIndex:", m)}];
      }
    }
  }

  v18 = self->_has;
  if ((*&v18 & 0x20000) != 0)
  {
    *(to + 30) = self->_selfInfraChannelFlags;
    *(to + 40) |= 0x20000u;
    v18 = self->_has;
    if ((*&v18 & 0x400) == 0)
    {
LABEL_44:
      if ((*&v18 & 0x1000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_77;
    }
  }

  else if ((*&v18 & 0x400) == 0)
  {
    goto LABEL_44;
  }

  *(to + 21) = self->_peerInfraChannelFlags;
  *(to + 40) |= 0x400u;
  v18 = self->_has;
  if ((*&v18 & 0x1000) == 0)
  {
LABEL_45:
    if ((*&v18 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(to + 25) = self->_roamOutOfOtherCount;
  *(to + 40) |= 0x1000u;
  v18 = self->_has;
  if ((*&v18 & 0x4000) == 0)
  {
LABEL_46:
    if ((*&v18 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(to + 27) = self->_roamOutOfOtherSuccess;
  *(to + 40) |= 0x4000u;
  v18 = self->_has;
  if ((*&v18 & 0x2000) == 0)
  {
LABEL_47:
    if ((*&v18 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(to + 26) = self->_roamOutOfOtherFailure;
  *(to + 40) |= 0x2000u;
  v18 = self->_has;
  if ((*&v18 & 0x20) == 0)
  {
LABEL_48:
    if ((*&v18 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_49;
  }

LABEL_80:
  *(to + 16) = self->_forceRoamHasChannelsCnt;
  *(to + 40) |= 0x20u;
  if ((*&self->_has & 0x40) == 0)
  {
    return;
  }

LABEL_49:
  *(to + 17) = self->_forceRoamHasNoChannel;
  *(to + 40) |= 0x40u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v55 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 160) |= 2u;
    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_65;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 144) = self->_totalDuration;
  *(v5 + 160) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 132) = self->_serverModeDuration;
  *(v5 + 160) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 60) = self->_clientModeDuration;
  *(v5 + 160) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 136) = self->_splitModeDuration;
  *(v5 + 160) |= 0x200000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 24) = self->_txBytes;
  *(v5 + 160) |= 4u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 8) = self->_rxBytes;
  *(v5 + 160) |= 1u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 140) = self->_startingRSSI;
  *(v5 + 160) |= 0x400000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v5 + 56) = self->_awdlVersion;
  *(v5 + 160) |= 8u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 148) = self->_totalPeerCount;
  *(v5 + 160) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 112) = self->_routablePeerCount;
  *(v5 + 160) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v5 + 72) = self->_infraDisconnectedCount;
  *(v5 + 160) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 128) = self->_sequenceNumberNotUpdatedCount;
  *(v5 + 160) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v5 + 76) = self->_missingAWStartEventCount;
  *(v5 + 160) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 96) = self->_psfEnabledCount;
  *(v5 + 160) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v5 + 116) = self->_selfInfraChannel;
  *(v5 + 160) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 80) = self->_peerInfraChannel;
  *(v5 + 160) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v5 + 124) = self->_senderPlatform;
  *(v5 + 160) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v5 + 153) = self->_csaToDfsChannel;
  *(v5 + 160) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v5 + 152) = self->_csaDuringDfspMode;
  *(v5 + 160) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v5 + 154) = self->_dfsProxyMode;
  *(v5 + 160) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v5 + 157) = self->_selfIsSDB;
  *(v5 + 160) |= 0x40000000u;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_85:
  *(v5 + 156) = self->_peerIsSDB;
  *(v5 + 160) |= 0x20000000u;
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_25:
    *(v5 + 155) = self->_inRetroMode;
    *(v5 + 160) |= 0x10000000u;
  }

LABEL_26:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  peerRSSIs = self->_peerRSSIs;
  v9 = [(NSMutableArray *)peerRSSIs countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(peerRSSIs);
        }

        v13 = [*(*(&v47 + 1) + 8 * i) copyWithZone:zone];
        [v6 addPeerRSSI:v13];
      }

      v10 = [(NSMutableArray *)peerRSSIs countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v10);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  avgCCASocialChannels = self->_avgCCASocialChannels;
  v15 = [(NSMutableArray *)avgCCASocialChannels countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(avgCCASocialChannels);
        }

        v19 = [*(*(&v43 + 1) + 8 * j) copyWithZone:zone];
        [v6 addAvgCCASocialChannel:v19];
      }

      v16 = [(NSMutableArray *)avgCCASocialChannels countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v16);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  avgCCASelfInfraChannels = self->_avgCCASelfInfraChannels;
  v21 = [(NSMutableArray *)avgCCASelfInfraChannels countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v40;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(avgCCASelfInfraChannels);
        }

        v25 = [*(*(&v39 + 1) + 8 * k) copyWithZone:zone];
        [v6 addAvgCCASelfInfraChannel:v25];
      }

      v22 = [(NSMutableArray *)avgCCASelfInfraChannels countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v22);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  avgCCAPeerInfraChannels = self->_avgCCAPeerInfraChannels;
  v27 = [(NSMutableArray *)avgCCAPeerInfraChannels countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v36;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(avgCCAPeerInfraChannels);
        }

        v31 = [*(*(&v35 + 1) + 8 * m) copyWithZone:zone];
        [v6 addAvgCCAPeerInfraChannel:v31];
      }

      v28 = [(NSMutableArray *)avgCCAPeerInfraChannels countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v28);
  }

  v32 = self->_has;
  if ((*&v32 & 0x20000) != 0)
  {
    v6[30] = self->_selfInfraChannelFlags;
    v6[40] |= 0x20000u;
    v32 = self->_has;
    if ((*&v32 & 0x400) == 0)
    {
LABEL_56:
      if ((*&v32 & 0x1000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_89;
    }
  }

  else if ((*&v32 & 0x400) == 0)
  {
    goto LABEL_56;
  }

  v6[21] = self->_peerInfraChannelFlags;
  v6[40] |= 0x400u;
  v32 = self->_has;
  if ((*&v32 & 0x1000) == 0)
  {
LABEL_57:
    if ((*&v32 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_90;
  }

LABEL_89:
  v6[25] = self->_roamOutOfOtherCount;
  v6[40] |= 0x1000u;
  v32 = self->_has;
  if ((*&v32 & 0x4000) == 0)
  {
LABEL_58:
    if ((*&v32 & 0x2000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_91;
  }

LABEL_90:
  v6[27] = self->_roamOutOfOtherSuccess;
  v6[40] |= 0x4000u;
  v32 = self->_has;
  if ((*&v32 & 0x2000) == 0)
  {
LABEL_59:
    if ((*&v32 & 0x20) == 0)
    {
      goto LABEL_60;
    }

LABEL_92:
    v6[16] = self->_forceRoamHasChannelsCnt;
    v6[40] |= 0x20u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_91:
  v6[26] = self->_roamOutOfOtherFailure;
  v6[40] |= 0x2000u;
  v32 = self->_has;
  if ((*&v32 & 0x20) != 0)
  {
    goto LABEL_92;
  }

LABEL_60:
  if ((*&v32 & 0x40) != 0)
  {
LABEL_61:
    v6[17] = self->_forceRoamHasNoChannel;
    v6[40] |= 0x40u;
  }

LABEL_62:
  v33 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 40);
  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_timestamp != *(equal + 2))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_totalDuration != *(equal + 36))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_serverModeDuration != *(equal + 33))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_clientModeDuration != *(equal + 15))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_splitModeDuration != *(equal + 34))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_txBytes != *(equal + 3))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_146;
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_rxBytes != *(equal + 1))
    {
      goto LABEL_146;
    }
  }

  else if (v7)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_startingRSSI != *(equal + 35))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_awdlVersion != *(equal + 14))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0 || self->_totalPeerCount != *(equal + 37))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_routablePeerCount != *(equal + 28))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_infraDisconnectedCount != *(equal + 18))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_sequenceNumberNotUpdatedCount != *(equal + 32))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_missingAWStartEventCount != *(equal + 19))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_psfEnabledCount != *(equal + 24))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_selfInfraChannel != *(equal + 29))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_peerInfraChannel != *(equal + 20))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_senderPlatform != *(equal + 31))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_146;
    }

    v8 = *(equal + 153);
    if (self->_csaToDfsChannel)
    {
      if ((*(equal + 153) & 1) == 0)
      {
        goto LABEL_146;
      }
    }

    else if (*(equal + 153))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_146;
    }

    v9 = *(equal + 152);
    if (self->_csaDuringDfspMode)
    {
      if ((*(equal + 152) & 1) == 0)
      {
        goto LABEL_146;
      }
    }

    else if (*(equal + 152))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_146;
    }

    v10 = *(equal + 154);
    if (self->_dfsProxyMode)
    {
      if ((*(equal + 154) & 1) == 0)
      {
        goto LABEL_146;
      }
    }

    else if (*(equal + 154))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_146;
    }

    v11 = *(equal + 157);
    if (self->_selfIsSDB)
    {
      if ((*(equal + 157) & 1) == 0)
      {
        goto LABEL_146;
      }
    }

    else if (*(equal + 157))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_146;
    }

    v12 = *(equal + 156);
    if (self->_peerIsSDB)
    {
      if ((*(equal + 156) & 1) == 0)
      {
        goto LABEL_146;
      }
    }

    else if (*(equal + 156))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_146;
    }

    v19 = *(equal + 155);
    if (self->_inRetroMode)
    {
      if ((*(equal + 155) & 1) == 0)
      {
        goto LABEL_146;
      }
    }

    else if (*(equal + 155))
    {
      goto LABEL_146;
    }
  }

  else if ((v7 & 0x10000000) != 0)
  {
    goto LABEL_146;
  }

  peerRSSIs = self->_peerRSSIs;
  if (peerRSSIs | *(equal + 11))
  {
    v5 = [(NSMutableArray *)peerRSSIs isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  avgCCASocialChannels = self->_avgCCASocialChannels;
  if (avgCCASocialChannels | *(equal + 6))
  {
    v5 = [(NSMutableArray *)avgCCASocialChannels isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  avgCCASelfInfraChannels = self->_avgCCASelfInfraChannels;
  if (avgCCASelfInfraChannels | *(equal + 5))
  {
    v5 = [(NSMutableArray *)avgCCASelfInfraChannels isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  avgCCAPeerInfraChannels = self->_avgCCAPeerInfraChannels;
  if (avgCCAPeerInfraChannels | *(equal + 4))
  {
    v5 = [(NSMutableArray *)avgCCAPeerInfraChannels isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  v17 = self->_has;
  v18 = *(equal + 40);
  if ((*&v17 & 0x20000) != 0)
  {
    if ((v18 & 0x20000) == 0 || self->_selfInfraChannelFlags != *(equal + 30))
    {
      goto LABEL_146;
    }
  }

  else if ((v18 & 0x20000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&v17 & 0x400) != 0)
  {
    if ((v18 & 0x400) == 0 || self->_peerInfraChannelFlags != *(equal + 21))
    {
      goto LABEL_146;
    }
  }

  else if ((v18 & 0x400) != 0)
  {
    goto LABEL_146;
  }

  if ((*&v17 & 0x1000) != 0)
  {
    if ((v18 & 0x1000) == 0 || self->_roamOutOfOtherCount != *(equal + 25))
    {
      goto LABEL_146;
    }
  }

  else if ((v18 & 0x1000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&v17 & 0x4000) != 0)
  {
    if ((v18 & 0x4000) == 0 || self->_roamOutOfOtherSuccess != *(equal + 27))
    {
      goto LABEL_146;
    }
  }

  else if ((v18 & 0x4000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&v17 & 0x2000) != 0)
  {
    if ((v18 & 0x2000) == 0 || self->_roamOutOfOtherFailure != *(equal + 26))
    {
      goto LABEL_146;
    }
  }

  else if ((v18 & 0x2000) != 0)
  {
    goto LABEL_146;
  }

  if ((*&v17 & 0x20) != 0)
  {
    if ((v18 & 0x20) == 0 || self->_forceRoamHasChannelsCnt != *(equal + 16))
    {
      goto LABEL_146;
    }

    goto LABEL_180;
  }

  if ((v18 & 0x20) != 0)
  {
LABEL_146:
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_180:
  LOBYTE(v5) = (*(equal + 40) & 0x40) == 0;
  if ((*&v17 & 0x40) == 0)
  {
    return v5;
  }

  if ((v18 & 0x40) == 0 || self->_forceRoamHasNoChannel != *(equal + 17))
  {
    goto LABEL_146;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v40 = 2654435761u * self->_timestamp;
    if ((*&has & 0x800000) != 0)
    {
LABEL_3:
      v39 = 2654435761 * self->_totalDuration;
      if ((*&has & 0x100000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v40 = 0;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_3;
    }
  }

  v39 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_4:
    v38 = 2654435761 * self->_serverModeDuration;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v38 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_5:
    v37 = 2654435761 * self->_clientModeDuration;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v37 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_6:
    v36 = 2654435761 * self->_splitModeDuration;
    if ((*&has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v36 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_7:
    v35 = 2654435761u * self->_txBytes;
    if (*&has)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v35 = 0;
  if (*&has)
  {
LABEL_8:
    v34 = 2654435761u * self->_rxBytes;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v34 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_9:
    v33 = 2654435761 * self->_startingRSSI;
    if ((*&has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v33 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_10:
    v32 = 2654435761 * self->_awdlVersion;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v32 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_11:
    v31 = 2654435761 * self->_totalPeerCount;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v31 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_12:
    v30 = 2654435761 * self->_routablePeerCount;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v30 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_13:
    v29 = 2654435761 * self->_infraDisconnectedCount;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v29 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_14:
    v28 = 2654435761 * self->_sequenceNumberNotUpdatedCount;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v28 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_15:
    v27 = 2654435761 * self->_missingAWStartEventCount;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v27 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_16:
    v26 = 2654435761 * self->_psfEnabledCount;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v26 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_17:
    v25 = 2654435761 * self->_selfInfraChannel;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v25 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_18:
    v24 = 2654435761 * self->_peerInfraChannel;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v24 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_19:
    v23 = 2654435761 * self->_senderPlatform;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v23 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_20:
    v22 = 2654435761 * self->_csaToDfsChannel;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v22 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_21:
    v4 = 2654435761 * self->_csaDuringDfspMode;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v4 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_22:
    v5 = 2654435761 * self->_dfsProxyMode;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v5 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_23:
    v6 = 2654435761 * self->_selfIsSDB;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    v7 = 0;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_47:
  v6 = 0;
  if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  v7 = 2654435761 * self->_peerIsSDB;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_25:
    v8 = 2654435761 * self->_inRetroMode;
    goto LABEL_50;
  }

LABEL_49:
  v8 = 0;
LABEL_50:
  v9 = [(NSMutableArray *)self->_peerRSSIs hash];
  v10 = [(NSMutableArray *)self->_avgCCASocialChannels hash];
  v11 = [(NSMutableArray *)self->_avgCCASelfInfraChannels hash];
  v12 = [(NSMutableArray *)self->_avgCCAPeerInfraChannels hash];
  v13 = self->_has;
  if ((*&v13 & 0x20000) != 0)
  {
    v14 = 2654435761 * self->_selfInfraChannelFlags;
    if ((*&v13 & 0x400) != 0)
    {
LABEL_52:
      v15 = 2654435761 * self->_peerInfraChannelFlags;
      if ((*&v13 & 0x1000) != 0)
      {
        goto LABEL_53;
      }

      goto LABEL_60;
    }
  }

  else
  {
    v14 = 0;
    if ((*&v13 & 0x400) != 0)
    {
      goto LABEL_52;
    }
  }

  v15 = 0;
  if ((*&v13 & 0x1000) != 0)
  {
LABEL_53:
    v16 = 2654435761 * self->_roamOutOfOtherCount;
    if ((*&v13 & 0x4000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_61;
  }

LABEL_60:
  v16 = 0;
  if ((*&v13 & 0x4000) != 0)
  {
LABEL_54:
    v17 = 2654435761 * self->_roamOutOfOtherSuccess;
    if ((*&v13 & 0x2000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_62;
  }

LABEL_61:
  v17 = 0;
  if ((*&v13 & 0x2000) != 0)
  {
LABEL_55:
    v18 = 2654435761 * self->_roamOutOfOtherFailure;
    if ((*&v13 & 0x20) != 0)
    {
      goto LABEL_56;
    }

LABEL_63:
    v19 = 0;
    if ((*&v13 & 0x40) != 0)
    {
      goto LABEL_57;
    }

LABEL_64:
    v20 = 0;
    return v39 ^ v40 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
  }

LABEL_62:
  v18 = 0;
  if ((*&v13 & 0x20) == 0)
  {
    goto LABEL_63;
  }

LABEL_56:
  v19 = 2654435761 * self->_forceRoamHasChannelsCnt;
  if ((*&v13 & 0x40) == 0)
  {
    goto LABEL_64;
  }

LABEL_57:
  v20 = 2654435761 * self->_forceRoamHasNoChannel;
  return v39 ^ v40 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
}

- (void)mergeFrom:(id)from
{
  v48 = *MEMORY[0x29EDCA608];
  v5 = *(from + 40);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 40);
    if ((v5 & 0x800000) == 0)
    {
LABEL_3:
      if ((v5 & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_65;
    }
  }

  else if ((v5 & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  self->_totalDuration = *(from + 36);
  *&self->_has |= 0x800000u;
  v5 = *(from + 40);
  if ((v5 & 0x100000) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_serverModeDuration = *(from + 33);
  *&self->_has |= 0x100000u;
  v5 = *(from + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_clientModeDuration = *(from + 15);
  *&self->_has |= 0x10u;
  v5 = *(from + 40);
  if ((v5 & 0x200000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_splitModeDuration = *(from + 34);
  *&self->_has |= 0x200000u;
  v5 = *(from + 40);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_txBytes = *(from + 3);
  *&self->_has |= 4u;
  v5 = *(from + 40);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_rxBytes = *(from + 1);
  *&self->_has |= 1u;
  v5 = *(from + 40);
  if ((v5 & 0x400000) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_startingRSSI = *(from + 35);
  *&self->_has |= 0x400000u;
  v5 = *(from + 40);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_awdlVersion = *(from + 14);
  *&self->_has |= 8u;
  v5 = *(from + 40);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_totalPeerCount = *(from + 37);
  *&self->_has |= 0x1000000u;
  v5 = *(from + 40);
  if ((v5 & 0x8000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_routablePeerCount = *(from + 28);
  *&self->_has |= 0x8000u;
  v5 = *(from + 40);
  if ((v5 & 0x80) == 0)
  {
LABEL_13:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_infraDisconnectedCount = *(from + 18);
  *&self->_has |= 0x80u;
  v5 = *(from + 40);
  if ((v5 & 0x80000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_sequenceNumberNotUpdatedCount = *(from + 32);
  *&self->_has |= 0x80000u;
  v5 = *(from + 40);
  if ((v5 & 0x100) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_missingAWStartEventCount = *(from + 19);
  *&self->_has |= 0x100u;
  v5 = *(from + 40);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_psfEnabledCount = *(from + 24);
  *&self->_has |= 0x800u;
  v5 = *(from + 40);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_selfInfraChannel = *(from + 29);
  *&self->_has |= 0x10000u;
  v5 = *(from + 40);
  if ((v5 & 0x200) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_peerInfraChannel = *(from + 20);
  *&self->_has |= 0x200u;
  v5 = *(from + 40);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_senderPlatform = *(from + 31);
  *&self->_has |= 0x40000u;
  v5 = *(from + 40);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_csaToDfsChannel = *(from + 153);
  *&self->_has |= 0x4000000u;
  v5 = *(from + 40);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_csaDuringDfspMode = *(from + 152);
  *&self->_has |= 0x2000000u;
  v5 = *(from + 40);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_dfsProxyMode = *(from + 154);
  *&self->_has |= 0x8000000u;
  v5 = *(from + 40);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_selfIsSDB = *(from + 157);
  *&self->_has |= 0x40000000u;
  v5 = *(from + 40);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_85:
  self->_peerIsSDB = *(from + 156);
  *&self->_has |= 0x20000000u;
  if ((*(from + 40) & 0x10000000) != 0)
  {
LABEL_25:
    self->_inRetroMode = *(from + 155);
    *&self->_has |= 0x10000000u;
  }

LABEL_26:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = *(from + 11);
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDWiFiP2PAirplayMetrics *)self addPeerRSSI:*(*(&v40 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v8);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = *(from + 6);
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AWDWiFiP2PAirplayMetrics *)self addAvgCCASocialChannel:*(*(&v36 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v13);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = *(from + 5);
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(AWDWiFiP2PAirplayMetrics *)self addAvgCCASelfInfraChannel:*(*(&v32 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v18);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = *(from + 4);
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(AWDWiFiP2PAirplayMetrics *)self addAvgCCAPeerInfraChannel:*(*(&v28 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v23);
  }

  v26 = *(from + 40);
  if ((v26 & 0x20000) != 0)
  {
    self->_selfInfraChannelFlags = *(from + 30);
    *&self->_has |= 0x20000u;
    v26 = *(from + 40);
    if ((v26 & 0x400) == 0)
    {
LABEL_56:
      if ((v26 & 0x1000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_89;
    }
  }

  else if ((v26 & 0x400) == 0)
  {
    goto LABEL_56;
  }

  self->_peerInfraChannelFlags = *(from + 21);
  *&self->_has |= 0x400u;
  v26 = *(from + 40);
  if ((v26 & 0x1000) == 0)
  {
LABEL_57:
    if ((v26 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_roamOutOfOtherCount = *(from + 25);
  *&self->_has |= 0x1000u;
  v26 = *(from + 40);
  if ((v26 & 0x4000) == 0)
  {
LABEL_58:
    if ((v26 & 0x2000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_roamOutOfOtherSuccess = *(from + 27);
  *&self->_has |= 0x4000u;
  v26 = *(from + 40);
  if ((v26 & 0x2000) == 0)
  {
LABEL_59:
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_60;
    }

LABEL_92:
    self->_forceRoamHasChannelsCnt = *(from + 16);
    *&self->_has |= 0x20u;
    if ((*(from + 40) & 0x40) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_91:
  self->_roamOutOfOtherFailure = *(from + 26);
  *&self->_has |= 0x2000u;
  v26 = *(from + 40);
  if ((v26 & 0x20) != 0)
  {
    goto LABEL_92;
  }

LABEL_60:
  if ((v26 & 0x40) != 0)
  {
LABEL_61:
    self->_forceRoamHasNoChannel = *(from + 17);
    *&self->_has |= 0x40u;
  }

LABEL_62:
  v27 = *MEMORY[0x29EDCA608];
}

@end