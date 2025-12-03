@interface AppTelemetryFPFSMigrationInvestigation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBouncedItemsCount:(BOOL)count;
- (void)setHasBouncedItemsMatrix:(BOOL)matrix;
- (void)setHasBusyDateNotMigratedCount:(BOOL)count;
- (void)setHasChildItemsNotMigratedCount:(BOOL)count;
- (void)setHasDurationBetweenDbCreationAndMigrationStart:(BOOL)start;
- (void)setHasIgnoredFromSyncItemsNotMigratedCount:(BOOL)count;
- (void)setHasImportTime:(BOOL)time;
- (void)setHasIsAccountDataSeparated:(BOOL)separated;
- (void)setHasIsStreamResetRunning:(BOOL)running;
- (void)setHasIsSuccessful:(BOOL)successful;
- (void)setHasItemsMigratedWithoutAlreadyMayExistFlag:(BOOL)flag;
- (void)setHasItemsNotFoundInDB:(BOOL)b;
- (void)setHasItemsNotMigratedCount:(BOOL)count;
- (void)setHasItemsNotMigratedDelta:(BOOL)delta;
- (void)setHasItemsReconciledInFileProvider:(BOOL)provider;
- (void)setHasItemsReconciledInFileProviderDelta:(BOOL)delta;
- (void)setHasNumberOfItemsPendingReconciliation:(BOOL)reconciliation;
- (void)setHasNumberOfItemsPendingScanningDisk:(BOOL)disk;
- (void)setHasNumberOfItemsPendingScanningProvider:(BOOL)provider;
- (void)setHasNumberOfItemsPendingSelection:(BOOL)selection;
- (void)setHasStateOfDownloadJobs:(BOOL)jobs;
- (void)setHasStateOfOtherJobs:(BOOL)jobs;
- (void)setHasStateOfUploadJobs:(BOOL)jobs;
- (void)setHasTotalItemCount:(BOOL)count;
- (void)setHasTypesOfMigratedItemsMask:(BOOL)mask;
- (void)setHasTypesOfNonMigratedItemsMask:(BOOL)mask;
- (void)setHasXpcActivityDasdContext:(BOOL)context;
- (void)setHasXpcActivityIsActive:(BOOL)active;
- (void)setHasXpcActivityRegisteredWithDuet:(BOOL)duet;
- (void)setHasXpcActivityTimeSinceLastAbleToRun:(BOOL)run;
- (void)setHasXpcActivityTimeSinceLastActivation:(BOOL)activation;
- (void)setHasXpcActivityTimeSinceLastRegistration:(BOOL)registration;
- (void)writeTo:(id)to;
@end

@implementation AppTelemetryFPFSMigrationInvestigation

