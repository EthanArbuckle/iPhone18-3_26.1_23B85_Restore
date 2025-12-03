@interface CKOperationGroup(BRAdditions)
+ (id)br_aggressiveChaining;
+ (id)br_collaborationUpload;
+ (id)br_downloadConflictingVersions;
+ (id)br_downloadOpportunistic;
+ (id)br_downloadOptimizeStorageOff;
+ (id)br_downloadSpeculative;
+ (id)br_downloadThumbnails;
+ (id)br_downloadThumbnailsUserInitiated;
+ (id)br_downloadUpdatedDocuments;
+ (id)br_downloadUserInitiated;
+ (id)br_fetchCKShareMetadata;
+ (id)br_fetchIdentityXPC;
+ (id)br_fetchNonLocalVersions;
+ (id)br_fetchParentChain;
+ (id)br_fetchRecents;
+ (id)br_listDirectoryContents;
+ (id)br_locateRecord;
+ (id)br_logout;
+ (id)br_operationGroupWithName:()BRAdditions;
+ (id)br_osUpgradeMigration;
+ (id)br_partialSaltingCompletion;
+ (id)br_primeMMCSCache;
+ (id)br_publishingRequest;
+ (id)br_purge;
+ (id)br_quotaUpdateTelemetry;
+ (id)br_quotaUpdateUploader;
+ (id)br_quotaUpdateXPC;
+ (id)br_requestForAccess;
+ (id)br_sharingMisc;
+ (id)br_syncDown;
+ (id)br_syncDownAppLaunch;
+ (id)br_syncDownAppLibraryMetadata;
+ (id)br_syncDownInitial;
+ (id)br_syncDownPeriodic;
+ (id)br_syncDownPushTriggered;
+ (id)br_syncDownZoneHealth;
+ (id)br_syncUp;
+ (id)br_syncUpAndDownShareDB;
+ (id)br_syncUpAppLibraryMetadata;
+ (id)br_syncUpZoneHealth;
+ (id)br_testTrigger;
+ (id)br_upload;
+ (id)br_zoneConsolidation;
+ (id)br_zoneConsolidationManual;
+ (id)br_zoneHealthSimulation;
@end

@implementation CKOperationGroup(BRAdditions)

+ (id)br_syncUp
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sync up", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_listDirectoryContents
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"List directory", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_syncDown
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sync down", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_syncDownPeriodic
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sync down (periodic)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_syncDownInitial
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sync down (initial)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_syncDownPushTriggered
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sync down (push triggered)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_syncDownAppLaunch
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sync down (app launch)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_syncDownAppLibraryMetadata
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sync down (app library metadata)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_syncDownZoneHealth
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sync down (zone health)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_fetchParentChain
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Fetch parent chain", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_locateRecord
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Locate record", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_fetchRecents
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Fetch recent documents", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_syncUpAppLibraryMetadata
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sync up (app library metadata)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_syncUpZoneHealth
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sync up (zone health)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_downloadThumbnails
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Download (thumbnails)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_downloadThumbnailsUserInitiated
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Download (thumbnails user initiated)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_downloadUserInitiated
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Download (user initiated)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_downloadOpportunistic
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Download (opportunistic)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_downloadOptimizeStorageOff
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Download (optimize storage off)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_downloadUpdatedDocuments
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Download (updated documents)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_downloadConflictingVersions
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Download (conflicting versions)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_downloadSpeculative
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Download (speculative)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_upload
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Upload", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_collaborationUpload
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Collaboration upload", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_primeMMCSCache
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Prime MMCS Cache", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_quotaUpdateUploader
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Quota update (uploader)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_quotaUpdateXPC
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Quota update (xpc request)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_quotaUpdateTelemetry
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Quota update (telemetry)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_zoneConsolidation
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Zone consolidation", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_zoneConsolidationManual
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Zone consolidation (manual)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_zoneHealthSimulation
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Zone health simulation", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_publishingRequest
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Publishing request", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_syncUpAndDownShareDB
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sync up & down (shared db)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_sharingMisc
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Sharing misc.", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_fetchIdentityXPC
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Fetch identity (xpc request)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_purge
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Purge", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_fetchNonLocalVersions
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Fetch non local versions", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_osUpgradeMigration
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"OS upgrade migration", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_aggressiveChaining
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Aggressive PCS Chaining", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_partialSaltingCompletion
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Aggressive salting (partially salted)", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_logout
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Logout", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_fetchCKShareMetadata
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Fetch CKShareMetadata", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_requestForAccess
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Request For Access", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_testTrigger
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v3 = "";
  if (br_isInSyncBubble)
  {
    v3 = " (SB)";
  }

  v4 = [v1 stringWithFormat:@"%@%s", @"Test Trigger", v3];
  [v0 setName:v4];

  return v0;
}

+ (id)br_operationGroupWithName:()BRAdditions
{
  v3 = MEMORY[0x277CBC4F8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x277CCACA8];
  br_isInSyncBubble = [MEMORY[0x277D77BF8] br_isInSyncBubble];
  v8 = "";
  if (br_isInSyncBubble)
  {
    v8 = " (SB)";
  }

  v9 = [v6 stringWithFormat:@"%@%s", v4, v8];

  [v5 setName:v9];

  return v5;
}

@end