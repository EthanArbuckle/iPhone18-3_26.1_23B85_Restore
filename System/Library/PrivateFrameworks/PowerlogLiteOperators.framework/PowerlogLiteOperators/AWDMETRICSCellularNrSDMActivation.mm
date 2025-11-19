@interface AWDMETRICSCellularNrSDMActivation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCurrentRat:(id)a3;
- (int)StringAsDeployment:(id)a3;
- (int)StringAsFr:(id)a3;
- (int)StringAsNewState:(id)a3;
- (int)StringAsPrevRat:(id)a3;
- (int)StringAsPrevTriggerCause:(id)a3;
- (int)StringAsSaVerdict:(id)a3;
- (int)StringAsTriggerCause:(id)a3;
- (int)currentRat;
- (int)deployment;
- (int)fr;
- (int)newState;
- (int)prevRat;
- (int)prevTriggerCause;
- (int)saVerdict;
- (int)triggerCause;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasApNrRecomm:(BOOL)a3;
- (void)setHasApNrRecommConfFactor:(BOOL)a3;
- (void)setHasCurrentRat:(BOOL)a3;
- (void)setHasDeployment:(BOOL)a3;
- (void)setHasDurationInPrevState:(BOOL)a3;
- (void)setHasFr1MeasDisabled:(BOOL)a3;
- (void)setHasFr2MeasDisabled:(BOOL)a3;
- (void)setHasFr:(BOOL)a3;
- (void)setHasNewState:(BOOL)a3;
- (void)setHasPrevRat:(BOOL)a3;
- (void)setHasPrevTriggerCause:(BOOL)a3;
- (void)setHasSaVerdict:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTriggerCause:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSCellularNrSDMActivation

- (int)deployment
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_deployment;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeployment:(BOOL)a3
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

- (int)StringAsDeployment:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DEPLOYMENT_SA"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DEPLOYMENT_NSA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DEPLOYMENT_NRDC"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasFr1MeasDisabled:(BOOL)a3
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

- (void)setHasFr2MeasDisabled:(BOOL)a3
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

- (int)triggerCause
{
  if ((*&self->_has & 0x400) != 0)
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
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
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

- (int)prevTriggerCause
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_prevTriggerCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPrevTriggerCause:(BOOL)a3
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

- (int)StringAsPrevTriggerCause:(id)a3
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

- (void)setHasApNrRecomm:(BOOL)a3
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

- (void)setHasApNrRecommConfFactor:(BOOL)a3
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

- (void)setHasDurationInPrevState:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (int)fr
{
  if ((*&self->_has & 0x10) != 0)
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
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

- (int)prevRat
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_prevRat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPrevRat:(BOOL)a3
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

- (int)StringAsPrevRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WCDMA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ENDC_SUB6"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ENDC_MMW"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NR_SA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"GSM"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CDMA"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"EVDO"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ONEXSRLTE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ONEXHYBRID"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"NRDC_SUB6"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"NRDC_MMW"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"MAX"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)currentRat
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_currentRat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCurrentRat:(BOOL)a3
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

- (int)StringAsCurrentRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WCDMA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ENDC_SUB6"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ENDC_MMW"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NR_SA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"GSM"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CDMA"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"EVDO"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ONEXSRLTE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ONEXHYBRID"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"NRDC_SUB6"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"NRDC_MMW"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"MAX"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)newState
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_newState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNewState:(BOOL)a3
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

- (int)StringAsNewState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SDM_DISABLE_SA"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SDM_ENABLE_SA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SDM_UNKNOWN_SA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SDM_DISABLE_NR"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SDM_DISABLE_FR1"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SDM_DISABLE_FR2"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SDM_ENABLE_NR"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SDM_UNKNOWN_STATE"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)saVerdict
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_saVerdict;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSaVerdict:(BOOL)a3
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