- (void)setHasIsSuccessful:(BOOL)successful
{
  v3 = 0x40000000;
  if (!successful)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasItemsNotMigratedCount:(BOOL)count
{
  v3 = 1024;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasTotalItemCount:(BOOL)count
{
  v3 = 0x200000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasIsAccountDataSeparated:(BOOL)separated
{
  v3 = 0x10000000;
  if (!separated)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasImportTime:(BOOL)time
{
  v3 = 128;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasTypesOfMigratedItemsMask:(BOOL)mask
{
  v3 = 0x4000000;
  if (!mask)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasTypesOfNonMigratedItemsMask:(BOOL)mask
{
  v3 = 0x8000000;
  if (!mask)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasItemsNotFoundInDB:(BOOL)b
{
  v3 = 512;
  if (!b)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasBouncedItemsCount:(BOOL)count
{
  v3 = 2;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasBouncedItemsMatrix:(BOOL)matrix
{
  v3 = 4;
  if (!matrix)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasBusyDateNotMigratedCount:(BOOL)count
{
  v3 = 8;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasChildItemsNotMigratedCount:(BOOL)count
{
  v3 = 16;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasIgnoredFromSyncItemsNotMigratedCount:(BOOL)count
{
  v3 = 64;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasItemsReconciledInFileProvider:(BOOL)provider
{
  v3 = 4096;
  if (!provider)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasItemsMigratedWithoutAlreadyMayExistFlag:(BOOL)flag
{
  v3 = 256;
  if (!flag)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasDurationBetweenDbCreationAndMigrationStart:(BOOL)start
{
  v3 = 32;
  if (!start)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasIsStreamResetRunning:(BOOL)running
{
  v3 = 0x20000000;
  if (!running)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasStateOfDownloadJobs:(BOOL)jobs
{
  v3 = 0x40000;
  if (!jobs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasStateOfUploadJobs:(BOOL)jobs
{
  v3 = 0x100000;
  if (!jobs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasStateOfOtherJobs:(BOOL)jobs
{
  v3 = 0x80000;
  if (!jobs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasNumberOfItemsPendingReconciliation:(BOOL)reconciliation
{
  v3 = 0x4000;
  if (!reconciliation)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasNumberOfItemsPendingSelection:(BOOL)selection
{
  v3 = 0x20000;
  if (!selection)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasNumberOfItemsPendingScanningDisk:(BOOL)disk
{
  v3 = 0x8000;
  if (!disk)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasNumberOfItemsPendingScanningProvider:(BOOL)provider
{
  v3 = 0x10000;
  if (!provider)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasXpcActivityRegisteredWithDuet:(BOOL)duet
{
  v3 = 0x100000000;
  if (!duet)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasXpcActivityTimeSinceLastRegistration:(BOOL)registration
{
  v3 = 0x2000000;
  if (!registration)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasXpcActivityIsActive:(BOOL)active
{
  v3 = 0x80000000;
  if (!active)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasXpcActivityTimeSinceLastActivation:(BOOL)activation
{
  v3 = 0x1000000;
  if (!activation)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasXpcActivityDasdContext:(BOOL)context
{
  v3 = 0x400000;
  if (!context)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasItemsNotMigratedDelta:(BOOL)delta
{
  v3 = 2048;
  if (!delta)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasItemsReconciledInFileProviderDelta:(BOOL)delta
{
  v3 = 0x2000;
  if (!delta)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasXpcActivityTimeSinceLastAbleToRun:(BOOL)run
{
  v3 = 0x800000;
  if (!run)
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
  dictionaryRepresentation = [(AppTelemetryFPFSMigrationInvestigation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSuccessful];
    [dictionary setObject:v13 forKey:@"isSuccessful"];

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
  [dictionary setObject:v14 forKey:@"itemsNotMigratedCount"];

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
  [dictionary setObject:v15 forKey:@"totalItemCount"];

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
  [dictionary setObject:v16 forKey:@"accountQuotaUsage"];

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
  [dictionary setObject:v17 forKey:@"isAccountDataSeparated"];

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
  [dictionary setObject:v18 forKey:@"importTime"];

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
  [dictionary setObject:v19 forKey:@"typesOfMigratedItemsMask"];

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
  [dictionary setObject:v20 forKey:@"typesOfNonMigratedItemsMask"];

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
  [dictionary setObject:v21 forKey:@"itemsNotFoundInDB"];

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
  [dictionary setObject:v22 forKey:@"bouncedItemsCount"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_bouncedItemsMatrix];
    [dictionary setObject:v5 forKey:@"bouncedItemsMatrix"];
  }

LABEL_13:
  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    [dictionary setObject:treatmentId forKey:@"treatmentId"];
  }

  experimentId = self->_experimentId;
  if (experimentId)
  {
    [dictionary setObject:experimentId forKey:@"experimentId"];
  }

  rampId = self->_rampId;
  if (rampId)
  {
    [dictionary setObject:rampId forKey:@"rampId"];
  }

  v9 = self->_has;
  if ((*&v9 & 8) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_busyDateNotMigratedCount];
    [dictionary setObject:v23 forKey:@"busyDateNotMigratedCount"];

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
  [dictionary setObject:v24 forKey:@"childItemsNotMigratedCount"];

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
  [dictionary setObject:v25 forKey:@"ignoredFromSyncItemsNotMigratedCount"];

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
  [dictionary setObject:v26 forKey:@"itemsReconciledInFileProvider"];

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
  [dictionary setObject:v27 forKey:@"itemsMigratedWithoutAlreadyMayExistFlag"];

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
  [dictionary setObject:v28 forKey:@"durationBetweenDbCreationAndMigrationStart"];

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
  [dictionary setObject:v29 forKey:@"isStreamResetRunning"];

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
  [dictionary setObject:v30 forKey:@"stateOfDownloadJobs"];

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
  [dictionary setObject:v31 forKey:@"stateOfUploadJobs"];

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
  [dictionary setObject:v32 forKey:@"stateOfOtherJobs"];

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
  [dictionary setObject:v33 forKey:@"numberOfItemsPendingReconciliation"];

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
  [dictionary setObject:v34 forKey:@"numberOfItemsPendingSelection"];

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
  [dictionary setObject:v35 forKey:@"numberOfItemsPendingScanningDisk"];

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
  [dictionary setObject:v36 forKey:@"numberOfItemsPendingScanningProvider"];

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
  [dictionary setObject:v37 forKey:@"xpcActivityRegisteredWithDuet"];

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
  [dictionary setObject:v38 forKey:@"xpcActivityTimeSinceLastRegistration"];

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
  [dictionary setObject:v39 forKey:@"xpcActivityIsActive"];

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
  [dictionary setObject:v40 forKey:@"xpcActivityTimeSinceLastActivation"];

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
  [dictionary setObject:v41 forKey:@"xpcActivityDasdContext"];

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
    [dictionary setObject:v43 forKey:@"itemsReconciledInFileProviderDelta"];

    if ((*&self->_has & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_73:
  v42 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemsNotMigratedDelta];
  [dictionary setObject:v42 forKey:@"itemsNotMigratedDelta"];

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
    [dictionary setObject:v10 forKey:@"xpcActivityTimeSinceLastAbleToRun"];
  }

LABEL_42:
  v11 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    toCopy[250] = self->_isSuccessful;
    *(toCopy + 32) |= 0x40000000uLL;
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

  *(toCopy + 11) = self->_itemsNotMigratedCount;
  *(toCopy + 32) |= 0x400uLL;
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
  *(toCopy + 22) = self->_totalItemCount;
  *(toCopy + 32) |= 0x200000uLL;
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
  *(toCopy + 1) = self->_accountQuotaUsage;
  *(toCopy + 32) |= 1uLL;
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
  toCopy[248] = self->_isAccountDataSeparated;
  *(toCopy + 32) |= 0x10000000uLL;
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
  *(toCopy + 8) = *&self->_importTime;
  *(toCopy + 32) |= 0x80uLL;
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
  *(toCopy + 60) = self->_typesOfMigratedItemsMask;
  *(toCopy + 32) |= 0x4000000uLL;
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
  *(toCopy + 61) = self->_typesOfNonMigratedItemsMask;
  *(toCopy + 32) |= 0x8000000uLL;
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
  *(toCopy + 10) = self->_itemsNotFoundInDB;
  *(toCopy + 32) |= 0x200uLL;
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
  *(toCopy + 2) = self->_bouncedItemsCount;
  *(toCopy + 32) |= 2uLL;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(toCopy + 3) = self->_bouncedItemsMatrix;
    *(toCopy + 32) |= 4uLL;
  }

LABEL_13:
  v7 = toCopy;
  if (self->_treatmentId)
  {
    [toCopy setTreatmentId:?];
    toCopy = v7;
  }

  if (self->_experimentId)
  {
    [v7 setExperimentId:?];
    toCopy = v7;
  }

  if (self->_rampId)
  {
    [v7 setRampId:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
    *(toCopy + 4) = self->_busyDateNotMigratedCount;
    *(toCopy + 32) |= 8uLL;
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

  *(toCopy + 5) = self->_childItemsNotMigratedCount;
  *(toCopy + 32) |= 0x10uLL;
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
  *(toCopy + 7) = self->_ignoredFromSyncItemsNotMigratedCount;
  *(toCopy + 32) |= 0x40uLL;
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
  *(toCopy + 13) = self->_itemsReconciledInFileProvider;
  *(toCopy + 32) |= 0x1000uLL;
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
  *(toCopy + 9) = self->_itemsMigratedWithoutAlreadyMayExistFlag;
  *(toCopy + 32) |= 0x100uLL;
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
  *(toCopy + 6) = self->_durationBetweenDbCreationAndMigrationStart;
  *(toCopy + 32) |= 0x20uLL;
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
  toCopy[249] = self->_isStreamResetRunning;
  *(toCopy + 32) |= 0x20000000uLL;
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
  *(toCopy + 19) = self->_stateOfDownloadJobs;
  *(toCopy + 32) |= 0x40000uLL;
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
  *(toCopy + 21) = self->_stateOfUploadJobs;
  *(toCopy + 32) |= 0x100000uLL;
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
  *(toCopy + 20) = self->_stateOfOtherJobs;
  *(toCopy + 32) |= 0x80000uLL;
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
  *(toCopy + 15) = self->_numberOfItemsPendingReconciliation;
  *(toCopy + 32) |= 0x4000uLL;
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
  *(toCopy + 18) = self->_numberOfItemsPendingSelection;
  *(toCopy + 32) |= 0x20000uLL;
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
  *(toCopy + 16) = self->_numberOfItemsPendingScanningDisk;
  *(toCopy + 32) |= 0x8000uLL;
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
  *(toCopy + 17) = self->_numberOfItemsPendingScanningProvider;
  *(toCopy + 32) |= 0x10000uLL;
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
  toCopy[252] = self->_xpcActivityRegisteredWithDuet;
  *(toCopy + 32) |= 0x100000000uLL;
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
  *(toCopy + 26) = self->_xpcActivityTimeSinceLastRegistration;
  *(toCopy + 32) |= 0x2000000uLL;
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
  toCopy[251] = self->_xpcActivityIsActive;
  *(toCopy + 32) |= 0x80000000uLL;
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
  *(toCopy + 25) = self->_xpcActivityTimeSinceLastActivation;
  *(toCopy + 32) |= 0x1000000uLL;
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
  *(toCopy + 23) = self->_xpcActivityDasdContext;
  *(toCopy + 32) |= 0x400000uLL;
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
  *(toCopy + 12) = self->_itemsNotMigratedDelta;
  *(toCopy + 32) |= 0x800uLL;
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
  *(toCopy + 14) = self->_itemsReconciledInFileProviderDelta;
  *(toCopy + 32) |= 0x2000uLL;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_41:
    *(toCopy + 24) = self->_xpcActivityTimeSinceLastAbleToRun;
    *(toCopy + 32) |= 0x800000uLL;
  }

LABEL_42:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(NSString *)self->_treatmentId copyWithZone:zone];
  v9 = *(v6 + 232);
  *(v6 + 232) = v8;

  v10 = [(NSString *)self->_experimentId copyWithZone:zone];
  v11 = *(v6 + 216);
  *(v6 + 216) = v10;

  v12 = [(NSString *)self->_rampId copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_188;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if ((*&has & 0x40000000) != 0)
  {
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_188;
    }

    v7 = *(equalCopy + 250);
    if (self->_isSuccessful)
    {
      if ((*(equalCopy + 250) & 1) == 0)
      {
        goto LABEL_188;
      }
    }

    else if (*(equalCopy + 250))
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
    if ((v6 & 0x400) == 0 || self->_itemsNotMigratedCount != *(equalCopy + 11))
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
    if ((v6 & 0x200000) == 0 || self->_totalItemCount != *(equalCopy + 22))
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
    if ((v6 & 1) == 0 || self->_accountQuotaUsage != *(equalCopy + 1))
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

    v8 = *(equalCopy + 248);
    if (self->_isAccountDataSeparated)
    {
      if ((*(equalCopy + 248) & 1) == 0)
      {
        goto LABEL_188;
      }
    }

    else if (*(equalCopy + 248))
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
    if ((v6 & 0x80) == 0 || self->_importTime != *(equalCopy + 8))
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
    if ((v6 & 0x4000000) == 0 || self->_typesOfMigratedItemsMask != *(equalCopy + 60))
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
    if ((v6 & 0x8000000) == 0 || self->_typesOfNonMigratedItemsMask != *(equalCopy + 61))
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
    if ((v6 & 0x200) == 0 || self->_itemsNotFoundInDB != *(equalCopy + 10))
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
    if ((v6 & 2) == 0 || self->_bouncedItemsCount != *(equalCopy + 2))
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
    if ((v6 & 4) == 0 || self->_bouncedItemsMatrix != *(equalCopy + 3))
    {
      goto LABEL_188;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_188;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(equalCopy + 29) && ![(NSString *)treatmentId isEqual:?])
  {
    goto LABEL_188;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(equalCopy + 27))
  {
    if (![(NSString *)experimentId isEqual:?])
    {
      goto LABEL_188;
    }
  }

  rampId = self->_rampId;
  if (rampId | *(equalCopy + 28))
  {
    if (![(NSString *)rampId isEqual:?])
    {
      goto LABEL_188;
    }
  }

  v12 = self->_has;
  v13 = *(equalCopy + 32);
  if ((*&v12 & 8) != 0)
  {
    if ((v13 & 8) == 0 || self->_busyDateNotMigratedCount != *(equalCopy + 4))
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
    if ((v13 & 0x10) == 0 || self->_childItemsNotMigratedCount != *(equalCopy + 5))
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
    if ((v13 & 0x40) == 0 || self->_ignoredFromSyncItemsNotMigratedCount != *(equalCopy + 7))
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
    if ((v13 & 0x1000) == 0 || self->_itemsReconciledInFileProvider != *(equalCopy + 13))
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
    if ((v13 & 0x100) == 0 || self->_itemsMigratedWithoutAlreadyMayExistFlag != *(equalCopy + 9))
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
    if ((v13 & 0x20) == 0 || self->_durationBetweenDbCreationAndMigrationStart != *(equalCopy + 6))
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

    v14 = *(equalCopy + 249);
    if (self->_isStreamResetRunning)
    {
      if ((*(equalCopy + 249) & 1) == 0)
      {
        goto LABEL_188;
      }
    }

    else if (*(equalCopy + 249))
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
    if ((v13 & 0x40000) == 0 || self->_stateOfDownloadJobs != *(equalCopy + 19))
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
    if ((v13 & 0x100000) == 0 || self->_stateOfUploadJobs != *(equalCopy + 21))
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
    if ((v13 & 0x80000) == 0 || self->_stateOfOtherJobs != *(equalCopy + 20))
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
    if ((v13 & 0x4000) == 0 || self->_numberOfItemsPendingReconciliation != *(equalCopy + 15))
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
    if ((v13 & 0x20000) == 0 || self->_numberOfItemsPendingSelection != *(equalCopy + 18))
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
    if ((v13 & 0x8000) == 0 || self->_numberOfItemsPendingScanningDisk != *(equalCopy + 16))
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
    if ((v13 & 0x10000) == 0 || self->_numberOfItemsPendingScanningProvider != *(equalCopy + 17))
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

    v15 = *(equalCopy + 252);
    if (self->_xpcActivityRegisteredWithDuet)
    {
      if ((*(equalCopy + 252) & 1) == 0)
      {
        goto LABEL_188;
      }
    }

    else if (*(equalCopy + 252))
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
    if ((v13 & 0x2000000) == 0 || self->_xpcActivityTimeSinceLastRegistration != *(equalCopy + 26))
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

  v16 = *(equalCopy + 251);
  if (self->_xpcActivityIsActive)
  {
    if ((*(equalCopy + 251) & 1) == 0)
    {
      goto LABEL_188;
    }
  }

  else if (*(equalCopy + 251))
  {
    goto LABEL_188;
  }

LABEL_155:
  if ((*&v12 & 0x1000000) != 0)
  {
    if ((v13 & 0x1000000) == 0 || self->_xpcActivityTimeSinceLastActivation != *(equalCopy + 25))
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
    if ((v13 & 0x400000) == 0 || self->_xpcActivityDasdContext != *(equalCopy + 23))
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
    if ((v13 & 0x800) == 0 || self->_itemsNotMigratedDelta != *(equalCopy + 12))
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
    if ((v13 & 0x2000) == 0 || self->_itemsReconciledInFileProviderDelta != *(equalCopy + 14))
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
    if ((v13 & 0x800000) == 0 || self->_xpcActivityTimeSinceLastAbleToRun != *(equalCopy + 24))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x40000000) != 0)
  {
    self->_isSuccessful = *(fromCopy + 250);
    *&self->_has |= 0x40000000uLL;
    v5 = *(fromCopy + 32);
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

  self->_itemsNotMigratedCount = *(fromCopy + 11);
  *&self->_has |= 0x400uLL;
  v5 = *(fromCopy + 32);
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
  self->_totalItemCount = *(fromCopy + 22);
  *&self->_has |= 0x200000uLL;
  v5 = *(fromCopy + 32);
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
  self->_accountQuotaUsage = *(fromCopy + 1);
  *&self->_has |= 1uLL;
  v5 = *(fromCopy + 32);
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
  self->_isAccountDataSeparated = *(fromCopy + 248);
  *&self->_has |= 0x10000000uLL;
  v5 = *(fromCopy + 32);
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
  self->_importTime = *(fromCopy + 8);
  *&self->_has |= 0x80uLL;
  v5 = *(fromCopy + 32);
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
  self->_typesOfMigratedItemsMask = *(fromCopy + 60);
  *&self->_has |= 0x4000000uLL;
  v5 = *(fromCopy + 32);
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
  self->_typesOfNonMigratedItemsMask = *(fromCopy + 61);
  *&self->_has |= 0x8000000uLL;
  v5 = *(fromCopy + 32);
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
  self->_itemsNotFoundInDB = *(fromCopy + 10);
  *&self->_has |= 0x200uLL;
  v5 = *(fromCopy + 32);
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
  self->_bouncedItemsCount = *(fromCopy + 2);
  *&self->_has |= 2uLL;
  if ((*(fromCopy + 32) & 4) != 0)
  {
LABEL_12:
    self->_bouncedItemsMatrix = *(fromCopy + 3);
    *&self->_has |= 4uLL;
  }

LABEL_13:
  v7 = fromCopy;
  if (*(fromCopy + 29))
  {
    [(AppTelemetryFPFSMigrationInvestigation *)self setTreatmentId:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 27))
  {
    [(AppTelemetryFPFSMigrationInvestigation *)self setExperimentId:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 28))
  {
    [(AppTelemetryFPFSMigrationInvestigation *)self setRampId:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 32);
  if ((v6 & 8) != 0)
  {
    self->_busyDateNotMigratedCount = *(fromCopy + 4);
    *&self->_has |= 8uLL;
    v6 = *(fromCopy + 32);
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

  self->_childItemsNotMigratedCount = *(fromCopy + 5);
  *&self->_has |= 0x10uLL;
  v6 = *(fromCopy + 32);
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
  self->_ignoredFromSyncItemsNotMigratedCount = *(fromCopy + 7);
  *&self->_has |= 0x40uLL;
  v6 = *(fromCopy + 32);
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
  self->_itemsReconciledInFileProvider = *(fromCopy + 13);
  *&self->_has |= 0x1000uLL;
  v6 = *(fromCopy + 32);
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
  self->_itemsMigratedWithoutAlreadyMayExistFlag = *(fromCopy + 9);
  *&self->_has |= 0x100uLL;
  v6 = *(fromCopy + 32);
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
  self->_durationBetweenDbCreationAndMigrationStart = *(fromCopy + 6);
  *&self->_has |= 0x20uLL;
  v6 = *(fromCopy + 32);
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
  self->_isStreamResetRunning = *(fromCopy + 249);
  *&self->_has |= 0x20000000uLL;
  v6 = *(fromCopy + 32);
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
  self->_stateOfDownloadJobs = *(fromCopy + 19);
  *&self->_has |= 0x40000uLL;
  v6 = *(fromCopy + 32);
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
  self->_stateOfUploadJobs = *(fromCopy + 21);
  *&self->_has |= 0x100000uLL;
  v6 = *(fromCopy + 32);
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
  self->_stateOfOtherJobs = *(fromCopy + 20);
  *&self->_has |= 0x80000uLL;
  v6 = *(fromCopy + 32);
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
  self->_numberOfItemsPendingReconciliation = *(fromCopy + 15);
  *&self->_has |= 0x4000uLL;
  v6 = *(fromCopy + 32);
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
  self->_numberOfItemsPendingSelection = *(fromCopy + 18);
  *&self->_has |= 0x20000uLL;
  v6 = *(fromCopy + 32);
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
  self->_numberOfItemsPendingScanningDisk = *(fromCopy + 16);
  *&self->_has |= 0x8000uLL;
  v6 = *(fromCopy + 32);
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
  self->_numberOfItemsPendingScanningProvider = *(fromCopy + 17);
  *&self->_has |= 0x10000uLL;
  v6 = *(fromCopy + 32);
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
  self->_xpcActivityRegisteredWithDuet = *(fromCopy + 252);
  *&self->_has |= 0x100000000uLL;
  v6 = *(fromCopy + 32);
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
  self->_xpcActivityTimeSinceLastRegistration = *(fromCopy + 26);
  *&self->_has |= 0x2000000uLL;
  v6 = *(fromCopy + 32);
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
  self->_xpcActivityIsActive = *(fromCopy + 251);
  *&self->_has |= 0x80000000uLL;
  v6 = *(fromCopy + 32);
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
  self->_xpcActivityTimeSinceLastActivation = *(fromCopy + 25);
  *&self->_has |= 0x1000000uLL;
  v6 = *(fromCopy + 32);
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
  self->_xpcActivityDasdContext = *(fromCopy + 23);
  *&self->_has |= 0x400000uLL;
  v6 = *(fromCopy + 32);
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
  self->_itemsNotMigratedDelta = *(fromCopy + 12);
  *&self->_has |= 0x800uLL;
  v6 = *(fromCopy + 32);
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
  self->_itemsReconciledInFileProviderDelta = *(fromCopy + 14);
  *&self->_has |= 0x2000uLL;
  if ((*(fromCopy + 32) & 0x800000) != 0)
  {
LABEL_41:
    self->_xpcActivityTimeSinceLastAbleToRun = *(fromCopy + 24);
    *&self->_has |= 0x800000uLL;
  }

LABEL_42:
}

@end