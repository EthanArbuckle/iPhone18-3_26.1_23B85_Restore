@interface BFFMigrationTimeRemainingController
- (BFFMigrationTimeRemainingController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (id)timeRemainingString:(double)string;
- (void)setDeviceConnectionInformation:(id)information;
- (void)setDeviceTransferProgress:(id)progress;
- (void)updateProgressSubtext;
@end

@implementation BFFMigrationTimeRemainingController

- (BFFMigrationTimeRemainingController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  v9.receiver = self;
  v9.super_class = BFFMigrationTimeRemainingController;
  v5 = [(BFFTimeRemainingController *)&v9 initWithTitle:title detailText:text icon:icon];
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

- (void)setDeviceConnectionInformation:(id)information
{
  [(BFFMigrationTimeRemainingController *)self setConnectionInfo:information];

  [(BFFMigrationTimeRemainingController *)self updateProgressSubtext];
}

- (void)setDeviceTransferProgress:(id)progress
{
  progressCopy = progress;
  [progressCopy progress];
  [(BFFTimeRemainingController *)self setProgress:?];
  [(BFFMigrationTimeRemainingController *)self setMigrationProgress:progressCopy];

  [(BFFMigrationTimeRemainingController *)self updateProgressSubtext];
}

- (void)updateProgressSubtext
{
  migrationProgress = [(BFFMigrationTimeRemainingController *)self migrationProgress];
  v32 = -[BFFMigrationTimeRemainingController timeRemainingString:](self, "timeRemainingString:", [migrationProgress minutesRemaining] * 60.0);

  if (os_variant_has_internal_ui())
  {
    v4 = MEMORY[0x277CCACA8];
    migrationProgress2 = [(BFFMigrationTimeRemainingController *)self migrationProgress];
    phaseDescription = [migrationProgress2 phaseDescription];
    v7 = [v4 stringWithFormat:@"Internal: %@\n", phaseDescription];
    [(BFFMigrationTimeRemainingController *)self setInternalProgressText:v7];

    v8 = MEMORY[0x277CCABB8];
    v9 = MEMORY[0x277CCABB0];
    migrationProgress3 = [(BFFMigrationTimeRemainingController *)self migrationProgress];
    v11 = [v9 numberWithUnsignedLongLong:{objc_msgSend(migrationProgress3, "filesTransferred")}];
    v12 = [v8 localizedStringFromNumber:v11 numberStyle:1];

    v13 = MEMORY[0x277CCABB8];
    v14 = MEMORY[0x277CCABB0];
    migrationProgress4 = [(BFFMigrationTimeRemainingController *)self migrationProgress];
    v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(migrationProgress4, "bytesTransferred")}];
    v17 = [v13 localizedStringFromNumber:v16 numberStyle:1];

    elapsedDurationFormatter = [(BFFMigrationTimeRemainingController *)self elapsedDurationFormatter];
    migrationProgress5 = [(BFFMigrationTimeRemainingController *)self migrationProgress];
    fileTransferStartDate = [migrationProgress5 fileTransferStartDate];
    [fileTransferStartDate timeIntervalSinceNow];
    v22 = [elapsedDurationFormatter stringFromTimeInterval:-v21];

    connectionInfo = [(BFFMigrationTimeRemainingController *)self connectionInfo];
    connectionType = [connectionInfo connectionType];

    v25 = @"Unknown";
    if (connectionType == 2)
    {
      v25 = @"Wireless";
    }

    if (connectionType == 1)
    {
      v26 = @"Wired";
    }

    else
    {
      v26 = v25;
    }

    internalProgressText = [(BFFMigrationTimeRemainingController *)self internalProgressText];
    v28 = [internalProgressText stringByAppendingFormat:@"%@ files (%@ bytes)\nElapsed Time: %@\nConnection Type: %@", v12, v17, v22, v26];
    [(BFFMigrationTimeRemainingController *)self setInternalProgressText:v28];

    buddyPreferencesEphemeral = [MEMORY[0x277D4DA50] buddyPreferencesEphemeral];
    LODWORD(v28) = [buddyPreferencesEphemeral BOOLForKey:@"showInternalUI"];

    if (v28)
    {
      internalProgressText2 = [(BFFMigrationTimeRemainingController *)self internalProgressText];
      v31 = [v32 stringByAppendingFormat:@"\n%@", internalProgressText2];

      v32 = v31;
    }
  }

  [(OBSetupAssistantProgressController *)self setProgressText:v32];
}

- (id)timeRemainingString:(double)string
{
  if (string >= 0.0)
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