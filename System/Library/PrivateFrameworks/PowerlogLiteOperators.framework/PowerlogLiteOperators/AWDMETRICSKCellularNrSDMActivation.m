@interface AWDMETRICSKCellularNrSDMActivation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCurrentRat:(id)a3;
- (int)StringAsDeployment:(id)a3;
- (int)StringAsFr:(id)a3;
- (int)StringAsNewState:(id)a3;
- (int)StringAsNewStateNrsa:(id)a3;
- (int)StringAsPrevRat:(id)a3;
- (int)StringAsPrevTriggerCause:(id)a3;
- (int)StringAsSaVerdict:(id)a3;
- (int)StringAsState:(id)a3;
- (int)StringAsStateNrsa:(id)a3;
- (int)StringAsTriggerCause:(id)a3;
- (int)currentRat;
- (int)deployment;
- (int)fr;
- (int)newState;
- (int)newStateNrsa;
- (int)prevRat;
- (int)prevTriggerCause;
- (int)saVerdict;
- (int)state;
- (int)stateNrsa;
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
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasIsEndcCallActive:(BOOL)a3;
- (void)setHasIsRrcConnRelRequested:(BOOL)a3;
- (void)setHasIsRrcConnected:(BOOL)a3;
- (void)setHasIsSaDisabled:(BOOL)a3;
- (void)setHasNewState:(BOOL)a3;
- (void)setHasNewStateNrsa:(BOOL)a3;
- (void)setHasPrevFr1MeasDisabled:(BOOL)a3;
- (void)setHasPrevFr2MeasDisabled:(BOOL)a3;
- (void)setHasPrevIsSaDisabled:(BOOL)a3;
- (void)setHasPrevRat:(BOOL)a3;
- (void)setHasPrevTriggerCause:(BOOL)a3;
- (void)setHasRatChangeStatus:(BOOL)a3;
- (void)setHasSaVerdict:(BOOL)a3;
- (void)setHasSdmScgReleased:(BOOL)a3;
- (void)setHasSib24Configured:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasStateDurationBinIndex:(BOOL)a3;
- (void)setHasStateNrsa:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTrackingAreaCode:(BOOL)a3;
- (void)setHasTriggerCause:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularNrSDMActivation

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasFr1MeasDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasFr2MeasDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasPrevFr1MeasDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasPrevFr2MeasDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (int)triggerCause
{
  if (*(&self->_has + 2))
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
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (int)StringAsTriggerCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SDM_TRIGGER_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_AP_SLEEP"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CELLULAR_DATA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_WIFI_GOOD"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_VOIP_CALL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_COREMEDIA_STALL"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SCREEN_STATUS"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SYMPTOMS_RECOMM"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_UI_SWITCH"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_BOTTLENECK"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_PHS"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_AVS"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_LPM"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_VOLTE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_FR1_SCG_SNR"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_DCNR"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SCG_BOTTLENECK"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_MT_DATA"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_FTV_DUP"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_DROP_NR_VOIP"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_DROP_NR_ULD"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_DROP_NR_ENH_BUFF"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_BWP_SWITCH_TMR"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_LTE_BOTTLENECK"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_HI_BW"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_WIFI_ASSOCIATED"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_BWP_SWITCH_TMR_SL"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_HI_BW_SL"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_BOTTLENECK_LTE_SL"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_PARITY_MAX"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CPMS_CLIENT_MITIGATION"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_MAX"])
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
  if ((*(&self->_has + 1) & 2) != 0)
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
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (int)StringAsPrevTriggerCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SDM_TRIGGER_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_AP_SLEEP"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CELLULAR_DATA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_WIFI_GOOD"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_VOIP_CALL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_COREMEDIA_STALL"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SCREEN_STATUS"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SYMPTOMS_RECOMM"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_UI_SWITCH"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_BOTTLENECK"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_PHS"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_AVS"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_LPM"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_VOLTE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_FR1_SCG_SNR"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_DCNR"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SCG_BOTTLENECK"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_MT_DATA"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_FTV_DUP"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_DROP_NR_VOIP"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_DROP_NR_ULD"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_DROP_NR_ENH_BUFF"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_BWP_SWITCH_TMR"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_LTE_BOTTLENECK"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_HI_BW"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_WIFI_ASSOCIATED"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_BWP_SWITCH_TMR_SL"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_HI_BW_SL"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_SA_UPGRADE_BOTTLENECK_LTE_SL"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_PARITY_MAX"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_CPMS_CLIENT_MITIGATION"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"SDM_TRIGGER_MAX"])
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
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasApNrRecommConfFactor:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasSib24Configured:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (v3 & 0x80000000 | *&self->_has & 0x7FFFFFFF);
}

