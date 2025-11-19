@interface BRCMigrationReport
+ (id)cleanupStateURL;
+ (id)migrationReportFromData:(id)a3;
- (BRCMigrationReport)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BRCMigrationReport

- (void)encodeWithCoder:(id)a3
{
  ciconiaVersion = self->ciconiaVersion;
  v5 = a3;
  [v5 encodeInt64:ciconiaVersion forKey:@"ciconiaVersion"];
  [v5 encodeObject:self->lastError forKey:@"lastError"];
  [v5 encodeObject:self->crashReporterKey forKey:@"crashReporterKey"];
  [v5 encodeBool:self->errorOverriden forKey:@"errorOverriden"];
  [v5 encodeDouble:@"duration" forKey:self->duration];
  [v5 encodeDouble:@"cloningDuration" forKey:self->cloningDuration];
  [v5 encodeDouble:@"importDuration" forKey:self->importDuration];
  [v5 encodeBool:self->manuallyTriggered forKey:@"manuallyTriggered"];
  [v5 encodeObject:self->migrationUUID forKey:@"migrationUUID"];
  [v5 encodeObject:self->domainID forKey:@"domainID"];
  [v5 encodeBool:self->sideFaultsBelowThreshold forKey:@"sideFaultsBelowThreshold"];
  [v5 encodeBool:self->nonSideFaultsCompletelyMigrated forKey:@"nonSideFaultsCompletelyMigrated"];
  [v5 encodeInt64:self->expectedAmountOfItemsMigrated forKey:@"expectedAmountOfItemsMigrated"];
  [v5 encodeInt64:self->itemsThatAreNotMigrated forKey:@"itemsThatAreNotMigrated"];
  [v5 encodeInt:self->typeOfMigrated.var0.var0 forKey:@"typeOfMigrated"];
  [v5 encodeInt:self->typeOfNotMigrated.var0.var0 forKey:@"typeOfNotMigrated"];
  [v5 encodeInt64:self->materialisedCountOnICD forKey:@"materialisedCountOnICD"];
  [v5 encodeInt64:self->materialisedCountOnFPFS forKey:@"materialisedCountOnFPFS"];
  [v5 encodeInt64:self->totalItemCount forKey:@"totalItemCount"];
  [v5 encodeInt64:self->itemsNotFoundInDB forKey:@"itemsNotFoundInDB"];
  [v5 encodeInt64:self->itemsChangedDuringCloning forKey:@"itemsChangedDuringCloning"];
  [v5 encodeInt64:self->ignoredContentProtectedItems forKey:@"ignoredContentProtectedItems"];
  [v5 encodeInt64:self->packagesWithoutBundleBit forKey:@"packagesWithoutBundleBit"];
  [v5 encodeInt64:self->bouncedDocumentsFolders forKey:@"bouncedDocumentsFolders"];
  [v5 encodeInt64:self->symlinkedDocumentsFolders forKey:@"symlinkedDocumentsFolders"];
  [v5 encodeInt64:self->documentsFoldersWithoutItemID forKey:@"documentsFoldersWithoutItemID"];
  [v5 encodeInt64:self->datalessItems forKey:@"datalessItems"];
  [v5 encodeInt64:self->unexpectedCreations forKey:@"unexpectedCreations"];
  [v5 encodeInt64:self->bouncedItems forKey:@"bouncedItems"];
  [v5 encodeInt64:self->bouncedItemsMatrix.var0.var0 forKey:@"bouncedItemsMatrix"];
  [v5 encodeObject:self->bounceReport forKey:@"bounceReport"];
  [v5 encodeObject:self->eaccessReport forKey:@"eaccessReport"];
  [v5 encodeInt64:self->errorOriginatorId forKey:@"errorOriginatorId"];
}

