@interface BRCMigrationReport
+ (id)cleanupStateURL;
+ (id)migrationReportFromData:(id)data;
- (BRCMigrationReport)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRCMigrationReport

- (void)encodeWithCoder:(id)coder
{
  ciconiaVersion = self->ciconiaVersion;
  coderCopy = coder;
  [coderCopy encodeInt64:ciconiaVersion forKey:@"ciconiaVersion"];
  [coderCopy encodeObject:self->lastError forKey:@"lastError"];
  [coderCopy encodeObject:self->crashReporterKey forKey:@"crashReporterKey"];
  [coderCopy encodeBool:self->errorOverriden forKey:@"errorOverriden"];
  [coderCopy encodeDouble:@"duration" forKey:self->duration];
  [coderCopy encodeDouble:@"cloningDuration" forKey:self->cloningDuration];
  [coderCopy encodeDouble:@"importDuration" forKey:self->importDuration];
  [coderCopy encodeBool:self->manuallyTriggered forKey:@"manuallyTriggered"];
  [coderCopy encodeObject:self->migrationUUID forKey:@"migrationUUID"];
  [coderCopy encodeObject:self->domainID forKey:@"domainID"];
  [coderCopy encodeBool:self->sideFaultsBelowThreshold forKey:@"sideFaultsBelowThreshold"];
  [coderCopy encodeBool:self->nonSideFaultsCompletelyMigrated forKey:@"nonSideFaultsCompletelyMigrated"];
  [coderCopy encodeInt64:self->expectedAmountOfItemsMigrated forKey:@"expectedAmountOfItemsMigrated"];
  [coderCopy encodeInt64:self->itemsThatAreNotMigrated forKey:@"itemsThatAreNotMigrated"];
  [coderCopy encodeInt:self->typeOfMigrated.var0.var0 forKey:@"typeOfMigrated"];
  [coderCopy encodeInt:self->typeOfNotMigrated.var0.var0 forKey:@"typeOfNotMigrated"];
  [coderCopy encodeInt64:self->materialisedCountOnICD forKey:@"materialisedCountOnICD"];
  [coderCopy encodeInt64:self->materialisedCountOnFPFS forKey:@"materialisedCountOnFPFS"];
  [coderCopy encodeInt64:self->totalItemCount forKey:@"totalItemCount"];
  [coderCopy encodeInt64:self->itemsNotFoundInDB forKey:@"itemsNotFoundInDB"];
  [coderCopy encodeInt64:self->itemsChangedDuringCloning forKey:@"itemsChangedDuringCloning"];
  [coderCopy encodeInt64:self->ignoredContentProtectedItems forKey:@"ignoredContentProtectedItems"];
  [coderCopy encodeInt64:self->packagesWithoutBundleBit forKey:@"packagesWithoutBundleBit"];
  [coderCopy encodeInt64:self->bouncedDocumentsFolders forKey:@"bouncedDocumentsFolders"];
  [coderCopy encodeInt64:self->symlinkedDocumentsFolders forKey:@"symlinkedDocumentsFolders"];
  [coderCopy encodeInt64:self->documentsFoldersWithoutItemID forKey:@"documentsFoldersWithoutItemID"];
  [coderCopy encodeInt64:self->datalessItems forKey:@"datalessItems"];
  [coderCopy encodeInt64:self->unexpectedCreations forKey:@"unexpectedCreations"];
  [coderCopy encodeInt64:self->bouncedItems forKey:@"bouncedItems"];
  [coderCopy encodeInt64:self->bouncedItemsMatrix.var0.var0 forKey:@"bouncedItemsMatrix"];
  [coderCopy encodeObject:self->bounceReport forKey:@"bounceReport"];
  [coderCopy encodeObject:self->eaccessReport forKey:@"eaccessReport"];
  [coderCopy encodeInt64:self->errorOriginatorId forKey:@"errorOriginatorId"];
}

