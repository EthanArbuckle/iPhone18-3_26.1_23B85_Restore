@interface AppTelemetryFPFSMigrationInvestigation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBouncedItemsCount:(BOOL)a3;
- (void)setHasBouncedItemsMatrix:(BOOL)a3;
- (void)setHasBusyDateNotMigratedCount:(BOOL)a3;
- (void)setHasChildItemsNotMigratedCount:(BOOL)a3;
- (void)setHasDurationBetweenDbCreationAndMigrationStart:(BOOL)a3;
- (void)setHasIgnoredFromSyncItemsNotMigratedCount:(BOOL)a3;
- (void)setHasImportTime:(BOOL)a3;
- (void)setHasIsAccountDataSeparated:(BOOL)a3;
- (void)setHasIsStreamResetRunning:(BOOL)a3;
- (void)setHasIsSuccessful:(BOOL)a3;
- (void)setHasItemsMigratedWithoutAlreadyMayExistFlag:(BOOL)a3;
- (void)setHasItemsNotFoundInDB:(BOOL)a3;
- (void)setHasItemsNotMigratedCount:(BOOL)a3;
- (void)setHasItemsNotMigratedDelta:(BOOL)a3;
- (void)setHasItemsReconciledInFileProvider:(BOOL)a3;
- (void)setHasItemsReconciledInFileProviderDelta:(BOOL)a3;
- (void)setHasNumberOfItemsPendingReconciliation:(BOOL)a3;
- (void)setHasNumberOfItemsPendingScanningDisk:(BOOL)a3;
- (void)setHasNumberOfItemsPendingScanningProvider:(BOOL)a3;
- (void)setHasNumberOfItemsPendingSelection:(BOOL)a3;
- (void)setHasStateOfDownloadJobs:(BOOL)a3;
- (void)setHasStateOfOtherJobs:(BOOL)a3;
- (void)setHasStateOfUploadJobs:(BOOL)a3;
- (void)setHasTotalItemCount:(BOOL)a3;
- (void)setHasTypesOfMigratedItemsMask:(BOOL)a3;
- (void)setHasTypesOfNonMigratedItemsMask:(BOOL)a3;
- (void)setHasXpcActivityDasdContext:(BOOL)a3;
- (void)setHasXpcActivityIsActive:(BOOL)a3;
- (void)setHasXpcActivityRegisteredWithDuet:(BOOL)a3;
- (void)setHasXpcActivityTimeSinceLastAbleToRun:(BOOL)a3;
- (void)setHasXpcActivityTimeSinceLastActivation:(BOOL)a3;
- (void)setHasXpcActivityTimeSinceLastRegistration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AppTelemetryFPFSMigrationInvestigation

