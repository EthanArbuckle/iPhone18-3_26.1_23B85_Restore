@interface BFFMigrationTimeRemainingController
- (BFFMigrationTimeRemainingController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (id)timeRemainingString:(double)a3;
- (void)setDeviceConnectionInformation:(id)a3;
- (void)setDeviceTransferProgress:(id)a3;
- (void)updateProgressSubtext;
@end

@implementation BFFMigrationTimeRemainingController

- (BFFMigrationTimeRemainingController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v9.receiver = self;
  v9.super_class = BFFMigrationTimeRemainingController;
  v5 = [(BFFTimeRemainingController *)&v9 initWithTitle:a3 detailText:a4 icon:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA958]);
    elapsedDurationFormatter = v5->_elapsedDurationFormatter;
    v5->_elapsedDurationFormatter = v6;

    [(NSDateComponentsFormatter *)v5->_elapsedDurationFormatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)v5->_elapsedDurationFormatter setAllowedUnits:240];
  }

  return v5;
}

- (void)setDeviceConnectionInformation:(id)a3
{
  [(BFFMigrationTimeRemainingController *)self setConnectionInfo:a3];

  [(BFFMigrationTimeRemainingController *)self updateProgressSubtext];
}

- (void)setDeviceTransferProgress:(id)a3
{
  v4 = a3;
  [v4 progress];
  [(BFFTimeRemainingController *)self setProgress:?];
  [(BFFMigrationTimeRemainingController *)self setMigrationProgress:v4];

  [(BFFMigrationTimeRemainingController *)self updateProgressSubtext];
}

- (void)updateProgressSubtext
{
  v3 = [(BFFMigrationTimeRemainingController *)self migrationProgress];
  v32 = -[BFFMigrationTimeRemainingController timeRemainingString:](self, "timeRemainingString:", [v3 minutesRemaining] * 60.0);

  if (os_variant_has_internal_ui())
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(BFFMigrationTimeRemainingController *)self migrationProgress];
    v6 = [v5 phaseDescription];
    v7 = [v4 stringWithFormat:@"Internal: %@\n", v6];
    [(BFFMigrationTimeRemainingController *)self setInternalProgressText:v7];

    v8 = MEMORY[0x277CCABB8];
    v9 = MEMORY[0x277CCABB0];
    v10 = [(BFFMigrationTimeRemainingController *)self migrationProgress];
    v11 = [v9 numberWithUnsignedLongLong:{objc_msgSend(v10, "filesTransferred")}];
    v12 = [v8 localizedStringFromNumber:v11 numberStyle:1];

    v13 = MEMORY[0x277CCABB8];
    v14 = MEMORY[0x277CCABB0];
    v15 = [(BFFMigrationTimeRemainingController *)self migrationProgress];
    v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(v15, "bytesTransferred")}];
    v17 = [v13 localizedStringFromNumber:v16 numberStyle:1];

    v18 = [(BFFMigrationTimeRemainingController *)self elapsedDurationFormatter];
    v19 = [(BFFMigrationTimeRemainingController *)self migrationProgress];
    v20 = [v19 fileTransferStartDate];
    [v20 timeIntervalSinceNow];
    v22 = [v18 stringFromTimeInterval:-v21];

    v23 = [(BFFMigrationTimeRemainingController *)self connectionInfo];
    v24 = [v23 connectionType];

    v25 = @"Unknown";
    if (v24 == 2)
    {
      v25 = @"Wireless";
    }

    if (v24 == 1)
    {
      v26 = @"Wired";
    }

    else
    {
      v26 = v25;
    }

    v27 = [(BFFMigrationTimeRemainingController *)self internalProgressText];
    v28 = [v27 stringByAppendingFormat:@"%@ files (%@ bytes)\nElapsed Time: %@\nConnection Type: %@", v12, v17, v22, v26];
    [(BFFMigrationTimeRemainingController *)self setInternalProgressText:v28];

    v29 = [MEMORY[0x277D4DA50] buddyPreferencesEphemeral];
    LODWORD(v28) = [v29 BOOLForKey:@"showInternalUI"];

    if (v28)
    {
      v30 = [(BFFMigrationTimeRemainingController *)self internalProgressText];
      v31 = [v32 stringByAppendingFormat:@"\n%@", v30];

      v32 = v31;
    }
  }

  [(OBSetupAssistantProgressController *)self setProgressText:v32];
}

- (id)timeRemainingString:(double)a3
{
  if (a3 >= 0.0)
  {
    v9.receiver = self;
    v9.super_class = BFFMigrationTimeRemainingController;
    v7 = [(BFFTimeRemainingController *)&v9 timeRemainingString:?];
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"TIME_REMAINING" value:&stru_287761F90 table:@"Localizable"];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ESTIMATING_TIME_REMAINING" value:&stru_287761F90 table:@"Localizable"];
    v7 = [v4 stringByAppendingString:v6];
  }

  return v7;
}

@end