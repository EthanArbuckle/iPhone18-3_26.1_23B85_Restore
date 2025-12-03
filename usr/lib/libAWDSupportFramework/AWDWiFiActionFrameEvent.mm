@interface AWDWiFiActionFrameEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasActionCode:(BOOL)code;
- (void)setHasBtmAbridged:(BOOL)abridged;
- (void)setHasBtmBssTerminationIncluded:(BOOL)included;
- (void)setHasBtmDisassociationImminent:(BOOL)imminent;
- (void)setHasBtmDisassociationTimeout:(BOOL)timeout;
- (void)setHasBtmEssTerminationIncluded:(BOOL)included;
- (void)setHasBtmHasPreferredCandidateList:(BOOL)list;
- (void)setHasBtmTerminationDuration:(BOOL)duration;
- (void)setHasBtmValidityInterval:(BOOL)interval;
- (void)setHasCategoryCode:(BOOL)code;
- (void)setHasDialogToken:(BOOL)token;
- (void)setHasEnvironmentType:(BOOL)type;
- (void)setHasFrameType:(BOOL)type;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiActionFrameEvent

- (void)dealloc
{
  [(AWDWiFiActionFrameEvent *)self setOui:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiActionFrameEvent;
  [(AWDWiFiActionFrameEvent *)&v3 dealloc];
}

- (void)setHasEnvironmentType:(BOOL)type
{
  if (type)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasCategoryCode:(BOOL)code
{
  if (code)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasActionCode:(BOOL)code
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

- (void)setHasDialogToken:(BOOL)token
{
  if (token)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasFrameType:(BOOL)type
{
  if (type)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasBtmDisassociationTimeout:(BOOL)timeout
{
  if (timeout)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasBtmValidityInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasBtmTerminationDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasBtmHasPreferredCandidateList:(BOOL)list
{
  if (list)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasBtmAbridged:(BOOL)abridged
{
  if (abridged)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasBtmDisassociationImminent:(BOOL)imminent
{
  if (imminent)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasBtmBssTerminationIncluded:(BOOL)included
{
  if (included)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasBtmEssTerminationIncluded:(BOOL)included
{
  if (included)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiActionFrameEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiActionFrameEvent description](&v3, sel_description), -[AWDWiFiActionFrameEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  oui = self->_oui;
  if (oui)
  {
    [dictionary setObject:oui forKey:@"oui"];
  }

  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_environmentType), @"environmentType"}];
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_categoryCode), @"categoryCode"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_actionCode), @"actionCode"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dialogToken), @"dialogToken"}];
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_status), @"status"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_frameType), @"frameType"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btmDisassociationTimeout), @"btmDisassociationTimeout"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btmValidityInterval), @"btmValidityInterval"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btmTerminationDuration), @"btmTerminationDuration"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btmHasPreferredCandidateList), @"btmHasPreferredCandidateList"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_16:
    if ((has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btmAbridged), @"btmAbridged"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_17:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_33:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btmBssTerminationIncluded), @"btmBssTerminationIncluded"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return dictionary;
    }

    goto LABEL_19;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btmDisassociationImminent), @"btmDisassociationImminent"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_33;
  }

LABEL_18:
  if ((has & 0x40) != 0)
  {
LABEL_19:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_btmEssTerminationIncluded), @"btmEssTerminationIncluded"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_oui)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    environmentType = self->_environmentType;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  categoryCode = self->_categoryCode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  actionCode = self->_actionCode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  dialogToken = self->_dialogToken;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  status = self->_status;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  frameType = self->_frameType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  btmDisassociationTimeout = self->_btmDisassociationTimeout;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  btmValidityInterval = self->_btmValidityInterval;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  btmTerminationDuration = self->_btmTerminationDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  btmHasPreferredCandidateList = self->_btmHasPreferredCandidateList;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_16:
    if ((has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  btmAbridged = self->_btmAbridged;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_17:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_32:
    btmBssTerminationIncluded = self->_btmBssTerminationIncluded;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_33;
  }

LABEL_31:
  btmDisassociationImminent = self->_btmDisassociationImminent;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_32;
  }

LABEL_18:
  if ((has & 0x40) == 0)
  {
    return;
  }

