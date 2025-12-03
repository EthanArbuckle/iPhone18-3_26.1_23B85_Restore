@interface AWDMETRICSCellularNrSDMActivation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCurrentRat:(id)rat;
- (int)StringAsDeployment:(id)deployment;
- (int)StringAsFr:(id)fr;
- (int)StringAsNewState:(id)state;
- (int)StringAsPrevRat:(id)rat;
- (int)StringAsPrevTriggerCause:(id)cause;
- (int)StringAsSaVerdict:(id)verdict;
- (int)StringAsTriggerCause:(id)cause;
- (int)currentRat;
- (int)deployment;
- (int)fr;
- (int)newState;
- (int)prevRat;
- (int)prevTriggerCause;
- (int)saVerdict;
- (int)triggerCause;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasApNrRecomm:(BOOL)recomm;
- (void)setHasApNrRecommConfFactor:(BOOL)factor;
- (void)setHasCurrentRat:(BOOL)rat;
- (void)setHasDeployment:(BOOL)deployment;
- (void)setHasDurationInPrevState:(BOOL)state;
- (void)setHasFr1MeasDisabled:(BOOL)disabled;
- (void)setHasFr2MeasDisabled:(BOOL)disabled;
- (void)setHasFr:(BOOL)fr;
- (void)setHasNewState:(BOOL)state;
- (void)setHasPrevRat:(BOOL)rat;
- (void)setHasPrevTriggerCause:(BOOL)cause;
- (void)setHasSaVerdict:(BOOL)verdict;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasTriggerCause:(BOOL)cause;
- (void)writeTo:(id)to;
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

