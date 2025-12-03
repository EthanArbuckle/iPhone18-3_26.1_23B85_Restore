@interface AWDMETRICSKCellularNrSdmEndcRelease
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFr:(id)fr;
- (int)StringAsTriggerCause:(id)cause;
- (int)fr;
- (int)triggerCause;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFr:(BOOL)fr;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasTriggerCause:(BOOL)cause;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularNrSdmEndcRelease

- (int)triggerCause
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_triggerCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTriggerCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsTriggerCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"SDM_TRIGGER_NONE"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_AP_SLEEP"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CELLULAR_DATA"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_WIFI_GOOD"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_VOIP_CALL"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_COREMEDIA_STALL"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_SCREEN_STATUS"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_SYMPTOMS_RECOMM"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_UI_SWITCH"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_BOTTLENECK"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_PHS"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_AVS"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_LPM"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_VOLTE"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_FR1_SCG_SNR"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_DCNR"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_SCG_BOTTLENECK"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_MT_DATA"])
  {
    v4 = 17;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_FTV_DUP"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_DROP_NR_VOIP"])
  {
    v4 = 19;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_DROP_NR_ULD"])
  {
    v4 = 20;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_DROP_NR_ENH_BUFF"])
  {
    v4 = 21;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_BWP_SWITCH_TMR"])
  {
    v4 = 22;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_LTE_BOTTLENECK"])
  {
    v4 = 23;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_HI_BW"])
  {
    v4 = 24;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_WIFI_ASSOCIATED"])
  {
    v4 = 25;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_BWP_SWITCH_TMR_SL"])
  {
    v4 = 26;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_HI_BW_SL"])
  {
    v4 = 27;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_BOTTLENECK_LTE_SL"])
  {
    v4 = 28;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_PARITY_MAX"])
  {
    v4 = 29;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CPMS_CLIENT_MITIGATION"])
  {
    v4 = 30;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_MAX"])
  {
    v4 = 31;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)fr
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_fr;
  }

  else
  {
    return 1;
  }
}

- (void)setHasFr:(BOOL)fr
{
  if (fr)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsFr:(id)fr
{
  frCopy = fr;
  if ([frCopy isEqualToString:@"POWERLOG_SUB6"])
  {
    v4 = 1;
  }

  else if ([frCopy isEqualToString:@"POWERLOG_MMWAVE"])
  {
    v4 = 2;
  }

  else if ([frCopy isEqualToString:@"POWERLOG_SUB6_MMWAVE"])
  {
    v4 = 3;
  }

  else if ([frCopy isEqualToString:@"POWERLOG_INVALID"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularNrSdmEndcRelease;
  v4 = [(AWDMETRICSKCellularNrSdmEndcRelease *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularNrSdmEndcRelease *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
      [dictionary setObject:v8 forKey:@"subs_id"];

      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_23;
      }

LABEL_12:
      fr = self->_fr;
      if (fr > 2)
      {
        if (fr == 3)
        {
          v10 = @"POWERLOG_SUB6_MMWAVE";
          goto LABEL_22;
        }

        if (fr == 255)
        {
          v10 = @"POWERLOG_INVALID";
          goto LABEL_22;
        }
      }

      else
      {
        if (fr == 1)
        {
          v10 = @"POWERLOG_SUB6";
          goto LABEL_22;
        }

        if (fr == 2)
        {
          v10 = @"POWERLOG_MMWAVE";
LABEL_22:
          [dictionary setObject:v10 forKey:@"fr"];

          goto LABEL_23;
        }
      }

      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fr];
      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  triggerCause = self->_triggerCause;
  if (triggerCause >= 0x20)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_triggerCause];
  }

  else
  {
    v7 = off_279A0F200[triggerCause];
  }

  [dictionary setObject:v7 forKey:@"trigger_cause"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_23:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
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

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  triggerCause = self->_triggerCause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    fr = self->_fr;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 28) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 6) = self->_triggerCause;
  *(toCopy + 28) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(toCopy + 5) = self->_subsId;
  *(toCopy + 28) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    *(toCopy + 4) = self->_fr;
    *(toCopy + 28) |= 2u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_triggerCause;
  *(result + 28) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 5) = self->_subsId;
  *(result + 28) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 4) = self->_fr;
  *(result + 28) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 28) & 8) == 0 || self->_triggerCause != *(equalCopy + 6))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 28) & 8) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_subsId != *(equalCopy + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_fr != *(equalCopy + 4))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_triggerCause;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_subsId;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_fr;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_triggerCause = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_subsId = *(fromCopy + 5);
  *&self->_has |= 4u;
  if ((*(fromCopy + 28) & 2) != 0)
  {
LABEL_5:
    self->_fr = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

LABEL_6:
}

@end