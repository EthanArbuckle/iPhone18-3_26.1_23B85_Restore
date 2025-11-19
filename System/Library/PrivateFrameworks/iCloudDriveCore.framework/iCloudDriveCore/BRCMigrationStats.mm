@interface BRCMigrationStats
- (BRCMigrationStats)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BRCMigrationStats

- (void)encodeWithCoder:(id)a3
{
  sideFaultsCount = self->sideFaultsCount;
  v5 = a3;
  [v5 encodeInt64:sideFaultsCount forKey:@"sideFaultsCount"];
  [v5 encodeInt64:self->clonedFolders forKey:@"clonedFolders"];
  [v5 encodeInt64:self->clonedFiles forKey:@"clonedFiles"];
  [v5 encodeInt64:self->clonedSideFaults forKey:@"clonedSideFaults"];
  [v5 encodeInt64:self->clonedAppLibraries forKey:@"clonedAppLibraries"];
  [v5 encodeInt64:self->cloningFailures forKey:@"cloningFailures"];
  [v5 encodeInt64:self->reconciledItems forKey:@"reconciledItems"];
  [v5 encodeInt64:self->reconciliationFailures forKey:@"reconciliationFailures"];
  [v5 encodeInt64:self->migratedSideFaults forKey:@"migratedSideFaults"];
  [v5 encodeInt64:self->nonMigratedItems forKey:@"nonMigratedItems"];
  [v5 encodeInt64:self->expectedMigrations forKey:@"expectedMigrations"];
  [v5 encodeInt64:self->materialisedInCloudDocs forKey:@"materialisedInCloudDocs"];
  [v5 encodeInt64:self->materializedInFPFS forKey:@"materializedInFPFS"];
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
  [v5 encodeInt64:self->totalItemCount forKey:@"totalItemCount"];
  [v5 encodeDouble:@"duration" forKey:self->duration];
  [v5 encodeDouble:@"cloningDuration" forKey:self->cloningDuration];
  [v5 encodeDouble:@"importDuration" forKey:self->importDuration];
  [v5 encodeObject:self->uuid forKey:@"uuid"];
}

- (BRCMigrationStats)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BRCMigrationStats;
  v5 = [(BRCMigrationStats *)&v12 init];
  if (v5)
  {
    v5->sideFaultsCount = [v4 decodeInt64ForKey:@"sideFaultsCount"];
    v5->clonedFolders = [v4 decodeInt64ForKey:@"clonedFolders"];
    v5->clonedFiles = [v4 decodeInt64ForKey:@"clonedFiles"];
    v5->clonedSideFaults = [v4 decodeInt64ForKey:@"clonedSideFaults"];
    v5->clonedAppLibraries = [v4 decodeInt64ForKey:@"clonedAppLibraries"];
    v5->cloningFailures = [v4 decodeInt64ForKey:@"cloningFailures"];
    v5->reconciledItems = [v4 decodeInt64ForKey:@"reconciledItems"];
    v5->reconciliationFailures = [v4 decodeInt64ForKey:@"reconciliationFailures"];
    v5->migratedSideFaults = [v4 decodeInt64ForKey:@"migratedSideFaults"];
    v5->nonMigratedItems = [v4 decodeInt64ForKey:@"nonMigratedItems"];
    v5->expectedMigrations = [v4 decodeInt64ForKey:@"expectedMigrations"];
    v5->materialisedInCloudDocs = [v4 decodeInt64ForKey:@"materialisedInCloudDocs"];
    v5->materializedInFPFS = [v4 decodeInt64ForKey:@"materializedInFPFS"];
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
    v5->totalItemCount = [v4 decodeInt64ForKey:@"totalItemCount"];
    [v4 decodeDoubleForKey:@"duration"];
    v5->duration = v6;
    [v4 decodeDoubleForKey:@"cloningDuration"];
    v5->cloningDuration = v7;
    [v4 decodeDoubleForKey:@"importDuration"];
    v5->importDuration = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->uuid;
    v5->uuid = v9;
  }

  return v5;
}

@end