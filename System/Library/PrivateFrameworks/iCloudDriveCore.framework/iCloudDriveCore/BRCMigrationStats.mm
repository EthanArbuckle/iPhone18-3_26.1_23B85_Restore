@interface BRCMigrationStats
- (BRCMigrationStats)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRCMigrationStats

- (void)encodeWithCoder:(id)coder
{
  sideFaultsCount = self->sideFaultsCount;
  coderCopy = coder;
  [coderCopy encodeInt64:sideFaultsCount forKey:@"sideFaultsCount"];
  [coderCopy encodeInt64:self->clonedFolders forKey:@"clonedFolders"];
  [coderCopy encodeInt64:self->clonedFiles forKey:@"clonedFiles"];
  [coderCopy encodeInt64:self->clonedSideFaults forKey:@"clonedSideFaults"];
  [coderCopy encodeInt64:self->clonedAppLibraries forKey:@"clonedAppLibraries"];
  [coderCopy encodeInt64:self->cloningFailures forKey:@"cloningFailures"];
  [coderCopy encodeInt64:self->reconciledItems forKey:@"reconciledItems"];
  [coderCopy encodeInt64:self->reconciliationFailures forKey:@"reconciliationFailures"];
  [coderCopy encodeInt64:self->migratedSideFaults forKey:@"migratedSideFaults"];
  [coderCopy encodeInt64:self->nonMigratedItems forKey:@"nonMigratedItems"];
  [coderCopy encodeInt64:self->expectedMigrations forKey:@"expectedMigrations"];
  [coderCopy encodeInt64:self->materialisedInCloudDocs forKey:@"materialisedInCloudDocs"];
  [coderCopy encodeInt64:self->materializedInFPFS forKey:@"materializedInFPFS"];
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
  [coderCopy encodeInt64:self->totalItemCount forKey:@"totalItemCount"];
  [coderCopy encodeDouble:@"duration" forKey:self->duration];
  [coderCopy encodeDouble:@"cloningDuration" forKey:self->cloningDuration];
  [coderCopy encodeDouble:@"importDuration" forKey:self->importDuration];
  [coderCopy encodeObject:self->uuid forKey:@"uuid"];
}

- (BRCMigrationStats)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BRCMigrationStats;
  v5 = [(BRCMigrationStats *)&v12 init];
  if (v5)
  {
    v5->sideFaultsCount = [coderCopy decodeInt64ForKey:@"sideFaultsCount"];
    v5->clonedFolders = [coderCopy decodeInt64ForKey:@"clonedFolders"];
    v5->clonedFiles = [coderCopy decodeInt64ForKey:@"clonedFiles"];
    v5->clonedSideFaults = [coderCopy decodeInt64ForKey:@"clonedSideFaults"];
    v5->clonedAppLibraries = [coderCopy decodeInt64ForKey:@"clonedAppLibraries"];
    v5->cloningFailures = [coderCopy decodeInt64ForKey:@"cloningFailures"];
    v5->reconciledItems = [coderCopy decodeInt64ForKey:@"reconciledItems"];
    v5->reconciliationFailures = [coderCopy decodeInt64ForKey:@"reconciliationFailures"];
    v5->migratedSideFaults = [coderCopy decodeInt64ForKey:@"migratedSideFaults"];
    v5->nonMigratedItems = [coderCopy decodeInt64ForKey:@"nonMigratedItems"];
    v5->expectedMigrations = [coderCopy decodeInt64ForKey:@"expectedMigrations"];
    v5->materialisedInCloudDocs = [coderCopy decodeInt64ForKey:@"materialisedInCloudDocs"];
    v5->materializedInFPFS = [coderCopy decodeInt64ForKey:@"materializedInFPFS"];
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
    v5->totalItemCount = [coderCopy decodeInt64ForKey:@"totalItemCount"];
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->duration = v6;
    [coderCopy decodeDoubleForKey:@"cloningDuration"];
    v5->cloningDuration = v7;
    [coderCopy decodeDoubleForKey:@"importDuration"];
    v5->importDuration = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->uuid;
    v5->uuid = v9;
  }

  return v5;
}

@end