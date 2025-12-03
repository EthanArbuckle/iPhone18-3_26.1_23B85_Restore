@interface AWDVPNSession
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAppVpnUsed:(BOOL)used;
- (void)setHasConnectFailed:(BOOL)failed;
- (void)setHasDisconnectReason:(BOOL)reason;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasIpv4Installed:(BOOL)installed;
- (void)setHasIpv6Installed:(BOOL)installed;
- (void)setHasOutBytes:(BOOL)bytes;
- (void)setHasProxyInstalled:(BOOL)installed;
- (void)setHasReassertCount:(BOOL)count;
- (void)setHasSystemAuthenMethod:(BOOL)method;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTriggerTrafficClass:(BOOL)class;
- (void)setHasTriggerType:(BOOL)type;
- (void)setHasUserAuthenMethod:(BOOL)method;
- (void)writeTo:(id)to;
@end

@implementation AWDVPNSession

- (void)dealloc
{
  [(AWDVPNSession *)self setProtocol:0];
  v3.receiver = self;
  v3.super_class = AWDVPNSession;
  [(AWDVPNSession *)&v3 dealloc];
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

- (void)setHasTriggerType:(BOOL)type
{
  if (type)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasTriggerTrafficClass:(BOOL)class
{
  if (class)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIpv4Installed:(BOOL)installed
{
  if (installed)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIpv6Installed:(BOOL)installed
{
  if (installed)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasProxyInstalled:(BOOL)installed
{
  if (installed)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasAppVpnUsed:(BOOL)used
{
  if (used)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasSystemAuthenMethod:(BOOL)method
{
  if (method)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasUserAuthenMethod:(BOOL)method
{
  if (method)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasDisconnectReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasConnectFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasReassertCount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasOutBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDVPNSession;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDVPNSession description](&v3, sel_description), -[AWDVPNSession dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  protocol = self->_protocol;
  if (protocol)
  {
    [dictionary setObject:protocol forKey:@"protocol"];
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_triggerType), @"trigger_type"}];
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_triggerTrafficClass), @"trigger_traffic_class"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ipv4Installed), @"ipv4_installed"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ipv6Installed), @"ipv6_installed"}];
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_proxyInstalled), @"proxy_installed"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_appVpnUsed), @"app_vpn_used"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_systemAuthenMethod), @"system_authen_method"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_userAuthenMethod), @"user_authen_method"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_disconnectReason), @"disconnect_reason"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_connectFailed), @"connect_failed"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_duration), @"duration"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_17:
    if ((has & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_33:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_inBytes), @"in_bytes"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_19;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_reassertCount), @"reassert_count"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_33;
  }

LABEL_18:
  if ((has & 2) != 0)
  {
LABEL_19:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_outBytes), @"out_bytes"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_protocol)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    triggerType = self->_triggerType;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_7;
  }

  triggerTrafficClass = self->_triggerTrafficClass;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  ipv4Installed = self->_ipv4Installed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  ipv6Installed = self->_ipv6Installed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  proxyInstalled = self->_proxyInstalled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  appVpnUsed = self->_appVpnUsed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  systemAuthenMethod = self->_systemAuthenMethod;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  userAuthenMethod = self->_userAuthenMethod;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  disconnectReason = self->_disconnectReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  connectFailed = self->_connectFailed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_17:
    if ((has & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_32:
    inBytes = self->_inBytes;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_33;
  }

LABEL_31:
  reassertCount = self->_reassertCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_32;
  }

