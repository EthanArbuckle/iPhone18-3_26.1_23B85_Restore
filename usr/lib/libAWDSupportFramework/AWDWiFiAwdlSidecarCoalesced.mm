@interface AWDWiFiAwdlSidecarCoalesced
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasPencilOffCount:(BOOL)a3;
- (void)setHasPencilOnCount:(BOOL)a3;
- (void)setHasRemoteBgEntryCount:(BOOL)a3;
- (void)setHasRemoteFgDuration:(BOOL)a3;
- (void)setHasRemotePeerRssi24G:(BOOL)a3;
- (void)setHasRemotePeerRssi5G:(BOOL)a3;
- (void)setHasRemotefIsSDB:(BOOL)a3;
- (void)setHasSelfBgDuration:(BOOL)a3;
- (void)setHasSelfBgEntryCount:(BOOL)a3;
- (void)setHasSelfFgDuration:(BOOL)a3;
- (void)setHasSelfIsSDB:(BOOL)a3;
- (void)setHasSelfPeerRssi24G:(BOOL)a3;
- (void)setHasSelfPeerRssi5G:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiAwdlSidecarCoalesced

- (void)dealloc
{
  [(AWDWiFiAwdlSidecarCoalesced *)self setSelfSidecarBssSteering:0];
  [(AWDWiFiAwdlSidecarCoalesced *)self setRemoteSidecarBssSteering:0];
  [(AWDWiFiAwdlSidecarCoalesced *)self setSelfSidecarPeerTraffic:0];
  [(AWDWiFiAwdlSidecarCoalesced *)self setRemoteSidecarPeerTraffic:0];
  [(AWDWiFiAwdlSidecarCoalesced *)self setSessionUUID:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiAwdlSidecarCoalesced;
  [(AWDWiFiAwdlSidecarCoalesced *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasSelfFgDuration:(BOOL)a3
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

- (void)setHasSelfBgDuration:(BOOL)a3
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

- (void)setHasSelfBgEntryCount:(BOOL)a3
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

- (void)setHasSelfPeerRssi24G:(BOOL)a3
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

- (void)setHasSelfPeerRssi5G:(BOOL)a3
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

- (void)setHasSelfIsSDB:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasRemoteFgDuration:(BOOL)a3
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

- (void)setHasRemoteBgEntryCount:(BOOL)a3
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

- (void)setHasRemotePeerRssi24G:(BOOL)a3
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

- (void)setHasRemotePeerRssi5G:(BOOL)a3
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

- (void)setHasRemotefIsSDB:(BOOL)a3
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

- (void)setHasPencilOnCount:(BOOL)a3
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

- (void)setHasPencilOffCount:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiAwdlSidecarCoalesced;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiAwdlSidecarCoalesced description](&v3, sel_description), -[AWDWiFiAwdlSidecarCoalesced dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_selfFgDuration), @"selfFgDuration"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_selfBgDuration), @"selfBgDuration"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_selfBgEntryCount), @"selfBgEntryCount"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_selfPeerRssi24G), @"selfPeerRssi24G"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_7:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_selfPeerRssi5G), @"selfPeerRssi5G"}];
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_selfIsSDB), @"selfIsSDB"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_remoteFgDuration), @"remoteFgDuration"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_remoteBgDuration), @"remoteBgDuration"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_remoteBgEntryCount), @"remoteBgEntryCount"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_remotePeerRssi24G), @"remotePeerRssi24G"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_remotePeerRssi5G), @"remotePeerRssi5G"}];
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_14:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_remotefIsSDB), @"remotefIsSDB"}];
  }

