@interface AWDWADiagnosisActionAssociationDifferences
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventType:(id)a3;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAdditionalInfo:(BOOL)a3;
- (void)setHasChangedChannel:(BOOL)a3;
- (void)setHasChangedDNSPrimary:(BOOL)a3;
- (void)setHasChangedDNSSecondary:(BOOL)a3;
- (void)setHasChangedMAC:(BOOL)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)setHasNewBSSID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWADiagnosisActionAssociationDifferences

- (void)setHasNewBSSID:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasChangedChannel:(BOOL)a3
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

- (void)setHasChangedDNSPrimary:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasChangedDNSSecondary:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasChangedMAC:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)eventType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEventType:(BOOL)a3
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

- (int)StringAsEventType:(id)a3
{
  if ([a3 isEqualToString:@"kDiagnosisEventTypeMainDpsNotification"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kDiagnosisEventTypePowerToggled"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"kDiagnosisEventTypeControlCenterToggled"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"kDiagnosisEventTypeLinkUp"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"kDiagnosisEventTypeRoamed"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"kDiagnosisEventTypeIPConfigured"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"kDiagnosisEventTypeLinkDown"])
  {
    return 6;
  }

  return 0;
}

- (void)setHasAdditionalInfo:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWADiagnosisActionAssociationDifferences;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWADiagnosisActionAssociationDifferences description](&v3, sel_description), -[AWDWADiagnosisActionAssociationDifferences dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has < 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_newBSSID), @"newBSSID"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_changedChannel), @"changedChannel"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_changedDNSPrimary), @"changedDNSPrimary"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_changedDNSSecondary), @"changedDNSSecondary"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_changedMAC), @"changedMAC"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    eventType = self->_eventType;
    if (eventType >= 7)
    {
      v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v7 = off_29EE33120[eventType];
    }

    [v3 setObject:v7 forKey:@"eventType"];
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }

    return v3;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 2) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_additionalInfo), @"additionalInfo"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  newBSSID = self->_newBSSID;
  PBDataWriterWriteBOOLField();
  *&has = self->_has;
  if ((*&has & 8) != 0)
  {
LABEL_3:
    changedChannel = self->_changedChannel;
    PBDataWriterWriteBOOLField();
    *&has = self->_has;
  }

LABEL_4:
  if ((*&has & 0x10) != 0)
  {
    changedDNSPrimary = self->_changedDNSPrimary;
    PBDataWriterWriteBOOLField();
    *&has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_6:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_6;
  }

  changedDNSSecondary = self->_changedDNSSecondary;
  PBDataWriterWriteBOOLField();
  *&has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  changedMAC = self->_changedMAC;
  PBDataWriterWriteBOOLField();
  *&has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    eventType = self->_eventType;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_14:
  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  *&has = self->_has;
  if ((*&has & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((*&has & 2) == 0)
  {
    return;
  }

LABEL_16:
  additionalInfo = self->_additionalInfo;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *(a3 + 28) = self->_newBSSID;
  *(a3 + 32) |= 0x80u;
  *&has = self->_has;
  if ((*&has & 8) != 0)
  {
LABEL_3:
    *(a3 + 24) = self->_changedChannel;
    *(a3 + 32) |= 8u;
    *&has = self->_has;
  }

LABEL_4:
  if ((*&has & 0x10) != 0)
  {
    *(a3 + 25) = self->_changedDNSPrimary;
    *(a3 + 32) |= 0x10u;
    *&has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_6:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_6;
  }

  *(a3 + 26) = self->_changedDNSSecondary;
  *(a3 + 32) |= 0x20u;
  *&has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a3 + 27) = self->_changedMAC;
  *(a3 + 32) |= 0x40u;
  *&has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 1) = self->_timestamp;
  *(a3 + 32) |= 1u;
  *&has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      return;
    }

LABEL_16:
    *(a3 + 4) = self->_additionalInfo;
    *(a3 + 32) |= 2u;
    return;
  }