- (void)setHasDeployment:(BOOL)deployment
{
  if (deployment)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsDeployment:(id)deployment
{
  deploymentCopy = deployment;
  if ([deploymentCopy isEqualToString:@"DEPLOYMENT_SA"])
  {
    v4 = 0;
  }

  else if ([deploymentCopy isEqualToString:@"DEPLOYMENT_NSA"])
  {
    v4 = 1;
  }

  else if ([deploymentCopy isEqualToString:@"DEPLOYMENT_NRDC"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasFr1MeasDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasFr2MeasDisabled:(BOOL)disabled
{
  if (disabled)
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

- (void)setHasTriggerCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)StringAsTriggerCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_NONE"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_AP_SLEEP"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_CELLULAR_DATA"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_WIFI_GOOD"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_VOIP_CALL"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_COREMEDIA_STALL"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SCREEN_STATUS"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SYMPTOMS_RECOMM"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_UI_SWITCH"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_RLGS"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_PHS"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_AVS"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_LPM"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_VOLTE"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_FR1_SCG_SNR"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_DCNR"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_FR1_SCG_RLGS"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_MT_DATA"])
  {
    v4 = 17;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_FTV_DUP"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_DROP_NR_VOIP"])
  {
    v4 = 19;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_DROP_NR_ULD"])
  {
    v4 = 20;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_DROP_NR_ENH_BUFF"])
  {
    v4 = 21;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_BWP_SWITCH_TMR"])
  {
    v4 = 22;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_RLGS"])
  {
    v4 = 23;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_HI_BW"])
  {
    v4 = 24;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_WIFI_ASSOCIATED"])
  {
    v4 = 25;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_BWP_SWITCH_TMR_SL"])
  {
    v4 = 26;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_HI_BW_SL"])
  {
    v4 = 27;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_RLGS_SL"])
  {
    v4 = 28;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SADC_VONR_CON"])
  {
    v4 = 29;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SADC_THERMAL"])
  {
    v4 = 30;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_MAX"])
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

- (void)setHasPrevTriggerCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)StringAsPrevTriggerCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_NONE"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_AP_SLEEP"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_CELLULAR_DATA"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_WIFI_GOOD"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_VOIP_CALL"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_COREMEDIA_STALL"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SCREEN_STATUS"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SYMPTOMS_RECOMM"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_UI_SWITCH"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_RLGS"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_PHS"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_AVS"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_LPM"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_VOLTE"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_FR1_SCG_SNR"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_DCNR"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_FR1_SCG_RLGS"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_MT_DATA"])
  {
    v4 = 17;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_FTV_DUP"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_DROP_NR_VOIP"])
  {
    v4 = 19;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_DROP_NR_ULD"])
  {
    v4 = 20;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_DROP_NR_ENH_BUFF"])
  {
    v4 = 21;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_BWP_SWITCH_TMR"])
  {
    v4 = 22;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_RLGS"])
  {
    v4 = 23;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_HI_BW"])
  {
    v4 = 24;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_WIFI_ASSOCIATED"])
  {
    v4 = 25;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_BWP_SWITCH_TMR_SL"])
  {
    v4 = 26;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_HI_BW_SL"])
  {
    v4 = 27;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SA_UPGRADE_RLGS_SL"])
  {
    v4 = 28;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SADC_VONR_CON"])
  {
    v4 = 29;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_SADC_THERMAL"])
  {
    v4 = 30;
  }

  else if ([causeCopy isEqualToString:@"SDM_TRIGGER_CAUSE_MAX"])
  {
    v4 = 31;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasApNrRecomm:(BOOL)recomm
{
  if (recomm)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasApNrRecommConfFactor:(BOOL)factor
{
  if (factor)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasDurationInPrevState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
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

- (void)setHasFr:(BOOL)fr
{
  if (fr)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)StringAsFr:(id)fr
{
  frCopy = fr;
  if ([frCopy isEqualToString:@"SUB6"])
  {
    v4 = 0;
  }

  else if ([frCopy isEqualToString:@"MMWAVE"])
  {
    v4 = 1;
  }

  else if ([frCopy isEqualToString:@"INVALID"])
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

- (void)setHasPrevRat:(BOOL)rat
{
  if (rat)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)StringAsPrevRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([ratCopy isEqualToString:@"WCDMA"])
  {
    v4 = 1;
  }

  else if ([ratCopy isEqualToString:@"LTE"])
  {
    v4 = 2;
  }

  else if ([ratCopy isEqualToString:@"ENDC_SUB6"])
  {
    v4 = 3;
  }

  else if ([ratCopy isEqualToString:@"ENDC_MMW"])
  {
    v4 = 4;
  }

  else if ([ratCopy isEqualToString:@"NR_SA"])
  {
    v4 = 5;
  }

  else if ([ratCopy isEqualToString:@"GSM"])
  {
    v4 = 6;
  }

  else if ([ratCopy isEqualToString:@"CDMA"])
  {
    v4 = 7;
  }

  else if ([ratCopy isEqualToString:@"EVDO"])
  {
    v4 = 8;
  }

  else if ([ratCopy isEqualToString:@"ONEXSRLTE"])
  {
    v4 = 9;
  }

  else if ([ratCopy isEqualToString:@"ONEXHYBRID"])
  {
    v4 = 10;
  }

  else if ([ratCopy isEqualToString:@"NRDC_SUB6"])
  {
    v4 = 11;
  }

  else if ([ratCopy isEqualToString:@"NRDC_MMW"])
  {
    v4 = 12;
  }

  else if ([ratCopy isEqualToString:@"MAX"])
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

- (void)setHasCurrentRat:(BOOL)rat
{
  if (rat)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)StringAsCurrentRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([ratCopy isEqualToString:@"WCDMA"])
  {
    v4 = 1;
  }

  else if ([ratCopy isEqualToString:@"LTE"])
  {
    v4 = 2;
  }

  else if ([ratCopy isEqualToString:@"ENDC_SUB6"])
  {
    v4 = 3;
  }

  else if ([ratCopy isEqualToString:@"ENDC_MMW"])
  {
    v4 = 4;
  }

  else if ([ratCopy isEqualToString:@"NR_SA"])
  {
    v4 = 5;
  }

  else if ([ratCopy isEqualToString:@"GSM"])
  {
    v4 = 6;
  }

  else if ([ratCopy isEqualToString:@"CDMA"])
  {
    v4 = 7;
  }

  else if ([ratCopy isEqualToString:@"EVDO"])
  {
    v4 = 8;
  }

  else if ([ratCopy isEqualToString:@"ONEXSRLTE"])
  {
    v4 = 9;
  }

  else if ([ratCopy isEqualToString:@"ONEXHYBRID"])
  {
    v4 = 10;
  }

  else if ([ratCopy isEqualToString:@"NRDC_SUB6"])
  {
    v4 = 11;
  }

  else if ([ratCopy isEqualToString:@"NRDC_MMW"])
  {
    v4 = 12;
  }

  else if ([ratCopy isEqualToString:@"MAX"])
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

- (void)setHasNewState:(BOOL)state
{
  if (state)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)StringAsNewState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"SDM_DISABLE_SA"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"SDM_ENABLE_SA"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"SDM_UNKNOWN_SA"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"SDM_DISABLE_NR"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"SDM_DISABLE_FR1"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"SDM_DISABLE_FR2"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"SDM_ENABLE_NR"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"SDM_UNKNOWN_STATE"])
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

- (void)setHasSaVerdict:(BOOL)verdict
{
  if (verdict)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)StringAsSaVerdict:(id)verdict
{
  verdictCopy = verdict;
  if ([verdictCopy isEqualToString:@"DISABLEMENT_WITH_RAT_CHANGE"])
  {
    v4 = 0;
  }

  else if ([verdictCopy isEqualToString:@"DISABLEMENT_WITHOUT_RAT_CHANGE"])
  {
    v4 = 1;
  }

  else if ([verdictCopy isEqualToString:@"DISABLEMENT_NOT_RELEVANT"])
  {
    v4 = 2;
  }

  else if ([verdictCopy isEqualToString:@"ENABLEMENT_WITH_RAT_CHANGE"])
  {
    v4 = 3;
  }

  else if ([verdictCopy isEqualToString:@"ENABLEMENT_WITHOUT_RAT_CHANGE"])
  {
    v4 = 4;
  }

  else if ([verdictCopy isEqualToString:@"ENABLEMENT_NOT_RELEVANT"])
  {
    v4 = 5;
  }

  else if ([verdictCopy isEqualToString:@"UNKNOWN"])
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
  dictionaryRepresentation = [(AWDMETRICSCellularNrSDMActivation *)self dictionaryRepresentation];
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
    v7 = off_279A10978[deployment];
  }

  [dictionary setObject:v7 forKey:@"deployment"];

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
  [dictionary setObject:v8 forKey:@"fr1_meas_disabled"];

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
  [dictionary setObject:v9 forKey:@"fr2_meas_disabled"];

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
    v11 = off_279A10990[triggerCause];
  }

  [dictionary setObject:v11 forKey:@"trigger_cause"];

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
    v13 = off_279A10990[prevTriggerCause];
  }

  [dictionary setObject:v13 forKey:@"prev_trigger_cause"];

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
  [dictionary setObject:v14 forKey:@"ap_nr_recomm"];

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
  [dictionary setObject:v15 forKey:@"ap_nr_recomm_conf_factor"];

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
  [dictionary setObject:v16 forKey:@"duration_in_prev_state"];

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
  [dictionary setObject:v17 forKey:@"subs_id"];

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
    v19 = off_279A10A90[fr];
  }

  [dictionary setObject:v19 forKey:@"fr"];

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
    v21 = off_279A10AA8[prevRat];
  }

  [dictionary setObject:v21 forKey:@"prev_rat"];

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
    v23 = off_279A10AA8[currentRat];
  }

  [dictionary setObject:v23 forKey:@"current_rat"];

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
    v25 = off_279A10B18[newState];
  }

  [dictionary setObject:v25 forKey:@"new_state"];

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
      v27 = off_279A10B58[saVerdict];
    }

    [dictionary setObject:v27 forKey:@"sa_verdict"];
  }

LABEL_56:
  v28 = dictionary;

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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 30) |= 1u;
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

  *(toCopy + 58) = self->_fr1MeasDisabled;
  *(toCopy + 30) |= 0x2000u;
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
  *(toCopy + 59) = self->_fr2MeasDisabled;
  *(toCopy + 30) |= 0x4000u;
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
  *(toCopy + 13) = self->_triggerCause;
  *(toCopy + 30) |= 0x400u;
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
  *(toCopy + 56) = self->_apNrRecomm;
  *(toCopy + 30) |= 0x800u;
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
  *(toCopy + 57) = self->_apNrRecommConfFactor;
  *(toCopy + 30) |= 0x1000u;
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
  *(toCopy + 6) = self->_durationInPrevState;
  *(toCopy + 30) |= 8u;
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
  *(toCopy + 12) = self->_subsId;
  *(toCopy + 30) |= 0x200u;
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
  *(toCopy + 7) = self->_fr;
  *(toCopy + 30) |= 0x10u;
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
  *(toCopy + 5) = self->_deployment;
  *(toCopy + 30) |= 4u;
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
  *(toCopy + 9) = self->_prevRat;
  *(toCopy + 30) |= 0x40u;
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
  *(toCopy + 4) = self->_currentRat;
  *(toCopy + 30) |= 2u;
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
  *(toCopy + 10) = self->_prevTriggerCause;
  *(toCopy + 30) |= 0x80u;
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
  *(toCopy + 8) = self->_newState;
  *(toCopy + 30) |= 0x20u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_16:
    *(toCopy + 11) = self->_saVerdict;
    *(toCopy + 30) |= 0x100u;
  }

LABEL_17:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_89;
  }

  has = self->_has;
  v6 = *(equalCopy + 30);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
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
    if ((*(equalCopy + 30) & 0x2000) == 0)
    {
      goto LABEL_89;
    }

    v7 = *(equalCopy + 58);
    if (self->_fr1MeasDisabled)
    {
      if ((*(equalCopy + 58) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 58))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 30) & 0x2000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(equalCopy + 30) & 0x4000) == 0)
    {
      goto LABEL_89;
    }

    v8 = *(equalCopy + 59);
    if (self->_fr2MeasDisabled)
    {
      if ((*(equalCopy + 59) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 59))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 30) & 0x4000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 30) & 0x400) == 0 || self->_triggerCause != *(equalCopy + 13))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 30) & 0x400) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 30) & 0x800) == 0)
    {
      goto LABEL_89;
    }

    v9 = *(equalCopy + 56);
    if (self->_apNrRecomm)
    {
      if ((*(equalCopy + 56) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 56))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 30) & 0x800) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x1000) == 0)
  {
    if ((*(equalCopy + 30) & 0x1000) == 0)
    {
      goto LABEL_30;
    }

LABEL_89:
    v11 = 0;
    goto LABEL_90;
  }

  if ((*(equalCopy + 30) & 0x1000) == 0)
  {
    goto LABEL_89;
  }

  v10 = *(equalCopy + 57);
  if (self->_apNrRecommConfFactor)
  {
    if ((*(equalCopy + 57) & 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (*(equalCopy + 57))
  {
    goto LABEL_89;
  }

LABEL_30:
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_durationInPrevState != *(equalCopy + 6))
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
    if ((*(equalCopy + 30) & 0x200) == 0 || self->_subsId != *(equalCopy + 12))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 30) & 0x200) != 0)
  {
    goto LABEL_89;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_fr != *(equalCopy + 7))
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
    if ((v6 & 4) == 0 || self->_deployment != *(equalCopy + 5))
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
    if ((v6 & 0x40) == 0 || self->_prevRat != *(equalCopy + 9))
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
    if ((v6 & 2) == 0 || self->_currentRat != *(equalCopy + 4))
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
    if ((v6 & 0x80) == 0 || self->_prevTriggerCause != *(equalCopy + 10))
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
    if ((v6 & 0x20) == 0 || self->_newState != *(equalCopy + 8))
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
    if ((*(equalCopy + 30) & 0x100) == 0 || self->_saVerdict != *(equalCopy + 11))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 30);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 30);
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

  else if ((*(fromCopy + 30) & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  self->_fr1MeasDisabled = *(fromCopy + 58);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 30);
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
  self->_fr2MeasDisabled = *(fromCopy + 59);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 30);
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
  self->_triggerCause = *(fromCopy + 13);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 30);
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
  self->_apNrRecomm = *(fromCopy + 56);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 30);
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
  self->_apNrRecommConfFactor = *(fromCopy + 57);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 30);
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
  self->_durationInPrevState = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 30);
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
  self->_subsId = *(fromCopy + 12);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 30);
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
  self->_fr = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 30);
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
  self->_deployment = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 30);
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
  self->_prevRat = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 30);
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
  self->_currentRat = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 30);
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
  self->_prevTriggerCause = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 30);
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
  self->_newState = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 30) & 0x100) != 0)
  {
LABEL_16:
    self->_saVerdict = *(fromCopy + 11);
    *&self->_has |= 0x100u;
  }

LABEL_17:
}

@end