LABEL_15:
  selfSidecarBssSteering = self->_selfSidecarBssSteering;
  if (selfSidecarBssSteering)
  {
    [v3 setObject:-[AWDSidecarBssSteering dictionaryRepresentation](selfSidecarBssSteering forKey:{"dictionaryRepresentation"), @"selfSidecarBssSteering"}];
  }

  remoteSidecarBssSteering = self->_remoteSidecarBssSteering;
  if (remoteSidecarBssSteering)
  {
    [v3 setObject:-[AWDSidecarBssSteering dictionaryRepresentation](remoteSidecarBssSteering forKey:{"dictionaryRepresentation"), @"remoteSidecarBssSteering"}];
  }

  selfSidecarPeerTraffic = self->_selfSidecarPeerTraffic;
  if (selfSidecarPeerTraffic)
  {
    [v3 setObject:-[AWDSidecarPeerTraffic dictionaryRepresentation](selfSidecarPeerTraffic forKey:{"dictionaryRepresentation"), @"selfSidecarPeerTraffic"}];
  }

  remoteSidecarPeerTraffic = self->_remoteSidecarPeerTraffic;
  if (remoteSidecarPeerTraffic)
  {
    [v3 setObject:-[AWDSidecarPeerTraffic dictionaryRepresentation](remoteSidecarPeerTraffic forKey:{"dictionaryRepresentation"), @"remoteSidecarPeerTraffic"}];
  }

  v9 = self->_has;
  if ((v9 & 0x40) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pencilOnCount), @"pencilOnCount"}];
    v9 = self->_has;
  }

  if ((v9 & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pencilOffCount), @"pencilOffCount"}];
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID)
  {
    [v3 setObject:sessionUUID forKey:@"sessionUUID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  selfFgDuration = self->_selfFgDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  selfBgDuration = self->_selfBgDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  selfBgEntryCount = self->_selfBgEntryCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  selfPeerRssi24G = self->_selfPeerRssi24G;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_7:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  selfPeerRssi5G = self->_selfPeerRssi5G;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  selfIsSDB = self->_selfIsSDB;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  remoteFgDuration = self->_remoteFgDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  remoteBgDuration = self->_remoteBgDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  remoteBgEntryCount = self->_remoteBgEntryCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  remotePeerRssi24G = self->_remotePeerRssi24G;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_42:
  remotePeerRssi5G = self->_remotePeerRssi5G;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_14:
    remotefIsSDB = self->_remotefIsSDB;
    PBDataWriterWriteBOOLField();
  }

LABEL_15:
  if (self->_selfSidecarBssSteering)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_remoteSidecarBssSteering)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_selfSidecarPeerTraffic)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_remoteSidecarPeerTraffic)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    pencilOnCount = self->_pencilOnCount;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    pencilOffCount = self->_pencilOffCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_sessionUUID)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(a3 + 5) = self->_timestamp;
    *(a3 + 66) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_selfFgDuration;
  *(a3 + 66) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(a3 + 3) = self->_selfBgDuration;
  *(a3 + 66) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 22) = self->_selfBgEntryCount;
  *(a3 + 66) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 23) = self->_selfPeerRssi24G;
  *(a3 + 66) |= 0x800u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_7:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 24) = self->_selfPeerRssi5G;
  *(a3 + 66) |= 0x1000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 129) = self->_selfIsSDB;
  *(a3 + 66) |= 0x4000u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 2) = self->_remoteFgDuration;
  *(a3 + 66) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 1) = self->_remoteBgDuration;
  *(a3 + 66) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 14) = self->_remoteBgEntryCount;
  *(a3 + 66) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 15) = self->_remotePeerRssi24G;
  *(a3 + 66) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_42:
  *(a3 + 16) = self->_remotePeerRssi5G;
  *(a3 + 66) |= 0x200u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_14:
    *(a3 + 128) = self->_remotefIsSDB;
    *(a3 + 66) |= 0x2000u;
  }