- (int)StringAsSaVerdict:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DISABLEMENT_WITH_RAT_CHANGE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DISABLEMENT_WITHOUT_RAT_CHANGE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DISABLEMENT_NOT_RELEVANT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ENABLEMENT_WITH_RAT_CHANGE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ENABLEMENT_WITHOUT_RAT_CHANGE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ENABLEMENT_NOT_RELEVANT"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 6;
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
  v8.super_class = AWDMETRICSCellularNrSDMActivation;
  v4 = [(AWDMETRICSCellularNrSDMActivation *)&v8 description];
  v5 = [(AWDMETRICSCellularNrSDMActivation *)self dictionaryRepresentation];
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  deployment = self->_deployment;
  if (deployment >= 3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_deployment];
  }

  else
  {
    v7 = off_2782593F0[deployment];
  }

  [v3 setObject:v7 forKey:@"deployment"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_4:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_fr1MeasDisabled];
  [v3 setObject:v8 forKey:@"fr1_meas_disabled"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_fr2MeasDisabled];
  [v3 setObject:v9 forKey:@"fr2_meas_disabled"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_24:
  triggerCause = self->_triggerCause;
  if (triggerCause >= 0x20)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_triggerCause];
  }

  else
  {
    v11 = off_278259408[triggerCause];
  }

  [v3 setObject:v11 forKey:@"trigger_cause"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_28:
  prevTriggerCause = self->_prevTriggerCause;
  if (prevTriggerCause >= 0x20)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevTriggerCause];
  }

  else
  {
    v13 = off_278259408[prevTriggerCause];
  }

  [v3 setObject:v13 forKey:@"prev_trigger_cause"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_apNrRecomm];
  [v3 setObject:v14 forKey:@"ap_nr_recomm"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_apNrRecommConfFactor];
  [v3 setObject:v15 forKey:@"ap_nr_recomm_conf_factor"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationInPrevState];
  [v3 setObject:v16 forKey:@"duration_in_prev_state"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v17 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_36:
  fr = self->_fr;
  if (fr >= 3)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fr];
  }

  else
  {
    v19 = off_278259508[fr];
  }

  [v3 setObject:v19 forKey:@"fr"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_40:
  prevRat = self->_prevRat;
  if (prevRat >= 0xE)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevRat];
  }

  else
  {
    v21 = off_278259520[prevRat];
  }

  [v3 setObject:v21 forKey:@"prev_rat"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_44:
  currentRat = self->_currentRat;
  if (currentRat >= 0xE)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_currentRat];
  }

  else
  {
    v23 = off_278259520[currentRat];
  }

  [v3 setObject:v23 forKey:@"current_rat"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_48:
  newState = self->_newState;
  if (newState >= 8)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_newState];
  }

  else
  {
    v25 = off_278259590[newState];
  }

  [v3 setObject:v25 forKey:@"new_state"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_52:
    saVerdict = self->_saVerdict;
    if (saVerdict >= 7)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_saVerdict];
    }

    else
    {
      v27 = off_2782595D0[saVerdict];
    }

    [v3 setObject:v27 forKey:@"sa_verdict"];
  }

LABEL_56:
  v28 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_3:
      if ((has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  fr1MeasDisabled = self->_fr1MeasDisabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  fr2MeasDisabled = self->_fr2MeasDisabled;
  PBDataWriterWriteBOOLField();
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
  triggerCause = self->_triggerCause;
  PBDataWriterWriteInt32Field();
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
  apNrRecomm = self->_apNrRecomm;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  apNrRecommConfFactor = self->_apNrRecommConfFactor;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  durationInPrevState = self->_durationInPrevState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  fr = self->_fr;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  deployment = self->_deployment;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  prevRat = self->_prevRat;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  currentRat = self->_currentRat;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  prevTriggerCause = self->_prevTriggerCause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  newState = self->_newState;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_16:
    saVerdict = self->_saVerdict;
    PBDataWriterWriteInt32Field();
  }

LABEL_17:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 30) |= 1u;
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_3:
      if ((has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 58) = self->_fr1MeasDisabled;
  *(v4 + 30) |= 0x2000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 59) = self->_fr2MeasDisabled;
  *(v4 + 30) |= 0x4000u;
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
  *(v4 + 13) = self->_triggerCause;
  *(v4 + 30) |= 0x400u;
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
  *(v4 + 56) = self->_apNrRecomm;
  *(v4 + 30) |= 0x800u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 57) = self->_apNrRecommConfFactor;
  *(v4 + 30) |= 0x1000u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 6) = self->_durationInPrevState;
  *(v4 + 30) |= 8u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 12) = self->_subsId;
  *(v4 + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 7) = self->_fr;
  *(v4 + 30) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 5) = self->_deployment;
  *(v4 + 30) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 9) = self->_prevRat;
  *(v4 + 30) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 4) = self->_currentRat;
  *(v4 + 30) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 10) = self->_prevTriggerCause;
  *(v4 + 30) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  *(v4 + 8) = self->_newState;
  *(v4 + 30) |= 0x20u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_16:
    *(v4 + 11) = self->_saVerdict;
    *(v4 + 30) |= 0x100u;
  }

LABEL_17:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 30) |= 1u;
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_3:
      if ((has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 58) = self->_fr1MeasDisabled;
  *(result + 30) |= 0x2000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 59) = self->_fr2MeasDisabled;
  *(result + 30) |= 0x4000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 13) = self->_triggerCause;
  *(result + 30) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 56) = self->_apNrRecomm;
  *(result + 30) |= 0x800u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 57) = self->_apNrRecommConfFactor;
  *(result + 30) |= 0x1000u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 6) = self->_durationInPrevState;
  *(result + 30) |= 8u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 12) = self->_subsId;
  *(result + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 7) = self->_fr;
  *(result + 30) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 5) = self->_deployment;
  *(result + 30) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 9) = self->_prevRat;
  *(result + 30) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 4) = self->_currentRat;
  *(result + 30) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 10) = self->_prevTriggerCause;
  *(result + 30) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_31:
  *(result + 8) = self->_newState;
  *(result + 30) |= 0x20u;
  if ((*&self->_has & 0x100) == 0)
  {
    return result;
  }