- (void)setHasDurationInPrevState:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasIsRrcConnected:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasIsEndcCallActive:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (int)fr
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_fr;
  }

  else
  {
    return 1;
  }
}

- (void)setHasFr:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (int)StringAsFr:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"POWERLOG_SUB6"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"POWERLOG_MMWAVE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"POWERLOG_SUB6_MMWAVE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"POWERLOG_INVALID"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)deployment
{
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
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

- (int)prevRat
{
  if (*(&self->_has + 1))
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
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (int)StringAsPrevRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LTE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NR_SA"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)currentRat
{
  if ((*&self->_has & 4) != 0)
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (int)StringAsCurrentRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LTE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NR_SA"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)newState
{
  if ((*&self->_has & 0x40) != 0)
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
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
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

- (int)state
{
  if ((*(&self->_has + 1) & 8) != 0)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
}

- (void)setHasState:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (int)StringAsState:(id)a3
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

- (int)newStateNrsa
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_newStateNrsa;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNewStateNrsa:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (int)StringAsNewStateNrsa:(id)a3
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

- (int)stateNrsa
{
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    return self->_stateNrsa;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStateNrsa:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (int)StringAsStateNrsa:(id)a3
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
  if ((*(&self->_has + 1) & 4) != 0)
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
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
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

- (void)setHasStateDurationBinIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasIsRrcConnRelRequested:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasRatChangeStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasIsSaDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasPrevIsSaDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasSdmScgReleased:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xBFFFFFFF | v3);
}

- (void)setHasTrackingAreaCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasIsDataPreferred:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularNrSDMActivation;
  v4 = [(AWDMETRICSKCellularNrSDMActivation *)&v8 description];
  v5 = [(AWDMETRICSKCellularNrSDMActivation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v10 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_fr1MeasDisabled];
  [v3 setObject:v11 forKey:@"fr1_meas_disabled"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_fr2MeasDisabled];
  [v3 setObject:v12 forKey:@"fr2_meas_disabled"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_prevFr1MeasDisabled];
  [v3 setObject:v13 forKey:@"prev_fr1_meas_disabled"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_prevFr2MeasDisabled];
  [v3 setObject:v14 forKey:@"prev_fr2_meas_disabled"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_43:
  triggerCause = self->_triggerCause;
  if (triggerCause >= 0x20)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_triggerCause];
  }

  else
  {
    v16 = off_27825ABF8[triggerCause];
  }

  [v3 setObject:v16 forKey:@"trigger_cause"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_51;
  }

LABEL_47:
  prevTriggerCause = self->_prevTriggerCause;
  if (prevTriggerCause >= 0x20)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevTriggerCause];
  }

  else
  {
    v18 = off_27825ABF8[prevTriggerCause];
  }

  [v3 setObject:v18 forKey:@"prev_trigger_cause"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_51:
  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_apNrRecomm];
  [v3 setObject:v19 forKey:@"ap_nr_recomm"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_10:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_53;
  }

LABEL_52:
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_apNrRecommConfFactor];
  [v3 setObject:v20 forKey:@"ap_nr_recomm_conf_factor"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_54;
  }

LABEL_53:
  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_sib24Configured];
  [v3 setObject:v21 forKey:@"sib24_configured"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_55;
  }

LABEL_54:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationInPrevState];
  [v3 setObject:v22 forKey:@"duration_in_prev_state"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_56;
  }

LABEL_55:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v23 forKey:@"subs_id"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_57;
  }

LABEL_56:
  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRrcConnected];
  [v3 setObject:v24 forKey:@"is_rrc_connected"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_58;
  }

LABEL_57:
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEndcCallActive];
  [v3 setObject:v25 forKey:@"is_endc_call_active"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_69;
  }

LABEL_58:
  fr = self->_fr;
  if (fr > 2)
  {
    if (fr != 3)
    {
      if (fr == 255)
      {
        v27 = @"POWERLOG_INVALID";
        goto LABEL_68;
      }

      goto LABEL_65;
    }

    v27 = @"POWERLOG_SUB6_MMWAVE";
  }

  else
  {
    if (fr != 1)
    {
      if (fr == 2)
      {
        v27 = @"POWERLOG_MMWAVE";
        goto LABEL_68;
      }

LABEL_65:
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fr];
      goto LABEL_68;
    }

    v27 = @"POWERLOG_SUB6";
  }

LABEL_68:
  [v3 setObject:v27 forKey:@"fr"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_73;
  }

