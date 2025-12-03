@interface AWDWiFiAwdlSidecar
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)channelSequenceAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasBgEntryCount:(BOOL)count;
- (void)setHasDfspState:(BOOL)state;
- (void)setHasFgDuration:(BOOL)duration;
- (void)setHasInfraDisconnectedCount:(BOOL)count;
- (void)setHasIsSDB:(BOOL)b;
- (void)setHasPeerRssi24G:(BOOL)g;
- (void)setHasPeerRssi5G:(BOOL)g;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiAwdlSidecar

- (void)dealloc
{
  [(AWDWiFiAwdlSidecar *)self setSidecarBssSteering:0];
  [(AWDWiFiAwdlSidecar *)self setSidecarPeerTraffic:0];
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiAwdlSidecar;
  [(AWDWiFiAwdlSidecar *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
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

- (void)setHasFgDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasBgEntryCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasPeerRssi24G:(BOOL)g
{
  if (g)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasPeerRssi5G:(BOOL)g
{
  if (g)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsSDB:(BOOL)b
{
  if (b)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasDfspState:(BOOL)state
{
  if (state)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasInfraDisconnectedCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (unsigned)channelSequenceAtIndex:(unint64_t)index
{
  p_channelSequences = &self->_channelSequences;
  count = self->_channelSequences.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_channelSequences->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiAwdlSidecar;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiAwdlSidecar description](&v3, sel_description), -[AWDWiFiAwdlSidecar dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_fgDuration), @"fgDuration"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bgDuration), @"bgDuration"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bgEntryCount), @"bgEntryCount"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_peerRssi24G), @"peerRssi24G"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_peerRssi5G), @"peerRssi5G"}];
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isSDB), @"isSDB"}];
  }

LABEL_9:
  sidecarBssSteering = self->_sidecarBssSteering;
  if (sidecarBssSteering)
  {
    [dictionary setObject:-[AWDSidecarBssSteering dictionaryRepresentation](sidecarBssSteering forKey:{"dictionaryRepresentation"), @"sidecarBssSteering"}];
  }

  sidecarPeerTraffic = self->_sidecarPeerTraffic;
  if (sidecarPeerTraffic)
  {
    [dictionary setObject:-[AWDSidecarPeerTraffic dictionaryRepresentation](sidecarPeerTraffic forKey:{"dictionaryRepresentation"), @"sidecarPeerTraffic"}];
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dfspState), @"dfspState"}];
    v7 = self->_has;
  }

  if ((v7 & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_infraDisconnectedCount), @"infraDisconnectedCount"}];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"channelSequence"];
  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  fgDuration = self->_fgDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  bgDuration = self->_bgDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  bgEntryCount = self->_bgEntryCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  peerRssi24G = self->_peerRssi24G;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_26:
  peerRssi5G = self->_peerRssi5G;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    isSDB = self->_isSDB;
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
  if (self->_sidecarBssSteering)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_sidecarPeerTraffic)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    dfspState = self->_dfspState;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    infraDisconnectedCount = self->_infraDisconnectedCount;
    PBDataWriterWriteUint32Field();
  }

  p_channelSequences = &self->_channelSequences;
  if (p_channelSequences->count)
  {
    v10 = 0;
    do
    {
      v11 = p_channelSequences->list[v10];
      PBDataWriterWriteUint32Field();
      ++v10;
    }

    while (v10 < p_channelSequences->count);
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 6) = self->_timestamp;
    *(to + 50) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 5) = self->_fgDuration;
  *(to + 50) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 4) = self->_bgDuration;
  *(to + 50) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 14) = self->_bgEntryCount;
  *(to + 50) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 17) = self->_peerRssi24G;
  *(to + 50) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_27:
  *(to + 18) = self->_peerRssi5G;
  *(to + 50) |= 0x80u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    *(to + 96) = self->_isSDB;
    *(to + 50) |= 0x100u;
  }