LABEL_16:
  *(result + 11) = self->_saVerdict;
  *(result + 30) |= 0x100u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_89;
  }

  has = self->_has;
  v6 = *(v4 + 30);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_89;
    }
  }

  else if (v6)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 30) & 0x2000) == 0)
    {
      goto LABEL_89;
    }

    v7 = *(v4 + 58);
    if (self->_fr1MeasDisabled)
    {
      if ((*(v4 + 58) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(v4 + 58))
    {
      goto LABEL_89;
    }
  }

  else if ((*(v4 + 30) & 0x2000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(v4 + 30) & 0x4000) == 0)
    {
      goto LABEL_89;
    }

    v8 = *(v4 + 59);
    if (self->_fr2MeasDisabled)
    {
      if ((*(v4 + 59) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(v4 + 59))
    {
      goto LABEL_89;
    }
  }

  else if ((*(v4 + 30) & 0x4000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 30) & 0x400) == 0 || self->_triggerCause != *(v4 + 13))
    {
      goto LABEL_89;
    }
  }

  else if ((*(v4 + 30) & 0x400) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 30) & 0x800) == 0)
    {
      goto LABEL_89;
    }

    v9 = *(v4 + 56);
    if (self->_apNrRecomm)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(v4 + 56))
    {
      goto LABEL_89;
    }
  }

  else if ((*(v4 + 30) & 0x800) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x1000) == 0)
  {
    if ((*(v4 + 30) & 0x1000) == 0)
    {
      goto LABEL_30;
    }

LABEL_89:
    v11 = 0;
    goto LABEL_90;
  }

  if ((*(v4 + 30) & 0x1000) == 0)
  {
    goto LABEL_89;
  }

  v10 = *(v4 + 57);
  if (self->_apNrRecommConfFactor)
  {
    if ((*(v4 + 57) & 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (*(v4 + 57))
  {
    goto LABEL_89;
  }

LABEL_30:
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_durationInPrevState != *(v4 + 6))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 30) & 0x200) == 0 || self->_subsId != *(v4 + 12))
    {
      goto LABEL_89;
    }
  }

  else if ((*(v4 + 30) & 0x200) != 0)
  {
    goto LABEL_89;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_fr != *(v4 + 7))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_89;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_deployment != *(v4 + 5))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_89;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_prevRat != *(v4 + 9))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_89;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_currentRat != *(v4 + 4))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_89;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_prevTriggerCause != *(v4 + 10))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_89;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_newState != *(v4 + 8))
    {
      goto LABEL_89;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 30) & 0x100) == 0 || self->_saVerdict != *(v4 + 11))
    {
      goto LABEL_89;
    }

    v11 = 1;
  }

  else
  {
    v11 = (v6 & 0x100) == 0;
  }

LABEL_90:

  return v11;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x2000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_fr1MeasDisabled;
      if ((*&self->_has & 0x4000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_fr2MeasDisabled;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_triggerCause;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_apNrRecomm;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_apNrRecommConfFactor;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_durationInPrevState;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_subsId;
    if ((has & 0x10) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_fr;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((has & 4) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_deployment;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_prevRat;
    if ((has & 2) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((has & 2) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_currentRat;
    if ((has & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_prevTriggerCause;
    if ((has & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v17 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
  }

LABEL_29:
  v15 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_newState;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v17 = 2654435761 * self->_saVerdict;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 30);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 30);
    if ((v5 & 0x2000) == 0)
    {
LABEL_3:
      if ((v5 & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*(v4 + 30) & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  self->_fr1MeasDisabled = *(v4 + 58);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x4000) == 0)
  {
LABEL_4:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_fr2MeasDisabled = *(v4 + 59);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x400) == 0)
  {
LABEL_5:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_triggerCause = *(v4 + 13);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 30);
  if ((v5 & 0x800) == 0)
  {
LABEL_6:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_apNrRecomm = *(v4 + 56);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 30);
  if ((v5 & 0x1000) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_apNrRecommConfFactor = *(v4 + 57);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 30);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_durationInPrevState = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_subsId = *(v4 + 12);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_fr = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 30);
  if ((v5 & 4) == 0)
  {
LABEL_11:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_deployment = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_12:
    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_prevRat = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 30);
  if ((v5 & 2) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_currentRat = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_prevTriggerCause = *(v4 + 10);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_15:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  self->_newState = *(v4 + 8);
  *&self->_has |= 0x20u;
  if ((*(v4 + 30) & 0x100) != 0)
  {
LABEL_16:
    self->_saVerdict = *(v4 + 11);
    *&self->_has |= 0x100u;
  }

LABEL_17:
}

@end