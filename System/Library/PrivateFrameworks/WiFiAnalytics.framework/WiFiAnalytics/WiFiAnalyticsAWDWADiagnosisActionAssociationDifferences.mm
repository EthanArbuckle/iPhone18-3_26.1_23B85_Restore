@interface WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventType:(id)type;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAdditionalInfo:(BOOL)info;
- (void)setHasChangedChannel:(BOOL)channel;
- (void)setHasChangedDNSPrimary:(BOOL)primary;
- (void)setHasChangedDNSSecondary:(BOOL)secondary;
- (void)setHasChangedMAC:(BOOL)c;
- (void)setHasEventType:(BOOL)type;
- (void)setHasNewBSSID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences

- (void)setHasNewBSSID:(BOOL)d
{
  if (d)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasChangedChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasChangedDNSPrimary:(BOOL)primary
{
  if (primary)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasChangedDNSSecondary:(BOOL)secondary
{
  if (secondary)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasChangedMAC:(BOOL)c
{
  if (c)
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

- (void)setHasEventType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsEventType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"kDiagnosisEventTypeMainDpsNotification"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"kDiagnosisEventTypePowerToggled"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"kDiagnosisEventTypeControlCenterToggled"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"kDiagnosisEventTypeLinkUp"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"kDiagnosisEventTypeRoamed"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"kDiagnosisEventTypeIPConfigured"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"kDiagnosisEventTypeLinkDown"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasAdditionalInfo:(BOOL)info
{
  if (info)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences;
  v4 = [(WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has < 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_newBSSID];
    [dictionary setObject:v7 forKey:@"newBSSID"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_changedChannel];
  [dictionary setObject:v8 forKey:@"changedChannel"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_changedDNSPrimary];
  [dictionary setObject:v9 forKey:@"changedDNSPrimary"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_changedDNSSecondary];
  [dictionary setObject:v10 forKey:@"changedDNSSecondary"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_changedMAC];
  [dictionary setObject:v11 forKey:@"changedMAC"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
  [dictionary setObject:v12 forKey:@"timestamp"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  eventType = self->_eventType;
  if (eventType >= 7)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
  }

  else
  {
    v14 = off_1E830F4C8[eventType];
  }

  [dictionary setObject:v14 forKey:@"eventType"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_additionalInfo];
  [dictionary setObject:v5 forKey:@"additionalInfo"];

LABEL_10:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has < 0)
  {
    newBSSID = self->_newBSSID;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  changedChannel = self->_changedChannel;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  changedDNSPrimary = self->_changedDNSPrimary;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  changedDNSSecondary = self->_changedDNSSecondary;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  changedMAC = self->_changedMAC;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  eventType = self->_eventType;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_9:
    additionalInfo = self->_additionalInfo;
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has < 0)
  {
    toCopy[28] = self->_newBSSID;
    toCopy[32] |= 0x80u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  toCopy[24] = self->_changedChannel;
  toCopy[32] |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  toCopy[25] = self->_changedDNSPrimary;
  toCopy[32] |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[26] = self->_changedDNSSecondary;
  toCopy[32] |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  toCopy[27] = self->_changedMAC;
  toCopy[32] |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(toCopy + 1) = self->_timestamp;
  toCopy[32] |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  *(toCopy + 5) = self->_eventType;
  toCopy[32] |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_9:
    *(toCopy + 4) = self->_additionalInfo;
    toCopy[32] |= 2u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  has = self->_has;
  if ((*&has & 0x80000000) != 0)
  {
    if ((*(equalCopy + 32) & 0x80) == 0)
    {
      goto LABEL_56;
    }

    v6 = *(equalCopy + 28);
    if (self->_newBSSID)
    {
      if ((*(equalCopy + 28) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(equalCopy + 28))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 32) & 0x80) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) == 0)
    {
      goto LABEL_56;
    }

    v7 = *(equalCopy + 24);
    if (self->_changedChannel)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 32) & 8) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((*(equalCopy + 32) & 0x10) == 0)
    {
      goto LABEL_56;
    }

    v8 = *(equalCopy + 25);
    if (self->_changedDNSPrimary)
    {
      if ((*(equalCopy + 25) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(equalCopy + 25))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 32) & 0x10) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((*(equalCopy + 32) & 0x20) == 0)
    {
      goto LABEL_56;
    }

    v9 = *(equalCopy + 26);
    if (self->_changedDNSSecondary)
    {
      if ((*(equalCopy + 26) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(equalCopy + 26))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 32) & 0x20) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x40) == 0)
  {
    if ((*(equalCopy + 32) & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_56:
    v11 = 0;
    goto LABEL_57;
  }

  if ((*(equalCopy + 32) & 0x40) == 0)
  {
    goto LABEL_56;
  }

  v10 = *(equalCopy + 27);
  if (self->_changedMAC)
  {
    if ((*(equalCopy + 27) & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (*(equalCopy + 27))
  {
    goto LABEL_56;
  }

LABEL_12:
  if (*&has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_56;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_56;
  }

  if ((*&has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_eventType != *(equalCopy + 5))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_56;
  }

  v11 = (*(equalCopy + 32) & 2) == 0;
  if ((*&has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_additionalInfo != *(equalCopy + 4))
    {
      goto LABEL_56;
    }

    v11 = 1;
  }

LABEL_57:

  return v11;
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if (v5 < 0)
  {
    self->_newBSSID = *(fromCopy + 28);
    *&self->_has |= 0x80u;
    v5 = *(fromCopy + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(fromCopy + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_changedChannel = *(fromCopy + 24);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_changedDNSPrimary = *(fromCopy + 25);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_changedDNSSecondary = *(fromCopy + 26);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_changedMAC = *(fromCopy + 27);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 32);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_timestamp = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 32);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  self->_eventType = *(fromCopy + 5);
  *&self->_has |= 4u;
  if ((*(fromCopy + 32) & 2) != 0)
  {
LABEL_9:
    self->_additionalInfo = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

LABEL_10:
}

@end