@interface AWDManagementFrames
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAction:(BOOL)action;
- (void)setHasAssocRequest:(BOOL)request;
- (void)setHasAssocResponse:(BOOL)response;
- (void)setHasAuth:(BOOL)auth;
- (void)setHasBeacon:(BOOL)beacon;
- (void)setHasDeauth:(BOOL)deauth;
- (void)setHasDisassoc:(BOOL)disassoc;
- (void)setHasProbeRequest:(BOOL)request;
- (void)setHasProbeResponse:(BOOL)response;
- (void)setHasReassocRequest:(BOOL)request;
- (void)setHasReassocResponse:(BOOL)response;
- (void)writeTo:(id)to;
@end

@implementation AWDManagementFrames

- (void)setHasAssocRequest:(BOOL)request
{
  if (request)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasAssocResponse:(BOOL)response
{
  if (response)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasReassocRequest:(BOOL)request
{
  if (request)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasReassocResponse:(BOOL)response
{
  if (response)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasProbeRequest:(BOOL)request
{
  if (request)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasProbeResponse:(BOOL)response
{
  if (response)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasBeacon:(BOOL)beacon
{
  if (beacon)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasDisassoc:(BOOL)disassoc
{
  if (disassoc)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasAuth:(BOOL)auth
{
  if (auth)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasDeauth:(BOOL)deauth
{
  if (deauth)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasAction:(BOOL)action
{
  if (action)
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
  v3.super_class = AWDManagementFrames;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDManagementFrames description](&v3, sel_description), -[AWDManagementFrames dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_assocRequest), @"assocRequest"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_assocResponse), @"assocResponse"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_reassocRequest), @"reassocRequest"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_reassocResponse), @"reassocResponse"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_probeRequest), @"probeRequest"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_probeResponse), @"probeResponse"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_beacon), @"beacon"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_aTIM), @"ATIM"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_disassoc), @"disassoc"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_deauth), @"deauth"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_13;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_auth), @"auth"}];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((has & 2) != 0)
  {
LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_action), @"action"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    assocRequest = self->_assocRequest;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  assocResponse = self->_assocResponse;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  reassocRequest = self->_reassocRequest;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  reassocResponse = self->_reassocResponse;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  probeRequest = self->_probeRequest;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  probeResponse = self->_probeResponse;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  beacon = self->_beacon;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  aTIM = self->_aTIM;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  disassoc = self->_disassoc;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    deauth = self->_deauth;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_23:
  auth = self->_auth;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_25:
  action = self->_action;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 3) = self->_assocRequest;
    *(to + 52) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_assocResponse;
  *(to + 52) |= 8u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 11) = self->_reassocRequest;
  *(to + 52) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 12) = self->_reassocResponse;
  *(to + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 9) = self->_probeRequest;
  *(to + 52) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 10) = self->_probeResponse;
  *(to + 52) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 6) = self->_beacon;
  *(to + 52) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 1) = self->_aTIM;
  *(to + 52) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 8) = self->_disassoc;
  *(to + 52) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 5) = self->_auth;
  *(to + 52) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_25:
    *(to + 2) = self->_action;
    *(to + 52) |= 2u;
    return;
  }

LABEL_24:
  *(to + 7) = self->_deauth;
  *(to + 52) |= 0x40u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_25;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 3) = self->_assocRequest;
    *(result + 52) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_assocResponse;
  *(result + 52) |= 8u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 11) = self->_reassocRequest;
  *(result + 52) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 12) = self->_reassocResponse;
  *(result + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 9) = self->_probeRequest;
  *(result + 52) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 10) = self->_probeResponse;
  *(result + 52) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 6) = self->_beacon;
  *(result + 52) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 1) = self->_aTIM;
  *(result + 52) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 8) = self->_disassoc;
  *(result + 52) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 5) = self->_auth;
  *(result + 52) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_25:
  *(result + 7) = self->_deauth;
  *(result + 52) |= 0x40u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_13:
  *(result + 2) = self->_action;
  *(result + 52) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 52);
    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_assocRequest != *(equal + 3))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 4) != 0)
    {
LABEL_61:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_assocResponse != *(equal + 4))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 52) & 0x400) == 0 || self->_reassocRequest != *(equal + 11))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x400) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 52) & 0x800) == 0 || self->_reassocResponse != *(equal + 12))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x800) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 52) & 0x100) == 0 || self->_probeRequest != *(equal + 9))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x100) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 52) & 0x200) == 0 || self->_probeResponse != *(equal + 10))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x200) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_beacon != *(equal + 6))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_61;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_aTIM != *(equal + 1))
      {
        goto LABEL_61;
      }
    }

    else if (v7)
    {
      goto LABEL_61;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_disassoc != *(equal + 8))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_auth != *(equal + 5))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_deauth != *(equal + 7))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_61;
    }

    LOBYTE(v5) = (v7 & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_action != *(equal + 2))
      {
        goto LABEL_61;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    v3 = 2654435761u * self->_assocRequest;
    if ((has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_assocResponse;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_reassocRequest;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_reassocResponse;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_probeRequest;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_probeResponse;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_beacon;
    if (has)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
  if (has)
  {
LABEL_9:
    v10 = 2654435761u * self->_aTIM;
    if ((has & 0x80) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_disassoc;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_auth;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_23:
  v12 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = 2654435761u * self->_deauth;
  if ((has & 2) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v14 = 2654435761u * self->_action;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 52);
  if ((v3 & 4) != 0)
  {
    self->_assocRequest = *(from + 3);
    *&self->_has |= 4u;
    v3 = *(from + 52);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_assocResponse = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 52);
  if ((v3 & 0x400) == 0)
  {
LABEL_4:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_reassocRequest = *(from + 11);
  *&self->_has |= 0x400u;
  v3 = *(from + 52);
  if ((v3 & 0x800) == 0)
  {
LABEL_5:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_reassocResponse = *(from + 12);
  *&self->_has |= 0x800u;
  v3 = *(from + 52);
  if ((v3 & 0x100) == 0)
  {
LABEL_6:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_probeRequest = *(from + 9);
  *&self->_has |= 0x100u;
  v3 = *(from + 52);
  if ((v3 & 0x200) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_probeResponse = *(from + 10);
  *&self->_has |= 0x200u;
  v3 = *(from + 52);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_beacon = *(from + 6);
  *&self->_has |= 0x20u;
  v3 = *(from + 52);
  if ((v3 & 1) == 0)
  {
LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_aTIM = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 52);
  if ((v3 & 0x80) == 0)
  {
LABEL_10:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_disassoc = *(from + 8);
  *&self->_has |= 0x80u;
  v3 = *(from + 52);
  if ((v3 & 0x10) == 0)
  {
LABEL_11:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_auth = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 52);
  if ((v3 & 0x40) == 0)
  {
LABEL_12:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_25:
    self->_action = *(from + 2);
    *&self->_has |= 2u;
    return;
  }

LABEL_24:
  self->_deauth = *(from + 7);
  *&self->_has |= 0x40u;
  if ((*(from + 52) & 2) != 0)
  {
    goto LABEL_25;
  }
}

@end