LABEL_15:
  if (self->_selfSidecarBssSteering)
  {
    [a3 setSelfSidecarBssSteering:?];
  }

  if (self->_remoteSidecarBssSteering)
  {
    [a3 setRemoteSidecarBssSteering:?];
  }

  if (self->_selfSidecarPeerTraffic)
  {
    [a3 setSelfSidecarPeerTraffic:?];
  }

  if (self->_remoteSidecarPeerTraffic)
  {
    [a3 setRemoteSidecarPeerTraffic:?];
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(a3 + 13) = self->_pencilOnCount;
    *(a3 + 66) |= 0x40u;
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    *(a3 + 12) = self->_pencilOffCount;
    *(a3 + 66) |= 0x20u;
  }

  if (self->_sessionUUID)
  {

    [a3 setSessionUUID:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 40) = self->_timestamp;
    *(v5 + 132) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_selfFgDuration;
  *(v5 + 132) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 24) = self->_selfBgDuration;
  *(v5 + 132) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 88) = self->_selfBgEntryCount;
  *(v5 + 132) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 92) = self->_selfPeerRssi24G;
  *(v5 + 132) |= 0x800u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_7:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 96) = self->_selfPeerRssi5G;
  *(v5 + 132) |= 0x1000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 129) = self->_selfIsSDB;
  *(v5 + 132) |= 0x4000u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 16) = self->_remoteFgDuration;
  *(v5 + 132) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 8) = self->_remoteBgDuration;
  *(v5 + 132) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 56) = self->_remoteBgEntryCount;
  *(v5 + 132) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 60) = self->_remotePeerRssi24G;
  *(v5 + 132) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_31:
  *(v5 + 64) = self->_remotePeerRssi5G;
  *(v5 + 132) |= 0x200u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_14:
    *(v5 + 128) = self->_remotefIsSDB;
    *(v5 + 132) |= 0x2000u;
  }