- (void)setHasIsSuccessful:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasItemsNotMigratedCount:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasTotalItemCount:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasIsAccountDataSeparated:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasImportTime:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasTypesOfMigratedItemsMask:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasTypesOfNonMigratedItemsMask:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasItemsNotFoundInDB:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasBouncedItemsCount:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasBouncedItemsMatrix:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasBusyDateNotMigratedCount:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasChildItemsNotMigratedCount:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasIgnoredFromSyncItemsNotMigratedCount:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasItemsReconciledInFileProvider:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasItemsMigratedWithoutAlreadyMayExistFlag:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasDurationBetweenDbCreationAndMigrationStart:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasIsStreamResetRunning:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasStateOfDownloadJobs:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasStateOfUploadJobs:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasStateOfOtherJobs:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasNumberOfItemsPendingReconciliation:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasNumberOfItemsPendingSelection:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasNumberOfItemsPendingScanningDisk:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasNumberOfItemsPendingScanningProvider:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasXpcActivityRegisteredWithDuet:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasXpcActivityTimeSinceLastRegistration:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasXpcActivityIsActive:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasXpcActivityTimeSinceLastActivation:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasXpcActivityDasdContext:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasItemsNotMigratedDelta:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasItemsReconciledInFileProviderDelta:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasXpcActivityTimeSinceLastAbleToRun:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AppTelemetryFPFSMigrationInvestigation;
  v4 = [(AppTelemetryFPFSMigrationInvestigation *)&v8 description];
  v5 = [(AppTelemetryFPFSMigrationInvestigation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSuccessful];
    [v3 setObject:v13 forKey:@"isSuccessful"];

    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemsNotMigratedCount];
  [v3 setObject:v14 forKey:@"itemsNotMigratedCount"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_4:
    if ((*&has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_totalItemCount];
  [v3 setObject:v15 forKey:@"totalItemCount"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_accountQuotaUsage];
  [v3 setObject:v16 forKey:@"accountQuotaUsage"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAccountDataSeparated];
  [v3 setObject:v17 forKey:@"isAccountDataSeparated"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_importTime];
  [v3 setObject:v18 forKey:@"importTime"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  v19 = [MEMORY[0x277CCABB0] numberWithInt:self->_typesOfMigratedItemsMask];
  [v3 setObject:v19 forKey:@"typesOfMigratedItemsMask"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  v20 = [MEMORY[0x277CCABB0] numberWithInt:self->_typesOfNonMigratedItemsMask];
  [v3 setObject:v20 forKey:@"typesOfNonMigratedItemsMask"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemsNotFoundInDB];
  [v3 setObject:v21 forKey:@"itemsNotFoundInDB"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_52:
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_bouncedItemsCount];
  [v3 setObject:v22 forKey:@"bouncedItemsCount"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_bouncedItemsMatrix];
    [v3 setObject:v5 forKey:@"bouncedItemsMatrix"];
  }

LABEL_13:
  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    [v3 setObject:treatmentId forKey:@"treatmentId"];
  }

  experimentId = self->_experimentId;
  if (experimentId)
  {
    [v3 setObject:experimentId forKey:@"experimentId"];
  }

  rampId = self->_rampId;
  if (rampId)
  {
    [v3 setObject:rampId forKey:@"rampId"];
  }

  v9 = self->_has;
  if ((*&v9 & 8) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_busyDateNotMigratedCount];
    [v3 setObject:v23 forKey:@"busyDateNotMigratedCount"];

    v9 = self->_has;
    if ((*&v9 & 0x10) == 0)
    {
LABEL_21:
      if ((*&v9 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v9 & 0x10) == 0)
  {
    goto LABEL_21;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_childItemsNotMigratedCount];
  [v3 setObject:v24 forKey:@"childItemsNotMigratedCount"];

  v9 = self->_has;
  if ((*&v9 & 0x40) == 0)
  {
LABEL_22:
    if ((*&v9 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  v25 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_ignoredFromSyncItemsNotMigratedCount];
  [v3 setObject:v25 forKey:@"ignoredFromSyncItemsNotMigratedCount"];

  v9 = self->_has;
  if ((*&v9 & 0x1000) == 0)
  {
LABEL_23:
    if ((*&v9 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  v26 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemsReconciledInFileProvider];
  [v3 setObject:v26 forKey:@"itemsReconciledInFileProvider"];

  v9 = self->_has;
  if ((*&v9 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v9 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  v27 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemsMigratedWithoutAlreadyMayExistFlag];
  [v3 setObject:v27 forKey:@"itemsMigratedWithoutAlreadyMayExistFlag"];

  v9 = self->_has;
  if ((*&v9 & 0x20) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  v28 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_durationBetweenDbCreationAndMigrationStart];
  [v3 setObject:v28 forKey:@"durationBetweenDbCreationAndMigrationStart"];

  v9 = self->_has;
  if ((*&v9 & 0x20000000) == 0)
  {
LABEL_26:
    if ((*&v9 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  v29 = [MEMORY[0x277CCABB0] numberWithBool:self->_isStreamResetRunning];
  [v3 setObject:v29 forKey:@"isStreamResetRunning"];

  v9 = self->_has;
  if ((*&v9 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  v30 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_stateOfDownloadJobs];
  [v3 setObject:v30 forKey:@"stateOfDownloadJobs"];

  v9 = self->_has;
  if ((*&v9 & 0x100000) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  v31 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_stateOfUploadJobs];
  [v3 setObject:v31 forKey:@"stateOfUploadJobs"];

  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  v32 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_stateOfOtherJobs];
  [v3 setObject:v32 forKey:@"stateOfOtherJobs"];

  v9 = self->_has;
  if ((*&v9 & 0x4000) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  v33 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberOfItemsPendingReconciliation];
  [v3 setObject:v33 forKey:@"numberOfItemsPendingReconciliation"];

  v9 = self->_has;
  if ((*&v9 & 0x20000) == 0)
  {
LABEL_31:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_66;
  }

LABEL_65:
  v34 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberOfItemsPendingSelection];
  [v3 setObject:v34 forKey:@"numberOfItemsPendingSelection"];

  v9 = self->_has;
  if ((*&v9 & 0x8000) == 0)
  {
LABEL_32:
    if ((*&v9 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_66:
  v35 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberOfItemsPendingScanningDisk];
  [v3 setObject:v35 forKey:@"numberOfItemsPendingScanningDisk"];

  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_33:
    if ((*&v9 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_67:
  v36 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberOfItemsPendingScanningProvider];
  [v3 setObject:v36 forKey:@"numberOfItemsPendingScanningProvider"];

  v9 = self->_has;
  if ((*&v9 & 0x100000000) == 0)
  {
LABEL_34:
    if ((*&v9 & 0x2000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_69;
  }

LABEL_68:
  v37 = [MEMORY[0x277CCABB0] numberWithBool:self->_xpcActivityRegisteredWithDuet];
  [v3 setObject:v37 forKey:@"xpcActivityRegisteredWithDuet"];

  v9 = self->_has;
  if ((*&v9 & 0x2000000) == 0)
  {
LABEL_35:
    if ((*&v9 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_70;
  }

LABEL_69:
  v38 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_xpcActivityTimeSinceLastRegistration];
  [v3 setObject:v38 forKey:@"xpcActivityTimeSinceLastRegistration"];

  v9 = self->_has;
  if ((*&v9 & 0x80000000) == 0)
  {
LABEL_36:
    if ((*&v9 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_71;
  }

LABEL_70:
  v39 = [MEMORY[0x277CCABB0] numberWithBool:self->_xpcActivityIsActive];
  [v3 setObject:v39 forKey:@"xpcActivityIsActive"];

  v9 = self->_has;
  if ((*&v9 & 0x1000000) == 0)
  {
LABEL_37:
    if ((*&v9 & 0x400000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_72;
  }

LABEL_71:
  v40 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_xpcActivityTimeSinceLastActivation];
  [v3 setObject:v40 forKey:@"xpcActivityTimeSinceLastActivation"];

  v9 = self->_has;
  if ((*&v9 & 0x400000) == 0)
  {
LABEL_38:
    if ((*&v9 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_73;
  }

LABEL_72:
  v41 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_xpcActivityDasdContext];
  [v3 setObject:v41 forKey:@"xpcActivityDasdContext"];

  v9 = self->_has;
  if ((*&v9 & 0x800) == 0)
  {
LABEL_39:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

LABEL_74:
    v43 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemsReconciledInFileProviderDelta];
    [v3 setObject:v43 forKey:@"itemsReconciledInFileProviderDelta"];

    if ((*&self->_has & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_73:
  v42 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemsNotMigratedDelta];
  [v3 setObject:v42 forKey:@"itemsNotMigratedDelta"];

  v9 = self->_has;
  if ((*&v9 & 0x2000) != 0)
  {
    goto LABEL_74;
  }

LABEL_40:
  if ((*&v9 & 0x800000) != 0)
  {
LABEL_41:
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_xpcActivityTimeSinceLastAbleToRun];
    [v3 setObject:v10 forKey:@"xpcActivityTimeSinceLastAbleToRun"];
  }

LABEL_42:
  v11 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v39 = a3;
  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    isSuccessful = self->_isSuccessful;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  itemsNotMigratedCount = self->_itemsNotMigratedCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_4:
    if ((*&has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  totalItemCount = self->_totalItemCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  accountQuotaUsage = self->_accountQuotaUsage;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  isAccountDataSeparated = self->_isAccountDataSeparated;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  importTime = self->_importTime;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  typesOfMigratedItemsMask = self->_typesOfMigratedItemsMask;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  typesOfNonMigratedItemsMask = self->_typesOfNonMigratedItemsMask;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  itemsNotFoundInDB = self->_itemsNotFoundInDB;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_54:
  bouncedItemsCount = self->_bouncedItemsCount;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    bouncedItemsMatrix = self->_bouncedItemsMatrix;
    PBDataWriterWriteInt64Field();
  }

LABEL_13:
  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_rampId)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
    busyDateNotMigratedCount = self->_busyDateNotMigratedCount;
    PBDataWriterWriteInt64Field();
    v6 = self->_has;
    if ((*&v6 & 0x10) == 0)
    {
LABEL_21:
      if ((*&v6 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v6 & 0x10) == 0)
  {
    goto LABEL_21;
  }

  childItemsNotMigratedCount = self->_childItemsNotMigratedCount;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  ignoredFromSyncItemsNotMigratedCount = self->_ignoredFromSyncItemsNotMigratedCount;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  itemsReconciledInFileProvider = self->_itemsReconciledInFileProvider;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  itemsMigratedWithoutAlreadyMayExistFlag = self->_itemsMigratedWithoutAlreadyMayExistFlag;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  durationBetweenDbCreationAndMigrationStart = self->_durationBetweenDbCreationAndMigrationStart;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  isStreamResetRunning = self->_isStreamResetRunning;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  stateOfDownloadJobs = self->_stateOfDownloadJobs;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  stateOfUploadJobs = self->_stateOfUploadJobs;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  stateOfOtherJobs = self->_stateOfOtherJobs;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  numberOfItemsPendingReconciliation = self->_numberOfItemsPendingReconciliation;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  numberOfItemsPendingSelection = self->_numberOfItemsPendingSelection;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  numberOfItemsPendingScanningDisk = self->_numberOfItemsPendingScanningDisk;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  numberOfItemsPendingScanningProvider = self->_numberOfItemsPendingScanningProvider;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x100000000) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_71;
  }

LABEL_70:
  xpcActivityRegisteredWithDuet = self->_xpcActivityRegisteredWithDuet;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_72;
  }

LABEL_71:
  xpcActivityTimeSinceLastRegistration = self->_xpcActivityTimeSinceLastRegistration;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_73;
  }

LABEL_72:
  xpcActivityIsActive = self->_xpcActivityIsActive;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_37:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_74;
  }

LABEL_73:
  xpcActivityTimeSinceLastActivation = self->_xpcActivityTimeSinceLastActivation;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_38:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_74:
  xpcActivityDasdContext = self->_xpcActivityDasdContext;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_39:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_76;
  }

LABEL_75:
  itemsNotMigratedDelta = self->_itemsNotMigratedDelta;
  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_40:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_76:
  itemsReconciledInFileProviderDelta = self->_itemsReconciledInFileProviderDelta;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_41:
    xpcActivityTimeSinceLastAbleToRun = self->_xpcActivityTimeSinceLastAbleToRun;
    PBDataWriterWriteInt64Field();
  }

LABEL_42:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    v4[250] = self->_isSuccessful;
    *(v4 + 32) |= 0x40000000uLL;
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 11) = self->_itemsNotMigratedCount;
  *(v4 + 32) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_4:
    if ((*&has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 22) = self->_totalItemCount;
  *(v4 + 32) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 1) = self->_accountQuotaUsage;
  *(v4 + 32) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  v4[248] = self->_isAccountDataSeparated;
  *(v4 + 32) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 8) = *&self->_importTime;
  *(v4 + 32) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 60) = self->_typesOfMigratedItemsMask;
  *(v4 + 32) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 61) = self->_typesOfNonMigratedItemsMask;
  *(v4 + 32) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 10) = self->_itemsNotFoundInDB;
  *(v4 + 32) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_54:
  *(v4 + 2) = self->_bouncedItemsCount;
  *(v4 + 32) |= 2uLL;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(v4 + 3) = self->_bouncedItemsMatrix;
    *(v4 + 32) |= 4uLL;
  }

LABEL_13:
  v7 = v4;
  if (self->_treatmentId)
  {
    [v4 setTreatmentId:?];
    v4 = v7;
  }

  if (self->_experimentId)
  {
    [v7 setExperimentId:?];
    v4 = v7;
  }

  if (self->_rampId)
  {
    [v7 setRampId:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
    *(v4 + 4) = self->_busyDateNotMigratedCount;
    *(v4 + 32) |= 8uLL;
    v6 = self->_has;
    if ((*&v6 & 0x10) == 0)
    {
LABEL_21:
      if ((*&v6 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v6 & 0x10) == 0)
  {
    goto LABEL_21;
  }

  *(v4 + 5) = self->_childItemsNotMigratedCount;
  *(v4 + 32) |= 0x10uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 7) = self->_ignoredFromSyncItemsNotMigratedCount;
  *(v4 + 32) |= 0x40uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 13) = self->_itemsReconciledInFileProvider;
  *(v4 + 32) |= 0x1000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 9) = self->_itemsMigratedWithoutAlreadyMayExistFlag;
  *(v4 + 32) |= 0x100uLL;
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v4 + 6) = self->_durationBetweenDbCreationAndMigrationStart;
  *(v4 + 32) |= 0x20uLL;
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  v4[249] = self->_isStreamResetRunning;
  *(v4 + 32) |= 0x20000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v4 + 19) = self->_stateOfDownloadJobs;
  *(v4 + 32) |= 0x40000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v4 + 21) = self->_stateOfUploadJobs;
  *(v4 + 32) |= 0x100000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v4 + 20) = self->_stateOfOtherJobs;
  *(v4 + 32) |= 0x80000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v4 + 15) = self->_numberOfItemsPendingReconciliation;
  *(v4 + 32) |= 0x4000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v4 + 18) = self->_numberOfItemsPendingSelection;
  *(v4 + 32) |= 0x20000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v4 + 16) = self->_numberOfItemsPendingScanningDisk;
  *(v4 + 32) |= 0x8000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 17) = self->_numberOfItemsPendingScanningProvider;
  *(v4 + 32) |= 0x10000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100000000) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_71;
  }