- (BRCMigrationReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = BRCMigrationReport;
  v5 = [(BRCMigrationReport *)&v22 init];
  if (v5)
  {
    v5->ciconiaVersion = [coderCopy decodeInt64ForKey:@"ciconiaVersion"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastError"];
    lastError = v5->lastError;
    v5->lastError = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crashReporterKey"];
    crashReporterKey = v5->crashReporterKey;
    v5->crashReporterKey = v8;

    v5->errorOverriden = [coderCopy decodeBoolForKey:@"errorOverriden"];
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->duration = v10;
    [coderCopy decodeDoubleForKey:@"cloningDuration"];
    v5->cloningDuration = v11;
    [coderCopy decodeDoubleForKey:@"importDuration"];
    v5->importDuration = v12;
    v5->manuallyTriggered = [coderCopy decodeBoolForKey:@"manuallyTriggered"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"migrationUUID"];
    migrationUUID = v5->migrationUUID;
    v5->migrationUUID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainID"];
    domainID = v5->domainID;
    v5->domainID = v15;

    v5->sideFaultsBelowThreshold = [coderCopy decodeBoolForKey:@"sideFaultsBelowThreshold"];
    v5->nonSideFaultsCompletelyMigrated = [coderCopy decodeBoolForKey:@"nonSideFaultsCompletelyMigrated"];
    v5->expectedAmountOfItemsMigrated = [coderCopy decodeInt64ForKey:@"expectedAmountOfItemsMigrated"];
    v5->itemsThatAreNotMigrated = [coderCopy decodeInt64ForKey:@"itemsThatAreNotMigrated"];
    v5->typeOfMigrated.var0.var0 = [coderCopy decodeIntForKey:@"typeOfMigrated"];
    v5->typeOfNotMigrated.var0.var0 = [coderCopy decodeIntForKey:@"typeOfNotMigrated"];
    v5->materialisedCountOnICD = [coderCopy decodeInt64ForKey:@"materialisedCountOnICD"];
    v5->materialisedCountOnFPFS = [coderCopy decodeInt64ForKey:@"materialisedCountOnFPFS"];
    v5->totalItemCount = [coderCopy decodeInt64ForKey:@"totalItemCount"];
    v5->itemsNotFoundInDB = [coderCopy decodeInt64ForKey:@"itemsNotFoundInDB"];
    v5->itemsChangedDuringCloning = [coderCopy decodeInt64ForKey:@"itemsChangedDuringCloning"];
    v5->ignoredContentProtectedItems = [coderCopy decodeInt64ForKey:@"ignoredContentProtectedItems"];
    v5->packagesWithoutBundleBit = [coderCopy decodeInt64ForKey:@"packagesWithoutBundleBit"];
    v5->bouncedDocumentsFolders = [coderCopy decodeInt64ForKey:@"bouncedDocumentsFolders"];
    v5->symlinkedDocumentsFolders = [coderCopy decodeInt64ForKey:@"symlinkedDocumentsFolders"];
    v5->documentsFoldersWithoutItemID = [coderCopy decodeInt64ForKey:@"documentsFoldersWithoutItemID"];
    v5->datalessItems = [coderCopy decodeInt64ForKey:@"datalessItems"];
    v5->unexpectedCreations = [coderCopy decodeInt64ForKey:@"unexpectedCreations"];
    v5->bouncedItems = [coderCopy decodeInt64ForKey:@"bouncedItems"];
    v5->bouncedItemsMatrix.var0.var0 = [coderCopy decodeInt64ForKey:@"bouncedItemsMatrix"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bounceReport"];
    bounceReport = v5->bounceReport;
    v5->bounceReport = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eaccessReport"];
    eaccessReport = v5->eaccessReport;
    v5->eaccessReport = v19;

    v5->errorOriginatorId = [coderCopy decodeInt64ForKey:@"errorOriginatorId"];
  }

  return v5;
}

+ (id)migrationReportFromData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v12 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v12];

  v6 = v12;
  if (!v5)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      fp_prettyDescription = [v6 fp_prettyDescription];
      *buf = 138412546;
      v14 = fp_prettyDescription;
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
  brc_ciconiaWorkDirForCurrentPersona = [MEMORY[0x277CBEBC0] brc_ciconiaWorkDirForCurrentPersona];
  v3 = [brc_ciconiaWorkDirForCurrentPersona URLByAppendingPathComponent:@"cleanup.state"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  ciconiaVersion = [(BRCMigrationReport *)self ciconiaVersion];
  migrationUUID = [(BRCMigrationReport *)self migrationUUID];
  if ([(BRCMigrationReport *)self errorOverriden])
  {
    v7 = @" ‼️ ";
  }

  else
  {
    v7 = @" ";
  }

  lastError = [(BRCMigrationReport *)self lastError];
  fp_prettyDescription = [lastError fp_prettyDescription];
  v10 = [v3 stringWithFormat:@"<%@: %p v:%llu u:%@%@e:%@ o:%llu>", v4, self, ciconiaVersion, migrationUUID, v7, fp_prettyDescription, -[BRCMigrationReport errorOriginatorId](self, "errorOriginatorId")];

  return v10;
}

@end