LABEL_9:
  if (self->_sidecarBssSteering)
  {
    [to setSidecarBssSteering:?];
  }

  if (self->_sidecarPeerTraffic)
  {
    [to setSidecarPeerTraffic:?];
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(to + 15) = self->_dfspState;
    *(to + 50) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    *(to + 16) = self->_infraDisconnectedCount;
    *(to + 50) |= 0x20u;
  }

  if ([(AWDWiFiAwdlSidecar *)self channelSequencesCount])
  {
    [to clearChannelSequences];
    channelSequencesCount = [(AWDWiFiAwdlSidecar *)self channelSequencesCount];
    if (channelSequencesCount)
    {
      v8 = channelSequencesCount;
      for (i = 0; i != v8; ++i)
      {
        [to addChannelSequence:{-[AWDWiFiAwdlSidecar channelSequenceAtIndex:](self, "channelSequenceAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 48) = self->_timestamp;
    *(v5 + 100) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_fgDuration;
  *(v5 + 100) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 32) = self->_bgDuration;
  *(v5 + 100) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 56) = self->_bgEntryCount;
  *(v5 + 100) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 68) = self->_peerRssi24G;
  *(v5 + 100) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  *(v5 + 72) = self->_peerRssi5G;
  *(v5 + 100) |= 0x80u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    *(v5 + 96) = self->_isSDB;
    *(v5 + 100) |= 0x100u;
  }

LABEL_9:

  *(v6 + 80) = [(AWDSidecarBssSteering *)self->_sidecarBssSteering copyWithZone:zone];
  *(v6 + 88) = [(AWDSidecarPeerTraffic *)self->_sidecarPeerTraffic copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 0x10) != 0)
  {
    *(v6 + 60) = self->_dfspState;
    *(v6 + 100) |= 0x10u;
    v8 = self->_has;
  }

  if ((v8 & 0x20) != 0)
  {
    *(v6 + 64) = self->_infraDisconnectedCount;
    *(v6 + 100) |= 0x20u;
  }

  PBRepeatedUInt32Copy();
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  has = self->_has;
  v6 = *(equal + 50);
  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_timestamp != *(equal + 6))
    {
      return 0;
    }
  }

  else if ((v6 & 4) != 0)
  {
    return 0;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_fgDuration != *(equal + 5))
    {
      return 0;
    }
  }

  else if ((v6 & 2) != 0)
  {
    return 0;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_bgDuration != *(equal + 4))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_bgEntryCount != *(equal + 14))
    {
      return 0;
    }
  }

  else if ((v6 & 8) != 0)
  {
    return 0;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_peerRssi24G != *(equal + 17))
    {
      return 0;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    return 0;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_peerRssi5G != *(equal + 18))
    {
      return 0;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equal + 50) & 0x100) == 0)
    {
      return 0;
    }

    v12 = *(equal + 96);
    if (self->_isSDB)
    {
      if ((*(equal + 96) & 1) == 0)
      {
        return 0;
      }
    }

    else if (*(equal + 96))
    {
      return 0;
    }
  }

  else if ((*(equal + 50) & 0x100) != 0)
  {
    return 0;
  }

  sidecarBssSteering = self->_sidecarBssSteering;
  if (sidecarBssSteering | *(equal + 10) && ![(AWDSidecarBssSteering *)sidecarBssSteering isEqual:?])
  {
    return 0;
  }

  sidecarPeerTraffic = self->_sidecarPeerTraffic;
  if (sidecarPeerTraffic | *(equal + 11))
  {
    if (![(AWDSidecarPeerTraffic *)sidecarPeerTraffic isEqual:?])
    {
      return 0;
    }
  }

  v9 = self->_has;
  v10 = *(equal + 50);
  if ((v9 & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_dfspState != *(equal + 15))
    {
      return 0;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    return 0;
  }

  if ((v9 & 0x20) == 0)
  {
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    return 0;
  }

  if ((v10 & 0x20) == 0 || self->_infraDisconnectedCount != *(equal + 16))
  {
    return 0;
  }

LABEL_55:

  return PBRepeatedUInt32IsEqual();
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    v16 = 2654435761u * self->_timestamp;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_fgDuration;
      if (has)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if (has)
  {
LABEL_4:
    v5 = 2654435761u * self->_bgDuration;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_bgEntryCount;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_peerRssi24G;
    if ((has & 0x80) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v8 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v7 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v8 = 2654435761 * self->_peerRssi5G;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_isSDB;
    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
LABEL_16:
  v10 = [(AWDSidecarBssSteering *)self->_sidecarBssSteering hash];
  v11 = [(AWDSidecarPeerTraffic *)self->_sidecarPeerTraffic hash];
  v12 = self->_has;
  if ((v12 & 0x10) != 0)
  {
    v13 = 2654435761 * self->_dfspState;
    if ((v12 & 0x20) != 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    v14 = 0;
    return v4 ^ v16 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ PBRepeatedUInt32Hash();
  }

  v13 = 0;
  if ((v12 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  v14 = 2654435761 * self->_infraDisconnectedCount;
  return v4 ^ v16 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 50);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(from + 6);
    *&self->_has |= 4u;
    v5 = *(from + 50);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_fgDuration = *(from + 5);
  *&self->_has |= 2u;
  v5 = *(from + 50);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_bgDuration = *(from + 4);
  *&self->_has |= 1u;
  v5 = *(from + 50);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_bgEntryCount = *(from + 14);
  *&self->_has |= 8u;
  v5 = *(from + 50);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_peerRssi24G = *(from + 17);
  *&self->_has |= 0x40u;
  v5 = *(from + 50);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_peerRssi5G = *(from + 18);
  *&self->_has |= 0x80u;
  if ((*(from + 50) & 0x100) != 0)
  {
LABEL_8:
    self->_isSDB = *(from + 96);
    *&self->_has |= 0x100u;
  }

LABEL_9:
  sidecarBssSteering = self->_sidecarBssSteering;
  v7 = *(from + 10);
  if (sidecarBssSteering)
  {
    if (v7)
    {
      [(AWDSidecarBssSteering *)sidecarBssSteering mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDWiFiAwdlSidecar *)self setSidecarBssSteering:?];
  }

  sidecarPeerTraffic = self->_sidecarPeerTraffic;
  v9 = *(from + 11);
  if (sidecarPeerTraffic)
  {
    if (v9)
    {
      [(AWDSidecarPeerTraffic *)sidecarPeerTraffic mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDWiFiAwdlSidecar *)self setSidecarPeerTraffic:?];
  }

  v10 = *(from + 50);
  if ((v10 & 0x10) != 0)
  {
    self->_dfspState = *(from + 15);
    *&self->_has |= 0x10u;
    v10 = *(from + 50);
  }

  if ((v10 & 0x20) != 0)
  {
    self->_infraDisconnectedCount = *(from + 16);
    *&self->_has |= 0x20u;
  }

  channelSequencesCount = [from channelSequencesCount];
  if (channelSequencesCount)
  {
    v12 = channelSequencesCount;
    for (i = 0; i != v12; ++i)
    {
      -[AWDWiFiAwdlSidecar addChannelSequence:](self, "addChannelSequence:", [from channelSequenceAtIndex:i]);
    }
  }
}

@end