LABEL_70:
  v4[252] = self->_xpcActivityRegisteredWithDuet;
  *(v4 + 32) |= 0x100000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v4 + 26) = self->_xpcActivityTimeSinceLastRegistration;
  *(v4 + 32) |= 0x2000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_73;
  }

LABEL_72:
  v4[251] = self->_xpcActivityIsActive;
  *(v4 + 32) |= 0x80000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_37:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v4 + 25) = self->_xpcActivityTimeSinceLastActivation;
  *(v4 + 32) |= 0x1000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_38:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v4 + 23) = self->_xpcActivityDasdContext;
  *(v4 + 32) |= 0x400000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_39:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v4 + 12) = self->_itemsNotMigratedDelta;
  *(v4 + 32) |= 0x800uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_40:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_76:
  *(v4 + 14) = self->_itemsReconciledInFileProviderDelta;
  *(v4 + 32) |= 0x2000uLL;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_41:
    *(v4 + 24) = self->_xpcActivityTimeSinceLastAbleToRun;
    *(v4 + 32) |= 0x800000uLL;
  }

LABEL_42:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    *(v5 + 250) = self->_isSuccessful;
    *(v5 + 256) |= 0x40000000uLL;
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 88) = self->_itemsNotMigratedCount;
  *(v5 + 256) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_4:
    if ((*&has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 176) = self->_totalItemCount;
  *(v5 + 256) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 8) = self->_accountQuotaUsage;
  *(v5 + 256) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 248) = self->_isAccountDataSeparated;
  *(v5 + 256) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 64) = self->_importTime;
  *(v5 + 256) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 240) = self->_typesOfMigratedItemsMask;
  *(v5 + 256) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 244) = self->_typesOfNonMigratedItemsMask;
  *(v5 + 256) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 80) = self->_itemsNotFoundInDB;
  *(v5 + 256) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_46:
  *(v5 + 16) = self->_bouncedItemsCount;
  *(v5 + 256) |= 2uLL;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(v5 + 24) = self->_bouncedItemsMatrix;
    *(v5 + 256) |= 4uLL;
  }