LABEL_33:
  btmEssTerminationIncluded = self->_btmEssTerminationIncluded;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 42) |= 1u;
  }

  if (self->_oui)
  {
    [to setOui:?];
  }

  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    *(to + 15) = self->_environmentType;
    *(to + 42) |= 0x1000u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  *(to + 13) = self->_categoryCode;
  *(to + 42) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 4) = self->_actionCode;
  *(to + 42) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 14) = self->_dialogToken;
  *(to + 42) |= 0x800u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 20) = self->_status;
  *(to + 42) |= 0x4000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 16) = self->_frameType;
  *(to + 42) |= 0x2000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 8) = self->_btmDisassociationTimeout;
  *(to + 42) |= 0x20u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 12) = self->_btmValidityInterval;
  *(to + 42) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 11) = self->_btmTerminationDuration;
  *(to + 42) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 10) = self->_btmHasPreferredCandidateList;
  *(to + 42) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_16:
    if ((has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 5) = self->_btmAbridged;
  *(to + 42) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_17:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 7) = self->_btmDisassociationImminent;
  *(to + 42) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_33:
  *(to + 6) = self->_btmBssTerminationIncluded;
  *(to + 42) |= 8u;
  if ((*&self->_has & 0x40) == 0)
  {
    return;
  }

LABEL_19:
  *(to + 9) = self->_btmEssTerminationIncluded;
  *(to + 42) |= 0x40u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 84) |= 1u;
  }

  *(v6 + 72) = [(NSData *)self->_oui copyWithZone:zone];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    *(v6 + 60) = self->_environmentType;
    *(v6 + 84) |= 0x1000u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 52) = self->_categoryCode;
  *(v6 + 84) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v6 + 16) = self->_actionCode;
  *(v6 + 84) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v6 + 56) = self->_dialogToken;
  *(v6 + 84) |= 0x800u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_8:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v6 + 80) = self->_status;
  *(v6 + 84) |= 0x4000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v6 + 64) = self->_frameType;
  *(v6 + 84) |= 0x2000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v6 + 32) = self->_btmDisassociationTimeout;
  *(v6 + 84) |= 0x20u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v6 + 48) = self->_btmValidityInterval;
  *(v6 + 84) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 44) = self->_btmTerminationDuration;
  *(v6 + 84) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v6 + 40) = self->_btmHasPreferredCandidateList;
  *(v6 + 84) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v6 + 20) = self->_btmAbridged;
  *(v6 + 84) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    *(v6 + 24) = self->_btmBssTerminationIncluded;
    *(v6 + 84) |= 8u;
    if ((*&self->_has & 0x40) == 0)
    {
      return v6;
    }

    goto LABEL_17;
  }