LABEL_18:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_33:
  outBytes = self->_outBytes;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 40) |= 4u;
  }

  if (self->_protocol)
  {
    [to setProtocol:?];
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(to + 17) = self->_triggerType;
    *(to + 40) |= 0x400u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_7;
  }

  *(to + 16) = self->_triggerTrafficClass;
  *(to + 40) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 10) = self->_ipv4Installed;
  *(to + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 11) = self->_ipv6Installed;
  *(to + 40) |= 0x40u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 78) = self->_proxyInstalled;
  *(to + 40) |= 0x4000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 76) = self->_appVpnUsed;
  *(to + 40) |= 0x1000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 15) = self->_systemAuthenMethod;
  *(to + 40) |= 0x100u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 18) = self->_userAuthenMethod;
  *(to + 40) |= 0x800u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 8) = self->_disconnectReason;
  *(to + 40) |= 8u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 77) = self->_connectFailed;
  *(to + 40) |= 0x2000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 9) = self->_duration;
  *(to + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_17:
    if ((has & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 14) = self->_reassertCount;
  *(to + 40) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_18:
    if ((has & 2) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_33:
  *(to + 1) = self->_inBytes;
  *(to + 40) |= 1u;
  if ((*&self->_has & 2) == 0)
  {
    return;
  }

LABEL_19:
  *(to + 2) = self->_outBytes;
  *(to + 40) |= 2u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 80) |= 4u;
  }

  *(v6 + 48) = [(NSString *)self->_protocol copyWithZone:zone];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v6 + 68) = self->_triggerType;
    *(v6 + 80) |= 0x400u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 64) = self->_triggerTrafficClass;
  *(v6 + 80) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v6 + 40) = self->_ipv4Installed;
  *(v6 + 80) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v6 + 44) = self->_ipv6Installed;
  *(v6 + 80) |= 0x40u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v6 + 78) = self->_proxyInstalled;
  *(v6 + 80) |= 0x4000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v6 + 76) = self->_appVpnUsed;
  *(v6 + 80) |= 0x1000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v6 + 60) = self->_systemAuthenMethod;
  *(v6 + 80) |= 0x100u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v6 + 72) = self->_userAuthenMethod;
  *(v6 + 80) |= 0x800u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 32) = self->_disconnectReason;
  *(v6 + 80) |= 8u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v6 + 77) = self->_connectFailed;
  *(v6 + 80) |= 0x2000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v6 + 36) = self->_duration;
  *(v6 + 80) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    *(v6 + 8) = self->_inBytes;
    *(v6 + 80) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_17;
  }

LABEL_30:
  *(v6 + 56) = self->_reassertCount;
  *(v6 + 80) |= 0x80u;
  has = self->_has;
  if (has)
  {
    goto LABEL_31;
  }