LABEL_13:
  v8 = [(NSString *)self->_treatmentId copyWithZone:a3];
  v9 = *(v6 + 232);
  *(v6 + 232) = v8;

  v10 = [(NSString *)self->_experimentId copyWithZone:a3];
  v11 = *(v6 + 216);
  *(v6 + 216) = v10;

  v12 = [(NSString *)self->_rampId copyWithZone:a3];
  v13 = *(v6 + 224);
  *(v6 + 224) = v12;

  v14 = self->_has;
  if ((*&v14 & 8) != 0)
  {
    *(v6 + 32) = self->_busyDateNotMigratedCount;
    *(v6 + 256) |= 8uLL;
    v14 = self->_has;
    if ((*&v14 & 0x10) == 0)
    {
LABEL_15:
      if ((*&v14 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }
  }

  else if ((*&v14 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  *(v6 + 40) = self->_childItemsNotMigratedCount;
  *(v6 + 256) |= 0x10uLL;
  v14 = self->_has;
  if ((*&v14 & 0x40) == 0)
  {
LABEL_16:
    if ((*&v14 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v6 + 56) = self->_ignoredFromSyncItemsNotMigratedCount;
  *(v6 + 256) |= 0x40uLL;
  v14 = self->_has;
  if ((*&v14 & 0x1000) == 0)
  {
LABEL_17:
    if ((*&v14 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 104) = self->_itemsReconciledInFileProvider;
  *(v6 + 256) |= 0x1000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x100) == 0)
  {
LABEL_18:
    if ((*&v14 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 72) = self->_itemsMigratedWithoutAlreadyMayExistFlag;
  *(v6 + 256) |= 0x100uLL;
  v14 = self->_has;
  if ((*&v14 & 0x20) == 0)
  {
LABEL_19:
    if ((*&v14 & 0x20000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 48) = self->_durationBetweenDbCreationAndMigrationStart;
  *(v6 + 256) |= 0x20uLL;
  v14 = self->_has;
  if ((*&v14 & 0x20000000) == 0)
  {
LABEL_20:
    if ((*&v14 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v6 + 249) = self->_isStreamResetRunning;
  *(v6 + 256) |= 0x20000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x40000) == 0)
  {
LABEL_21:
    if ((*&v14 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v6 + 152) = self->_stateOfDownloadJobs;
  *(v6 + 256) |= 0x40000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x100000) == 0)
  {
LABEL_22:
    if ((*&v14 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v6 + 168) = self->_stateOfUploadJobs;
  *(v6 + 256) |= 0x100000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x80000) == 0)
  {
LABEL_23:
    if ((*&v14 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v6 + 160) = self->_stateOfOtherJobs;
  *(v6 + 256) |= 0x80000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x4000) == 0)
  {
LABEL_24:
    if ((*&v14 & 0x20000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 120) = self->_numberOfItemsPendingReconciliation;
  *(v6 + 256) |= 0x4000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x20000) == 0)
  {
LABEL_25:
    if ((*&v14 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v6 + 144) = self->_numberOfItemsPendingSelection;
  *(v6 + 256) |= 0x20000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x8000) == 0)
  {
LABEL_26:
    if ((*&v14 & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v6 + 128) = self->_numberOfItemsPendingScanningDisk;
  *(v6 + 256) |= 0x8000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x10000) == 0)
  {
LABEL_27:
    if ((*&v14 & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v6 + 136) = self->_numberOfItemsPendingScanningProvider;
  *(v6 + 256) |= 0x10000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x100000000) == 0)
  {
LABEL_28:
    if ((*&v14 & 0x2000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v6 + 252) = self->_xpcActivityRegisteredWithDuet;
  *(v6 + 256) |= 0x100000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x2000000) == 0)
  {
LABEL_29:
    if ((*&v14 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v6 + 208) = self->_xpcActivityTimeSinceLastRegistration;
  *(v6 + 256) |= 0x2000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x80000000) == 0)
  {
LABEL_30:
    if ((*&v14 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v6 + 251) = self->_xpcActivityIsActive;
  *(v6 + 256) |= 0x80000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x1000000) == 0)
  {
LABEL_31:
    if ((*&v14 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v6 + 200) = self->_xpcActivityTimeSinceLastActivation;
  *(v6 + 256) |= 0x1000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x400000) == 0)
  {
LABEL_32:
    if ((*&v14 & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v6 + 184) = self->_xpcActivityDasdContext;
  *(v6 + 256) |= 0x400000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x800) == 0)
  {
LABEL_33:
    if ((*&v14 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

LABEL_68:
    *(v6 + 112) = self->_itemsReconciledInFileProviderDelta;
    *(v6 + 256) |= 0x2000uLL;
    if ((*&self->_has & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_67:
  *(v6 + 96) = self->_itemsNotMigratedDelta;
  *(v6 + 256) |= 0x800uLL;
  v14 = self->_has;
  if ((*&v14 & 0x2000) != 0)
  {
    goto LABEL_68;
  }

LABEL_34:
  if ((*&v14 & 0x800000) != 0)
  {
LABEL_35:
    *(v6 + 192) = self->_xpcActivityTimeSinceLastAbleToRun;
    *(v6 + 256) |= 0x800000uLL;
  }

LABEL_36:
  v15 = v6;

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_188;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((*&has & 0x40000000) != 0)
  {
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_188;
    }

    v7 = *(v4 + 250);
    if (self->_isSuccessful)
    {
      if ((*(v4 + 250) & 1) == 0)
      {
        goto LABEL_188;
      }
    }

    else if (*(v4 + 250))
    {
      goto LABEL_188;
    }
  }

  else if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_itemsNotMigratedCount != *(v4 + 11))
    {
      goto LABEL_188;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_188;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_totalItemCount != *(v4 + 22))
    {
      goto LABEL_188;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_188;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_accountQuotaUsage != *(v4 + 1))
    {
      goto LABEL_188;
    }
  }

  else if (v6)
  {
    goto LABEL_188;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_188;
    }

    v8 = *(v4 + 248);
    if (self->_isAccountDataSeparated)
    {
      if ((*(v4 + 248) & 1) == 0)
      {
        goto LABEL_188;
      }
    }

    else if (*(v4 + 248))
    {
      goto LABEL_188;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_importTime != *(v4 + 8))
    {
      goto LABEL_188;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_188;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_typesOfMigratedItemsMask != *(v4 + 60))
    {
      goto LABEL_188;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_typesOfNonMigratedItemsMask != *(v4 + 61))
    {
      goto LABEL_188;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_itemsNotFoundInDB != *(v4 + 10))
    {
      goto LABEL_188;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_188;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_bouncedItemsCount != *(v4 + 2))
    {
      goto LABEL_188;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_188;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_bouncedItemsMatrix != *(v4 + 3))
    {
      goto LABEL_188;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_188;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(v4 + 29) && ![(NSString *)treatmentId isEqual:?])
  {
    goto LABEL_188;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(v4 + 27))
  {
    if (![(NSString *)experimentId isEqual:?])
    {
      goto LABEL_188;
    }
  }

  rampId = self->_rampId;
  if (rampId | *(v4 + 28))
  {
    if (![(NSString *)rampId isEqual:?])
    {
      goto LABEL_188;
    }
  }

  v12 = self->_has;
  v13 = *(v4 + 32);
  if ((*&v12 & 8) != 0)
  {
    if ((v13 & 8) == 0 || self->_busyDateNotMigratedCount != *(v4 + 4))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 8) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x10) != 0)
  {
    if ((v13 & 0x10) == 0 || self->_childItemsNotMigratedCount != *(v4 + 5))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x40) != 0)
  {
    if ((v13 & 0x40) == 0 || self->_ignoredFromSyncItemsNotMigratedCount != *(v4 + 7))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x40) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x1000) != 0)
  {
    if ((v13 & 0x1000) == 0 || self->_itemsReconciledInFileProvider != *(v4 + 13))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x1000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x100) != 0)
  {
    if ((v13 & 0x100) == 0 || self->_itemsMigratedWithoutAlreadyMayExistFlag != *(v4 + 9))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x100) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x20) != 0)
  {
    if ((v13 & 0x20) == 0 || self->_durationBetweenDbCreationAndMigrationStart != *(v4 + 6))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x20) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x20000000) != 0)
  {
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_188;
    }

    v14 = *(v4 + 249);
    if (self->_isStreamResetRunning)
    {
      if ((*(v4 + 249) & 1) == 0)
      {
        goto LABEL_188;
      }
    }

    else if (*(v4 + 249))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x20000000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x40000) != 0)
  {
    if ((v13 & 0x40000) == 0 || self->_stateOfDownloadJobs != *(v4 + 19))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x40000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x100000) != 0)
  {
    if ((v13 & 0x100000) == 0 || self->_stateOfUploadJobs != *(v4 + 21))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x100000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x80000) != 0)
  {
    if ((v13 & 0x80000) == 0 || self->_stateOfOtherJobs != *(v4 + 20))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x80000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x4000) != 0)
  {
    if ((v13 & 0x4000) == 0 || self->_numberOfItemsPendingReconciliation != *(v4 + 15))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x4000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x20000) != 0)
  {
    if ((v13 & 0x20000) == 0 || self->_numberOfItemsPendingSelection != *(v4 + 18))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x20000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x8000) != 0)
  {
    if ((v13 & 0x8000) == 0 || self->_numberOfItemsPendingScanningDisk != *(v4 + 16))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x8000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x10000) != 0)
  {
    if ((v13 & 0x10000) == 0 || self->_numberOfItemsPendingScanningProvider != *(v4 + 17))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x10000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x100000000) != 0)
  {
    if ((v13 & 0x100000000) == 0)
    {
      goto LABEL_188;
    }

    v15 = *(v4 + 252);
    if (self->_xpcActivityRegisteredWithDuet)
    {
      if ((*(v4 + 252) & 1) == 0)
      {
        goto LABEL_188;
      }
    }

    else if (*(v4 + 252))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x100000000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x2000000) != 0)
  {
    if ((v13 & 0x2000000) == 0 || self->_xpcActivityTimeSinceLastRegistration != *(v4 + 26))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x2000000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_155;
    }