LABEL_15:

  *(v6 + 104) = [(AWDSidecarBssSteering *)self->_selfSidecarBssSteering copyWithZone:a3];
  *(v6 + 72) = [(AWDSidecarBssSteering *)self->_remoteSidecarBssSteering copyWithZone:a3];

  *(v6 + 112) = [(AWDSidecarPeerTraffic *)self->_selfSidecarPeerTraffic copyWithZone:a3];
  *(v6 + 80) = [(AWDSidecarPeerTraffic *)self->_remoteSidecarPeerTraffic copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 0x40) != 0)
  {
    *(v6 + 52) = self->_pencilOnCount;
    *(v6 + 132) |= 0x40u;
    v8 = self->_has;
  }

  if ((v8 & 0x20) != 0)
  {
    *(v6 + 48) = self->_pencilOffCount;
    *(v6 + 132) |= 0x20u;
  }

  *(v6 + 120) = [(NSString *)self->_sessionUUID copyWithZone:a3];
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
  v7 = *(a3 + 66);
  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_timestamp != *(a3 + 5))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_selfFgDuration != *(a3 + 4))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_selfBgDuration != *(a3 + 3))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(a3 + 66) & 0x400) == 0 || self->_selfBgEntryCount != *(a3 + 22))
    {
      goto LABEL_79;
    }
  }

  else if ((*(a3 + 66) & 0x400) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(a3 + 66) & 0x800) == 0 || self->_selfPeerRssi24G != *(a3 + 23))
    {
      goto LABEL_79;
    }
  }

  else if ((*(a3 + 66) & 0x800) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(a3 + 66) & 0x1000) == 0 || self->_selfPeerRssi5G != *(a3 + 24))
    {
      goto LABEL_79;
    }
  }

  else if ((*(a3 + 66) & 0x1000) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(a3 + 66) & 0x4000) == 0)
    {
      goto LABEL_79;
    }

    v8 = *(a3 + 129);
    if (self->_selfIsSDB)
    {
      if ((*(a3 + 129) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*(a3 + 129))
    {
      goto LABEL_79;
    }
  }

  else if ((*(a3 + 66) & 0x4000) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_remoteFgDuration != *(a3 + 2))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_79;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_remoteBgDuration != *(a3 + 1))
    {
      goto LABEL_79;
    }
  }

  else if (v7)
  {
    goto LABEL_79;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_remoteBgEntryCount != *(a3 + 14))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(a3 + 66) & 0x100) == 0 || self->_remotePeerRssi24G != *(a3 + 15))
    {
      goto LABEL_79;
    }
  }

  else if ((*(a3 + 66) & 0x100) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(a3 + 66) & 0x200) == 0 || self->_remotePeerRssi5G != *(a3 + 16))
    {
      goto LABEL_79;
    }
  }

  else if ((*(a3 + 66) & 0x200) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(a3 + 66) & 0x2000) == 0)
    {
      goto LABEL_79;
    }

    v15 = *(a3 + 128);
    if (self->_remotefIsSDB)
    {
      if ((*(a3 + 128) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*(a3 + 128))
    {
      goto LABEL_79;
    }
  }

  else if ((*(a3 + 66) & 0x2000) != 0)
  {
    goto LABEL_79;
  }

  selfSidecarBssSteering = self->_selfSidecarBssSteering;
  if (selfSidecarBssSteering | *(a3 + 13))
  {
    v5 = [(AWDSidecarBssSteering *)selfSidecarBssSteering isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  remoteSidecarBssSteering = self->_remoteSidecarBssSteering;
  if (remoteSidecarBssSteering | *(a3 + 9))
  {
    v5 = [(AWDSidecarBssSteering *)remoteSidecarBssSteering isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  selfSidecarPeerTraffic = self->_selfSidecarPeerTraffic;
  if (selfSidecarPeerTraffic | *(a3 + 14))
  {
    v5 = [(AWDSidecarPeerTraffic *)selfSidecarPeerTraffic isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  remoteSidecarPeerTraffic = self->_remoteSidecarPeerTraffic;
  if (remoteSidecarPeerTraffic | *(a3 + 10))
  {
    v5 = [(AWDSidecarPeerTraffic *)remoteSidecarPeerTraffic isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  v13 = self->_has;
  v14 = *(a3 + 66);
  if ((v13 & 0x40) != 0)
  {
    if ((v14 & 0x40) == 0 || self->_pencilOnCount != *(a3 + 13))
    {
      goto LABEL_79;
    }
  }

  else if ((v14 & 0x40) != 0)
  {
    goto LABEL_79;
  }

  if ((v13 & 0x20) != 0)
  {
    if ((v14 & 0x20) == 0 || self->_pencilOffCount != *(a3 + 12))
    {
      goto LABEL_79;
    }

    goto LABEL_93;
  }

  if ((v14 & 0x20) != 0)
  {
LABEL_79:
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_93:
  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(a3 + 15))
  {

    LOBYTE(v5) = [(NSString *)sessionUUID isEqual:?];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v24 = 2654435761u * self->_timestamp;
    if ((has & 8) != 0)
    {
LABEL_3:
      v23 = 2654435761u * self->_selfFgDuration;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v24 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v22 = 2654435761u * self->_selfBgDuration;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v22 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_5:
    v21 = 2654435761 * self->_selfBgEntryCount;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v21 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    v20 = 2654435761 * self->_selfPeerRssi24G;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v20 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_7:
    v19 = 2654435761 * self->_selfPeerRssi5G;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v19 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_8:
    v18 = 2654435761 * self->_selfIsSDB;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v18 = 0;
  if ((has & 2) != 0)
  {
LABEL_9:
    v17 = 2654435761u * self->_remoteFgDuration;
    if (has)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v17 = 0;
  if (has)
  {
LABEL_10:
    v4 = 2654435761u * self->_remoteBgDuration;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_11:
    v5 = 2654435761 * self->_remoteBgEntryCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    v6 = 2654435761 * self->_remotePeerRssi24G;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v7 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_25:
  v6 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v7 = 2654435761 * self->_remotePeerRssi5G;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_14:
    v8 = 2654435761 * self->_remotefIsSDB;
    goto LABEL_28;
  }

LABEL_27:
  v8 = 0;
LABEL_28:
  v9 = [(AWDSidecarBssSteering *)self->_selfSidecarBssSteering hash];
  v10 = [(AWDSidecarBssSteering *)self->_remoteSidecarBssSteering hash];
  v11 = [(AWDSidecarPeerTraffic *)self->_selfSidecarPeerTraffic hash];
  v12 = [(AWDSidecarPeerTraffic *)self->_remoteSidecarPeerTraffic hash];
  v13 = self->_has;
  if ((v13 & 0x40) != 0)
  {
    v14 = 2654435761 * self->_pencilOnCount;
    if ((v13 & 0x20) != 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    v15 = 0;
    return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ [(NSString *)self->_sessionUUID hash];
  }

  v14 = 0;
  if ((v13 & 0x20) == 0)
  {
    goto LABEL_32;
  }

LABEL_30:
  v15 = 2654435761 * self->_pencilOffCount;
  return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ [(NSString *)self->_sessionUUID hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 66);
  if ((v5 & 0x10) != 0)
  {
    self->_timestamp = *(a3 + 5);
    *&self->_has |= 0x10u;
    v5 = *(a3 + 66);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_selfFgDuration = *(a3 + 4);
  *&self->_has |= 8u;
  v5 = *(a3 + 66);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_selfBgDuration = *(a3 + 3);
  *&self->_has |= 4u;
  v5 = *(a3 + 66);
  if ((v5 & 0x400) == 0)
  {
LABEL_5:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_selfBgEntryCount = *(a3 + 22);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 66);
  if ((v5 & 0x800) == 0)
  {
LABEL_6:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_selfPeerRssi24G = *(a3 + 23);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 66);
  if ((v5 & 0x1000) == 0)
  {
LABEL_7:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_selfPeerRssi5G = *(a3 + 24);
  *&self->_has |= 0x1000u;
  v5 = *(a3 + 66);
  if ((v5 & 0x4000) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_selfIsSDB = *(a3 + 129);
  *&self->_has |= 0x4000u;
  v5 = *(a3 + 66);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_remoteFgDuration = *(a3 + 2);
  *&self->_has |= 2u;
  v5 = *(a3 + 66);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_remoteBgDuration = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 66);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_remoteBgEntryCount = *(a3 + 14);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 66);
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
  self->_remotePeerRssi24G = *(a3 + 15);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 66);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  self->_remotePeerRssi5G = *(a3 + 16);
  *&self->_has |= 0x200u;
  if ((*(a3 + 66) & 0x2000) != 0)
  {
LABEL_14:
    self->_remotefIsSDB = *(a3 + 128);
    *&self->_has |= 0x2000u;
  }

LABEL_15:
  selfSidecarBssSteering = self->_selfSidecarBssSteering;
  v7 = *(a3 + 13);
  if (selfSidecarBssSteering)
  {
    if (v7)
    {
      [(AWDSidecarBssSteering *)selfSidecarBssSteering mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDWiFiAwdlSidecarCoalesced *)self setSelfSidecarBssSteering:?];
  }

  remoteSidecarBssSteering = self->_remoteSidecarBssSteering;
  v9 = *(a3 + 9);
  if (remoteSidecarBssSteering)
  {
    if (v9)
    {
      [(AWDSidecarBssSteering *)remoteSidecarBssSteering mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDWiFiAwdlSidecarCoalesced *)self setRemoteSidecarBssSteering:?];
  }

  selfSidecarPeerTraffic = self->_selfSidecarPeerTraffic;
  v11 = *(a3 + 14);
  if (selfSidecarPeerTraffic)
  {
    if (v11)
    {
      [(AWDSidecarPeerTraffic *)selfSidecarPeerTraffic mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDWiFiAwdlSidecarCoalesced *)self setSelfSidecarPeerTraffic:?];
  }

  remoteSidecarPeerTraffic = self->_remoteSidecarPeerTraffic;
  v13 = *(a3 + 10);
  if (remoteSidecarPeerTraffic)
  {
    if (v13)
    {
      [(AWDSidecarPeerTraffic *)remoteSidecarPeerTraffic mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(AWDWiFiAwdlSidecarCoalesced *)self setRemoteSidecarPeerTraffic:?];
  }

  v14 = *(a3 + 66);
  if ((v14 & 0x40) != 0)
  {
    self->_pencilOnCount = *(a3 + 13);
    *&self->_has |= 0x40u;
    v14 = *(a3 + 66);
  }

  if ((v14 & 0x20) != 0)
  {
    self->_pencilOffCount = *(a3 + 12);
    *&self->_has |= 0x20u;
  }

  if (*(a3 + 15))
  {

    [(AWDWiFiAwdlSidecarCoalesced *)self setSessionUUID:?];
  }
}

@end