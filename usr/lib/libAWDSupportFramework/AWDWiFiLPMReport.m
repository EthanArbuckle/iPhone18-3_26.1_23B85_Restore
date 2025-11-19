@interface AWDWiFiLPMReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAssociatedSleepDuration:(BOOL)a3;
- (void)setHasBeaconReceivedInLpas:(BOOL)a3;
- (void)setHasBeaconsEarlyTerminatedInLpas:(BOOL)a3;
- (void)setHasBeaconsMissedInLpas:(BOOL)a3;
- (void)setHasBeaconsScheduledInLpas:(BOOL)a3;
- (void)setHasLpasPowerBudgetRemaining:(BOOL)a3;
- (void)setHasLpasPowerPeriodRemaining:(BOOL)a3;
- (void)setHasPhyOffDuration:(BOOL)a3;
- (void)setHasPowerConsumedInSelfManagedLPASMode:(BOOL)a3;
- (void)setHasPowerConsumptionDueToAWDLRx:(BOOL)a3;
- (void)setHasPowerConsumptionDueToAWDLTx:(BOOL)a3;
- (void)setHasPowerConsumptionDueToAssocScan:(BOOL)a3;
- (void)setHasPowerConsumptionDueToEPNOScan:(BOOL)a3;
- (void)setHasPowerConsumptionDueToFRTS:(BOOL)a3;
- (void)setHasPowerConsumptionDueToMac:(BOOL)a3;
- (void)setHasPowerConsumptionDueToRF:(BOOL)a3;
- (void)setHasPowerConsumptionDueToRoamScan:(BOOL)a3;
- (void)setHasPowerConsumptionDueToRx:(BOOL)a3;
- (void)setHasPowerConsumptionDueToTx:(BOOL)a3;
- (void)setHasPowerConsumptionDueToUserScan:(BOOL)a3;
- (void)setHasReceiveDuration:(BOOL)a3;
- (void)setHasRoamDuration:(BOOL)a3;
- (void)setHasSleepDuration:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTotalLPASDuration:(BOOL)a3;
- (void)setHasTotalLpasPowerBudget:(BOOL)a3;
- (void)setHasTotalLpasPowerMonitoringPeriod:(BOOL)a3;
- (void)setHasTotalTimeForBugetExpiry:(BOOL)a3;
- (void)setHasTransmitDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiLPMReport

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasSleepDuration:(BOOL)a3
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

- (void)setHasRoamDuration:(BOOL)a3
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

- (void)setHasPhyOffDuration:(BOOL)a3
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

- (void)setHasTransmitDuration:(BOOL)a3
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

- (void)setHasReceiveDuration:(BOOL)a3
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

- (void)setHasTotalLPASDuration:(BOOL)a3
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

- (void)setHasPowerConsumedInSelfManagedLPASMode:(BOOL)a3
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

- (void)setHasPowerConsumptionDueToMac:(BOOL)a3
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

- (void)setHasPowerConsumptionDueToRF:(BOOL)a3
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

- (void)setHasPowerConsumptionDueToUserScan:(BOOL)a3
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

- (void)setHasPowerConsumptionDueToRoamScan:(BOOL)a3
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

- (void)setHasPowerConsumptionDueToAssocScan:(BOOL)a3
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

- (void)setHasPowerConsumptionDueToEPNOScan:(BOOL)a3
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

- (void)setHasPowerConsumptionDueToTx:(BOOL)a3
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

- (void)setHasPowerConsumptionDueToRx:(BOOL)a3
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

- (void)setHasPowerConsumptionDueToFRTS:(BOOL)a3
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

- (void)setHasPowerConsumptionDueToAWDLTx:(BOOL)a3
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

- (void)setHasPowerConsumptionDueToAWDLRx:(BOOL)a3
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

- (void)setHasBeaconReceivedInLpas:(BOOL)a3
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

- (void)setHasBeaconsMissedInLpas:(BOOL)a3
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

- (void)setHasBeaconsEarlyTerminatedInLpas:(BOOL)a3
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

- (void)setHasBeaconsScheduledInLpas:(BOOL)a3
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

- (void)setHasTotalLpasPowerBudget:(BOOL)a3
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

- (void)setHasLpasPowerBudgetRemaining:(BOOL)a3
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