LABEL_188:
    v17 = 0;
    goto LABEL_189;
  }

  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_188;
  }

  v16 = *(v4 + 251);
  if (self->_xpcActivityIsActive)
  {
    if ((*(v4 + 251) & 1) == 0)
    {
      goto LABEL_188;
    }
  }

  else if (*(v4 + 251))
  {
    goto LABEL_188;
  }

LABEL_155:
  if ((*&v12 & 0x1000000) != 0)
  {
    if ((v13 & 0x1000000) == 0 || self->_xpcActivityTimeSinceLastActivation != *(v4 + 25))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x1000000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x400000) != 0)
  {
    if ((v13 & 0x400000) == 0 || self->_xpcActivityDasdContext != *(v4 + 23))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x400000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x800) != 0)
  {
    if ((v13 & 0x800) == 0 || self->_itemsNotMigratedDelta != *(v4 + 12))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x800) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x2000) != 0)
  {
    if ((v13 & 0x2000) == 0 || self->_itemsReconciledInFileProviderDelta != *(v4 + 14))
    {
      goto LABEL_188;
    }
  }

  else if ((v13 & 0x2000) != 0)
  {
    goto LABEL_188;
  }

  if ((*&v12 & 0x800000) != 0)
  {
    if ((v13 & 0x800000) == 0 || self->_xpcActivityTimeSinceLastAbleToRun != *(v4 + 24))
    {
      goto LABEL_188;
    }

    v17 = 1;
  }

  else
  {
    v17 = (v13 & 0x800000) == 0;
  }