LABEL_16:
  if ((has & 2) != 0)
  {
LABEL_17:
    *(v6 + 16) = self->_outBytes;
    *(v6 + 80) |= 2u;
  }

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
  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_timestamp != *(equal + 3))
    {
      goto LABEL_88;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_88;
  }

  protocol = self->_protocol;
  if (protocol | *(equal + 6))
  {
    v5 = [(NSString *)protocol isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v9 = *(equal + 40);
  if ((has & 0x400) != 0)
  {
    if ((*(equal + 40) & 0x400) == 0 || self->_triggerType != *(equal + 17))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equal + 40) & 0x400) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x200) != 0)
  {
    if ((*(equal + 40) & 0x200) == 0 || self->_triggerTrafficClass != *(equal + 16))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equal + 40) & 0x200) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_ipv4Installed != *(equal + 10))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_ipv6Installed != *(equal + 11))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x4000) != 0)
  {
    if ((*(equal + 40) & 0x4000) == 0)
    {
      goto LABEL_88;
    }

    v10 = *(equal + 78);
    if (self->_proxyInstalled)
    {
      if ((*(equal + 78) & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else if (*(equal + 78))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equal + 40) & 0x4000) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x1000) != 0)
  {
    if ((*(equal + 40) & 0x1000) == 0)
    {
      goto LABEL_88;
    }

    v11 = *(equal + 76);
    if (self->_appVpnUsed)
    {
      if ((*(equal + 76) & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else if (*(equal + 76))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equal + 40) & 0x1000) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x100) != 0)
  {
    if ((*(equal + 40) & 0x100) == 0 || self->_systemAuthenMethod != *(equal + 15))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equal + 40) & 0x100) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x800) != 0)
  {
    if ((*(equal + 40) & 0x800) == 0 || self->_userAuthenMethod != *(equal + 18))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equal + 40) & 0x800) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_disconnectReason != *(equal + 8))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x2000) != 0)
  {
    if ((*(equal + 40) & 0x2000) != 0)
    {
      v12 = *(equal + 77);
      if (self->_connectFailed)
      {
        if ((*(equal + 77) & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      else if (*(equal + 77))
      {
        goto LABEL_88;
      }

      goto LABEL_63;
    }

LABEL_88:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 40) & 0x2000) != 0)
  {
    goto LABEL_88;
  }

LABEL_63:
  if ((has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_duration != *(equal + 9))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_reassertCount != *(equal + 14))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_88;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_inBytes != *(equal + 1))
    {
      goto LABEL_88;
    }
  }

  else if (v9)
  {
    goto LABEL_88;
  }

  LOBYTE(v5) = (v9 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_outBytes != *(equal + 2))
    {
      goto LABEL_88;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_protocol hash];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v6 = 2654435761 * self->_triggerType;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_triggerTrafficClass;
      if ((has & 0x20) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_ipv4Installed;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_ipv6Installed;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_proxyInstalled;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_appVpnUsed;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_systemAuthenMethod;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_userAuthenMethod;
    if ((has & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((has & 8) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_disconnectReason;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_connectFailed;
    if ((has & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_duration;
    if ((has & 0x80) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_reassertCount;
    if (has)
    {
      goto LABEL_17;
    }

LABEL_31:
    v18 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_32:
    v19 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

LABEL_30:
  v17 = 0;
  if ((has & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  v18 = 2654435761u * self->_inBytes;
  if ((has & 2) == 0)
  {
    goto LABEL_32;
  }

LABEL_18:
  v19 = 2654435761u * self->_outBytes;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 40) & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
  }

  if (*(from + 6))
  {
    [(AWDVPNSession *)self setProtocol:?];
  }

  v5 = *(from + 40);
  if ((v5 & 0x400) != 0)
  {
    self->_triggerType = *(from + 17);
    *&self->_has |= 0x400u;
    v5 = *(from + 40);
    if ((v5 & 0x200) == 0)
    {
LABEL_7:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((*(from + 40) & 0x200) == 0)
  {
    goto LABEL_7;
  }

  self->_triggerTrafficClass = *(from + 16);
  *&self->_has |= 0x200u;
  v5 = *(from + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_ipv4Installed = *(from + 10);
  *&self->_has |= 0x20u;
  v5 = *(from + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_ipv6Installed = *(from + 11);
  *&self->_has |= 0x40u;
  v5 = *(from + 40);
  if ((v5 & 0x4000) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_proxyInstalled = *(from + 78);
  *&self->_has |= 0x4000u;
  v5 = *(from + 40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_appVpnUsed = *(from + 76);
  *&self->_has |= 0x1000u;
  v5 = *(from + 40);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_systemAuthenMethod = *(from + 15);
  *&self->_has |= 0x100u;
  v5 = *(from + 40);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_userAuthenMethod = *(from + 18);
  *&self->_has |= 0x800u;
  v5 = *(from + 40);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_disconnectReason = *(from + 8);
  *&self->_has |= 8u;
  v5 = *(from + 40);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_connectFailed = *(from + 77);
  *&self->_has |= 0x2000u;
  v5 = *(from + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_duration = *(from + 9);
  *&self->_has |= 0x10u;
  v5 = *(from + 40);
  if ((v5 & 0x80) == 0)
  {
LABEL_17:
    if ((v5 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_reassertCount = *(from + 14);
  *&self->_has |= 0x80u;
  v5 = *(from + 40);
  if ((v5 & 1) == 0)
  {
LABEL_18:
    if ((v5 & 2) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_33:
  self->_inBytes = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 40) & 2) == 0)
  {
    return;
  }

LABEL_19:
  self->_outBytes = *(from + 2);
  *&self->_has |= 2u;
}

@end