- (void)setHasTotalLpasPowerMonitoringPeriod:(BOOL)a3
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

- (void)setHasLpasPowerPeriodRemaining:(BOOL)a3
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

- (void)setHasAssociatedSleepDuration:(BOOL)a3
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

- (void)setHasTotalTimeForBugetExpiry:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiLPMReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiLPMReport description](&v3, sel_description), -[AWDWiFiLPMReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x1000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_associatedDuration), @"associatedDuration"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sleepDuration), @"sleepDuration"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_roamDuration), @"roamDuration"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_phyOffDuration), @"phyOffDuration"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_transmitDuration), @"transmitDuration"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_receiveDuration), @"receiveDuration"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalLPASDuration), @"totalLPASDuration"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumedInSelfManagedLPASMode), @"powerConsumedInSelfManagedLPASMode"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumptionDueToMac), @"powerConsumptionDueToMac"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumptionDueToRF), @"powerConsumptionDueToRF"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumptionDueToUserScan), @"powerConsumptionDueToUserScan"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumptionDueToRoamScan), @"powerConsumptionDueToRoamScan"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumptionDueToAssocScan), @"powerConsumptionDueToAssocScan"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumptionDueToEPNOScan), @"powerConsumptionDueToEPNOScan"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumptionDueToTx), @"powerConsumptionDueToTx"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumptionDueToRx), @"powerConsumptionDueToRx"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumptionDueToFRTS), @"powerConsumptionDueToFRTS"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumptionDueToAWDLTx), @"powerConsumptionDueToAWDLTx"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_powerConsumptionDueToAWDLRx), @"powerConsumptionDueToAWDLRx"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_22:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_beaconReceivedInLpas), @"beaconReceivedInLpas"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_23:
    if ((*&has & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_beaconsMissedInLpas), @"beaconsMissedInLpas"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_24:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_beaconsEarlyTerminatedInLpas), @"beaconsEarlyTerminatedInLpas"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_beaconsScheduledInLpas), @"beaconsScheduledInLpas"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalLpasPowerBudget), @"totalLpasPowerBudget"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_27:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lpasPowerBudgetRemaining), @"lpasPowerBudgetRemaining"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalLpasPowerMonitoringPeriod), @"totalLpasPowerMonitoringPeriod"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_29:
    if ((*&has & 2) == 0)
    {
      goto LABEL_30;
    }

LABEL_61:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_associatedSleepDuration), @"associatedSleepDuration"}];
    if ((*&self->_has & 0x10000000) == 0)
    {
      return v3;
    }

    goto LABEL_31;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lpasPowerPeriodRemaining), @"lpasPowerPeriodRemaining"}];
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    goto LABEL_61;
  }

LABEL_30:
  if ((*&has & 0x10000000) != 0)
  {
LABEL_31:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalTimeForBugetExpiry), @"totalTimeForBugetExpiry"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x1000000) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  associatedDuration = self->_associatedDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  sleepDuration = self->_sleepDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  roamDuration = self->_roamDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  phyOffDuration = self->_phyOffDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  transmitDuration = self->_transmitDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  receiveDuration = self->_receiveDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  totalLPASDuration = self->_totalLPASDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  powerConsumedInSelfManagedLPASMode = self->_powerConsumedInSelfManagedLPASMode;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  powerConsumptionDueToMac = self->_powerConsumptionDueToMac;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  powerConsumptionDueToRF = self->_powerConsumptionDueToRF;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  powerConsumptionDueToUserScan = self->_powerConsumptionDueToUserScan;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  powerConsumptionDueToRoamScan = self->_powerConsumptionDueToRoamScan;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  powerConsumptionDueToAssocScan = self->_powerConsumptionDueToAssocScan;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  powerConsumptionDueToEPNOScan = self->_powerConsumptionDueToEPNOScan;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  powerConsumptionDueToTx = self->_powerConsumptionDueToTx;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  powerConsumptionDueToRx = self->_powerConsumptionDueToRx;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  powerConsumptionDueToFRTS = self->_powerConsumptionDueToFRTS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  powerConsumptionDueToAWDLTx = self->_powerConsumptionDueToAWDLTx;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  powerConsumptionDueToAWDLRx = self->_powerConsumptionDueToAWDLRx;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_22:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  beaconReceivedInLpas = self->_beaconReceivedInLpas;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_23:
    if ((*&has & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  beaconsMissedInLpas = self->_beaconsMissedInLpas;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_24:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  beaconsEarlyTerminatedInLpas = self->_beaconsEarlyTerminatedInLpas;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  beaconsScheduledInLpas = self->_beaconsScheduledInLpas;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  totalLpasPowerBudget = self->_totalLpasPowerBudget;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_27:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  lpasPowerBudgetRemaining = self->_lpasPowerBudgetRemaining;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  totalLpasPowerMonitoringPeriod = self->_totalLpasPowerMonitoringPeriod;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_29:
    if ((*&has & 2) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    associatedSleepDuration = self->_associatedSleepDuration;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x10000000) == 0)
    {
      return;
    }

    goto LABEL_61;
  }