LABEL_69:
  deployment = self->_deployment;
  if (deployment >= 3)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_deployment];
  }

  else
  {
    v29 = off_27825ACF8[deployment];
  }

  [v3 setObject:v29 forKey:@"deployment"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_18:
    if ((*&has & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_77;
  }

LABEL_73:
  prevRat = self->_prevRat;
  if (prevRat >= 3)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevRat];
  }

  else
  {
    v31 = off_27825AD10[prevRat];
  }

  [v3 setObject:v31 forKey:@"prev_rat"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_19:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_81;
  }

LABEL_77:
  currentRat = self->_currentRat;
  if (currentRat >= 3)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_currentRat];
  }

  else
  {
    v33 = off_27825AD10[currentRat];
  }

  [v3 setObject:v33 forKey:@"current_rat"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_20:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_85;
  }

LABEL_81:
  newState = self->_newState;
  if (newState >= 8)
  {
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_newState];
  }

  else
  {
    v35 = off_27825AD28[newState];
  }

  [v3 setObject:v35 forKey:@"new_state"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_89;
  }

LABEL_85:
  state = self->_state;
  if (state >= 8)
  {
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v37 = off_27825AD28[state];
  }

  [v3 setObject:v37 forKey:@"state"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_93;
  }

LABEL_89:
  newStateNrsa = self->_newStateNrsa;
  if (newStateNrsa >= 8)
  {
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_newStateNrsa];
  }

  else
  {
    v39 = off_27825AD28[newStateNrsa];
  }

  [v3 setObject:v39 forKey:@"new_state_nrsa"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_97;
  }

LABEL_93:
  stateNrsa = self->_stateNrsa;
  if (stateNrsa >= 8)
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_stateNrsa];
  }

  else
  {
    v41 = off_27825AD28[stateNrsa];
  }

  [v3 setObject:v41 forKey:@"state_nrsa"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_101;
  }

LABEL_97:
  saVerdict = self->_saVerdict;
  if (saVerdict >= 7)
  {
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_saVerdict];
  }

  else
  {
    v43 = off_27825AD68[saVerdict];
  }

  [v3 setObject:v43 forKey:@"sa_verdict"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_102;
  }

LABEL_101:
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_stateDurationBinIndex];
  [v3 setObject:v44 forKey:@"state_duration_bin_index"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_26:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_103;
  }

LABEL_102:
  v45 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRrcConnRelRequested];
  [v3 setObject:v45 forKey:@"is_rrc_conn_rel_requested"];

  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_104;
  }

LABEL_103:
  v46 = [MEMORY[0x277CCABB0] numberWithBool:self->_ratChangeStatus];
  [v3 setObject:v46 forKey:@"rat_change_status"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_105;
  }

LABEL_104:
  v47 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSaDisabled];
  [v3 setObject:v47 forKey:@"is_sa_disabled"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_106;
  }

LABEL_105:
  v48 = [MEMORY[0x277CCABB0] numberWithBool:self->_prevIsSaDisabled];
  [v3 setObject:v48 forKey:@"prev_is_sa_disabled"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_107;
  }

LABEL_106:
  v49 = [MEMORY[0x277CCABB0] numberWithBool:self->_sdmScgReleased];
  [v3 setObject:v49 forKey:@"sdm_scg_released"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_31:
    if ((*&has & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_107:
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_trackingAreaCode];
  [v3 setObject:v50 forKey:@"tracking_area_code"];

  if (*&self->_has)
  {
LABEL_32:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_cellId];
    [v3 setObject:v5 forKey:@"cell_id"];
  }

LABEL_33:
  gci = self->_gci;
  if (gci)
  {
    [v3 setObject:gci forKey:@"gci"];
  }

  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [v3 setObject:v7 forKey:@"is_data_preferred"];
  }

  v8 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v38 = a3;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  fr1MeasDisabled = self->_fr1MeasDisabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  fr2MeasDisabled = self->_fr2MeasDisabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  prevFr1MeasDisabled = self->_prevFr1MeasDisabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  prevFr2MeasDisabled = self->_prevFr2MeasDisabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  triggerCause = self->_triggerCause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  apNrRecomm = self->_apNrRecomm;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  apNrRecommConfFactor = self->_apNrRecommConfFactor;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  sib24Configured = self->_sib24Configured;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  durationInPrevState = self->_durationInPrevState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  isRrcConnected = self->_isRrcConnected;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  isEndcCallActive = self->_isEndcCallActive;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_15:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  fr = self->_fr;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_16:
    if ((*&has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  trackingAreaCode = self->_trackingAreaCode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_17:
    if ((*&has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  cellId = self->_cellId;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_18:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  deployment = self->_deployment;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  prevRat = self->_prevRat;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  currentRat = self->_currentRat;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  prevTriggerCause = self->_prevTriggerCause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  newState = self->_newState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_61:
  saVerdict = self->_saVerdict;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_24:
    stateDurationBinIndex = self->_stateDurationBinIndex;
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  if (self->_gci)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x800) != 0)
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
    v6 = self->_has;
    if ((*&v6 & 0x200000) == 0)
    {
LABEL_29:
      if ((*&v6 & 0x80) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_65;
    }
  }

  else if ((*&v6 & 0x200000) == 0)
  {
    goto LABEL_29;
  }

  isDataPreferred = self->_isDataPreferred;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  newStateNrsa = self->_newStateNrsa;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  stateNrsa = self->_stateNrsa;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_67:
  isRrcConnRelRequested = self->_isRrcConnRelRequested;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  ratChangeStatus = self->_ratChangeStatus;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }

LABEL_69:
  isSaDisabled = self->_isSaDisabled;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x10000000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x40000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_70:
  prevIsSaDisabled = self->_prevIsSaDisabled;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_36:
    sdmScgReleased = self->_sdmScgReleased;
    PBDataWriterWriteBOOLField();
  }