LABEL_15:
  *(a3 + 5) = self->_eventType;
  *(a3 + 32) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_16;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has < 0)
  {
    *(result + 28) = self->_newBSSID;
    *(result + 32) |= 0x80u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 24) = self->_changedChannel;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 25) = self->_changedDNSPrimary;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 26) = self->_changedDNSSecondary;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 27) = self->_changedMAC;
  *(result + 32) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 1) = self->_timestamp;
  *(result + 32) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 5) = self->_eventType;
  *(result + 32) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 4) = self->_additionalInfo;
  *(result + 32) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  if ((*&has & 0x80000000) != 0)
  {
    if ((*(a3 + 32) & 0x80) == 0)
    {
      goto LABEL_56;
    }

    v7 = *(a3 + 28);
    if (self->_newBSSID)
    {
      if ((*(a3 + 28) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(a3 + 28))
    {
      goto LABEL_56;
    }
  }

  else if ((*(a3 + 32) & 0x80) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 8) != 0)
  {
    if ((*(a3 + 32) & 8) == 0)
    {
      goto LABEL_56;
    }

    v8 = *(a3 + 24);
    if (self->_changedChannel)
    {
      if ((*(a3 + 24) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(a3 + 24))
    {
      goto LABEL_56;
    }
  }

  else if ((*(a3 + 32) & 8) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((*(a3 + 32) & 0x10) == 0)
    {
      goto LABEL_56;
    }

    v9 = *(a3 + 25);
    if (self->_changedDNSPrimary)
    {
      if ((*(a3 + 25) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(a3 + 25))
    {
      goto LABEL_56;
    }
  }

  else if ((*(a3 + 32) & 0x10) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((*(a3 + 32) & 0x20) == 0)
    {
      goto LABEL_56;
    }

    v10 = *(a3 + 26);
    if (self->_changedDNSSecondary)
    {
      if ((*(a3 + 26) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(a3 + 26))
    {
      goto LABEL_56;
    }
  }

  else if ((*(a3 + 32) & 0x20) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((*(a3 + 32) & 0x40) != 0)
    {
      v11 = *(a3 + 27);
      if (self->_changedMAC)
      {
        if ((*(a3 + 27) & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      else if (*(a3 + 27))
      {
        goto LABEL_56;
      }

      goto LABEL_12;
    }

LABEL_56:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 32) & 0x40) != 0)
  {
    goto LABEL_56;
  }

LABEL_12:
  if (*&has)
  {
    if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
    {
      goto LABEL_56;
    }
  }

  else if (*(a3 + 32))
  {
    goto LABEL_56;
  }

  if ((*&has & 4) != 0)
  {
    if ((*(a3 + 32) & 4) == 0 || self->_eventType != *(a3 + 5))
    {
      goto LABEL_56;
    }
  }

  else if ((*(a3 + 32) & 4) != 0)
  {
    goto LABEL_56;
  }

  LOBYTE(v5) = (*(a3 + 32) & 2) == 0;
  if ((*&has & 2) != 0)
  {
    if ((*(a3 + 32) & 2) == 0 || self->_additionalInfo != *(a3 + 4))
    {
      goto LABEL_56;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x80000000) != 0)
  {
    v2 = 2654435761 * self->_newBSSID;
    if ((*&self->_has & 8) == 0)
    {
LABEL_3:
      v3 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 2654435761 * self->_changedChannel;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_changedDNSPrimary;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_changedDNSSecondary;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_changedMAC;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if (*&self->_has)
  {
LABEL_7:
    v7 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_eventType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_additionalInfo;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 32);
  if ((v3 & 0x80000000) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  self->_newBSSID = *(a3 + 28);
  *&self->_has |= 0x80u;
  LOBYTE(v3) = *(a3 + 32);
  if ((v3 & 8) != 0)
  {
LABEL_3:
    self->_changedChannel = *(a3 + 24);
    *&self->_has |= 8u;
    LOBYTE(v3) = *(a3 + 32);
  }

LABEL_4:
  if ((v3 & 0x10) != 0)
  {
    self->_changedDNSPrimary = *(a3 + 25);
    *&self->_has |= 0x10u;
    LOBYTE(v3) = *(a3 + 32);
    if ((v3 & 0x20) == 0)
    {
LABEL_6:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_6;
  }

  self->_changedDNSSecondary = *(a3 + 26);
  *&self->_has |= 0x20u;
  LOBYTE(v3) = *(a3 + 32);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_changedMAC = *(a3 + 27);
  *&self->_has |= 0x40u;
  LOBYTE(v3) = *(a3 + 32);
  if ((v3 & 1) == 0)
  {
LABEL_8:
    if ((v3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_timestamp = *(a3 + 1);
  *&self->_has |= 1u;
  LOBYTE(v3) = *(a3 + 32);
  if ((v3 & 4) == 0)
  {
LABEL_9:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_16:
    self->_additionalInfo = *(a3 + 4);
    *&self->_has |= 2u;
    return;
  }

LABEL_15:
  self->_eventType = *(a3 + 5);
  *&self->_has |= 4u;
  if ((*(a3 + 32) & 2) != 0)
  {
    goto LABEL_16;
  }
}

@end