LABEL_59:
  lpasPowerPeriodRemaining = self->_lpasPowerPeriodRemaining;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if ((*&has & 0x10000000) == 0)
  {
    return;
  }

LABEL_61:
  totalTimeForBugetExpiry = self->_totalTimeForBugetExpiry;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x1000000) != 0)
  {
    *(a3 + 25) = self->_timestamp;
    *(a3 + 62) |= 0x1000000u;
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 1) = self->_associatedDuration;
  *(a3 + 62) |= 1u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 24) = self->_sleepDuration;
  *(a3 + 62) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 23) = self->_roamDuration;
  *(a3 + 62) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 9) = self->_phyOffDuration;
  *(a3 + 62) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 30) = self->_transmitDuration;
  *(a3 + 62) |= 0x20000000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 22) = self->_receiveDuration;
  *(a3 + 62) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 26) = self->_totalLPASDuration;
  *(a3 + 62) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 10) = self->_powerConsumedInSelfManagedLPASMode;
  *(a3 + 62) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 16) = self->_powerConsumptionDueToMac;
  *(a3 + 62) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 17) = self->_powerConsumptionDueToRF;
  *(a3 + 62) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 21) = self->_powerConsumptionDueToUserScan;
  *(a3 + 62) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 18) = self->_powerConsumptionDueToRoamScan;
  *(a3 + 62) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a3 + 13) = self->_powerConsumptionDueToAssocScan;
  *(a3 + 62) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 14) = self->_powerConsumptionDueToEPNOScan;
  *(a3 + 62) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 20) = self->_powerConsumptionDueToTx;
  *(a3 + 62) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 19) = self->_powerConsumptionDueToRx;
  *(a3 + 62) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 15) = self->_powerConsumptionDueToFRTS;
  *(a3 + 62) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 12) = self->_powerConsumptionDueToAWDLTx;
  *(a3 + 62) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 11) = self->_powerConsumptionDueToAWDLRx;
  *(a3 + 62) |= 0x400u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_22:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 3) = self->_beaconReceivedInLpas;
  *(a3 + 62) |= 4u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_23:
    if ((*&has & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 5) = self->_beaconsMissedInLpas;
  *(a3 + 62) |= 0x10u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_24:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 4) = self->_beaconsEarlyTerminatedInLpas;
  *(a3 + 62) |= 8u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 6) = self->_beaconsScheduledInLpas;
  *(a3 + 62) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 27) = self->_totalLpasPowerBudget;
  *(a3 + 62) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_27:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 7) = self->_lpasPowerBudgetRemaining;
  *(a3 + 62) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 28) = self->_totalLpasPowerMonitoringPeriod;
  *(a3 + 62) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_29:
    if ((*&has & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 8) = self->_lpasPowerPeriodRemaining;
  *(a3 + 62) |= 0x80u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_30:
    if ((*&has & 0x10000000) == 0)
    {
      return;
    }

LABEL_61:
    *(a3 + 29) = self->_totalTimeForBugetExpiry;
    *(a3 + 62) |= 0x10000000u;
    return;
  }