- (BRCMigrationReport)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BRCMigrationReport;
  v5 = [(BRCMigrationReport *)&v22 init];
  if (v5)
  {
    v5->ciconiaVersion = [v4 decodeInt64ForKey:@"ciconiaVersion"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastError"];
    lastError = v5->lastError;
    v5->lastError = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"crashReporterKey"];
    crashReporterKey = v5->crashReporterKey;
    v5->crashReporterKey = v8;

    v5->errorOverriden = [v4 decodeBoolForKey:@"errorOverriden"];
    [v4 decodeDoubleForKey:@"duration"];
    v5->duration = v10;
    [v4 decodeDoubleForKey:@"cloningDuration"];
    v5->cloningDuration = v11;
    [v4 decodeDoubleForKey:@"importDuration"];
    v5->importDuration = v12;
    v5->manuallyTriggered = [v4 decodeBoolForKey:@"manuallyTriggered"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"migrationUUID"];
    migrationUUID = v5->migrationUUID;
    v5->migrationUUID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainID"];
    domainID = v5->domainID;
    v5->domainID = v15;

    v5->sideFaultsBelowThreshold = [v4 decodeBoolForKey:@"sideFaultsBelowThreshold"];
    v5->nonSideFaultsCompletelyMigrated = [v4 decodeBoolForKey:@"nonSideFaultsCompletelyMigrated"];
    v5->expectedAmountOfItemsMigrated = [v4 decodeInt64ForKey:@"expectedAmountOfItemsMigrated"];
    v5->itemsThatAreNotMigrated = [v4 decodeInt64ForKey:@"itemsThatAreNotMigrated"];
    v5->typeOfMigrated.var0.var0 = [v4 decodeIntForKey:@"typeOfMigrated"];
    v5->typeOfNotMigrated.var0.var0 = [v4 decodeIntForKey:@"typeOfNotMigrated"];
    v5->materialisedCountOnICD = [v4 decodeInt64ForKey:@"materialisedCountOnICD"];
    v5->materialisedCountOnFPFS = [v4 decodeInt64ForKey:@"materialisedCountOnFPFS"];
    v5->totalItemCount = [v4 decodeInt64ForKey:@"totalItemCount"];
    v5->itemsNotFoundInDB = [v4 decodeInt64ForKey:@"itemsNotFoundInDB"];
    v5->itemsChangedDuringCloning = [v4 decodeInt64ForKey:@"itemsChangedDuringCloning"];
    v5->ignoredContentProtectedItems = [v4 decodeInt64ForKey:@"ignoredContentProtectedItems"];
    v5->packagesWithoutBundleBit = [v4 decodeInt64ForKey:@"packagesWithoutBundleBit"];
    v5->bouncedDocumentsFolders = [v4 decodeInt64ForKey:@"bouncedDocumentsFolders"];
    v5->symlinkedDocumentsFolders = [v4 decodeInt64ForKey:@"symlinkedDocumentsFolders"];
    v5->documentsFoldersWithoutItemID = [v4 decodeInt64ForKey:@"documentsFoldersWithoutItemID"];
    v5->datalessItems = [v4 decodeInt64ForKey:@"datalessItems"];
    v5->unexpectedCreations = [v4 decodeInt64ForKey:@"unexpectedCreations"];
    v5->bouncedItems = [v4 decodeInt64ForKey:@"bouncedItems"];
    v5->bouncedItemsMatrix.var0.var0 = [v4 decodeInt64ForKey:@"bouncedItemsMatrix"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bounceReport"];
    bounceReport = v5->bounceReport;
    v5->bounceReport = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eaccessReport"];
    eaccessReport = v5->eaccessReport;
    v5->eaccessReport = v19;

    v5->errorOriginatorId = [v4 decodeInt64ForKey:@"errorOriginatorId"];
  }

  return v5;
}

+ (id)migrationReportFromData:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAC8];
  v4 = a3;
  v12 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v12];

  v6 = v12;
  if (!v5)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 fp_prettyDescription];
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed restoring migration report: %@%@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)cleanupStateURL
{
  v2 = [MEMORY[0x277CBEBC0] brc_ciconiaWorkDirForCurrentPersona];
  v3 = [v2 URLByAppendingPathComponent:@"cleanup.state"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(BRCMigrationReport *)self ciconiaVersion];
  v6 = [(BRCMigrationReport *)self migrationUUID];
  if ([(BRCMigrationReport *)self errorOverriden])
  {
    v7 = @" ‼️ ";
  }

  else
  {
    v7 = @" ";
  }

  v8 = [(BRCMigrationReport *)self lastError];
  v9 = [v8 fp_prettyDescription];
  v10 = [v3 stringWithFormat:@"<%@: %p v:%llu u:%@%@e:%@ o:%llu>", v4, self, v5, v6, v7, v9, -[BRCMigrationReport errorOriginatorId](self, "errorOriginatorId")];

  return v10;
}

@end