LABEL_189:

  return v17;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    v47 = 2654435761 * self->_isSuccessful;
    if ((*&has & 0x400) != 0)
    {
LABEL_3:
      v46 = 2654435761 * self->_itemsNotMigratedCount;
      if ((*&has & 0x200000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v47 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v46 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_4:
    v45 = 2654435761 * self->_totalItemCount;
    if (*&has)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v45 = 0;
  if (*&has)
  {
LABEL_5:
    v44 = 2654435761 * self->_accountQuotaUsage;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v43 = 0;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v44 = 0;
  if ((*&has & 0x10000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v43 = 2654435761 * self->_isAccountDataSeparated;
  if ((*&has & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  importTime = self->_importTime;
  if (importTime < 0.0)
  {
    importTime = -importTime;
  }

  *v2.i64 = floor(importTime + 0.5);
  v7 = (importTime - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_17:
  if ((*&has & 0x4000000) != 0)
  {
    v42 = 2654435761 * self->_typesOfMigratedItemsMask;
    if ((*&has & 0x8000000) != 0)
    {
LABEL_19:
      v41 = 2654435761 * self->_typesOfNonMigratedItemsMask;
      if ((*&has & 0x200) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v42 = 0;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_19;
    }
  }

  v41 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_20:
    v40 = 2654435761 * self->_itemsNotFoundInDB;
    if ((*&has & 2) != 0)
    {
      goto LABEL_21;
    }

LABEL_26:
    v39 = 0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

LABEL_25:
  v40 = 0;
  if ((*&has & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_21:
  v39 = 2654435761 * self->_bouncedItemsCount;
  if ((*&has & 4) != 0)
  {
LABEL_22:
    v10 = [(NSString *)self->_treatmentId hash];
    goto LABEL_28;
  }

LABEL_27:
  v10 = [(NSString *)self->_treatmentId hash];
LABEL_28:
  v11 = v10;
  v12 = [(NSString *)self->_experimentId hash];
  v13 = [(NSString *)self->_rampId hash];
  v14 = self->_has;
  if ((*&v14 & 8) != 0)
  {
    v15 = 2654435761 * self->_busyDateNotMigratedCount;
    if ((*&v14 & 0x10) != 0)
    {
LABEL_30:
      v16 = 2654435761 * self->_childItemsNotMigratedCount;
      if ((*&v14 & 0x40) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v15 = 0;
    if ((*&v14 & 0x10) != 0)
    {
      goto LABEL_30;
    }
  }

  v16 = 0;
  if ((*&v14 & 0x40) != 0)
  {
LABEL_31:
    v17 = 2654435761 * self->_ignoredFromSyncItemsNotMigratedCount;
    if ((*&v14 & 0x1000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_54;
  }

LABEL_53:
  v17 = 0;
  if ((*&v14 & 0x1000) != 0)
  {
LABEL_32:
    v18 = 2654435761 * self->_itemsReconciledInFileProvider;
    if ((*&v14 & 0x100) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_55;
  }

LABEL_54:
  v18 = 0;
  if ((*&v14 & 0x100) != 0)
  {
LABEL_33:
    v19 = 2654435761 * self->_itemsMigratedWithoutAlreadyMayExistFlag;
    if ((*&v14 & 0x20) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_56;
  }

LABEL_55:
  v19 = 0;
  if ((*&v14 & 0x20) != 0)
  {
LABEL_34:
    v20 = 2654435761 * self->_durationBetweenDbCreationAndMigrationStart;
    if ((*&v14 & 0x20000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_57;
  }

LABEL_56:
  v20 = 0;
  if ((*&v14 & 0x20000000) != 0)
  {
LABEL_35:
    v21 = 2654435761 * self->_isStreamResetRunning;
    if ((*&v14 & 0x40000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_58;
  }

LABEL_57:
  v21 = 0;
  if ((*&v14 & 0x40000) != 0)
  {
LABEL_36:
    v22 = 2654435761 * self->_stateOfDownloadJobs;
    if ((*&v14 & 0x100000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_59;
  }

LABEL_58:
  v22 = 0;
  if ((*&v14 & 0x100000) != 0)
  {
LABEL_37:
    v23 = 2654435761 * self->_stateOfUploadJobs;
    if ((*&v14 & 0x80000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_60;
  }

LABEL_59:
  v23 = 0;
  if ((*&v14 & 0x80000) != 0)
  {
LABEL_38:
    v24 = 2654435761 * self->_stateOfOtherJobs;
    if ((*&v14 & 0x4000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_61;
  }

LABEL_60:
  v24 = 0;
  if ((*&v14 & 0x4000) != 0)
  {
LABEL_39:
    v25 = 2654435761 * self->_numberOfItemsPendingReconciliation;
    if ((*&v14 & 0x20000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_62;
  }

LABEL_61:
  v25 = 0;
  if ((*&v14 & 0x20000) != 0)
  {
LABEL_40:
    v26 = 2654435761 * self->_numberOfItemsPendingSelection;
    if ((*&v14 & 0x8000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_63;
  }

LABEL_62:
  v26 = 0;
  if ((*&v14 & 0x8000) != 0)
  {
LABEL_41:
    v27 = 2654435761 * self->_numberOfItemsPendingScanningDisk;
    if ((*&v14 & 0x10000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_64;
  }

LABEL_63:
  v27 = 0;
  if ((*&v14 & 0x10000) != 0)
  {
LABEL_42:
    v28 = 2654435761 * self->_numberOfItemsPendingScanningProvider;
    if ((*&v14 & 0x100000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_65;
  }

LABEL_64:
  v28 = 0;
  if ((*&v14 & 0x100000000) != 0)
  {
LABEL_43:
    v29 = 2654435761 * self->_xpcActivityRegisteredWithDuet;
    if ((*&v14 & 0x2000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_66;
  }

LABEL_65:
  v29 = 0;
  if ((*&v14 & 0x2000000) != 0)
  {
LABEL_44:
    v30 = 2654435761 * self->_xpcActivityTimeSinceLastRegistration;
    if ((*&v14 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_67;
  }

LABEL_66:
  v30 = 0;
  if ((*&v14 & 0x80000000) != 0)
  {
LABEL_45:
    v31 = 2654435761 * self->_xpcActivityIsActive;
    if ((*&v14 & 0x1000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_68;
  }

LABEL_67:
  v31 = 0;
  if ((*&v14 & 0x1000000) != 0)
  {
LABEL_46:
    v32 = 2654435761 * self->_xpcActivityTimeSinceLastActivation;
    if ((*&v14 & 0x400000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_69;
  }

LABEL_68:
  v32 = 0;
  if ((*&v14 & 0x400000) != 0)
  {
LABEL_47:
    v33 = 2654435761 * self->_xpcActivityDasdContext;
    if ((*&v14 & 0x800) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_70;
  }

LABEL_69:
  v33 = 0;
  if ((*&v14 & 0x800) != 0)
  {
LABEL_48:
    v34 = 2654435761 * self->_itemsNotMigratedDelta;
    if ((*&v14 & 0x2000) != 0)
    {
      goto LABEL_49;
    }

LABEL_71:
    v35 = 0;
    if ((*&v14 & 0x800000) != 0)
    {
      goto LABEL_50;
    }

LABEL_72:
    v36 = 0;
    return v46 ^ v47 ^ v45 ^ v44 ^ v43 ^ v9 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ v36;
  }

LABEL_70:
  v34 = 0;
  if ((*&v14 & 0x2000) == 0)
  {
    goto LABEL_71;
  }

LABEL_49:
  v35 = 2654435761 * self->_itemsReconciledInFileProviderDelta;
  if ((*&v14 & 0x800000) == 0)
  {
    goto LABEL_72;
  }

LABEL_50:
  v36 = 2654435761 * self->_xpcActivityTimeSinceLastAbleToRun;
  return v46 ^ v47 ^ v45 ^ v44 ^ v43 ^ v9 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ v36;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 0x40000000) != 0)
  {
    self->_isSuccessful = *(v4 + 250);
    *&self->_has |= 0x40000000uLL;
    v5 = *(v4 + 32);
    if ((v5 & 0x400) == 0)
    {
LABEL_3:
      if ((v5 & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_3;
  }

  self->_itemsNotMigratedCount = *(v4 + 11);
  *&self->_has |= 0x400uLL;
  v5 = *(v4 + 32);
  if ((v5 & 0x200000) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_totalItemCount = *(v4 + 22);
  *&self->_has |= 0x200000uLL;
  v5 = *(v4 + 32);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_accountQuotaUsage = *(v4 + 1);
  *&self->_has |= 1uLL;
  v5 = *(v4 + 32);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_isAccountDataSeparated = *(v4 + 248);
  *&self->_has |= 0x10000000uLL;
  v5 = *(v4 + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_importTime = *(v4 + 8);
  *&self->_has |= 0x80uLL;
  v5 = *(v4 + 32);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_typesOfMigratedItemsMask = *(v4 + 60);
  *&self->_has |= 0x4000000uLL;
  v5 = *(v4 + 32);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_typesOfNonMigratedItemsMask = *(v4 + 61);
  *&self->_has |= 0x8000000uLL;
  v5 = *(v4 + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_itemsNotFoundInDB = *(v4 + 10);
  *&self->_has |= 0x200uLL;
  v5 = *(v4 + 32);
  if ((v5 & 2) == 0)
  {
LABEL_11:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_54:
  self->_bouncedItemsCount = *(v4 + 2);
  *&self->_has |= 2uLL;
  if ((*(v4 + 32) & 4) != 0)
  {
LABEL_12:
    self->_bouncedItemsMatrix = *(v4 + 3);
    *&self->_has |= 4uLL;
  }

LABEL_13:
  v7 = v4;
  if (*(v4 + 29))
  {
    [(AppTelemetryFPFSMigrationInvestigation *)self setTreatmentId:?];
    v4 = v7;
  }

  if (*(v4 + 27))
  {
    [(AppTelemetryFPFSMigrationInvestigation *)self setExperimentId:?];
    v4 = v7;
  }

  if (*(v4 + 28))
  {
    [(AppTelemetryFPFSMigrationInvestigation *)self setRampId:?];
    v4 = v7;
  }

  v6 = *(v4 + 32);
  if ((v6 & 8) != 0)
  {
    self->_busyDateNotMigratedCount = *(v4 + 4);
    *&self->_has |= 8uLL;
    v6 = *(v4 + 32);
    if ((v6 & 0x10) == 0)
    {
LABEL_21:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_58;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_21;
  }

  self->_childItemsNotMigratedCount = *(v4 + 5);
  *&self->_has |= 0x10uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x40) == 0)
  {
LABEL_22:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_ignoredFromSyncItemsNotMigratedCount = *(v4 + 7);
  *&self->_has |= 0x40uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x1000) == 0)
  {
LABEL_23:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_itemsReconciledInFileProvider = *(v4 + 13);
  *&self->_has |= 0x1000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x100) == 0)
  {
LABEL_24:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_itemsMigratedWithoutAlreadyMayExistFlag = *(v4 + 9);
  *&self->_has |= 0x100uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x20) == 0)
  {
LABEL_25:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_durationBetweenDbCreationAndMigrationStart = *(v4 + 6);
  *&self->_has |= 0x20uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_isStreamResetRunning = *(v4 + 249);
  *&self->_has |= 0x20000000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x40000) == 0)
  {
LABEL_27:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_stateOfDownloadJobs = *(v4 + 19);
  *&self->_has |= 0x40000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x100000) == 0)
  {
LABEL_28:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_stateOfUploadJobs = *(v4 + 21);
  *&self->_has |= 0x100000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x80000) == 0)
  {
LABEL_29:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_stateOfOtherJobs = *(v4 + 20);
  *&self->_has |= 0x80000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x4000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_numberOfItemsPendingReconciliation = *(v4 + 15);
  *&self->_has |= 0x4000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x20000) == 0)
  {
LABEL_31:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_numberOfItemsPendingSelection = *(v4 + 18);
  *&self->_has |= 0x20000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x8000) == 0)
  {
LABEL_32:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_numberOfItemsPendingScanningDisk = *(v4 + 16);
  *&self->_has |= 0x8000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x10000) == 0)
  {
LABEL_33:
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_numberOfItemsPendingScanningProvider = *(v4 + 17);
  *&self->_has |= 0x10000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x100000000) == 0)
  {
LABEL_34:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_xpcActivityRegisteredWithDuet = *(v4 + 252);
  *&self->_has |= 0x100000000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_35:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_xpcActivityTimeSinceLastRegistration = *(v4 + 26);
  *&self->_has |= 0x2000000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_xpcActivityIsActive = *(v4 + 251);
  *&self->_has |= 0x80000000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_37:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_xpcActivityTimeSinceLastActivation = *(v4 + 25);
  *&self->_has |= 0x1000000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x400000) == 0)
  {
LABEL_38:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_xpcActivityDasdContext = *(v4 + 23);
  *&self->_has |= 0x400000uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x800) == 0)
  {
LABEL_39:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_itemsNotMigratedDelta = *(v4 + 12);
  *&self->_has |= 0x800uLL;
  v6 = *(v4 + 32);
  if ((v6 & 0x2000) == 0)
  {
LABEL_40:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_76:
  self->_itemsReconciledInFileProviderDelta = *(v4 + 14);
  *&self->_has |= 0x2000uLL;
  if ((*(v4 + 32) & 0x800000) != 0)
  {
LABEL_41:
    self->_xpcActivityTimeSinceLastAbleToRun = *(v4 + 24);
    *&self->_has |= 0x800000uLL;
  }

LABEL_42:
}

@end