LABEL_30:
  *(v6 + 28) = self->_btmDisassociationImminent;
  *(v6 + 84) |= 0x10u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  if ((has & 0x40) != 0)
  {
LABEL_17:
    *(v6 + 36) = self->_btmEssTerminationIncluded;
    *(v6 + 84) |= 0x40u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 42);
    if (has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_79;
      }
    }

    else if (v7)
    {
LABEL_79:
      LOBYTE(v5) = 0;
      return v5;
    }

    oui = self->_oui;
    if (oui | *(equal + 9))
    {
      v5 = [(NSData *)oui isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 42);
    if ((has & 0x1000) != 0)
    {
      if ((*(equal + 42) & 0x1000) == 0 || self->_environmentType != *(equal + 15))
      {
        goto LABEL_79;
      }
    }

    else if ((*(equal + 42) & 0x1000) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 0x400) != 0)
    {
      if ((*(equal + 42) & 0x400) == 0 || self->_categoryCode != *(equal + 13))
      {
        goto LABEL_79;
      }
    }

    else if ((*(equal + 42) & 0x400) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 2) != 0)
    {
      if ((v9 & 2) == 0 || self->_actionCode != *(equal + 4))
      {
        goto LABEL_79;
      }
    }

    else if ((v9 & 2) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 0x800) != 0)
    {
      if ((*(equal + 42) & 0x800) == 0 || self->_dialogToken != *(equal + 14))
      {
        goto LABEL_79;
      }
    }

    else if ((*(equal + 42) & 0x800) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 0x4000) != 0)
    {
      if ((*(equal + 42) & 0x4000) == 0 || self->_status != *(equal + 20))
      {
        goto LABEL_79;
      }
    }

    else if ((*(equal + 42) & 0x4000) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 0x2000) != 0)
    {
      if ((*(equal + 42) & 0x2000) == 0 || self->_frameType != *(equal + 16))
      {
        goto LABEL_79;
      }
    }

    else if ((*(equal + 42) & 0x2000) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 0x20) != 0)
    {
      if ((v9 & 0x20) == 0 || self->_btmDisassociationTimeout != *(equal + 8))
      {
        goto LABEL_79;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 0x200) != 0)
    {
      if ((*(equal + 42) & 0x200) == 0 || self->_btmValidityInterval != *(equal + 12))
      {
        goto LABEL_79;
      }
    }

    else if ((*(equal + 42) & 0x200) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 0x100) != 0)
    {
      if ((*(equal + 42) & 0x100) == 0 || self->_btmTerminationDuration != *(equal + 11))
      {
        goto LABEL_79;
      }
    }

    else if ((*(equal + 42) & 0x100) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 0x80) != 0)
    {
      if ((v9 & 0x80) == 0 || self->_btmHasPreferredCandidateList != *(equal + 10))
      {
        goto LABEL_79;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 4) != 0)
    {
      if ((v9 & 4) == 0 || self->_btmAbridged != *(equal + 5))
      {
        goto LABEL_79;
      }
    }

    else if ((v9 & 4) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 0x10) != 0)
    {
      if ((v9 & 0x10) == 0 || self->_btmDisassociationImminent != *(equal + 7))
      {
        goto LABEL_79;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      goto LABEL_79;
    }

    if ((has & 8) != 0)
    {
      if ((v9 & 8) == 0 || self->_btmBssTerminationIncluded != *(equal + 6))
      {
        goto LABEL_79;
      }
    }

    else if ((v9 & 8) != 0)
    {
      goto LABEL_79;
    }

    LOBYTE(v5) = (v9 & 0x40) == 0;
    if ((has & 0x40) != 0)
    {
      if ((v9 & 0x40) == 0 || self->_btmEssTerminationIncluded != *(equal + 9))
      {
        goto LABEL_79;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_oui hash];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    v6 = 2654435761 * self->_environmentType;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_categoryCode;
      if ((has & 2) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((has & 2) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_actionCode;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_dialogToken;
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
    v10 = 2654435761 * self->_status;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_frameType;
    if ((has & 0x20) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_btmDisassociationTimeout;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_btmValidityInterval;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_btmTerminationDuration;
    if ((has & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_btmHasPreferredCandidateList;
    if ((has & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = 0;
  if ((has & 4) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_btmAbridged;
    if ((has & 0x10) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_btmDisassociationImminent;
    if ((has & 8) != 0)
    {
      goto LABEL_17;
    }

LABEL_31:
    v18 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_32:
    v19 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

LABEL_30:
  v17 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  v18 = 2654435761 * self->_btmBssTerminationIncluded;
  if ((has & 0x40) == 0)
  {
    goto LABEL_32;
  }

LABEL_18:
  v19 = 2654435761 * self->_btmEssTerminationIncluded;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 42))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 9))
  {
    [(AWDWiFiActionFrameEvent *)self setOui:?];
  }

  v5 = *(from + 42);
  if ((v5 & 0x1000) != 0)
  {
    self->_environmentType = *(from + 15);
    *&self->_has |= 0x1000u;
    v5 = *(from + 42);
    if ((v5 & 0x400) == 0)
    {
LABEL_7:
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((*(from + 42) & 0x400) == 0)
  {
    goto LABEL_7;
  }

  self->_categoryCode = *(from + 13);
  *&self->_has |= 0x400u;
  v5 = *(from + 42);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_actionCode = *(from + 4);
  *&self->_has |= 2u;
  v5 = *(from + 42);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_dialogToken = *(from + 14);
  *&self->_has |= 0x800u;
  v5 = *(from + 42);
  if ((v5 & 0x4000) == 0)
  {
LABEL_10:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_status = *(from + 20);
  *&self->_has |= 0x4000u;
  v5 = *(from + 42);
  if ((v5 & 0x2000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_frameType = *(from + 16);
  *&self->_has |= 0x2000u;
  v5 = *(from + 42);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_btmDisassociationTimeout = *(from + 8);
  *&self->_has |= 0x20u;
  v5 = *(from + 42);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_btmValidityInterval = *(from + 12);
  *&self->_has |= 0x200u;
  v5 = *(from + 42);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_btmTerminationDuration = *(from + 11);
  *&self->_has |= 0x100u;
  v5 = *(from + 42);
  if ((v5 & 0x80) == 0)
  {
LABEL_15:
    if ((v5 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_btmHasPreferredCandidateList = *(from + 10);
  *&self->_has |= 0x80u;
  v5 = *(from + 42);
  if ((v5 & 4) == 0)
  {
LABEL_16:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_btmAbridged = *(from + 5);
  *&self->_has |= 4u;
  v5 = *(from + 42);
  if ((v5 & 0x10) == 0)
  {
LABEL_17:
    if ((v5 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_btmDisassociationImminent = *(from + 7);
  *&self->_has |= 0x10u;
  v5 = *(from + 42);
  if ((v5 & 8) == 0)
  {
LABEL_18:
    if ((v5 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_33:
  self->_btmBssTerminationIncluded = *(from + 6);
  *&self->_has |= 8u;
  if ((*(from + 42) & 0x40) == 0)
  {
    return;
  }

LABEL_19:
  self->_btmEssTerminationIncluded = *(from + 9);
  *&self->_has |= 0x40u;
}

@end