LABEL_37:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 27) |= 2u;
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 94) = self->_fr1MeasDisabled;
  *(v4 + 27) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 95) = self->_fr2MeasDisabled;
  *(v4 + 27) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 101) = self->_prevFr1MeasDisabled;
  *(v4 + 27) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 102) = self->_prevFr2MeasDisabled;
  *(v4 + 27) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 22) = self->_triggerCause;
  *(v4 + 27) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 92) = self->_apNrRecomm;
  *(v4 + 27) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 93) = self->_apNrRecommConfFactor;
  *(v4 + 27) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 106) = self->_sib24Configured;
  *(v4 + 27) |= 0x80000000;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 8) = self->_durationInPrevState;
  *(v4 + 27) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 20) = self->_subsId;
  *(v4 + 27) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 99) = self->_isRrcConnected;
  *(v4 + 27) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 97) = self->_isEndcCallActive;
  *(v4 + 27) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_15:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 9) = self->_fr;
  *(v4 + 27) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_16:
    if ((*&has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 21) = self->_trackingAreaCode;
  *(v4 + 27) |= 0x8000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_17:
    if ((*&has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  v4[1] = self->_cellId;
  *(v4 + 27) |= 1u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_18:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 7) = self->_deployment;
  *(v4 + 27) |= 8u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v4 + 14) = self->_prevRat;
  *(v4 + 27) |= 0x100u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 6) = self->_currentRat;
  *(v4 + 27) |= 4u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 15) = self->_prevTriggerCause;
  *(v4 + 27) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 12) = self->_newState;
  *(v4 + 27) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_61:
  *(v4 + 16) = self->_saVerdict;
  *(v4 + 27) |= 0x400u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_24:
    *(v4 + 18) = self->_stateDurationBinIndex;
    *(v4 + 27) |= 0x1000u;
  }