LABEL_60:
  *(a3 + 2) = self->_associatedSleepDuration;
  *(a3 + 62) |= 2u;
  if ((*&self->_has & 0x10000000) != 0)
  {
    goto LABEL_61;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((*&has & 0x1000000) != 0)
  {
    *(result + 25) = self->_timestamp;
    *(result + 62) |= 0x1000000u;
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_associatedDuration;
  *(result + 62) |= 1u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 24) = self->_sleepDuration;
  *(result + 62) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 23) = self->_roamDuration;
  *(result + 62) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 9) = self->_phyOffDuration;
  *(result + 62) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 30) = self->_transmitDuration;
  *(result + 62) |= 0x20000000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 22) = self->_receiveDuration;
  *(result + 62) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 26) = self->_totalLPASDuration;
  *(result + 62) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 10) = self->_powerConsumedInSelfManagedLPASMode;
  *(result + 62) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 16) = self->_powerConsumptionDueToMac;
  *(result + 62) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 17) = self->_powerConsumptionDueToRF;
  *(result + 62) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 21) = self->_powerConsumptionDueToUserScan;
  *(result + 62) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 18) = self->_powerConsumptionDueToRoamScan;
  *(result + 62) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 13) = self->_powerConsumptionDueToAssocScan;
  *(result + 62) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 14) = self->_powerConsumptionDueToEPNOScan;
  *(result + 62) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 20) = self->_powerConsumptionDueToTx;
  *(result + 62) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 19) = self->_powerConsumptionDueToRx;
  *(result + 62) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 15) = self->_powerConsumptionDueToFRTS;
  *(result + 62) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 12) = self->_powerConsumptionDueToAWDLTx;
  *(result + 62) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 11) = self->_powerConsumptionDueToAWDLRx;
  *(result + 62) |= 0x400u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_22:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 3) = self->_beaconReceivedInLpas;
  *(result + 62) |= 4u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_23:
    if ((*&has & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 5) = self->_beaconsMissedInLpas;
  *(result + 62) |= 0x10u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_24:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 4) = self->_beaconsEarlyTerminatedInLpas;
  *(result + 62) |= 8u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 6) = self->_beaconsScheduledInLpas;
  *(result + 62) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 27) = self->_totalLpasPowerBudget;
  *(result + 62) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_27:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 7) = self->_lpasPowerBudgetRemaining;
  *(result + 62) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(result + 28) = self->_totalLpasPowerMonitoringPeriod;
  *(result + 62) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_29:
    if ((*&has & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(result + 8) = self->_lpasPowerPeriodRemaining;
  *(result + 62) |= 0x80u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_30:
    if ((*&has & 0x10000000) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_61:
  *(result + 2) = self->_associatedSleepDuration;
  *(result + 62) |= 2u;
  if ((*&self->_has & 0x10000000) == 0)
  {
    return result;
  }

LABEL_31:
  *(result + 29) = self->_totalTimeForBugetExpiry;
  *(result + 62) |= 0x10000000u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 62);
    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_timestamp != *(a3 + 25))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
LABEL_151:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_associatedDuration != *(a3 + 1))
      {
        goto LABEL_151;
      }
    }

    else if (v7)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v7 & 0x800000) == 0 || self->_sleepDuration != *(a3 + 24))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x800000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_roamDuration != *(a3 + 23))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_phyOffDuration != *(a3 + 9))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x20000000) != 0)
    {
      if ((v7 & 0x20000000) == 0 || self->_transmitDuration != *(a3 + 30))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x20000000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_receiveDuration != *(a3 + 22))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x2000000) != 0)
    {
      if ((v7 & 0x2000000) == 0 || self->_totalLPASDuration != *(a3 + 26))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_powerConsumedInSelfManagedLPASMode != *(a3 + 10))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_powerConsumptionDueToMac != *(a3 + 16))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_powerConsumptionDueToRF != *(a3 + 17))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_powerConsumptionDueToUserScan != *(a3 + 21))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_powerConsumptionDueToRoamScan != *(a3 + 18))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_powerConsumptionDueToAssocScan != *(a3 + 13))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_powerConsumptionDueToEPNOScan != *(a3 + 14))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_powerConsumptionDueToTx != *(a3 + 20))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_powerConsumptionDueToRx != *(a3 + 19))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_powerConsumptionDueToFRTS != *(a3 + 15))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_powerConsumptionDueToAWDLTx != *(a3 + 12))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_powerConsumptionDueToAWDLRx != *(a3 + 11))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_beaconReceivedInLpas != *(a3 + 3))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_beaconsMissedInLpas != *(a3 + 5))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_beaconsEarlyTerminatedInLpas != *(a3 + 4))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_beaconsScheduledInLpas != *(a3 + 6))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x4000000) != 0)
    {
      if ((v7 & 0x4000000) == 0 || self->_totalLpasPowerBudget != *(a3 + 27))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x4000000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_lpasPowerBudgetRemaining != *(a3 + 7))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x8000000) != 0)
    {
      if ((v7 & 0x8000000) == 0 || self->_totalLpasPowerMonitoringPeriod != *(a3 + 28))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_lpasPowerPeriodRemaining != *(a3 + 8))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_associatedSleepDuration != *(a3 + 2))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_151;
    }

    LOBYTE(v5) = (v7 & 0x10000000) == 0;
    if ((*&has & 0x10000000) != 0)
    {
      if ((v7 & 0x10000000) == 0 || self->_totalTimeForBugetExpiry != *(a3 + 29))
      {
        goto LABEL_151;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x1000000) != 0)
  {
    v33 = 2654435761u * self->_timestamp;
    if (*&has)
    {
LABEL_3:
      v32 = 2654435761u * self->_associatedDuration;
      if ((*&has & 0x800000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v33 = 0;
    if (*&has)
    {
      goto LABEL_3;
    }
  }

  v32 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_4:
    v31 = 2654435761u * self->_sleepDuration;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  v31 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_5:
    v3 = 2654435761u * self->_roamDuration;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  v3 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_6:
    v4 = 2654435761u * self->_phyOffDuration;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_7:
    v5 = 2654435761u * self->_transmitDuration;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  v5 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_8:
    v6 = 2654435761u * self->_receiveDuration;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v6 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_9:
    v7 = 2654435761u * self->_totalLPASDuration;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v7 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_10:
    v8 = 2654435761u * self->_powerConsumedInSelfManagedLPASMode;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v8 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_11:
    v9 = 2654435761u * self->_powerConsumptionDueToMac;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v9 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_12:
    v10 = 2654435761u * self->_powerConsumptionDueToRF;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v10 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_13:
    v11 = 2654435761u * self->_powerConsumptionDueToUserScan;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v11 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_14:
    v12 = 2654435761u * self->_powerConsumptionDueToRoamScan;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v12 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_15:
    v13 = 2654435761u * self->_powerConsumptionDueToAssocScan;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v13 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_16:
    v14 = 2654435761u * self->_powerConsumptionDueToEPNOScan;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v14 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_17:
    v15 = 2654435761u * self->_powerConsumptionDueToTx;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v15 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_18:
    v16 = 2654435761u * self->_powerConsumptionDueToRx;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_19:
    v17 = 2654435761u * self->_powerConsumptionDueToFRTS;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_20:
    v18 = 2654435761u * self->_powerConsumptionDueToAWDLTx;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_21:
    v19 = 2654435761u * self->_powerConsumptionDueToAWDLRx;
    if ((*&has & 4) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v19 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_22:
    v20 = 2654435761u * self->_beaconReceivedInLpas;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v20 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_23:
    v21 = 2654435761u * self->_beaconsMissedInLpas;
    if ((*&has & 8) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v21 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_24:
    v22 = 2654435761u * self->_beaconsEarlyTerminatedInLpas;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v22 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_25:
    v23 = 2654435761u * self->_beaconsScheduledInLpas;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v23 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_26:
    v24 = 2654435761u * self->_totalLpasPowerBudget;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v24 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_27:
    v25 = 2654435761u * self->_lpasPowerBudgetRemaining;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  v25 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_28:
    v26 = 2654435761u * self->_totalLpasPowerMonitoringPeriod;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v26 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_29:
    v27 = 2654435761u * self->_lpasPowerPeriodRemaining;
    if ((*&has & 2) != 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v28 = 0;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_31;
    }

LABEL_61:
    v29 = 0;
    return v32 ^ v33 ^ v31 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  }

LABEL_59:
  v27 = 0;
  if ((*&has & 2) == 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  v28 = 2654435761u * self->_associatedSleepDuration;
  if ((*&has & 0x10000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_31:
  v29 = 2654435761u * self->_totalTimeForBugetExpiry;
  return v32 ^ v33 ^ v31 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 62);
  if ((v3 & 0x1000000) != 0)
  {
    self->_timestamp = *(a3 + 25);
    *&self->_has |= 0x1000000u;
    v3 = *(a3 + 62);
    if ((v3 & 1) == 0)
    {
LABEL_3:
      if ((v3 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_associatedDuration = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 62);
  if ((v3 & 0x800000) == 0)
  {
LABEL_4:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_sleepDuration = *(a3 + 24);
  *&self->_has |= 0x800000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x400000) == 0)
  {
LABEL_5:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_roamDuration = *(a3 + 23);
  *&self->_has |= 0x400000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x100) == 0)
  {
LABEL_6:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_phyOffDuration = *(a3 + 9);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 62);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_7:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_transmitDuration = *(a3 + 30);
  *&self->_has |= 0x20000000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x200000) == 0)
  {
LABEL_8:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_receiveDuration = *(a3 + 22);
  *&self->_has |= 0x200000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x2000000) == 0)
  {
LABEL_9:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_totalLPASDuration = *(a3 + 26);
  *&self->_has |= 0x2000000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x200) == 0)
  {
LABEL_10:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_powerConsumedInSelfManagedLPASMode = *(a3 + 10);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 62);
  if ((v3 & 0x8000) == 0)
  {
LABEL_11:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_powerConsumptionDueToMac = *(a3 + 16);
  *&self->_has |= 0x8000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x10000) == 0)
  {
LABEL_12:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_powerConsumptionDueToRF = *(a3 + 17);
  *&self->_has |= 0x10000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x100000) == 0)
  {
LABEL_13:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_powerConsumptionDueToUserScan = *(a3 + 21);
  *&self->_has |= 0x100000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x20000) == 0)
  {
LABEL_14:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_powerConsumptionDueToRoamScan = *(a3 + 18);
  *&self->_has |= 0x20000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x1000) == 0)
  {
LABEL_15:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_powerConsumptionDueToAssocScan = *(a3 + 13);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x2000) == 0)
  {
LABEL_16:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_powerConsumptionDueToEPNOScan = *(a3 + 14);
  *&self->_has |= 0x2000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x80000) == 0)
  {
LABEL_17:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_powerConsumptionDueToTx = *(a3 + 20);
  *&self->_has |= 0x80000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x40000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_powerConsumptionDueToRx = *(a3 + 19);
  *&self->_has |= 0x40000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_powerConsumptionDueToFRTS = *(a3 + 15);
  *&self->_has |= 0x4000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x800) == 0)
  {
LABEL_20:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_powerConsumptionDueToAWDLTx = *(a3 + 12);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 62);
  if ((v3 & 0x400) == 0)
  {
LABEL_21:
    if ((v3 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_powerConsumptionDueToAWDLRx = *(a3 + 11);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 62);
  if ((v3 & 4) == 0)
  {
LABEL_22:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_beaconReceivedInLpas = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 62);
  if ((v3 & 0x10) == 0)
  {
LABEL_23:
    if ((v3 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_beaconsMissedInLpas = *(a3 + 5);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 62);
  if ((v3 & 8) == 0)
  {
LABEL_24:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_beaconsEarlyTerminatedInLpas = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 62);
  if ((v3 & 0x20) == 0)
  {
LABEL_25:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_beaconsScheduledInLpas = *(a3 + 6);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 62);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_26:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_totalLpasPowerBudget = *(a3 + 27);
  *&self->_has |= 0x4000000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x40) == 0)
  {
LABEL_27:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_lpasPowerBudgetRemaining = *(a3 + 7);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 62);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_totalLpasPowerMonitoringPeriod = *(a3 + 28);
  *&self->_has |= 0x8000000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x80) == 0)
  {
LABEL_29:
    if ((v3 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_lpasPowerPeriodRemaining = *(a3 + 8);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 62);
  if ((v3 & 2) == 0)
  {
LABEL_30:
    if ((v3 & 0x10000000) == 0)
    {
      return;
    }

LABEL_61:
    self->_totalTimeForBugetExpiry = *(a3 + 29);
    *&self->_has |= 0x10000000u;
    return;
  }

LABEL_60:
  self->_associatedSleepDuration = *(a3 + 2);
  *&self->_has |= 2u;
  if ((*(a3 + 62) & 0x10000000) != 0)
  {
    goto LABEL_61;
  }
}

@end