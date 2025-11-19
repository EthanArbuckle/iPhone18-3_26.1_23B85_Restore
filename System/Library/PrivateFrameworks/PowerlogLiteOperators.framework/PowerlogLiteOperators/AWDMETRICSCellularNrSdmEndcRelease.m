@interface AWDMETRICSCellularNrSdmEndcRelease
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFr:(id)a3;
- (int)StringAsTriggerCause:(id)a3;
- (int)fr;
- (int)triggerCause;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFr:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTriggerCause:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSCellularNrSdmEndcRelease

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

- (void)setHasTriggerCause:(BOOL)a3
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

- (int)StringAsTriggerCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_AP_SLEEP"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_CELLULAR_DATA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_WIFI_GOOD"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_VOIP_CALL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_COREMEDIA_STALL"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SCREEN_STATUS"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SYMPTOMS_RECOMM"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_UI_SWITCH"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_RLGS"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_PHS"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_AVS"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_LPM"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_VOLTE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_FR1_SCG_SNR"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_DCNR"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_FR1_SCG_RLGS"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_MT_DATA"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_FTV_DUP"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_DROP_NR_VOIP"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_DROP_NR_ULD"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_DROP_NR_ENH_BUFF"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_BWP_SWITCH_TMR"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_RLGS"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_HI_BW"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_WIFI_ASSOCIATED"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_BWP_SWITCH_TMR_SL"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_HI_BW_SL"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_RLGS_SL"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SADC_VONR_CON"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_SADC_THERMAL"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CAUSE_MAX"])
  {
    v4 = 31;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)a3
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

- (int)fr
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_fr;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFr:(BOOL)a3
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

- (int)StringAsFr:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUB6"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MMWAVE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"INVALID"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSCellularNrSdmEndcRelease;
  v4 = [(AWDMETRICSCellularNrSdmEndcRelease *)&v8 description];
  v5 = [(AWDMETRICSCellularNrSdmEndcRelease *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

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
      [v3 setObject:v8 forKey:@"subs_id"];

      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_16;
      }

LABEL_12:
      fr = self->_fr;
      if (fr >= 3)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fr];
      }

      else
      {
        v10 = off_2782597C8[fr];
      }

      [v3 setObject:v10 forKey:@"fr"];

      goto LABEL_16;
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
    v7 = off_2782596C8[triggerCause];
  }

  [v3 setObject:v7 forKey:@"trigger_cause"];

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

LABEL_16:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 28) |= 1u;
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

  *(v4 + 6) = self->_triggerCause;
  *(v4 + 28) |= 8u;
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
  *(v4 + 5) = self->_subsId;
  *(v4 + 28) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    *(v4 + 4) = self->_fr;
    *(v4 + 28) |= 2u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 28) & 8) == 0 || self->_triggerCause != *(v4 + 6))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 28) & 8) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_subsId != *(v4 + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_fr != *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
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

  else if ((*(v4 + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_triggerCause = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 28);
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
  self->_subsId = *(v4 + 5);
  *&self->_has |= 4u;
  if ((*(v4 + 28) & 2) != 0)
  {
LABEL_5:
    self->_fr = *(v4 + 4);
    *&self->_has |= 2u;
  }

LABEL_6:
}

@end