LABEL_25:
  if (self->_gci)
  {
    v7 = v4;
    [v4 setGci:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 0x800) != 0)
  {
    *(v4 + 17) = self->_state;
    *(v4 + 27) |= 0x800u;
    v6 = self->_has;
    if ((*&v6 & 0x200000) == 0)
    {
LABEL_29:
      if ((*&v6 & 0x80) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_65;
    }
  }

  else if ((*&v6 & 0x200000) == 0)
  {
    goto LABEL_29;
  }

  *(v4 + 96) = self->_isDataPreferred;
  *(v4 + 27) |= 0x200000u;
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v4 + 13) = self->_newStateNrsa;
  *(v4 + 27) |= 0x80u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v4 + 19) = self->_stateNrsa;
  *(v4 + 27) |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v4 + 98) = self->_isRrcConnRelRequested;
  *(v4 + 27) |= 0x800000u;
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v4 + 104) = self->_ratChangeStatus;
  *(v4 + 27) |= 0x20000000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 100) = self->_isSaDisabled;
  *(v4 + 27) |= 0x2000000u;
  v6 = self->_has;
  if ((*&v6 & 0x10000000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x40000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_70:
  *(v4 + 103) = self->_prevIsSaDisabled;
  *(v4 + 27) |= 0x10000000u;
  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_36:
    *(v4 + 105) = self->_sdmScgReleased;
    *(v4 + 27) |= 0x40000000u;
  }

LABEL_37:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 108) |= 2u;
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 94) = self->_fr1MeasDisabled;
  *(v5 + 108) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 95) = self->_fr2MeasDisabled;
  *(v5 + 108) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 101) = self->_prevFr1MeasDisabled;
  *(v5 + 108) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 102) = self->_prevFr2MeasDisabled;
  *(v5 + 108) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 88) = self->_triggerCause;
  *(v5 + 108) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 92) = self->_apNrRecomm;
  *(v5 + 108) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 93) = self->_apNrRecommConfFactor;
  *(v5 + 108) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 106) = self->_sib24Configured;
  *(v5 + 108) |= 0x80000000;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 32) = self->_durationInPrevState;
  *(v5 + 108) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 80) = self->_subsId;
  *(v5 + 108) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 99) = self->_isRrcConnected;
  *(v5 + 108) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 97) = self->_isEndcCallActive;
  *(v5 + 108) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_15:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 36) = self->_fr;
  *(v5 + 108) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_16:
    if ((*&has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 84) = self->_trackingAreaCode;
  *(v5 + 108) |= 0x8000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_17:
    if ((*&has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 8) = self->_cellId;
  *(v5 + 108) |= 1u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_18:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 28) = self->_deployment;
  *(v5 + 108) |= 8u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 56) = self->_prevRat;
  *(v5 + 108) |= 0x100u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 24) = self->_currentRat;
  *(v5 + 108) |= 4u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 60) = self->_prevTriggerCause;
  *(v5 + 108) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 48) = self->_newState;
  *(v5 + 108) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_57:
  *(v5 + 64) = self->_saVerdict;
  *(v5 + 108) |= 0x400u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_24:
    *(v5 + 72) = self->_stateDurationBinIndex;
    *(v5 + 108) |= 0x1000u;
  }

LABEL_25:
  v8 = [(NSString *)self->_gci copyWithZone:a3];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  v10 = self->_has;
  if ((*&v10 & 0x800) != 0)
  {
    *(v6 + 68) = self->_state;
    *(v6 + 108) |= 0x800u;
    v10 = self->_has;
    if ((*&v10 & 0x200000) == 0)
    {
LABEL_27:
      if ((*&v10 & 0x80) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_61;
    }
  }

  else if ((*&v10 & 0x200000) == 0)
  {
    goto LABEL_27;
  }

  *(v6 + 96) = self->_isDataPreferred;
  *(v6 + 108) |= 0x200000u;
  v10 = self->_has;
  if ((*&v10 & 0x80) == 0)
  {
LABEL_28:
    if ((*&v10 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v6 + 52) = self->_newStateNrsa;
  *(v6 + 108) |= 0x80u;
  v10 = self->_has;
  if ((*&v10 & 0x2000) == 0)
  {
LABEL_29:
    if ((*&v10 & 0x800000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v6 + 76) = self->_stateNrsa;
  *(v6 + 108) |= 0x2000u;
  v10 = self->_has;
  if ((*&v10 & 0x800000) == 0)
  {
LABEL_30:
    if ((*&v10 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v6 + 98) = self->_isRrcConnRelRequested;
  *(v6 + 108) |= 0x800000u;
  v10 = self->_has;
  if ((*&v10 & 0x20000000) == 0)
  {
LABEL_31:
    if ((*&v10 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v6 + 104) = self->_ratChangeStatus;
  *(v6 + 108) |= 0x20000000u;
  v10 = self->_has;
  if ((*&v10 & 0x2000000) == 0)
  {
LABEL_32:
    if ((*&v10 & 0x10000000) == 0)
    {
      goto LABEL_33;
    }

LABEL_66:
    *(v6 + 103) = self->_prevIsSaDisabled;
    *(v6 + 108) |= 0x10000000u;
    if ((*&self->_has & 0x40000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_65:
  *(v6 + 100) = self->_isSaDisabled;
  *(v6 + 108) |= 0x2000000u;
  v10 = self->_has;
  if ((*&v10 & 0x10000000) != 0)
  {
    goto LABEL_66;
  }

LABEL_33:
  if ((*&v10 & 0x40000000) != 0)
  {
LABEL_34:
    *(v6 + 105) = self->_sdmScgReleased;
    *(v6 + 108) |= 0x40000000u;
  }

LABEL_35:
  v11 = v6;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_209;
  }

  has = self->_has;
  v6 = *(v4 + 27);
  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_209;
    }

    v7 = *(v4 + 94);
    if (self->_fr1MeasDisabled)
    {
      if ((*(v4 + 94) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 94))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_209;
    }

    v8 = *(v4 + 95);
    if (self->_fr2MeasDisabled)
    {
      if ((*(v4 + 95) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 95))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_209;
    }

    v9 = *(v4 + 101);
    if (self->_prevFr1MeasDisabled)
    {
      if ((*(v4 + 101) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 101))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_209;
    }

    v10 = *(v4 + 102);
    if (self->_prevFr2MeasDisabled)
    {
      if ((*(v4 + 102) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 102))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_triggerCause != *(v4 + 22))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_209;
    }

    v11 = *(v4 + 92);
    if (self->_apNrRecomm)
    {
      if ((*(v4 + 92) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 92))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_209;
    }

    v12 = *(v4 + 93);
    if (self->_apNrRecommConfFactor)
    {
      if ((*(v4 + 93) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 93))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_209;
    }

    v13 = *(v4 + 106);
    if (self->_sib24Configured)
    {
      if ((*(v4 + 106) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 106))
    {
      goto LABEL_209;
    }
  }

  else if (v6 < 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_durationInPrevState != *(v4 + 8))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_subsId != *(v4 + 20))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_209;
    }

    v14 = *(v4 + 99);
    if (self->_isRrcConnected)
    {
      if ((*(v4 + 99) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 99))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_209;
    }

    v15 = *(v4 + 97);
    if (self->_isEndcCallActive)
    {
      if ((*(v4 + 97) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 97))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_fr != *(v4 + 9))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_trackingAreaCode != *(v4 + 21))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_209;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_cellId != *(v4 + 1))
    {
      goto LABEL_209;
    }
  }

  else if (v6)
  {
    goto LABEL_209;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_deployment != *(v4 + 7))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_prevRat != *(v4 + 14))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_currentRat != *(v4 + 6))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_prevTriggerCause != *(v4 + 15))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_newState != *(v4 + 12))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_saVerdict != *(v4 + 16))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_stateDurationBinIndex != *(v4 + 18))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_209;
  }

  gci = self->_gci;
  if (gci | *(v4 + 5))
  {
    if (![(NSString *)gci isEqual:?])
    {
      goto LABEL_209;
    }

    has = self->_has;
    v6 = *(v4 + 27);
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_state != *(v4 + 17))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_209;
    }

    v17 = *(v4 + 96);
    if (self->_isDataPreferred)
    {
      if ((*(v4 + 96) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 96))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_newStateNrsa != *(v4 + 13))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_stateNrsa != *(v4 + 19))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_209;
    }

    v19 = *(v4 + 98);
    if (self->_isRrcConnRelRequested)
    {
      if ((*(v4 + 98) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 98))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_209;
    }

    v20 = *(v4 + 104);
    if (self->_ratChangeStatus)
    {
      if ((*(v4 + 104) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 104))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_209;
    }

    v21 = *(v4 + 100);
    if (self->_isSaDisabled)
    {
      if ((*(v4 + 100) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 100))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_209;
    }

    v22 = *(v4 + 103);
    if (self->_prevIsSaDisabled)
    {
      if ((*(v4 + 103) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else if (*(v4 + 103))
    {
      goto LABEL_209;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_209;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v6 & 0x40000000) != 0)
    {
      if (self->_sdmScgReleased)
      {
        if (*(v4 + 105))
        {
          goto LABEL_211;
        }
      }

      else if (!*(v4 + 105))
      {
LABEL_211:
        v18 = 1;
        goto LABEL_210;
      }
    }

LABEL_209:
    v18 = 0;
    goto LABEL_210;
  }

  v18 = (v6 & 0x40000000) == 0;
LABEL_210:

  return v18;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v39 = 2654435761u * self->_timestamp;
    if ((*&has & 0x80000) != 0)
    {
LABEL_3:
      v38 = 2654435761 * self->_fr1MeasDisabled;
      if ((*&has & 0x100000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v39 = 0;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_3;
    }
  }

  v38 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_4:
    v37 = 2654435761 * self->_fr2MeasDisabled;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  v37 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_5:
    v36 = 2654435761 * self->_prevFr1MeasDisabled;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  v36 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_6:
    v35 = 2654435761 * self->_prevFr2MeasDisabled;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  v35 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_7:
    v34 = 2654435761 * self->_triggerCause;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  v34 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_8:
    v33 = 2654435761 * self->_apNrRecomm;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  v33 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_9:
    v32 = 2654435761 * self->_apNrRecommConfFactor;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  v32 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_10:
    v31 = 2654435761 * self->_sib24Configured;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v31 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_11:
    v30 = 2654435761 * self->_durationInPrevState;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v30 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_12:
    v29 = 2654435761 * self->_subsId;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  v29 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_13:
    v28 = 2654435761 * self->_isRrcConnected;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  v28 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_14:
    v27 = 2654435761 * self->_isEndcCallActive;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  v27 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_15:
    v26 = 2654435761 * self->_fr;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  v26 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_16:
    v25 = 2654435761 * self->_trackingAreaCode;
    if (*&has)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  v25 = 0;
  if (*&has)
  {
LABEL_17:
    v23 = 2654435761u * self->_cellId;
    if ((*&has & 8) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  v23 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_18:
    v4 = 2654435761 * self->_deployment;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_19:
    v5 = 2654435761 * self->_prevRat;
    if ((*&has & 4) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v5 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_20:
    v6 = 2654435761 * self->_currentRat;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  v6 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_21:
    v7 = 2654435761 * self->_prevTriggerCause;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  v7 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_22:
    v8 = 2654435761 * self->_newState;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_23;
    }

LABEL_46:
    v9 = 0;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_45:
  v8 = 0;
  if ((*&has & 0x400) == 0)
  {
    goto LABEL_46;
  }

LABEL_23:
  v9 = 2654435761 * self->_saVerdict;
  if ((*&has & 0x1000) != 0)
  {
LABEL_24:
    v10 = 2654435761 * self->_stateDurationBinIndex;
    goto LABEL_48;
  }

LABEL_47:
  v10 = 0;
LABEL_48:
  v11 = [(NSString *)self->_gci hash];
  v12 = self->_has;
  if ((*&v12 & 0x800) != 0)
  {
    v13 = 2654435761 * self->_state;
    if ((*&v12 & 0x200000) != 0)
    {
LABEL_50:
      v14 = 2654435761 * self->_isDataPreferred;
      if ((*&v12 & 0x80) != 0)
      {
        goto LABEL_51;
      }

      goto LABEL_60;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x200000) != 0)
    {
      goto LABEL_50;
    }
  }

  v14 = 0;
  if ((*&v12 & 0x80) != 0)
  {
LABEL_51:
    v15 = 2654435761 * self->_newStateNrsa;
    if ((*&v12 & 0x2000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_61;
  }

LABEL_60:
  v15 = 0;
  if ((*&v12 & 0x2000) != 0)
  {
LABEL_52:
    v16 = 2654435761 * self->_stateNrsa;
    if ((*&v12 & 0x800000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_62;
  }

LABEL_61:
  v16 = 0;
  if ((*&v12 & 0x800000) != 0)
  {
LABEL_53:
    v17 = 2654435761 * self->_isRrcConnRelRequested;
    if ((*&v12 & 0x20000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_63;
  }

LABEL_62:
  v17 = 0;
  if ((*&v12 & 0x20000000) != 0)
  {
LABEL_54:
    v18 = 2654435761 * self->_ratChangeStatus;
    if ((*&v12 & 0x2000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_64;
  }

LABEL_63:
  v18 = 0;
  if ((*&v12 & 0x2000000) != 0)
  {
LABEL_55:
    v19 = 2654435761 * self->_isSaDisabled;
    if ((*&v12 & 0x10000000) != 0)
    {
      goto LABEL_56;
    }

LABEL_65:
    v20 = 0;
    if ((*&v12 & 0x40000000) != 0)
    {
      goto LABEL_57;
    }

LABEL_66:
    v21 = 0;
    return v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v11 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
  }

LABEL_64:
  v19 = 0;
  if ((*&v12 & 0x10000000) == 0)
  {
    goto LABEL_65;
  }

LABEL_56:
  v20 = 2654435761 * self->_prevIsSaDisabled;
  if ((*&v12 & 0x40000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_57:
  v21 = 2654435761 * self->_sdmScgReleased;
  return v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v11 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 27);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 27);
    if ((v5 & 0x80000) == 0)
    {
LABEL_3:
      if ((v5 & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  self->_fr1MeasDisabled = *(v4 + 94);
  *&self->_has |= 0x80000u;
  v5 = *(v4 + 27);
  if ((v5 & 0x100000) == 0)
  {
LABEL_4:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_fr2MeasDisabled = *(v4 + 95);
  *&self->_has |= 0x100000u;
  v5 = *(v4 + 27);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_prevFr1MeasDisabled = *(v4 + 101);
  *&self->_has |= 0x4000000u;
  v5 = *(v4 + 27);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_prevFr2MeasDisabled = *(v4 + 102);
  *&self->_has |= 0x8000000u;
  v5 = *(v4 + 27);
  if ((v5 & 0x10000) == 0)
  {
LABEL_7:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_triggerCause = *(v4 + 22);
  *&self->_has |= 0x10000u;
  v5 = *(v4 + 27);
  if ((v5 & 0x20000) == 0)
  {
LABEL_8:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_apNrRecomm = *(v4 + 92);
  *&self->_has |= 0x20000u;
  v5 = *(v4 + 27);
  if ((v5 & 0x40000) == 0)
  {
LABEL_9:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_apNrRecommConfFactor = *(v4 + 93);
  *&self->_has |= 0x40000u;
  v5 = *(v4 + 27);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_sib24Configured = *(v4 + 106);
  *&self->_has |= 0x80000000;
  v5 = *(v4 + 27);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_durationInPrevState = *(v4 + 8);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 27);
  if ((v5 & 0x4000) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_subsId = *(v4 + 20);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 27);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_isRrcConnected = *(v4 + 99);
  *&self->_has |= 0x1000000u;
  v5 = *(v4 + 27);
  if ((v5 & 0x400000) == 0)
  {
LABEL_14:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_isEndcCallActive = *(v4 + 97);
  *&self->_has |= 0x400000u;
  v5 = *(v4 + 27);
  if ((v5 & 0x20) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_fr = *(v4 + 9);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 27);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_trackingAreaCode = *(v4 + 21);
  *&self->_has |= 0x8000u;
  v5 = *(v4 + 27);
  if ((v5 & 1) == 0)
  {
LABEL_17:
    if ((v5 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_cellId = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 27);
  if ((v5 & 8) == 0)
  {
LABEL_18:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_deployment = *(v4 + 7);
  *&self->_has |= 8u;
  v5 = *(v4 + 27);
  if ((v5 & 0x100) == 0)
  {
LABEL_19:
    if ((v5 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_prevRat = *(v4 + 14);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 27);
  if ((v5 & 4) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_currentRat = *(v4 + 6);
  *&self->_has |= 4u;
  v5 = *(v4 + 27);
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_prevTriggerCause = *(v4 + 15);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 27);
  if ((v5 & 0x40) == 0)
  {
LABEL_22:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_newState = *(v4 + 12);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 27);
  if ((v5 & 0x400) == 0)
  {
LABEL_23:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_61:
  self->_saVerdict = *(v4 + 16);
  *&self->_has |= 0x400u;
  if ((*(v4 + 27) & 0x1000) != 0)
  {
LABEL_24:
    self->_stateDurationBinIndex = *(v4 + 18);
    *&self->_has |= 0x1000u;
  }

LABEL_25:
  if (*(v4 + 5))
  {
    v7 = v4;
    [(AWDMETRICSKCellularNrSDMActivation *)self setGci:?];
    v4 = v7;
  }

  v6 = *(v4 + 27);
  if ((v6 & 0x800) != 0)
  {
    self->_state = *(v4 + 17);
    *&self->_has |= 0x800u;
    v6 = *(v4 + 27);
    if ((v6 & 0x200000) == 0)
    {
LABEL_29:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_65;
    }
  }

  else if ((v6 & 0x200000) == 0)
  {
    goto LABEL_29;
  }

  self->_isDataPreferred = *(v4 + 96);
  *&self->_has |= 0x200000u;
  v6 = *(v4 + 27);
  if ((v6 & 0x80) == 0)
  {
LABEL_30:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_newStateNrsa = *(v4 + 13);
  *&self->_has |= 0x80u;
  v6 = *(v4 + 27);
  if ((v6 & 0x2000) == 0)
  {
LABEL_31:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_stateNrsa = *(v4 + 19);
  *&self->_has |= 0x2000u;
  v6 = *(v4 + 27);
  if ((v6 & 0x800000) == 0)
  {
LABEL_32:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_isRrcConnRelRequested = *(v4 + 98);
  *&self->_has |= 0x800000u;
  v6 = *(v4 + 27);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_33:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_ratChangeStatus = *(v4 + 104);
  *&self->_has |= 0x20000000u;
  v6 = *(v4 + 27);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_34:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_isSaDisabled = *(v4 + 100);
  *&self->_has |= 0x2000000u;
  v6 = *(v4 + 27);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_35:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_70:
  self->_prevIsSaDisabled = *(v4 + 103);
  *&self->_has |= 0x10000000u;
  if ((*(v4 + 27) & 0x40000000) != 0)
  {
LABEL_36:
    self->_sdmScgReleased = *(v4 + 105);
    *&self->_has |= 0x40000000u;
  }

LABEL_37:
}

@end