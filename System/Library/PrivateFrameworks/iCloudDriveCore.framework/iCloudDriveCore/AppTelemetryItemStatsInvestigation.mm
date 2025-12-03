@interface AppTelemetryItemStatsInvestigation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasApfsBlockSize:(BOOL)size;
- (void)setHasApfsEncrypted:(BOOL)encrypted;
- (void)setHasApfsFlags:(BOOL)flags;
- (void)setHasApfsRole:(BOOL)role;
- (void)setHasAppLibraryMatches:(BOOL)matches;
- (void)setHasBTime:(BOOL)time;
- (void)setHasBTimeIsBusy:(BOOL)busy;
- (void)setHasCloneErrorCode:(BOOL)code;
- (void)setHasCompressionType:(BOOL)type;
- (void)setHasDataProtectionClass:(BOOL)class;
- (void)setHasDbCapabilities:(BOOL)capabilities;
- (void)setHasDbEffectiveContentPolicy:(BOOL)policy;
- (void)setHasDbErrorCode:(BOOL)code;
- (void)setHasDbFpContentStatus:(BOOL)status;
- (void)setHasDbFpDeletionStatus:(BOOL)status;
- (void)setHasDbFpImportStatus:(BOOL)status;
- (void)setHasDbFsContentStatus:(BOOL)status;
- (void)setHasDbFsDeletionStatus:(BOOL)status;
- (void)setHasDbFsImportStatus:(BOOL)status;
- (void)setHasDbGenCount:(BOOL)count;
- (void)setHasDbIsApplibrary:(BOOL)applibrary;
- (void)setHasDbIsPackage:(BOOL)package;
- (void)setHasDbIsSuper:(BOOL)super;
- (void)setHasDbSharingState:(BOOL)state;
- (void)setHasDbTransferState:(BOOL)state;
- (void)setHasDiagErrorCode:(BOOL)code;
- (void)setHasDiagFailuresBitmap:(BOOL)bitmap;
- (void)setHasDiagUnderlyingErrorCode:(BOOL)code;
- (void)setHasDoGenCountsMatchInFileId:(BOOL)id;
- (void)setHasDocIDMatches:(BOOL)matches;
- (void)setHasFileNameLength:(BOOL)length;
- (void)setHasFsGenCount:(BOOL)count;
- (void)setHasGencountDiff:(BOOL)diff;
- (void)setHasHasAcls:(BOOL)acls;
- (void)setHasHasLocalChanges:(BOOL)changes;
- (void)setHasHasMoreLinks:(BOOL)links;
- (void)setHasIsAppleDouble:(BOOL)double;
- (void)setHasIsBundleBit:(BOOL)bit;
- (void)setHasIsFileNameNonAscii:(BOOL)ascii;
- (void)setHasIsOwnedByLoggedInUser:(BOOL)user;
- (void)setHasIsOwnedByRoot:(BOOL)root;
- (void)setHasIsPurgable:(BOOL)purgable;
- (void)setHasIsQuarantined:(BOOL)quarantined;
- (void)setHasIsResourceFork:(BOOL)fork;
- (void)setHasIsUnderDirStatFolder:(BOOL)folder;
- (void)setHasIsUrgent:(BOOL)urgent;
- (void)setHasItemNumber:(BOOL)number;
- (void)setHasItemType:(BOOL)type;
- (void)setHasMTime:(BOOL)time;
- (void)setHasMTimeBeforeMigrationStarted:(BOOL)started;
- (void)setHasNameIsTrashed:(BOOL)trashed;
- (void)setHasParentHasAcls:(BOOL)acls;
- (void)setHasParentMatches:(BOOL)matches;
- (void)setHasPathDepth:(BOOL)depth;
- (void)setHasPathLength:(BOOL)length;
- (void)setHasPurgeATime:(BOOL)time;
- (void)setHasPurgeGenCount:(BOOL)count;
- (void)setHasPurgeSyncRoot:(BOOL)root;
- (void)setHasReadErrorCode:(BOOL)code;
- (void)setHasStFlags:(BOOL)flags;
- (void)setHasStMode:(BOOL)mode;
- (void)setHasStatDirEntryCount:(BOOL)count;
- (void)setHasStatDocID:(BOOL)d;
- (void)setHasStatLogicalSize:(BOOL)size;
- (void)setHasStatPhysicalSize:(BOOL)size;
- (void)setHasSyncRootEnum:(BOOL)enum;
- (void)setHasSysDocIDResolutionOK:(BOOL)k;
- (void)setHasSysPageSize:(BOOL)size;
- (void)setHasSysUID:(BOOL)d;
- (void)setHasXattrCount:(BOOL)count;
- (void)setHasXattrHasBeforeBounce:(BOOL)bounce;
- (void)setHasXattrHasDemotion:(BOOL)demotion;
- (void)setHasXattrHasPromotion:(BOOL)promotion;
- (void)writeTo:(id)to;
@end

@implementation AppTelemetryItemStatsInvestigation

- (void)setHasItemNumber:(BOOL)number
{
  v3 = 0x2000000;
  if (!number)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasItemType:(BOOL)type
{
  v3 = 0x80000000000;
  if (!type)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasDataProtectionClass:(BOOL)class
{
  v3 = 0x40000000000;
  if (!class)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasIsOwnedByLoggedInUser:(BOOL)user
{
  v3 = 0x800000000000000;
  if (!user)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasIsOwnedByRoot:(BOOL)root
{
  v3 = 0x1000000000000000;
  if (!root)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasXattrCount:(BOOL)count
{
  v3 = 0x200000000000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasIsAppleDouble:(BOOL)double
{
  v3 = 0x100000000000000;
  if (!double)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasIsResourceFork:(BOOL)fork
{
  v3 = 0x8000000000000000;
  if (!fork)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasIsQuarantined:(BOOL)quarantined
{
  v3 = 0x4000000000000000;
  if (!quarantined)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasIsBundleBit:(BOOL)bit
{
  v3 = 0x200000000000000;
  if (!bit)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCompressionType:(BOOL)type
{
  v3 = 0x20000000000;
  if (!type)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasReadErrorCode:(BOOL)code
{
  v3 = 0x100000000;
  if (!code)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasCloneErrorCode:(BOOL)code
{
  v3 = 32;
  if (!code)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasSyncRootEnum:(BOOL)enum
{
  v3 = 0x100000000000;
  if (!enum)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasPathLength:(BOOL)length
{
  v3 = 0x10000000;
  if (!length)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasFileNameLength:(BOOL)length
{
  v3 = 0x200000;
  if (!length)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasStMode:(BOOL)mode
{
  v3 = 0x400000000;
  if (!mode)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasStFlags:(BOOL)flags
{
  v3 = 0x200000000;
  if (!flags)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasHasAcls:(BOOL)acls
{
  v3 = 0x40000000000000;
  if (!acls)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setHasParentHasAcls:(BOOL)acls
{
  if (acls)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFDF | v3;
}

- (void)setHasIsPurgable:(BOOL)purgable
{
  v3 = 0x2000000000000000;
  if (!purgable)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasIsUrgent:(BOOL)urgent
{
  if (urgent)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFB | v3;
}

- (void)setHasIsUnderDirStatFolder:(BOOL)folder
{
  if (folder)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFD | v3;
}

- (void)setHasIsFileNameNonAscii:(BOOL)ascii
{
  v3 = 0x400000000000000;
  if (!ascii)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasHasMoreLinks:(BOOL)links
{
  v3 = 0x1000000;
  if (!links)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasFsGenCount:(BOOL)count
{
  v3 = 0x400000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasDbGenCount:(BOOL)count
{
  v3 = 0x8000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasHasLocalChanges:(BOOL)changes
{
  v3 = 0x80000000000000;
  if (!changes)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasDoGenCountsMatchInFileId:(BOOL)id
{
  v3 = 0x10000000000000;
  if (!id)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasPathDepth:(BOOL)depth
{
  v3 = 0x8000000;
  if (!depth)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasXattrHasDemotion:(BOOL)demotion
{
  if (demotion)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFDFF | v3;
}

- (void)setHasXattrHasPromotion:(BOOL)promotion
{
  if (promotion)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFBFF | v3;
}

- (void)setHasDbErrorCode:(BOOL)code
{
  v3 = 256;
  if (!code)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasDbCapabilities:(BOOL)capabilities
{
  v3 = 64;
  if (!capabilities)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasDbTransferState:(BOOL)state
{
  v3 = 0x20000;
  if (!state)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasDbSharingState:(BOOL)state
{
  v3 = 0x10000;
  if (!state)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasDbIsApplibrary:(BOOL)applibrary
{
  v3 = 0x2000000000000;
  if (!applibrary)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasDbEffectiveContentPolicy:(BOOL)policy
{
  v3 = 128;
  if (!policy)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasDbIsPackage:(BOOL)package
{
  v3 = 0x4000000000000;
  if (!package)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasDbFsContentStatus:(BOOL)status
{
  v3 = 4096;
  if (!status)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasDbFpContentStatus:(BOOL)status
{
  v3 = 512;
  if (!status)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasDbFsDeletionStatus:(BOOL)status
{
  v3 = 0x2000;
  if (!status)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasDbFpDeletionStatus:(BOOL)status
{
  v3 = 1024;
  if (!status)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasDbFsImportStatus:(BOOL)status
{
  v3 = 0x4000;
  if (!status)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasDbFpImportStatus:(BOOL)status
{
  v3 = 2048;
  if (!status)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasDbIsSuper:(BOOL)super
{
  v3 = 0x8000000000000;
  if (!super)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasGencountDiff:(BOOL)diff
{
  v3 = 0x800000;
  if (!diff)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasParentMatches:(BOOL)matches
{
  if (matches)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFBF | v3;
}

- (void)setHasAppLibraryMatches:(BOOL)matches
{
  v3 = 0x800000000000;
  if (!matches)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasMTimeBeforeMigrationStarted:(BOOL)started
{
  if (started)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFF7 | v3;
}

- (void)setHasDocIDMatches:(BOOL)matches
{
  v3 = 0x20000000000000;
  if (!matches)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setHasMTime:(BOOL)time
{
  v3 = 0x4000000;
  if (!time)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasBTime:(BOOL)time
{
  v3 = 16;
  if (!time)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasBTimeIsBusy:(BOOL)busy
{
  v3 = 0x1000000000000;
  if (!busy)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasXattrHasBeforeBounce:(BOOL)bounce
{
  if (bounce)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFEFF | v3;
}

- (void)setHasNameIsTrashed:(BOOL)trashed
{
  if (trashed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFEF | v3;
}

- (void)setHasSysPageSize:(BOOL)size
{
  v3 = 0x8000000000;
  if (!size)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasSysUID:(BOOL)d
{
  v3 = 0x10000000000;
  if (!d)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasSysDocIDResolutionOK:(BOOL)k
{
  if (k)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFF7F | v3;
}

- (void)setHasPurgeGenCount:(BOOL)count
{
  v3 = 0x40000000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasPurgeATime:(BOOL)time
{
  v3 = 0x20000000;
  if (!time)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasPurgeSyncRoot:(BOOL)root
{
  v3 = 0x80000000;
  if (!root)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasDiagFailuresBitmap:(BOOL)bitmap
{
  v3 = 0x80000;
  if (!bitmap)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasDiagErrorCode:(BOOL)code
{
  v3 = 0x40000;
  if (!code)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasDiagUnderlyingErrorCode:(BOOL)code
{
  v3 = 0x100000;
  if (!code)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasApfsFlags:(BOOL)flags
{
  v3 = 4;
  if (!flags)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasApfsBlockSize:(BOOL)size
{
  v3 = 2;
  if (!size)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasApfsRole:(BOOL)role
{
  v3 = 8;
  if (!role)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasApfsEncrypted:(BOOL)encrypted
{
  v3 = 0x400000000000;
  if (!encrypted)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasStatDocID:(BOOL)d
{
  v3 = 0x1000000000;
  if (!d)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasStatLogicalSize:(BOOL)size
{
  v3 = 0x2000000000;
  if (!size)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasStatPhysicalSize:(BOOL)size
{
  v3 = 0x4000000000;
  if (!size)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasStatDirEntryCount:(BOOL)count
{
  v3 = 0x800000000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AppTelemetryItemStatsInvestigation;
  v4 = [(AppTelemetryItemStatsInvestigation *)&v8 description];
  dictionaryRepresentation = [(AppTelemetryItemStatsInvestigation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x2000000) != 0)
  {
    v49 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemNumber];
    [dictionary setObject:v49 forKey:@"itemNumber"];

    has = *p_has;
    if ((*p_has & 0x80000000000) == 0)
    {
LABEL_3:
      if ((has & 0x40000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_118;
    }
  }

  else if ((has & 0x80000000000) == 0)
  {
    goto LABEL_3;
  }

  v50 = [MEMORY[0x277CCABB0] numberWithInt:self->_itemType];
  [dictionary setObject:v50 forKey:@"itemType"];

  has = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_4:
    if ((has & 0x800000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_119;
  }

LABEL_118:
  v51 = [MEMORY[0x277CCABB0] numberWithInt:self->_dataProtectionClass];
  [dictionary setObject:v51 forKey:@"dataProtectionClass"];

  has = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_5:
    if ((has & 0x1000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_120;
  }

LABEL_119:
  v52 = [MEMORY[0x277CCABB0] numberWithBool:self->_isOwnedByLoggedInUser];
  [dictionary setObject:v52 forKey:@"isOwnedByLoggedInUser"];

  has = *p_has;
  if ((*p_has & 0x1000000000000000) == 0)
  {
LABEL_6:
    if ((has & 0x200000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_121;
  }

LABEL_120:
  v53 = [MEMORY[0x277CCABB0] numberWithBool:self->_isOwnedByRoot];
  [dictionary setObject:v53 forKey:@"isOwnedByRoot"];

  has = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_7:
    if ((has & 0x100000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_122;
  }

LABEL_121:
  v54 = [MEMORY[0x277CCABB0] numberWithInt:self->_xattrCount];
  [dictionary setObject:v54 forKey:@"xattrCount"];

  has = *p_has;
  if ((*p_has & 0x100000000000000) == 0)
  {
LABEL_8:
    if ((has & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_123;
  }

LABEL_122:
  v55 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAppleDouble];
  [dictionary setObject:v55 forKey:@"isAppleDouble"];

  has = *p_has;
  if ((*p_has & 0x8000000000000000) == 0)
  {
LABEL_9:
    if ((has & 0x4000000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_123:
  v56 = [MEMORY[0x277CCABB0] numberWithBool:self->_isResourceFork];
  [dictionary setObject:v56 forKey:@"isResourceFork"];

  if ((*p_has & 0x4000000000000000) != 0)
  {
LABEL_10:
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isQuarantined];
    [dictionary setObject:v6 forKey:@"isQuarantined"];
  }

LABEL_11:
  utType = self->_utType;
  if (utType)
  {
    [dictionary setObject:utType forKey:@"utType"];
  }

  if ((*(&self->_has + 7) & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isBundleBit];
    [dictionary setObject:v8 forKey:@"isBundleBit"];
  }

  if (*(&self->_has + 4))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSparseFile];
    [dictionary setObject:v9 forKey:@"isSparseFile"];
  }

  v10 = *p_has;
  if ((*p_has & 0x20000000000) != 0)
  {
    v57 = [MEMORY[0x277CCABB0] numberWithInt:self->_compressionType];
    [dictionary setObject:v57 forKey:@"compressionType"];

    v10 = *p_has;
    if ((*p_has & 0x100000000) == 0)
    {
LABEL_19:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_127;
    }
  }

  else if ((v10 & 0x100000000) == 0)
  {
    goto LABEL_19;
  }

  v58 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_readErrorCode];
  [dictionary setObject:v58 forKey:@"readErrorCode"];

  v10 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_20:
    if ((v10 & 0x100000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_128;
  }

LABEL_127:
  v59 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_cloneErrorCode];
  [dictionary setObject:v59 forKey:@"cloneErrorCode"];

  v10 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_21:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_129;
  }

LABEL_128:
  v60 = [MEMORY[0x277CCABB0] numberWithInt:self->_syncRootEnum];
  [dictionary setObject:v60 forKey:@"syncRootEnum"];

  v10 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_22:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_130;
  }

LABEL_129:
  v61 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_pathLength];
  [dictionary setObject:v61 forKey:@"pathLength"];

  v10 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_23:
    if ((v10 & 0x400000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_131;
  }

LABEL_130:
  v62 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_fileNameLength];
  [dictionary setObject:v62 forKey:@"fileNameLength"];

  v10 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_24:
    if ((v10 & 0x200000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_132;
  }

LABEL_131:
  v63 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_stMode];
  [dictionary setObject:v63 forKey:@"st_mode"];

  v10 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_25:
    if ((v10 & 0x40000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_132:
  v64 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_stFlags];
  [dictionary setObject:v64 forKey:@"st_flags"];

  if ((*p_has & 0x40000000000000) != 0)
  {
LABEL_26:
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasAcls];
    [dictionary setObject:v11 forKey:@"hasAcls"];
  }

LABEL_27:
  if ((*(&self->_has + 4) & 0x20) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_parentHasAcls];
    [dictionary setObject:v12 forKey:@"parentHasAcls"];
  }

  if ((*(&self->_has + 7) & 0x20) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPurgable];
    [dictionary setObject:v13 forKey:@"isPurgable"];
  }

  v14 = *(&self->_has + 4);
  if ((v14 & 4) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUrgent];
    [dictionary setObject:v15 forKey:@"isUrgent"];

    v14 = *(&self->_has + 4);
  }

  if ((v14 & 2) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUnderDirStatFolder];
    [dictionary setObject:v16 forKey:@"isUnderDirStatFolder"];
  }

  if ((*(&self->_has + 7) & 4) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFileNameNonAscii];
    [dictionary setObject:v17 forKey:@"isFileNameNonAscii"];
  }

  finderInfoFlagsBase64 = self->_finderInfoFlagsBase64;
  if (finderInfoFlagsBase64)
  {
    [dictionary setObject:finderInfoFlagsBase64 forKey:@"finderInfoFlagsBase64"];
  }

  v19 = *p_has;
  if ((*p_has & 0x1000000) != 0)
  {
    v65 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_hasMoreLinks];
    [dictionary setObject:v65 forKey:@"hasMoreLinks"];

    v19 = *p_has;
    if ((*p_has & 0x400000) == 0)
    {
LABEL_41:
      if ((v19 & 0x8000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_136;
    }
  }

  else if ((v19 & 0x400000) == 0)
  {
    goto LABEL_41;
  }

  v66 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_fsGenCount];
  [dictionary setObject:v66 forKey:@"fsGenCount"];

  v19 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_42:
    if ((v19 & 0x80000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_137;
  }

LABEL_136:
  v67 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbGenCount];
  [dictionary setObject:v67 forKey:@"dbGenCount"];

  v19 = *p_has;
  if ((*p_has & 0x80000000000000) == 0)
  {
LABEL_43:
    if ((v19 & 0x10000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_137:
  v68 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasLocalChanges];
  [dictionary setObject:v68 forKey:@"hasLocalChanges"];

  if ((*p_has & 0x10000000000000) != 0)
  {
LABEL_44:
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_doGenCountsMatchInFileId];
    [dictionary setObject:v20 forKey:@"doGenCountsMatchInFileId"];
  }

LABEL_45:
  fileNameExtension = self->_fileNameExtension;
  if (fileNameExtension)
  {
    [dictionary setObject:fileNameExtension forKey:@"fileNameExtension"];
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_pathDepth];
    [dictionary setObject:v22 forKey:@"pathDepth"];
  }

  v23 = *(&self->_has + 4);
  if ((v23 & 0x200) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_xattrHasDemotion];
    [dictionary setObject:v24 forKey:@"xattrHasDemotion"];

    v23 = *(&self->_has + 4);
  }

  if ((v23 & 0x400) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_xattrHasPromotion];
    [dictionary setObject:v25 forKey:@"xattrHasPromotion"];
  }

  dbErrorDomain = self->_dbErrorDomain;
  if (dbErrorDomain)
  {
    [dictionary setObject:dbErrorDomain forKey:@"dbErrorDomain"];
  }

  v27 = *p_has;
  if ((*p_has & 0x100) != 0)
  {
    v69 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbErrorCode];
    [dictionary setObject:v69 forKey:@"dbErrorCode"];

    v27 = *p_has;
    if ((*p_has & 0x40) == 0)
    {
LABEL_57:
      if ((v27 & 0x20000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_141;
    }
  }

  else if ((v27 & 0x40) == 0)
  {
    goto LABEL_57;
  }

  v70 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbCapabilities];
  [dictionary setObject:v70 forKey:@"dbCapabilities"];

  v27 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_58:
    if ((v27 & 0x10000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_142;
  }

LABEL_141:
  v71 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbTransferState];
  [dictionary setObject:v71 forKey:@"dbTransferState"];

  v27 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_59:
    if ((v27 & 0x2000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_143;
  }

LABEL_142:
  v72 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbSharingState];
  [dictionary setObject:v72 forKey:@"dbSharingState"];

  v27 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_60:
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_144;
  }

LABEL_143:
  v73 = [MEMORY[0x277CCABB0] numberWithBool:self->_dbIsApplibrary];
  [dictionary setObject:v73 forKey:@"dbIsApplibrary"];

  v27 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_61:
    if ((v27 & 0x4000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_145;
  }

LABEL_144:
  v74 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbEffectiveContentPolicy];
  [dictionary setObject:v74 forKey:@"dbEffectiveContentPolicy"];

  v27 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_62:
    if ((v27 & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_146;
  }

LABEL_145:
  v75 = [MEMORY[0x277CCABB0] numberWithBool:self->_dbIsPackage];
  [dictionary setObject:v75 forKey:@"dbIsPackage"];

  v27 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_63:
    if ((v27 & 0x200) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_147;
  }

LABEL_146:
  v76 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbFsContentStatus];
  [dictionary setObject:v76 forKey:@"dbFsContentStatus"];

  v27 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_64:
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_148;
  }

LABEL_147:
  v77 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbFpContentStatus];
  [dictionary setObject:v77 forKey:@"dbFpContentStatus"];

  v27 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_65:
    if ((v27 & 0x400) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_149;
  }

LABEL_148:
  v78 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbFsDeletionStatus];
  [dictionary setObject:v78 forKey:@"dbFsDeletionStatus"];

  v27 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_66:
    if ((v27 & 0x4000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_150;
  }

LABEL_149:
  v79 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbFpDeletionStatus];
  [dictionary setObject:v79 forKey:@"dbFpDeletionStatus"];

  v27 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_67:
    if ((v27 & 0x800) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_151;
  }

LABEL_150:
  v80 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbFsImportStatus];
  [dictionary setObject:v80 forKey:@"dbFsImportStatus"];

  v27 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_68:
    if ((v27 & 0x8000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_152;
  }

LABEL_151:
  v81 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dbFpImportStatus];
  [dictionary setObject:v81 forKey:@"dbFpImportStatus"];

  v27 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_69:
    if ((v27 & 0x800000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_152:
  v82 = [MEMORY[0x277CCABB0] numberWithBool:self->_dbIsSuper];
  [dictionary setObject:v82 forKey:@"dbIsSuper"];

  if ((*p_has & 0x800000) != 0)
  {
LABEL_70:
    v28 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_gencountDiff];
    [dictionary setObject:v28 forKey:@"gencountDiff"];
  }

LABEL_71:
  if ((*(&self->_has + 4) & 0x40) != 0)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:self->_parentMatches];
    [dictionary setObject:v29 forKey:@"parentMatches"];
  }

  if ((*(&self->_has + 5) & 0x80) != 0)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_appLibraryMatches];
    [dictionary setObject:v30 forKey:@"appLibraryMatches"];
  }

  if ((*(&self->_has + 4) & 8) != 0)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_mTimeBeforeMigrationStarted];
    [dictionary setObject:v31 forKey:@"mTimeBeforeMigrationStarted"];
  }

  v32 = *p_has;
  if ((*p_has & 0x20000000000000) != 0)
  {
    v83 = [MEMORY[0x277CCABB0] numberWithBool:self->_docIDMatches];
    [dictionary setObject:v83 forKey:@"docIDMatches"];

    v32 = *p_has;
    if ((*p_has & 0x4000000) == 0)
    {
LABEL_79:
      if ((v32 & 0x10) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_156;
    }
  }

  else if ((v32 & 0x4000000) == 0)
  {
    goto LABEL_79;
  }

  v84 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_mTime];
  [dictionary setObject:v84 forKey:@"mTime"];

  v32 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_80:
    if ((v32 & 0x1000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_156:
  v85 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_bTime];
  [dictionary setObject:v85 forKey:@"bTime"];

  if ((*p_has & 0x1000000000000) != 0)
  {
LABEL_81:
    v33 = [MEMORY[0x277CCABB0] numberWithBool:self->_bTimeIsBusy];
    [dictionary setObject:v33 forKey:@"bTimeIsBusy"];
  }

LABEL_82:
  if ((*(&self->_has + 4) & 0x100) != 0)
  {
    v34 = [MEMORY[0x277CCABB0] numberWithBool:self->_xattrHasBeforeBounce];
    [dictionary setObject:v34 forKey:@"xattrHasBeforeBounce"];
  }

  nameUnicodeNorm = self->_nameUnicodeNorm;
  if (nameUnicodeNorm)
  {
    [dictionary setObject:nameUnicodeNorm forKey:@"nameUnicodeNorm"];
  }

  if ((*(&self->_has + 4) & 0x10) != 0)
  {
    v36 = [MEMORY[0x277CCABB0] numberWithBool:self->_nameIsTrashed];
    [dictionary setObject:v36 forKey:@"nameIsTrashed"];
  }

  v37 = *p_has;
  if ((*p_has & 0x8000000000) != 0)
  {
    v38 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sysPageSize];
    [dictionary setObject:v38 forKey:@"sysPageSize"];

    v37 = *p_has;
  }

  if ((v37 & 0x10000000000) != 0)
  {
    v39 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sysUID];
    [dictionary setObject:v39 forKey:@"sysUID"];
  }

  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_sysDocIDResolutionOK];
    [dictionary setObject:v40 forKey:@"sysDocIDResolutionOK"];
  }

  v41 = *p_has;
  if ((*p_has & 0x40000000) != 0)
  {
    v86 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_purgeGenCount];
    [dictionary setObject:v86 forKey:@"purgeGenCount"];

    v41 = *p_has;
    if ((*p_has & 0x20000000) == 0)
    {
LABEL_96:
      if ((v41 & 0x80000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_160;
    }
  }

  else if ((v41 & 0x20000000) == 0)
  {
    goto LABEL_96;
  }

  v87 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_purgeATime];
  [dictionary setObject:v87 forKey:@"purgeATime"];

  v41 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_97:
    if ((v41 & 0x80000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_161;
  }

LABEL_160:
  v88 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_purgeSyncRoot];
  [dictionary setObject:v88 forKey:@"purgeSyncRoot"];

  v41 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_98:
    if ((v41 & 0x40000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_162;
  }

LABEL_161:
  v89 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_diagFailuresBitmap];
  [dictionary setObject:v89 forKey:@"diagFailuresBitmap"];

  v41 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_99:
    if ((v41 & 0x100000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_162:
  v90 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_diagErrorCode];
  [dictionary setObject:v90 forKey:@"diagErrorCode"];

  if ((*p_has & 0x100000) != 0)
  {
LABEL_100:
    v42 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_diagUnderlyingErrorCode];
    [dictionary setObject:v42 forKey:@"diagUnderlyingErrorCode"];
  }

LABEL_101:
  diagErrorDomain = self->_diagErrorDomain;
  if (diagErrorDomain)
  {
    [dictionary setObject:diagErrorDomain forKey:@"diagErrorDomain"];
  }

  diagUnderlyingErrorDomain = self->_diagUnderlyingErrorDomain;
  if (diagUnderlyingErrorDomain)
  {
    [dictionary setObject:diagUnderlyingErrorDomain forKey:@"diagUnderlyingErrorDomain"];
  }

  v45 = *p_has;
  if (*p_has)
  {
    v91 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_apfsAvailableSpace];
    [dictionary setObject:v91 forKey:@"apfsAvailableSpace"];

    v45 = *p_has;
    if ((*p_has & 4) == 0)
    {
LABEL_107:
      if ((v45 & 2) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_166;
    }
  }

  else if ((v45 & 4) == 0)
  {
    goto LABEL_107;
  }

  v92 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_apfsFlags];
  [dictionary setObject:v92 forKey:@"apfsFlags"];

  v45 = *p_has;
  if ((*p_has & 2) == 0)
  {
LABEL_108:
    if ((v45 & 8) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_167;
  }

LABEL_166:
  v93 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_apfsBlockSize];
  [dictionary setObject:v93 forKey:@"apfsBlockSize"];

  v45 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_109:
    if ((v45 & 0x400000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_168;
  }

LABEL_167:
  v94 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_apfsRole];
  [dictionary setObject:v94 forKey:@"apfsRole"];

  v45 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_110:
    if ((v45 & 0x1000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_169;
  }

LABEL_168:
  v95 = [MEMORY[0x277CCABB0] numberWithBool:self->_apfsEncrypted];
  [dictionary setObject:v95 forKey:@"apfsEncrypted"];

  v45 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_111:
    if ((v45 & 0x2000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_170;
  }

LABEL_169:
  v96 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_statDocID];
  [dictionary setObject:v96 forKey:@"statDocID"];

  v45 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_112:
    if ((v45 & 0x4000000000) == 0)
    {
      goto LABEL_113;
    }

LABEL_171:
    v98 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_statPhysicalSize];
    [dictionary setObject:v98 forKey:@"statPhysicalSize"];

    if ((*p_has & 0x800000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

LABEL_170:
  v97 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_statLogicalSize];
  [dictionary setObject:v97 forKey:@"statLogicalSize"];

  v45 = *p_has;
  if ((*p_has & 0x4000000000) != 0)
  {
    goto LABEL_171;
  }

LABEL_113:
  if ((v45 & 0x800000000) != 0)
  {
LABEL_114:
    v46 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_statDirEntryCount];
    [dictionary setObject:v46 forKey:@"statDirEntryCount"];
  }

LABEL_115:
  v47 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x2000000) != 0)
  {
    itemNumber = self->_itemNumber;
    PBDataWriterWriteInt64Field();
    has = *p_has;
    if ((*p_has & 0x80000000000) == 0)
    {
LABEL_3:
      if ((has & 0x40000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_120;
    }
  }

  else if ((has & 0x80000000000) == 0)
  {
    goto LABEL_3;
  }

  itemType = self->_itemType;
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_4:
    if ((has & 0x800000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_121;
  }

LABEL_120:
  dataProtectionClass = self->_dataProtectionClass;
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_5:
    if ((has & 0x1000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_122;
  }

LABEL_121:
  isOwnedByLoggedInUser = self->_isOwnedByLoggedInUser;
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x1000000000000000) == 0)
  {
LABEL_6:
    if ((has & 0x200000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_123;
  }

LABEL_122:
  isOwnedByRoot = self->_isOwnedByRoot;
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_7:
    if ((has & 0x100000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_124;
  }

LABEL_123:
  xattrCount = self->_xattrCount;
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x100000000000000) == 0)
  {
LABEL_8:
    if ((has & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_125;
  }

LABEL_124:
  isAppleDouble = self->_isAppleDouble;
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x8000000000000000) == 0)
  {
LABEL_9:
    if ((has & 0x4000000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_125:
  isResourceFork = self->_isResourceFork;
  PBDataWriterWriteBOOLField();
  if ((*p_has & 0x4000000000000000) != 0)
  {
LABEL_10:
    isQuarantined = self->_isQuarantined;
    PBDataWriterWriteBOOLField();
  }

LABEL_11:
  if (self->_utType)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 7) & 2) != 0)
  {
    isBundleBit = self->_isBundleBit;
    PBDataWriterWriteBOOLField();
  }

  if (*(&self->_has + 4))
  {
    isSparseFile = self->_isSparseFile;
    PBDataWriterWriteBOOLField();
  }

  v9 = *p_has;
  if ((*p_has & 0x20000000000) != 0)
  {
    compressionType = self->_compressionType;
    PBDataWriterWriteInt32Field();
    v9 = *p_has;
    if ((*p_has & 0x100000000) == 0)
    {
LABEL_19:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_129;
    }
  }

  else if ((v9 & 0x100000000) == 0)
  {
    goto LABEL_19;
  }

  readErrorCode = self->_readErrorCode;
  PBDataWriterWriteInt64Field();
  v9 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_20:
    if ((v9 & 0x100000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_130;
  }

LABEL_129:
  cloneErrorCode = self->_cloneErrorCode;
  PBDataWriterWriteInt64Field();
  v9 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_21:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_131;
  }

LABEL_130:
  syncRootEnum = self->_syncRootEnum;
  PBDataWriterWriteInt32Field();
  v9 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_22:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_132;
  }

LABEL_131:
  pathLength = self->_pathLength;
  PBDataWriterWriteInt64Field();
  v9 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_23:
    if ((v9 & 0x400000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_133;
  }

LABEL_132:
  fileNameLength = self->_fileNameLength;
  PBDataWriterWriteInt64Field();
  v9 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_24:
    if ((v9 & 0x200000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_134;
  }

LABEL_133:
  stMode = self->_stMode;
  PBDataWriterWriteInt64Field();
  v9 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_25:
    if ((v9 & 0x40000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_134:
  stFlags = self->_stFlags;
  PBDataWriterWriteInt64Field();
  if ((*p_has & 0x40000000000000) != 0)
  {
LABEL_26:
    hasAcls = self->_hasAcls;
    PBDataWriterWriteBOOLField();
  }

LABEL_27:
  if ((*(&self->_has + 4) & 0x20) != 0)
  {
    parentHasAcls = self->_parentHasAcls;
    PBDataWriterWriteBOOLField();
  }

  if ((*(&self->_has + 7) & 0x20) != 0)
  {
    isPurgable = self->_isPurgable;
    PBDataWriterWriteBOOLField();
  }

  v13 = *(&self->_has + 4);
  if ((v13 & 4) != 0)
  {
    isUrgent = self->_isUrgent;
    PBDataWriterWriteBOOLField();
    v13 = *(&self->_has + 4);
  }

  if ((v13 & 2) != 0)
  {
    isUnderDirStatFolder = self->_isUnderDirStatFolder;
    PBDataWriterWriteBOOLField();
  }

  if ((*(&self->_has + 7) & 4) != 0)
  {
    isFileNameNonAscii = self->_isFileNameNonAscii;
    PBDataWriterWriteBOOLField();
  }

  if (self->_finderInfoFlagsBase64)
  {
    PBDataWriterWriteStringField();
  }

  v17 = *p_has;
  if ((*p_has & 0x1000000) != 0)
  {
    hasMoreLinks = self->_hasMoreLinks;
    PBDataWriterWriteInt64Field();
    v17 = *p_has;
    if ((*p_has & 0x400000) == 0)
    {
LABEL_41:
      if ((v17 & 0x8000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_138;
    }
  }

  else if ((v17 & 0x400000) == 0)
  {
    goto LABEL_41;
  }

  fsGenCount = self->_fsGenCount;
  PBDataWriterWriteInt64Field();
  v17 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_42:
    if ((v17 & 0x80000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_139;
  }

LABEL_138:
  dbGenCount = self->_dbGenCount;
  PBDataWriterWriteInt64Field();
  v17 = *p_has;
  if ((*p_has & 0x80000000000000) == 0)
  {
LABEL_43:
    if ((v17 & 0x10000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_139:
  hasLocalChanges = self->_hasLocalChanges;
  PBDataWriterWriteBOOLField();
  if ((*p_has & 0x10000000000000) != 0)
  {
LABEL_44:
    doGenCountsMatchInFileId = self->_doGenCountsMatchInFileId;
    PBDataWriterWriteBOOLField();
  }

LABEL_45:
  if (self->_fileNameExtension)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    pathDepth = self->_pathDepth;
    PBDataWriterWriteInt64Field();
  }

  v20 = *(&self->_has + 4);
  if ((v20 & 0x200) != 0)
  {
    xattrHasDemotion = self->_xattrHasDemotion;
    PBDataWriterWriteBOOLField();
    v20 = *(&self->_has + 4);
  }

  if ((v20 & 0x400) != 0)
  {
    xattrHasPromotion = self->_xattrHasPromotion;
    PBDataWriterWriteBOOLField();
  }

  if (self->_dbErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v23 = *p_has;
  if ((*p_has & 0x100) != 0)
  {
    dbErrorCode = self->_dbErrorCode;
    PBDataWriterWriteInt64Field();
    v23 = *p_has;
    if ((*p_has & 0x40) == 0)
    {
LABEL_57:
      if ((v23 & 0x20000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_143;
    }
  }

  else if ((v23 & 0x40) == 0)
  {
    goto LABEL_57;
  }

  dbCapabilities = self->_dbCapabilities;
  PBDataWriterWriteInt64Field();
  v23 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_58:
    if ((v23 & 0x10000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_144;
  }

LABEL_143:
  dbTransferState = self->_dbTransferState;
  PBDataWriterWriteInt64Field();
  v23 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_59:
    if ((v23 & 0x2000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_145;
  }

LABEL_144:
  dbSharingState = self->_dbSharingState;
  PBDataWriterWriteInt64Field();
  v23 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_60:
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_146;
  }

LABEL_145:
  dbIsApplibrary = self->_dbIsApplibrary;
  PBDataWriterWriteBOOLField();
  v23 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_61:
    if ((v23 & 0x4000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_147;
  }

LABEL_146:
  dbEffectiveContentPolicy = self->_dbEffectiveContentPolicy;
  PBDataWriterWriteInt64Field();
  v23 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_62:
    if ((v23 & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_148;
  }

LABEL_147:
  dbIsPackage = self->_dbIsPackage;
  PBDataWriterWriteBOOLField();
  v23 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_63:
    if ((v23 & 0x200) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_149;
  }

LABEL_148:
  dbFsContentStatus = self->_dbFsContentStatus;
  PBDataWriterWriteInt64Field();
  v23 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_64:
    if ((v23 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_150;
  }

LABEL_149:
  dbFpContentStatus = self->_dbFpContentStatus;
  PBDataWriterWriteInt64Field();
  v23 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_65:
    if ((v23 & 0x400) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_151;
  }

LABEL_150:
  dbFsDeletionStatus = self->_dbFsDeletionStatus;
  PBDataWriterWriteInt64Field();
  v23 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_66:
    if ((v23 & 0x4000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_152;
  }

LABEL_151:
  dbFpDeletionStatus = self->_dbFpDeletionStatus;
  PBDataWriterWriteInt64Field();
  v23 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_67:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_153;
  }

LABEL_152:
  dbFsImportStatus = self->_dbFsImportStatus;
  PBDataWriterWriteInt64Field();
  v23 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_68:
    if ((v23 & 0x8000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_154;
  }

LABEL_153:
  dbFpImportStatus = self->_dbFpImportStatus;
  PBDataWriterWriteInt64Field();
  v23 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_69:
    if ((v23 & 0x800000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_154:
  dbIsSuper = self->_dbIsSuper;
  PBDataWriterWriteBOOLField();
  if ((*p_has & 0x800000) != 0)
  {
LABEL_70:
    gencountDiff = self->_gencountDiff;
    PBDataWriterWriteInt64Field();
  }

LABEL_71:
  if ((*(&self->_has + 4) & 0x40) != 0)
  {
    parentMatches = self->_parentMatches;
    PBDataWriterWriteBOOLField();
  }

  if ((*(&self->_has + 5) & 0x80) != 0)
  {
    appLibraryMatches = self->_appLibraryMatches;
    PBDataWriterWriteBOOLField();
  }

  if ((*(&self->_has + 4) & 8) != 0)
  {
    mTimeBeforeMigrationStarted = self->_mTimeBeforeMigrationStarted;
    PBDataWriterWriteBOOLField();
  }

  v28 = *p_has;
  if ((*p_has & 0x20000000000000) != 0)
  {
    docIDMatches = self->_docIDMatches;
    PBDataWriterWriteBOOLField();
    v28 = *p_has;
    if ((*p_has & 0x4000000) == 0)
    {
LABEL_79:
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_158;
    }
  }

  else if ((v28 & 0x4000000) == 0)
  {
    goto LABEL_79;
  }

  mTime = self->_mTime;
  PBDataWriterWriteInt64Field();
  v28 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_80:
    if ((v28 & 0x1000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_158:
  bTime = self->_bTime;
  PBDataWriterWriteInt64Field();
  if ((*p_has & 0x1000000000000) != 0)
  {
LABEL_81:
    bTimeIsBusy = self->_bTimeIsBusy;
    PBDataWriterWriteBOOLField();
  }

LABEL_82:
  if ((*(&self->_has + 4) & 0x100) != 0)
  {
    xattrHasBeforeBounce = self->_xattrHasBeforeBounce;
    PBDataWriterWriteBOOLField();
  }

  if (self->_nameUnicodeNorm)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 4) & 0x10) != 0)
  {
    nameIsTrashed = self->_nameIsTrashed;
    PBDataWriterWriteBOOLField();
  }

  v32 = *p_has;
  if ((*p_has & 0x8000000000) != 0)
  {
    sysPageSize = self->_sysPageSize;
    PBDataWriterWriteInt64Field();
    v32 = *p_has;
  }

  if ((v32 & 0x10000000000) != 0)
  {
    sysUID = self->_sysUID;
    PBDataWriterWriteInt64Field();
  }

  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    sysDocIDResolutionOK = self->_sysDocIDResolutionOK;
    PBDataWriterWriteBOOLField();
  }

  v36 = *p_has;
  if ((*p_has & 0x40000000) != 0)
  {
    purgeGenCount = self->_purgeGenCount;
    PBDataWriterWriteInt64Field();
    v36 = *p_has;
    if ((*p_has & 0x20000000) == 0)
    {
LABEL_96:
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_162;
    }
  }

  else if ((v36 & 0x20000000) == 0)
  {
    goto LABEL_96;
  }

  purgeATime = self->_purgeATime;
  PBDataWriterWriteInt64Field();
  v36 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_97:
    if ((v36 & 0x80000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_163;
  }

LABEL_162:
  purgeSyncRoot = self->_purgeSyncRoot;
  PBDataWriterWriteInt64Field();
  v36 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_98:
    if ((v36 & 0x40000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_164;
  }

LABEL_163:
  diagFailuresBitmap = self->_diagFailuresBitmap;
  PBDataWriterWriteInt64Field();
  v36 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_99:
    if ((v36 & 0x100000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_164:
  diagErrorCode = self->_diagErrorCode;
  PBDataWriterWriteInt64Field();
  if ((*p_has & 0x100000) != 0)
  {
LABEL_100:
    diagUnderlyingErrorCode = self->_diagUnderlyingErrorCode;
    PBDataWriterWriteInt64Field();
  }

LABEL_101:
  if (self->_diagErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_diagUnderlyingErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v38 = *p_has;
  if (*p_has)
  {
    apfsAvailableSpace = self->_apfsAvailableSpace;
    PBDataWriterWriteInt64Field();
    v38 = *p_has;
    if ((*p_has & 4) == 0)
    {
LABEL_107:
      if ((v38 & 2) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_168;
    }
  }

  else if ((v38 & 4) == 0)
  {
    goto LABEL_107;
  }

  apfsFlags = self->_apfsFlags;
  PBDataWriterWriteInt64Field();
  v38 = *p_has;
  if ((*p_has & 2) == 0)
  {
LABEL_108:
    if ((v38 & 8) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_169;
  }

LABEL_168:
  apfsBlockSize = self->_apfsBlockSize;
  PBDataWriterWriteInt64Field();
  v38 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_109:
    if ((v38 & 0x400000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_170;
  }

LABEL_169:
  apfsRole = self->_apfsRole;
  PBDataWriterWriteInt64Field();
  v38 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_110:
    if ((v38 & 0x1000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_171;
  }

LABEL_170:
  apfsEncrypted = self->_apfsEncrypted;
  PBDataWriterWriteBOOLField();
  v38 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_111:
    if ((v38 & 0x2000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_172;
  }

LABEL_171:
  statDocID = self->_statDocID;
  PBDataWriterWriteInt64Field();
  v38 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_112:
    if ((v38 & 0x4000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_173;
  }

LABEL_172:
  statLogicalSize = self->_statLogicalSize;
  PBDataWriterWriteInt64Field();
  v38 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_113:
    if ((v38 & 0x800000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

LABEL_173:
  statPhysicalSize = self->_statPhysicalSize;
  PBDataWriterWriteInt64Field();
  if ((*p_has & 0x800000000) != 0)
  {
LABEL_114:
    statDirEntryCount = self->_statDirEntryCount;
    PBDataWriterWriteInt64Field();
  }

LABEL_115:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x2000000) != 0)
  {
    toCopy[26] = self->_itemNumber;
    *(toCopy + 452) |= 0x2000000uLL;
    has = self->_has;
    if ((has & 0x80000000000) == 0)
    {
LABEL_3:
      if ((has & 0x40000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_120;
    }
  }

  else if ((has & 0x80000000000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 96) = self->_itemType;
  *(toCopy + 452) |= 0x80000000000uLL;
  has = self->_has;
  if ((has & 0x40000000000) == 0)
  {
LABEL_4:
    if ((has & 0x800000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_121;
  }

LABEL_120:
  *(toCopy + 85) = self->_dataProtectionClass;
  *(toCopy + 452) |= 0x40000000000uLL;
  has = self->_has;
  if ((has & 0x800000000000000) == 0)
  {
LABEL_5:
    if ((has & 0x1000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(toCopy + 433) = self->_isOwnedByLoggedInUser;
  *(toCopy + 452) |= 0x800000000000000uLL;
  has = self->_has;
  if ((has & 0x1000000000000000) == 0)
  {
LABEL_6:
    if ((has & 0x200000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(toCopy + 434) = self->_isOwnedByRoot;
  *(toCopy + 452) |= 0x1000000000000000uLL;
  has = self->_has;
  if ((has & 0x200000000000) == 0)
  {
LABEL_7:
    if ((has & 0x100000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(toCopy + 104) = self->_xattrCount;
  *(toCopy + 452) |= 0x200000000000uLL;
  has = self->_has;
  if ((has & 0x100000000000000) == 0)
  {
LABEL_8:
    if ((has & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_125;
  }

LABEL_124:
  *(toCopy + 430) = self->_isAppleDouble;
  *(toCopy + 452) |= 0x100000000000000uLL;
  has = self->_has;
  if ((has & 0x8000000000000000) == 0)
  {
LABEL_9:
    if ((has & 0x4000000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_125:
  *(toCopy + 437) = self->_isResourceFork;
  *(toCopy + 452) |= 0x8000000000000000;
  if ((*&self->_has & 0x4000000000000000) != 0)
  {
LABEL_10:
    *(toCopy + 436) = self->_isQuarantined;
    *(toCopy + 452) |= 0x4000000000000000uLL;
  }

LABEL_11:
  v16 = toCopy;
  if (self->_utType)
  {
    [toCopy setUtType:?];
    toCopy = v16;
  }

  if ((*(&self->_has + 7) & 2) != 0)
  {
    *(toCopy + 431) = self->_isBundleBit;
    *(toCopy + 452) |= 0x200000000000000uLL;
  }

  if (*(&self->_has + 4))
  {
    *(toCopy + 438) = self->_isSparseFile;
    *(toCopy + 230) |= 1u;
  }

  v7 = *p_has;
  if ((*p_has & 0x20000000000) != 0)
  {
    *(toCopy + 84) = self->_compressionType;
    *(toCopy + 452) |= 0x20000000000uLL;
    v7 = self->_has;
    if ((v7 & 0x100000000) == 0)
    {
LABEL_19:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_129;
    }
  }

  else if ((v7 & 0x100000000) == 0)
  {
    goto LABEL_19;
  }

  toCopy[33] = self->_readErrorCode;
  *(toCopy + 452) |= 0x100000000uLL;
  v7 = self->_has;
  if ((v7 & 0x20) == 0)
  {
LABEL_20:
    if ((v7 & 0x100000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_130;
  }

LABEL_129:
  toCopy[6] = self->_cloneErrorCode;
  *(toCopy + 452) |= 0x20uLL;
  v7 = self->_has;
  if ((v7 & 0x100000000000) == 0)
  {
LABEL_21:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_131;
  }

LABEL_130:
  *(toCopy + 100) = self->_syncRootEnum;
  *(toCopy + 452) |= 0x100000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x10000000) == 0)
  {
LABEL_22:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_132;
  }

LABEL_131:
  toCopy[29] = self->_pathLength;
  *(toCopy + 452) |= 0x10000000uLL;
  v7 = self->_has;
  if ((v7 & 0x200000) == 0)
  {
LABEL_23:
    if ((v7 & 0x400000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_133;
  }

LABEL_132:
  toCopy[22] = self->_fileNameLength;
  *(toCopy + 452) |= 0x200000uLL;
  v7 = self->_has;
  if ((v7 & 0x400000000) == 0)
  {
LABEL_24:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_134;
  }

LABEL_133:
  toCopy[35] = self->_stMode;
  *(toCopy + 452) |= 0x400000000uLL;
  v7 = self->_has;
  if ((v7 & 0x200000000) == 0)
  {
LABEL_25:
    if ((v7 & 0x40000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_134:
  toCopy[34] = self->_stFlags;
  *(toCopy + 452) |= 0x200000000uLL;
  if ((*&self->_has & 0x40000000000000) != 0)
  {
LABEL_26:
    *(toCopy + 428) = self->_hasAcls;
    *(toCopy + 452) |= 0x40000000000000uLL;
  }

LABEL_27:
  if ((*(&self->_has + 4) & 0x20) != 0)
  {
    *(toCopy + 443) = self->_parentHasAcls;
    *(toCopy + 230) |= 0x20u;
  }

  if ((*(&self->_has + 7) & 0x20) != 0)
  {
    *(toCopy + 435) = self->_isPurgable;
    *(toCopy + 452) |= 0x2000000000000000uLL;
  }

  v8 = *(&self->_has + 4);
  if ((v8 & 4) != 0)
  {
    *(toCopy + 440) = self->_isUrgent;
    *(toCopy + 230) |= 4u;
    v8 = *(&self->_has + 4);
  }

  if ((v8 & 2) != 0)
  {
    *(toCopy + 439) = self->_isUnderDirStatFolder;
    *(toCopy + 230) |= 2u;
  }

  if ((*(&self->_has + 7) & 4) != 0)
  {
    *(toCopy + 432) = self->_isFileNameNonAscii;
    *(toCopy + 452) |= 0x400000000000000uLL;
  }

  if (self->_finderInfoFlagsBase64)
  {
    [v16 setFinderInfoFlagsBase64:?];
    toCopy = v16;
  }

  v9 = *p_has;
  if ((*p_has & 0x1000000) != 0)
  {
    toCopy[25] = self->_hasMoreLinks;
    *(toCopy + 452) |= 0x1000000uLL;
    v9 = self->_has;
    if ((v9 & 0x400000) == 0)
    {
LABEL_41:
      if ((v9 & 0x8000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_138;
    }
  }

  else if ((v9 & 0x400000) == 0)
  {
    goto LABEL_41;
  }

  toCopy[23] = self->_fsGenCount;
  *(toCopy + 452) |= 0x400000uLL;
  v9 = self->_has;
  if ((v9 & 0x8000) == 0)
  {
LABEL_42:
    if ((v9 & 0x80000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_139;
  }

LABEL_138:
  toCopy[16] = self->_dbGenCount;
  *(toCopy + 452) |= 0x8000uLL;
  v9 = self->_has;
  if ((v9 & 0x80000000000000) == 0)
  {
LABEL_43:
    if ((v9 & 0x10000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_139:
  *(toCopy + 429) = self->_hasLocalChanges;
  *(toCopy + 452) |= 0x80000000000000uLL;
  if ((*&self->_has & 0x10000000000000) != 0)
  {
LABEL_44:
    *(toCopy + 426) = self->_doGenCountsMatchInFileId;
    *(toCopy + 452) |= 0x10000000000000uLL;
  }

LABEL_45:
  if (self->_fileNameExtension)
  {
    [v16 setFileNameExtension:?];
    toCopy = v16;
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    toCopy[28] = self->_pathDepth;
    *(toCopy + 452) |= 0x8000000uLL;
  }

  v10 = *(&self->_has + 4);
  if ((v10 & 0x200) != 0)
  {
    *(toCopy + 447) = self->_xattrHasDemotion;
    *(toCopy + 230) |= 0x200u;
    v10 = *(&self->_has + 4);
  }

  if ((v10 & 0x400) != 0)
  {
    *(toCopy + 448) = self->_xattrHasPromotion;
    *(toCopy + 230) |= 0x400u;
  }

  if (self->_dbErrorDomain)
  {
    [v16 setDbErrorDomain:?];
    toCopy = v16;
  }

  v11 = *p_has;
  if ((*p_has & 0x100) != 0)
  {
    toCopy[9] = self->_dbErrorCode;
    *(toCopy + 452) |= 0x100uLL;
    v11 = self->_has;
    if ((v11 & 0x40) == 0)
    {
LABEL_57:
      if ((v11 & 0x20000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_143;
    }
  }

  else if ((v11 & 0x40) == 0)
  {
    goto LABEL_57;
  }

  toCopy[7] = self->_dbCapabilities;
  *(toCopy + 452) |= 0x40uLL;
  v11 = self->_has;
  if ((v11 & 0x20000) == 0)
  {
LABEL_58:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_144;
  }

LABEL_143:
  toCopy[18] = self->_dbTransferState;
  *(toCopy + 452) |= 0x20000uLL;
  v11 = self->_has;
  if ((v11 & 0x10000) == 0)
  {
LABEL_59:
    if ((v11 & 0x2000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_145;
  }

LABEL_144:
  toCopy[17] = self->_dbSharingState;
  *(toCopy + 452) |= 0x10000uLL;
  v11 = self->_has;
  if ((v11 & 0x2000000000000) == 0)
  {
LABEL_60:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(toCopy + 423) = self->_dbIsApplibrary;
  *(toCopy + 452) |= 0x2000000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x80) == 0)
  {
LABEL_61:
    if ((v11 & 0x4000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_147;
  }

LABEL_146:
  toCopy[8] = self->_dbEffectiveContentPolicy;
  *(toCopy + 452) |= 0x80uLL;
  v11 = self->_has;
  if ((v11 & 0x4000000000000) == 0)
  {
LABEL_62:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(toCopy + 424) = self->_dbIsPackage;
  *(toCopy + 452) |= 0x4000000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x1000) == 0)
  {
LABEL_63:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_149;
  }

LABEL_148:
  toCopy[13] = self->_dbFsContentStatus;
  *(toCopy + 452) |= 0x1000uLL;
  v11 = self->_has;
  if ((v11 & 0x200) == 0)
  {
LABEL_64:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_150;
  }

LABEL_149:
  toCopy[10] = self->_dbFpContentStatus;
  *(toCopy + 452) |= 0x200uLL;
  v11 = self->_has;
  if ((v11 & 0x2000) == 0)
  {
LABEL_65:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_151;
  }

LABEL_150:
  toCopy[14] = self->_dbFsDeletionStatus;
  *(toCopy + 452) |= 0x2000uLL;
  v11 = self->_has;
  if ((v11 & 0x400) == 0)
  {
LABEL_66:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_152;
  }

LABEL_151:
  toCopy[11] = self->_dbFpDeletionStatus;
  *(toCopy + 452) |= 0x400uLL;
  v11 = self->_has;
  if ((v11 & 0x4000) == 0)
  {
LABEL_67:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_153;
  }

LABEL_152:
  toCopy[15] = self->_dbFsImportStatus;
  *(toCopy + 452) |= 0x4000uLL;
  v11 = self->_has;
  if ((v11 & 0x800) == 0)
  {
LABEL_68:
    if ((v11 & 0x8000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_154;
  }

LABEL_153:
  toCopy[12] = self->_dbFpImportStatus;
  *(toCopy + 452) |= 0x800uLL;
  v11 = self->_has;
  if ((v11 & 0x8000000000000) == 0)
  {
LABEL_69:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_154:
  *(toCopy + 425) = self->_dbIsSuper;
  *(toCopy + 452) |= 0x8000000000000uLL;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_70:
    toCopy[24] = self->_gencountDiff;
    *(toCopy + 452) |= 0x800000uLL;
  }

LABEL_71:
  if ((*(&self->_has + 4) & 0x40) != 0)
  {
    *(toCopy + 444) = self->_parentMatches;
    *(toCopy + 230) |= 0x40u;
  }

  if ((*(&self->_has + 5) & 0x80) != 0)
  {
    *(toCopy + 421) = self->_appLibraryMatches;
    *(toCopy + 452) |= 0x800000000000uLL;
  }

  if ((*(&self->_has + 4) & 8) != 0)
  {
    *(toCopy + 441) = self->_mTimeBeforeMigrationStarted;
    *(toCopy + 230) |= 8u;
  }

  v12 = *p_has;
  if ((*p_has & 0x20000000000000) != 0)
  {
    *(toCopy + 427) = self->_docIDMatches;
    *(toCopy + 452) |= 0x20000000000000uLL;
    v12 = self->_has;
    if ((v12 & 0x4000000) == 0)
    {
LABEL_79:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_158;
    }
  }

  else if ((v12 & 0x4000000) == 0)
  {
    goto LABEL_79;
  }

  toCopy[27] = self->_mTime;
  *(toCopy + 452) |= 0x4000000uLL;
  v12 = self->_has;
  if ((v12 & 0x10) == 0)
  {
LABEL_80:
    if ((v12 & 0x1000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_158:
  toCopy[5] = self->_bTime;
  *(toCopy + 452) |= 0x10uLL;
  if ((*&self->_has & 0x1000000000000) != 0)
  {
LABEL_81:
    *(toCopy + 422) = self->_bTimeIsBusy;
    *(toCopy + 452) |= 0x1000000000000uLL;
  }

LABEL_82:
  if ((*(&self->_has + 4) & 0x100) != 0)
  {
    *(toCopy + 446) = self->_xattrHasBeforeBounce;
    *(toCopy + 230) |= 0x100u;
  }

  if (self->_nameUnicodeNorm)
  {
    [v16 setNameUnicodeNorm:?];
    toCopy = v16;
  }

  if ((*(&self->_has + 4) & 0x10) != 0)
  {
    *(toCopy + 442) = self->_nameIsTrashed;
    *(toCopy + 230) |= 0x10u;
  }

  v13 = *p_has;
  if ((*p_has & 0x8000000000) != 0)
  {
    toCopy[40] = self->_sysPageSize;
    *(toCopy + 452) |= 0x8000000000uLL;
    v13 = self->_has;
  }

  if ((v13 & 0x10000000000) != 0)
  {
    toCopy[41] = self->_sysUID;
    *(toCopy + 452) |= 0x10000000000uLL;
  }

  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    *(toCopy + 445) = self->_sysDocIDResolutionOK;
    *(toCopy + 230) |= 0x80u;
  }

  v14 = *p_has;
  if ((*p_has & 0x40000000) != 0)
  {
    toCopy[31] = self->_purgeGenCount;
    *(toCopy + 452) |= 0x40000000uLL;
    v14 = self->_has;
    if ((v14 & 0x20000000) == 0)
    {
LABEL_96:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_162;
    }
  }

  else if ((v14 & 0x20000000) == 0)
  {
    goto LABEL_96;
  }

  toCopy[30] = self->_purgeATime;
  *(toCopy + 452) |= 0x20000000uLL;
  v14 = self->_has;
  if ((v14 & 0x80000000) == 0)
  {
LABEL_97:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_163;
  }

LABEL_162:
  toCopy[32] = self->_purgeSyncRoot;
  *(toCopy + 452) |= 0x80000000uLL;
  v14 = self->_has;
  if ((v14 & 0x80000) == 0)
  {
LABEL_98:
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_164;
  }

LABEL_163:
  toCopy[20] = self->_diagFailuresBitmap;
  *(toCopy + 452) |= 0x80000uLL;
  v14 = self->_has;
  if ((v14 & 0x40000) == 0)
  {
LABEL_99:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_164:
  toCopy[19] = self->_diagErrorCode;
  *(toCopy + 452) |= 0x40000uLL;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_100:
    toCopy[21] = self->_diagUnderlyingErrorCode;
    *(toCopy + 452) |= 0x100000uLL;
  }

LABEL_101:
  if (self->_diagErrorDomain)
  {
    [v16 setDiagErrorDomain:?];
    toCopy = v16;
  }

  if (self->_diagUnderlyingErrorDomain)
  {
    [v16 setDiagUnderlyingErrorDomain:?];
    toCopy = v16;
  }

  v15 = *p_has;
  if (*p_has)
  {
    toCopy[1] = self->_apfsAvailableSpace;
    *(toCopy + 452) |= 1uLL;
    v15 = self->_has;
    if ((v15 & 4) == 0)
    {
LABEL_107:
      if ((v15 & 2) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_168;
    }
  }

  else if ((v15 & 4) == 0)
  {
    goto LABEL_107;
  }

  toCopy[3] = self->_apfsFlags;
  *(toCopy + 452) |= 4uLL;
  v15 = self->_has;
  if ((v15 & 2) == 0)
  {
LABEL_108:
    if ((v15 & 8) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_169;
  }

LABEL_168:
  toCopy[2] = self->_apfsBlockSize;
  *(toCopy + 452) |= 2uLL;
  v15 = self->_has;
  if ((v15 & 8) == 0)
  {
LABEL_109:
    if ((v15 & 0x400000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_170;
  }

LABEL_169:
  toCopy[4] = self->_apfsRole;
  *(toCopy + 452) |= 8uLL;
  v15 = self->_has;
  if ((v15 & 0x400000000000) == 0)
  {
LABEL_110:
    if ((v15 & 0x1000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_171;
  }

LABEL_170:
  *(toCopy + 420) = self->_apfsEncrypted;
  *(toCopy + 452) |= 0x400000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x1000000000) == 0)
  {
LABEL_111:
    if ((v15 & 0x2000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_172;
  }

LABEL_171:
  toCopy[37] = self->_statDocID;
  *(toCopy + 452) |= 0x1000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x2000000000) == 0)
  {
LABEL_112:
    if ((v15 & 0x4000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_173;
  }

LABEL_172:
  toCopy[38] = self->_statLogicalSize;
  *(toCopy + 452) |= 0x2000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x4000000000) == 0)
  {
LABEL_113:
    if ((v15 & 0x800000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

LABEL_173:
  toCopy[39] = self->_statPhysicalSize;
  *(toCopy + 452) |= 0x4000000000uLL;
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_114:
    toCopy[36] = self->_statDirEntryCount;
    *(toCopy + 452) |= 0x800000000uLL;
  }

LABEL_115:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x2000000) != 0)
  {
    *(v5 + 208) = self->_itemNumber;
    *(v5 + 452) |= 0x2000000uLL;
    has = self->_has;
    if ((has & 0x80000000000) == 0)
    {
LABEL_3:
      if ((has & 0x40000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_104;
    }
  }

  else if ((has & 0x80000000000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 384) = self->_itemType;
  *(v5 + 452) |= 0x80000000000uLL;
  has = self->_has;
  if ((has & 0x40000000000) == 0)
  {
LABEL_4:
    if ((has & 0x800000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v5 + 340) = self->_dataProtectionClass;
  *(v5 + 452) |= 0x40000000000uLL;
  has = self->_has;
  if ((has & 0x800000000000000) == 0)
  {
LABEL_5:
    if ((has & 0x1000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v5 + 433) = self->_isOwnedByLoggedInUser;
  *(v5 + 452) |= 0x800000000000000uLL;
  has = self->_has;
  if ((has & 0x1000000000000000) == 0)
  {
LABEL_6:
    if ((has & 0x200000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v5 + 434) = self->_isOwnedByRoot;
  *(v5 + 452) |= 0x1000000000000000uLL;
  has = self->_has;
  if ((has & 0x200000000000) == 0)
  {
LABEL_7:
    if ((has & 0x100000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v5 + 416) = self->_xattrCount;
  *(v5 + 452) |= 0x200000000000uLL;
  has = self->_has;
  if ((has & 0x100000000000000) == 0)
  {
LABEL_8:
    if ((has & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v5 + 430) = self->_isAppleDouble;
  *(v5 + 452) |= 0x100000000000000uLL;
  has = self->_has;
  if ((has & 0x8000000000000000) == 0)
  {
LABEL_9:
    if ((has & 0x4000000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_109:
  *(v5 + 437) = self->_isResourceFork;
  *(v5 + 452) |= 0x8000000000000000;
  if ((*&self->_has & 0x4000000000000000) != 0)
  {
LABEL_10:
    *(v5 + 436) = self->_isQuarantined;
    *(v5 + 452) |= 0x4000000000000000uLL;
  }

LABEL_11:
  v9 = [(NSString *)self->_utType copyWithZone:zone];
  v10 = *(v6 + 408);
  *(v6 + 408) = v9;

  if ((*(&self->_has + 7) & 2) != 0)
  {
    *(v6 + 431) = self->_isBundleBit;
    *(v6 + 452) |= 0x200000000000000uLL;
  }

  if (*(&self->_has + 4))
  {
    *(v6 + 438) = self->_isSparseFile;
    *(v6 + 460) |= 1u;
  }

  v11 = *p_has;
  if ((*p_has & 0x20000000000) != 0)
  {
    *(v6 + 336) = self->_compressionType;
    *(v6 + 452) |= 0x20000000000uLL;
    v11 = self->_has;
    if ((v11 & 0x100000000) == 0)
    {
LABEL_17:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_113;
    }
  }

  else if ((v11 & 0x100000000) == 0)
  {
    goto LABEL_17;
  }

  *(v6 + 264) = self->_readErrorCode;
  *(v6 + 452) |= 0x100000000uLL;
  v11 = self->_has;
  if ((v11 & 0x20) == 0)
  {
LABEL_18:
    if ((v11 & 0x100000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(v6 + 48) = self->_cloneErrorCode;
  *(v6 + 452) |= 0x20uLL;
  v11 = self->_has;
  if ((v11 & 0x100000000000) == 0)
  {
LABEL_19:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(v6 + 400) = self->_syncRootEnum;
  *(v6 + 452) |= 0x100000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x10000000) == 0)
  {
LABEL_20:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(v6 + 232) = self->_pathLength;
  *(v6 + 452) |= 0x10000000uLL;
  v11 = self->_has;
  if ((v11 & 0x200000) == 0)
  {
LABEL_21:
    if ((v11 & 0x400000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_117;
  }

LABEL_116:
  *(v6 + 176) = self->_fileNameLength;
  *(v6 + 452) |= 0x200000uLL;
  v11 = self->_has;
  if ((v11 & 0x400000000) == 0)
  {
LABEL_22:
    if ((v11 & 0x200000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(v6 + 280) = self->_stMode;
  *(v6 + 452) |= 0x400000000uLL;
  v11 = self->_has;
  if ((v11 & 0x200000000) == 0)
  {
LABEL_23:
    if ((v11 & 0x40000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_118:
  *(v6 + 272) = self->_stFlags;
  *(v6 + 452) |= 0x200000000uLL;
  if ((*&self->_has & 0x40000000000000) != 0)
  {
LABEL_24:
    *(v6 + 428) = self->_hasAcls;
    *(v6 + 452) |= 0x40000000000000uLL;
  }

LABEL_25:
  if ((*(&self->_has + 4) & 0x20) != 0)
  {
    *(v6 + 443) = self->_parentHasAcls;
    *(v6 + 460) |= 0x20u;
  }

  if ((*(&self->_has + 7) & 0x20) != 0)
  {
    *(v6 + 435) = self->_isPurgable;
    *(v6 + 452) |= 0x2000000000000000uLL;
  }

  v12 = *(&self->_has + 4);
  if ((v12 & 4) != 0)
  {
    *(v6 + 440) = self->_isUrgent;
    *(v6 + 460) |= 4u;
    v12 = *(&self->_has + 4);
  }

  if ((v12 & 2) != 0)
  {
    *(v6 + 439) = self->_isUnderDirStatFolder;
    *(v6 + 460) |= 2u;
  }

  if ((*(&self->_has + 7) & 4) != 0)
  {
    *(v6 + 432) = self->_isFileNameNonAscii;
    *(v6 + 452) |= 0x400000000000000uLL;
  }

  v13 = [(NSString *)self->_finderInfoFlagsBase64 copyWithZone:zone];
  v14 = *(v6 + 376);
  *(v6 + 376) = v13;

  v15 = *p_has;
  if ((*p_has & 0x1000000) != 0)
  {
    *(v6 + 200) = self->_hasMoreLinks;
    *(v6 + 452) |= 0x1000000uLL;
    v15 = self->_has;
    if ((v15 & 0x400000) == 0)
    {
LABEL_37:
      if ((v15 & 0x8000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_122;
    }
  }

  else if ((v15 & 0x400000) == 0)
  {
    goto LABEL_37;
  }

  *(v6 + 184) = self->_fsGenCount;
  *(v6 + 452) |= 0x400000uLL;
  v15 = self->_has;
  if ((v15 & 0x8000) == 0)
  {
LABEL_38:
    if ((v15 & 0x80000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(v6 + 128) = self->_dbGenCount;
  *(v6 + 452) |= 0x8000uLL;
  v15 = self->_has;
  if ((v15 & 0x80000000000000) == 0)
  {
LABEL_39:
    if ((v15 & 0x10000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_123:
  *(v6 + 429) = self->_hasLocalChanges;
  *(v6 + 452) |= 0x80000000000000uLL;
  if ((*&self->_has & 0x10000000000000) != 0)
  {
LABEL_40:
    *(v6 + 426) = self->_doGenCountsMatchInFileId;
    *(v6 + 452) |= 0x10000000000000uLL;
  }

LABEL_41:
  v16 = [(NSString *)self->_fileNameExtension copyWithZone:zone];
  v17 = *(v6 + 368);
  *(v6 + 368) = v16;

  if ((*(&self->_has + 3) & 8) != 0)
  {
    *(v6 + 224) = self->_pathDepth;
    *(v6 + 452) |= 0x8000000uLL;
  }

  v18 = *(&self->_has + 4);
  if ((v18 & 0x200) != 0)
  {
    *(v6 + 447) = self->_xattrHasDemotion;
    *(v6 + 460) |= 0x200u;
    v18 = *(&self->_has + 4);
  }

  if ((v18 & 0x400) != 0)
  {
    *(v6 + 448) = self->_xattrHasPromotion;
    *(v6 + 460) |= 0x400u;
  }

  v19 = [(NSString *)self->_dbErrorDomain copyWithZone:zone];
  v20 = *(v6 + 344);
  *(v6 + 344) = v19;

  v21 = *p_has;
  if ((*p_has & 0x100) != 0)
  {
    *(v6 + 72) = self->_dbErrorCode;
    *(v6 + 452) |= 0x100uLL;
    v21 = self->_has;
    if ((v21 & 0x40) == 0)
    {
LABEL_49:
      if ((v21 & 0x20000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_127;
    }
  }

  else if ((v21 & 0x40) == 0)
  {
    goto LABEL_49;
  }

  *(v6 + 56) = self->_dbCapabilities;
  *(v6 + 452) |= 0x40uLL;
  v21 = self->_has;
  if ((v21 & 0x20000) == 0)
  {
LABEL_50:
    if ((v21 & 0x10000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_128;
  }

LABEL_127:
  *(v6 + 144) = self->_dbTransferState;
  *(v6 + 452) |= 0x20000uLL;
  v21 = self->_has;
  if ((v21 & 0x10000) == 0)
  {
LABEL_51:
    if ((v21 & 0x2000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_129;
  }

LABEL_128:
  *(v6 + 136) = self->_dbSharingState;
  *(v6 + 452) |= 0x10000uLL;
  v21 = self->_has;
  if ((v21 & 0x2000000000000) == 0)
  {
LABEL_52:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_130;
  }

LABEL_129:
  *(v6 + 423) = self->_dbIsApplibrary;
  *(v6 + 452) |= 0x2000000000000uLL;
  v21 = self->_has;
  if ((v21 & 0x80) == 0)
  {
LABEL_53:
    if ((v21 & 0x4000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_131;
  }

LABEL_130:
  *(v6 + 64) = self->_dbEffectiveContentPolicy;
  *(v6 + 452) |= 0x80uLL;
  v21 = self->_has;
  if ((v21 & 0x4000000000000) == 0)
  {
LABEL_54:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_132;
  }

LABEL_131:
  *(v6 + 424) = self->_dbIsPackage;
  *(v6 + 452) |= 0x4000000000000uLL;
  v21 = self->_has;
  if ((v21 & 0x1000) == 0)
  {
LABEL_55:
    if ((v21 & 0x200) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_133;
  }

LABEL_132:
  *(v6 + 104) = self->_dbFsContentStatus;
  *(v6 + 452) |= 0x1000uLL;
  v21 = self->_has;
  if ((v21 & 0x200) == 0)
  {
LABEL_56:
    if ((v21 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_134;
  }

LABEL_133:
  *(v6 + 80) = self->_dbFpContentStatus;
  *(v6 + 452) |= 0x200uLL;
  v21 = self->_has;
  if ((v21 & 0x2000) == 0)
  {
LABEL_57:
    if ((v21 & 0x400) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_135;
  }

LABEL_134:
  *(v6 + 112) = self->_dbFsDeletionStatus;
  *(v6 + 452) |= 0x2000uLL;
  v21 = self->_has;
  if ((v21 & 0x400) == 0)
  {
LABEL_58:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_136;
  }

LABEL_135:
  *(v6 + 88) = self->_dbFpDeletionStatus;
  *(v6 + 452) |= 0x400uLL;
  v21 = self->_has;
  if ((v21 & 0x4000) == 0)
  {
LABEL_59:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_137;
  }

LABEL_136:
  *(v6 + 120) = self->_dbFsImportStatus;
  *(v6 + 452) |= 0x4000uLL;
  v21 = self->_has;
  if ((v21 & 0x800) == 0)
  {
LABEL_60:
    if ((v21 & 0x8000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_138;
  }

LABEL_137:
  *(v6 + 96) = self->_dbFpImportStatus;
  *(v6 + 452) |= 0x800uLL;
  v21 = self->_has;
  if ((v21 & 0x8000000000000) == 0)
  {
LABEL_61:
    if ((v21 & 0x800000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_138:
  *(v6 + 425) = self->_dbIsSuper;
  *(v6 + 452) |= 0x8000000000000uLL;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_62:
    *(v6 + 192) = self->_gencountDiff;
    *(v6 + 452) |= 0x800000uLL;
  }

LABEL_63:
  if ((*(&self->_has + 4) & 0x40) != 0)
  {
    *(v6 + 444) = self->_parentMatches;
    *(v6 + 460) |= 0x40u;
  }

  if ((*(&self->_has + 5) & 0x80) != 0)
  {
    *(v6 + 421) = self->_appLibraryMatches;
    *(v6 + 452) |= 0x800000000000uLL;
  }

  if ((*(&self->_has + 4) & 8) != 0)
  {
    *(v6 + 441) = self->_mTimeBeforeMigrationStarted;
    *(v6 + 460) |= 8u;
  }

  v22 = *p_has;
  if ((*p_has & 0x20000000000000) != 0)
  {
    *(v6 + 427) = self->_docIDMatches;
    *(v6 + 452) |= 0x20000000000000uLL;
    v22 = self->_has;
    if ((v22 & 0x4000000) == 0)
    {
LABEL_71:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_142;
    }
  }

  else if ((v22 & 0x4000000) == 0)
  {
    goto LABEL_71;
  }

  *(v6 + 216) = self->_mTime;
  *(v6 + 452) |= 0x4000000uLL;
  v22 = self->_has;
  if ((v22 & 0x10) == 0)
  {
LABEL_72:
    if ((v22 & 0x1000000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_142:
  *(v6 + 40) = self->_bTime;
  *(v6 + 452) |= 0x10uLL;
  if ((*&self->_has & 0x1000000000000) != 0)
  {
LABEL_73:
    *(v6 + 422) = self->_bTimeIsBusy;
    *(v6 + 452) |= 0x1000000000000uLL;
  }

LABEL_74:
  if ((*(&self->_has + 4) & 0x100) != 0)
  {
    *(v6 + 446) = self->_xattrHasBeforeBounce;
    *(v6 + 460) |= 0x100u;
  }

  v23 = [(NSString *)self->_nameUnicodeNorm copyWithZone:zone];
  v24 = *(v6 + 392);
  *(v6 + 392) = v23;

  if ((*(&self->_has + 4) & 0x10) != 0)
  {
    *(v6 + 442) = self->_nameIsTrashed;
    *(v6 + 460) |= 0x10u;
  }

  v25 = *p_has;
  if ((*p_has & 0x8000000000) != 0)
  {
    *(v6 + 320) = self->_sysPageSize;
    *(v6 + 452) |= 0x8000000000uLL;
    v25 = self->_has;
  }

  if ((v25 & 0x10000000000) != 0)
  {
    *(v6 + 328) = self->_sysUID;
    *(v6 + 452) |= 0x10000000000uLL;
  }

  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    *(v6 + 445) = self->_sysDocIDResolutionOK;
    *(v6 + 460) |= 0x80u;
  }

  v26 = *p_has;
  if ((*p_has & 0x40000000) != 0)
  {
    *(v6 + 248) = self->_purgeGenCount;
    *(v6 + 452) |= 0x40000000uLL;
    v26 = self->_has;
    if ((v26 & 0x20000000) == 0)
    {
LABEL_86:
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_146;
    }
  }

  else if ((v26 & 0x20000000) == 0)
  {
    goto LABEL_86;
  }

  *(v6 + 240) = self->_purgeATime;
  *(v6 + 452) |= 0x20000000uLL;
  v26 = self->_has;
  if ((v26 & 0x80000000) == 0)
  {
LABEL_87:
    if ((v26 & 0x80000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(v6 + 256) = self->_purgeSyncRoot;
  *(v6 + 452) |= 0x80000000uLL;
  v26 = self->_has;
  if ((v26 & 0x80000) == 0)
  {
LABEL_88:
    if ((v26 & 0x40000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v6 + 160) = self->_diagFailuresBitmap;
  *(v6 + 452) |= 0x80000uLL;
  v26 = self->_has;
  if ((v26 & 0x40000) == 0)
  {
LABEL_89:
    if ((v26 & 0x100000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_148:
  *(v6 + 152) = self->_diagErrorCode;
  *(v6 + 452) |= 0x40000uLL;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_90:
    *(v6 + 168) = self->_diagUnderlyingErrorCode;
    *(v6 + 452) |= 0x100000uLL;
  }

LABEL_91:
  v27 = [(NSString *)self->_diagErrorDomain copyWithZone:zone];
  v28 = *(v6 + 352);
  *(v6 + 352) = v27;

  v29 = [(NSString *)self->_diagUnderlyingErrorDomain copyWithZone:zone];
  v30 = *(v6 + 360);
  *(v6 + 360) = v29;

  v31 = *p_has;
  if (*p_has)
  {
    *(v6 + 8) = self->_apfsAvailableSpace;
    *(v6 + 452) |= 1uLL;
    v31 = self->_has;
    if ((v31 & 4) == 0)
    {
LABEL_93:
      if ((v31 & 2) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_152;
    }
  }

  else if ((v31 & 4) == 0)
  {
    goto LABEL_93;
  }

  *(v6 + 24) = self->_apfsFlags;
  *(v6 + 452) |= 4uLL;
  v31 = self->_has;
  if ((v31 & 2) == 0)
  {
LABEL_94:
    if ((v31 & 8) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(v6 + 16) = self->_apfsBlockSize;
  *(v6 + 452) |= 2uLL;
  v31 = self->_has;
  if ((v31 & 8) == 0)
  {
LABEL_95:
    if ((v31 & 0x400000000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_154;
  }

LABEL_153:
  *(v6 + 32) = self->_apfsRole;
  *(v6 + 452) |= 8uLL;
  v31 = self->_has;
  if ((v31 & 0x400000000000) == 0)
  {
LABEL_96:
    if ((v31 & 0x1000000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_155;
  }

LABEL_154:
  *(v6 + 420) = self->_apfsEncrypted;
  *(v6 + 452) |= 0x400000000000uLL;
  v31 = self->_has;
  if ((v31 & 0x1000000000) == 0)
  {
LABEL_97:
    if ((v31 & 0x2000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(v6 + 296) = self->_statDocID;
  *(v6 + 452) |= 0x1000000000uLL;
  v31 = self->_has;
  if ((v31 & 0x2000000000) == 0)
  {
LABEL_98:
    if ((v31 & 0x4000000000) == 0)
    {
      goto LABEL_99;
    }

LABEL_157:
    *(v6 + 312) = self->_statPhysicalSize;
    *(v6 + 452) |= 0x4000000000uLL;
    if ((*&self->_has & 0x800000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_156:
  *(v6 + 304) = self->_statLogicalSize;
  *(v6 + 452) |= 0x2000000000uLL;
  v31 = self->_has;
  if ((v31 & 0x4000000000) != 0)
  {
    goto LABEL_157;
  }

LABEL_99:
  if ((v31 & 0x800000000) != 0)
  {
LABEL_100:
    *(v6 + 288) = self->_statDirEntryCount;
    *(v6 + 452) |= 0x800000000uLL;
  }

LABEL_101:
  v32 = v6;

  return v32;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_483;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = (equalCopy + 452);
  v8 = *(equalCopy + 452);
  if ((has & 0x2000000) != 0)
  {
    if ((v8 & 0x2000000) == 0 || self->_itemNumber != *(equalCopy + 26))
    {
      goto LABEL_483;
    }
  }

  else if ((v8 & 0x2000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x80000000000) != 0)
  {
    if ((v8 & 0x80000000000) == 0 || self->_itemType != *(equalCopy + 96))
    {
      goto LABEL_483;
    }
  }

  else if ((v8 & 0x80000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x40000000000) != 0)
  {
    if ((v8 & 0x40000000000) == 0 || self->_dataProtectionClass != *(equalCopy + 85))
    {
      goto LABEL_483;
    }
  }

  else if ((v8 & 0x40000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x800000000000000) != 0)
  {
    if ((v8 & 0x800000000000000) == 0)
    {
      goto LABEL_483;
    }

    v9 = equalCopy[433];
    if (self->_isOwnedByLoggedInUser)
    {
      if ((equalCopy[433] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[433])
    {
      goto LABEL_483;
    }
  }

  else if ((v8 & 0x800000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x1000000000000000) != 0)
  {
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_483;
    }

    v10 = equalCopy[434];
    if (self->_isOwnedByRoot)
    {
      if ((equalCopy[434] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[434])
    {
      goto LABEL_483;
    }
  }

  else if ((v8 & 0x1000000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x200000000000) != 0)
  {
    if ((v8 & 0x200000000000) == 0 || self->_xattrCount != *(equalCopy + 104))
    {
      goto LABEL_483;
    }
  }

  else if ((v8 & 0x200000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x100000000000000) != 0)
  {
    if ((v8 & 0x100000000000000) == 0)
    {
      goto LABEL_483;
    }

    v15 = equalCopy[430];
    if (self->_isAppleDouble)
    {
      if ((equalCopy[430] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[430])
    {
      goto LABEL_483;
    }
  }

  else if ((v8 & 0x100000000000000) != 0)
  {
    goto LABEL_483;
  }

  if (has < 0)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_483;
    }

    v16 = equalCopy[437];
    if (self->_isResourceFork)
    {
      if ((equalCopy[437] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[437])
    {
      goto LABEL_483;
    }
  }

  else if (v8 < 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x4000000000000000) != 0)
  {
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_483;
    }

    v17 = equalCopy[436];
    if (self->_isQuarantined)
    {
      if ((equalCopy[436] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[436])
    {
      goto LABEL_483;
    }
  }

  else if ((v8 & 0x4000000000000000) != 0)
  {
    goto LABEL_483;
  }

  utType = self->_utType;
  if (utType | *(equalCopy + 51))
  {
    if (![(NSString *)utType isEqual:?])
    {
      goto LABEL_483;
    }

    has = *p_has;
  }

  v12 = *v7;
  if ((has & 0x200000000000000) != 0)
  {
    if ((v12 & 0x200000000000000) == 0)
    {
      goto LABEL_483;
    }

    v18 = equalCopy[431];
    if (self->_isBundleBit)
    {
      if ((equalCopy[431] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[431])
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x200000000000000) != 0)
  {
    goto LABEL_483;
  }

  v13 = *(&self->_has + 4);
  v14 = *(equalCopy + 230);
  if (v13)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_483;
    }

    v19 = equalCopy[438];
    if (self->_isSparseFile)
    {
      if ((equalCopy[438] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[438])
    {
      goto LABEL_483;
    }
  }

  else if (v14)
  {
    goto LABEL_483;
  }

  if ((has & 0x20000000000) != 0)
  {
    if ((v12 & 0x20000000000) == 0 || self->_compressionType != *(equalCopy + 84))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x20000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x100000000) != 0)
  {
    if ((v12 & 0x100000000) == 0 || self->_readErrorCode != *(equalCopy + 33))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x100000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x20) != 0)
  {
    if ((v12 & 0x20) == 0 || self->_cloneErrorCode != *(equalCopy + 6))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x20) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x100000000000) != 0)
  {
    if ((v12 & 0x100000000000) == 0 || self->_syncRootEnum != *(equalCopy + 100))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x100000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x10000000) != 0)
  {
    if ((v12 & 0x10000000) == 0 || self->_pathLength != *(equalCopy + 29))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x10000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x200000) != 0)
  {
    if ((v12 & 0x200000) == 0 || self->_fileNameLength != *(equalCopy + 22))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x200000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x400000000) != 0)
  {
    if ((v12 & 0x400000000) == 0 || self->_stMode != *(equalCopy + 35))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x400000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x200000000) != 0)
  {
    if ((v12 & 0x200000000) == 0 || self->_stFlags != *(equalCopy + 34))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x200000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x40000000000000) != 0)
  {
    if ((v12 & 0x40000000000000) == 0)
    {
      goto LABEL_483;
    }

    v20 = equalCopy[428];
    if (self->_hasAcls)
    {
      if ((equalCopy[428] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[428])
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x40000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v13 & 0x20) != 0)
  {
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_483;
    }

    v21 = equalCopy[443];
    if (self->_parentHasAcls)
    {
      if ((equalCopy[443] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[443])
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x20) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x2000000000000000) != 0)
  {
    if ((v12 & 0x2000000000000000) == 0)
    {
      goto LABEL_483;
    }

    v24 = equalCopy[435];
    if (self->_isPurgable)
    {
      if ((equalCopy[435] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[435])
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x2000000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v13 & 4) != 0)
  {
    if ((v14 & 4) == 0)
    {
      goto LABEL_483;
    }

    v25 = equalCopy[440];
    if (self->_isUrgent)
    {
      if ((equalCopy[440] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[440])
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_483;
  }

  if ((v13 & 2) != 0)
  {
    if ((v14 & 2) == 0)
    {
      goto LABEL_483;
    }

    v26 = equalCopy[439];
    if (self->_isUnderDirStatFolder)
    {
      if ((equalCopy[439] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[439])
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 2) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x400000000000000) != 0)
  {
    if ((v12 & 0x400000000000000) == 0)
    {
      goto LABEL_483;
    }

    v27 = equalCopy[432];
    if (self->_isFileNameNonAscii)
    {
      if ((equalCopy[432] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[432])
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x400000000000000) != 0)
  {
    goto LABEL_483;
  }

  finderInfoFlagsBase64 = self->_finderInfoFlagsBase64;
  if (finderInfoFlagsBase64 | *(equalCopy + 47))
  {
    if (![(NSString *)finderInfoFlagsBase64 isEqual:?])
    {
      goto LABEL_483;
    }

    has = *p_has;
  }

  v23 = *v7;
  if ((has & 0x1000000) != 0)
  {
    if ((v23 & 0x1000000) == 0 || self->_hasMoreLinks != *(equalCopy + 25))
    {
      goto LABEL_483;
    }
  }

  else if ((v23 & 0x1000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x400000) != 0)
  {
    if ((v23 & 0x400000) == 0 || self->_fsGenCount != *(equalCopy + 23))
    {
      goto LABEL_483;
    }
  }

  else if ((v23 & 0x400000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x8000) != 0)
  {
    if ((v23 & 0x8000) == 0 || self->_dbGenCount != *(equalCopy + 16))
    {
      goto LABEL_483;
    }
  }

  else if ((v23 & 0x8000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x80000000000000) != 0)
  {
    if ((v23 & 0x80000000000000) == 0)
    {
      goto LABEL_483;
    }

    v30 = equalCopy[429];
    if (self->_hasLocalChanges)
    {
      if ((equalCopy[429] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[429])
    {
      goto LABEL_483;
    }
  }

  else if ((v23 & 0x80000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x10000000000000) != 0)
  {
    if ((v23 & 0x10000000000000) == 0)
    {
      goto LABEL_483;
    }

    v31 = equalCopy[426];
    if (self->_doGenCountsMatchInFileId)
    {
      if ((equalCopy[426] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[426])
    {
      goto LABEL_483;
    }
  }

  else if ((v23 & 0x10000000000000) != 0)
  {
    goto LABEL_483;
  }

  fileNameExtension = self->_fileNameExtension;
  if (fileNameExtension | *(equalCopy + 46))
  {
    if (![(NSString *)fileNameExtension isEqual:?])
    {
      goto LABEL_483;
    }

    has = *p_has;
  }

  v29 = *v7;
  if ((has & 0x8000000) != 0)
  {
    if ((v29 & 0x8000000) == 0 || self->_pathDepth != *(equalCopy + 28))
    {
      goto LABEL_483;
    }
  }

  else if ((v29 & 0x8000000) != 0)
  {
    goto LABEL_483;
  }

  v32 = *(equalCopy + 230);
  if ((*(&self->_has + 4) & 0x200) != 0)
  {
    if ((*(equalCopy + 230) & 0x200) == 0)
    {
      goto LABEL_483;
    }

    v33 = equalCopy[447];
    if (self->_xattrHasDemotion)
    {
      if ((equalCopy[447] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[447])
    {
      goto LABEL_483;
    }
  }

  else if ((*(equalCopy + 230) & 0x200) != 0)
  {
    goto LABEL_483;
  }

  if ((*(&self->_has + 4) & 0x400) != 0)
  {
    if ((*(equalCopy + 230) & 0x400) == 0)
    {
      goto LABEL_483;
    }

    v36 = equalCopy[448];
    if (self->_xattrHasPromotion)
    {
      if ((equalCopy[448] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[448])
    {
      goto LABEL_483;
    }
  }

  else if ((*(equalCopy + 230) & 0x400) != 0)
  {
    goto LABEL_483;
  }

  dbErrorDomain = self->_dbErrorDomain;
  if (dbErrorDomain | *(equalCopy + 43))
  {
    if (![(NSString *)dbErrorDomain isEqual:?])
    {
      goto LABEL_483;
    }

    has = *p_has;
  }

  v35 = *v7;
  if ((has & 0x100) != 0)
  {
    if ((v35 & 0x100) == 0 || self->_dbErrorCode != *(equalCopy + 9))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x100) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x40) != 0)
  {
    if ((v35 & 0x40) == 0 || self->_dbCapabilities != *(equalCopy + 7))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x40) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x20000) != 0)
  {
    if ((v35 & 0x20000) == 0 || self->_dbTransferState != *(equalCopy + 18))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x20000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x10000) != 0)
  {
    if ((v35 & 0x10000) == 0 || self->_dbSharingState != *(equalCopy + 17))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x10000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x2000000000000) != 0)
  {
    if ((v35 & 0x2000000000000) == 0)
    {
      goto LABEL_483;
    }

    v37 = equalCopy[423];
    if (self->_dbIsApplibrary)
    {
      if ((equalCopy[423] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[423])
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x2000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x80) != 0)
  {
    if ((v35 & 0x80) == 0 || self->_dbEffectiveContentPolicy != *(equalCopy + 8))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x80) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x4000000000000) != 0)
  {
    if ((v35 & 0x4000000000000) == 0)
    {
      goto LABEL_483;
    }

    v38 = equalCopy[424];
    if (self->_dbIsPackage)
    {
      if ((equalCopy[424] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[424])
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x4000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x1000) != 0)
  {
    if ((v35 & 0x1000) == 0 || self->_dbFsContentStatus != *(equalCopy + 13))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x1000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x200) != 0)
  {
    if ((v35 & 0x200) == 0 || self->_dbFpContentStatus != *(equalCopy + 10))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x200) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x2000) != 0)
  {
    if ((v35 & 0x2000) == 0 || self->_dbFsDeletionStatus != *(equalCopy + 14))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x2000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x400) != 0)
  {
    if ((v35 & 0x400) == 0 || self->_dbFpDeletionStatus != *(equalCopy + 11))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x400) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x4000) != 0)
  {
    if ((v35 & 0x4000) == 0 || self->_dbFsImportStatus != *(equalCopy + 15))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x4000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x800) != 0)
  {
    if ((v35 & 0x800) == 0 || self->_dbFpImportStatus != *(equalCopy + 12))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x800) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x8000000000000) != 0)
  {
    if ((v35 & 0x8000000000000) == 0)
    {
      goto LABEL_483;
    }

    v39 = equalCopy[425];
    if (self->_dbIsSuper)
    {
      if ((equalCopy[425] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[425])
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x8000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x800000) != 0)
  {
    if ((v35 & 0x800000) == 0 || self->_gencountDiff != *(equalCopy + 24))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x800000) != 0)
  {
    goto LABEL_483;
  }

  v40 = *(&self->_has + 4);
  v41 = *(equalCopy + 230);
  if ((v40 & 0x40) != 0)
  {
    if ((v41 & 0x40) == 0)
    {
      goto LABEL_483;
    }

    v42 = equalCopy[444];
    if (self->_parentMatches)
    {
      if ((equalCopy[444] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[444])
    {
      goto LABEL_483;
    }
  }

  else if ((v41 & 0x40) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x800000000000) != 0)
  {
    if ((v35 & 0x800000000000) == 0)
    {
      goto LABEL_483;
    }

    v43 = equalCopy[421];
    if (self->_appLibraryMatches)
    {
      if ((equalCopy[421] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[421])
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x800000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v40 & 8) != 0)
  {
    if ((v41 & 8) == 0)
    {
      goto LABEL_483;
    }

    v44 = equalCopy[441];
    if (self->_mTimeBeforeMigrationStarted)
    {
      if ((equalCopy[441] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[441])
    {
      goto LABEL_483;
    }
  }

  else if ((v41 & 8) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x20000000000000) != 0)
  {
    if ((v35 & 0x20000000000000) == 0)
    {
      goto LABEL_483;
    }

    v45 = equalCopy[427];
    if (self->_docIDMatches)
    {
      if ((equalCopy[427] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[427])
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x20000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x4000000) != 0)
  {
    if ((v35 & 0x4000000) == 0 || self->_mTime != *(equalCopy + 27))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x4000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x10) != 0)
  {
    if ((v35 & 0x10) == 0 || self->_bTime != *(equalCopy + 5))
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x10) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x1000000000000) != 0)
  {
    if ((v35 & 0x1000000000000) == 0)
    {
      goto LABEL_483;
    }

    v46 = equalCopy[422];
    if (self->_bTimeIsBusy)
    {
      if ((equalCopy[422] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[422])
    {
      goto LABEL_483;
    }
  }

  else if ((v35 & 0x1000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((*(&self->_has + 4) & 0x100) != 0)
  {
    if ((*(equalCopy + 230) & 0x100) == 0)
    {
      goto LABEL_483;
    }

    v47 = equalCopy[446];
    if (self->_xattrHasBeforeBounce)
    {
      if ((equalCopy[446] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[446])
    {
      goto LABEL_483;
    }
  }

  else if ((*(equalCopy + 230) & 0x100) != 0)
  {
    goto LABEL_483;
  }

  nameUnicodeNorm = self->_nameUnicodeNorm;
  if (nameUnicodeNorm | *(equalCopy + 49))
  {
    if (![(NSString *)nameUnicodeNorm isEqual:?])
    {
      goto LABEL_483;
    }

    v40 = *(&self->_has + 4);
  }

  v49 = *(equalCopy + 230);
  if ((v40 & 0x10) != 0)
  {
    if ((v49 & 0x10) == 0)
    {
      goto LABEL_483;
    }

    v50 = equalCopy[442];
    if (self->_nameIsTrashed)
    {
      if ((equalCopy[442] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[442])
    {
      goto LABEL_483;
    }
  }

  else if ((v49 & 0x10) != 0)
  {
    goto LABEL_483;
  }

  v51 = *p_has;
  v52 = *v7;
  if ((*p_has & 0x8000000000) != 0)
  {
    if ((v52 & 0x8000000000) == 0 || self->_sysPageSize != *(equalCopy + 40))
    {
      goto LABEL_483;
    }
  }

  else if ((v52 & 0x8000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v51 & 0x10000000000) != 0)
  {
    if ((v52 & 0x10000000000) == 0 || self->_sysUID != *(equalCopy + 41))
    {
      goto LABEL_483;
    }
  }

  else if ((v52 & 0x10000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v40 & 0x80) != 0)
  {
    if ((v49 & 0x80) == 0)
    {
      goto LABEL_483;
    }

    v53 = equalCopy[445];
    if (self->_sysDocIDResolutionOK)
    {
      if ((equalCopy[445] & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (equalCopy[445])
    {
      goto LABEL_483;
    }
  }

  else if ((v49 & 0x80) != 0)
  {
    goto LABEL_483;
  }

  if ((v51 & 0x40000000) != 0)
  {
    if ((v52 & 0x40000000) == 0 || self->_purgeGenCount != *(equalCopy + 31))
    {
      goto LABEL_483;
    }
  }

  else if ((v52 & 0x40000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v51 & 0x20000000) != 0)
  {
    if ((v52 & 0x20000000) == 0 || self->_purgeATime != *(equalCopy + 30))
    {
      goto LABEL_483;
    }
  }

  else if ((v52 & 0x20000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v51 & 0x80000000) != 0)
  {
    if ((v52 & 0x80000000) == 0 || self->_purgeSyncRoot != *(equalCopy + 32))
    {
      goto LABEL_483;
    }
  }

  else if ((v52 & 0x80000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v51 & 0x80000) != 0)
  {
    if ((v52 & 0x80000) == 0 || self->_diagFailuresBitmap != *(equalCopy + 20))
    {
      goto LABEL_483;
    }
  }

  else if ((v52 & 0x80000) != 0)
  {
    goto LABEL_483;
  }

  if ((v51 & 0x40000) != 0)
  {
    if ((v52 & 0x40000) == 0 || self->_diagErrorCode != *(equalCopy + 19))
    {
      goto LABEL_483;
    }
  }

  else if ((v52 & 0x40000) != 0)
  {
    goto LABEL_483;
  }

  if ((v51 & 0x100000) != 0)
  {
    if ((v52 & 0x100000) == 0 || self->_diagUnderlyingErrorCode != *(equalCopy + 21))
    {
      goto LABEL_483;
    }
  }

  else if ((v52 & 0x100000) != 0)
  {
    goto LABEL_483;
  }

  diagErrorDomain = self->_diagErrorDomain;
  if (diagErrorDomain | *(equalCopy + 44) && ![(NSString *)diagErrorDomain isEqual:?])
  {
    goto LABEL_483;
  }

  diagUnderlyingErrorDomain = self->_diagUnderlyingErrorDomain;
  if (diagUnderlyingErrorDomain | *(equalCopy + 45))
  {
    if (![(NSString *)diagUnderlyingErrorDomain isEqual:?])
    {
      goto LABEL_483;
    }
  }

  v56 = *p_has;
  v57 = *v7;
  if (*p_has)
  {
    if ((v57 & 1) == 0 || self->_apfsAvailableSpace != *(equalCopy + 1))
    {
      goto LABEL_483;
    }
  }

  else if (v57)
  {
    goto LABEL_483;
  }

  if ((v56 & 4) != 0)
  {
    if ((v57 & 4) == 0 || self->_apfsFlags != *(equalCopy + 3))
    {
      goto LABEL_483;
    }
  }

  else if ((v57 & 4) != 0)
  {
    goto LABEL_483;
  }

  if ((v56 & 2) != 0)
  {
    if ((v57 & 2) == 0 || self->_apfsBlockSize != *(equalCopy + 2))
    {
      goto LABEL_483;
    }
  }

  else if ((v57 & 2) != 0)
  {
    goto LABEL_483;
  }

  if ((v56 & 8) != 0)
  {
    if ((v57 & 8) == 0 || self->_apfsRole != *(equalCopy + 4))
    {
      goto LABEL_483;
    }
  }

  else if ((v57 & 8) != 0)
  {
    goto LABEL_483;
  }

  if ((v56 & 0x400000000000) != 0)
  {
    if ((v57 & 0x400000000000) != 0)
    {
      v58 = equalCopy[420];
      if (self->_apfsEncrypted)
      {
        if ((equalCopy[420] & 1) == 0)
        {
          goto LABEL_483;
        }

        goto LABEL_463;
      }

      if ((equalCopy[420] & 1) == 0)
      {
        goto LABEL_463;
      }
    }

LABEL_483:
    v59 = 0;
    goto LABEL_484;
  }

  if ((v57 & 0x400000000000) != 0)
  {
    goto LABEL_483;
  }

LABEL_463:
  if ((v56 & 0x1000000000) != 0)
  {
    if ((v57 & 0x1000000000) == 0 || self->_statDocID != *(equalCopy + 37))
    {
      goto LABEL_483;
    }
  }

  else if ((v57 & 0x1000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v56 & 0x2000000000) != 0)
  {
    if ((v57 & 0x2000000000) == 0 || self->_statLogicalSize != *(equalCopy + 38))
    {
      goto LABEL_483;
    }
  }

  else if ((v57 & 0x2000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v56 & 0x4000000000) != 0)
  {
    if ((v57 & 0x4000000000) == 0 || self->_statPhysicalSize != *(equalCopy + 39))
    {
      goto LABEL_483;
    }
  }

  else if ((v57 & 0x4000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v56 & 0x800000000) != 0)
  {
    if ((v57 & 0x800000000) == 0 || self->_statDirEntryCount != *(equalCopy + 36))
    {
      goto LABEL_483;
    }

    v59 = 1;
  }

  else
  {
    v59 = (v57 & 0x800000000) == 0;
  }

LABEL_484:

  return v59;
}

- (unint64_t)hash
{
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x2000000) != 0)
  {
    v96 = 2654435761 * self->_itemNumber;
    if ((has & 0x80000000000) != 0)
    {
LABEL_3:
      v95 = 2654435761 * self->_itemType;
      if ((has & 0x40000000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v96 = 0;
    if ((has & 0x80000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v95 = 0;
  if ((has & 0x40000000000) != 0)
  {
LABEL_4:
    v94 = 2654435761 * self->_dataProtectionClass;
    if ((has & 0x800000000000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v94 = 0;
  if ((has & 0x800000000000000) != 0)
  {
LABEL_5:
    v93 = 2654435761 * self->_isOwnedByLoggedInUser;
    if ((has & 0x1000000000000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v93 = 0;
  if ((has & 0x1000000000000000) != 0)
  {
LABEL_6:
    v92 = 2654435761 * self->_isOwnedByRoot;
    if ((has & 0x200000000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v92 = 0;
  if ((has & 0x200000000000) != 0)
  {
LABEL_7:
    v91 = 2654435761 * self->_xattrCount;
    if ((has & 0x100000000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v91 = 0;
  if ((has & 0x100000000000000) != 0)
  {
LABEL_8:
    v90 = 2654435761 * self->_isAppleDouble;
    if (has < 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v89 = 0;
    if ((has & 0x4000000000000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_17:
  v90 = 0;
  if ((has & 0x8000000000000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v89 = 2654435761 * self->_isResourceFork;
  if ((has & 0x4000000000000000) != 0)
  {
LABEL_10:
    v88 = 2654435761 * self->_isQuarantined;
    goto LABEL_20;
  }

LABEL_19:
  v88 = 0;
LABEL_20:
  v87 = [(NSString *)self->_utType hash];
  v5 = *p_has;
  if ((*p_has & 0x200000000000000) != 0)
  {
    v86 = 2654435761 * self->_isBundleBit;
  }

  else
  {
    v86 = 0;
  }

  v6 = *(p_has + 4);
  if (v6)
  {
    v85 = 2654435761 * self->_isSparseFile;
    if ((v5 & 0x20000000000) != 0)
    {
LABEL_25:
      v84 = 2654435761 * self->_compressionType;
      if ((v5 & 0x100000000) != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v85 = 0;
    if ((v5 & 0x20000000000) != 0)
    {
      goto LABEL_25;
    }
  }

  v84 = 0;
  if ((v5 & 0x100000000) != 0)
  {
LABEL_26:
    v83 = 2654435761 * self->_readErrorCode;
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_42;
  }

LABEL_41:
  v83 = 0;
  if ((v5 & 0x20) != 0)
  {
LABEL_27:
    v82 = 2654435761 * self->_cloneErrorCode;
    if ((v5 & 0x100000000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_43;
  }

LABEL_42:
  v82 = 0;
  if ((v5 & 0x100000000000) != 0)
  {
LABEL_28:
    v81 = 2654435761 * self->_syncRootEnum;
    if ((v5 & 0x10000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

LABEL_43:
  v81 = 0;
  if ((v5 & 0x10000000) != 0)
  {
LABEL_29:
    v80 = 2654435761 * self->_pathLength;
    if ((v5 & 0x200000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_45;
  }

LABEL_44:
  v80 = 0;
  if ((v5 & 0x200000) != 0)
  {
LABEL_30:
    v79 = 2654435761 * self->_fileNameLength;
    if ((v5 & 0x400000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_46;
  }

LABEL_45:
  v79 = 0;
  if ((v5 & 0x400000000) != 0)
  {
LABEL_31:
    v78 = 2654435761 * self->_stMode;
    if ((v5 & 0x200000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_46:
  v78 = 0;
  if ((v5 & 0x200000000) != 0)
  {
LABEL_32:
    v77 = 2654435761 * self->_stFlags;
    if ((v5 & 0x40000000000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_48;
  }

LABEL_47:
  v77 = 0;
  if ((v5 & 0x40000000000000) != 0)
  {
LABEL_33:
    v76 = 2654435761 * self->_hasAcls;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_49;
  }

LABEL_48:
  v76 = 0;
  if ((v6 & 0x20) != 0)
  {
LABEL_34:
    v75 = 2654435761 * self->_parentHasAcls;
    if ((v5 & 0x2000000000000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

LABEL_49:
  v75 = 0;
  if ((v5 & 0x2000000000000000) != 0)
  {
LABEL_35:
    v74 = 2654435761 * self->_isPurgable;
    if ((v6 & 4) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_51;
  }

LABEL_50:
  v74 = 0;
  if ((v6 & 4) != 0)
  {
LABEL_36:
    v73 = 2654435761 * self->_isUrgent;
    if ((v6 & 2) != 0)
    {
      goto LABEL_37;
    }

LABEL_52:
    v72 = 0;
    if ((v5 & 0x400000000000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_53;
  }

LABEL_51:
  v73 = 0;
  if ((v6 & 2) == 0)
  {
    goto LABEL_52;
  }

LABEL_37:
  v72 = 2654435761 * self->_isUnderDirStatFolder;
  if ((v5 & 0x400000000000000) != 0)
  {
LABEL_38:
    v71 = 2654435761 * self->_isFileNameNonAscii;
    goto LABEL_54;
  }

LABEL_53:
  v71 = 0;
LABEL_54:
  v70 = [(NSString *)self->_finderInfoFlagsBase64 hash];
  v7 = *p_has;
  if ((*p_has & 0x1000000) != 0)
  {
    v69 = 2654435761 * self->_hasMoreLinks;
    if ((v7 & 0x400000) != 0)
    {
LABEL_56:
      v68 = 2654435761 * self->_fsGenCount;
      if ((v7 & 0x8000) != 0)
      {
        goto LABEL_57;
      }

      goto LABEL_62;
    }
  }

  else
  {
    v69 = 0;
    if ((v7 & 0x400000) != 0)
    {
      goto LABEL_56;
    }
  }

  v68 = 0;
  if ((v7 & 0x8000) != 0)
  {
LABEL_57:
    v67 = 2654435761 * self->_dbGenCount;
    if ((v7 & 0x80000000000000) != 0)
    {
      goto LABEL_58;
    }

LABEL_63:
    v66 = 0;
    if ((v7 & 0x10000000000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_64;
  }

LABEL_62:
  v67 = 0;
  if ((v7 & 0x80000000000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_58:
  v66 = 2654435761 * self->_hasLocalChanges;
  if ((v7 & 0x10000000000000) != 0)
  {
LABEL_59:
    v65 = 2654435761 * self->_doGenCountsMatchInFileId;
    goto LABEL_65;
  }

LABEL_64:
  v65 = 0;
LABEL_65:
  v64 = [(NSString *)self->_fileNameExtension hash];
  if ((*(p_has + 3) & 8) != 0)
  {
    v63 = 2654435761 * self->_pathDepth;
  }

  else
  {
    v63 = 0;
  }

  if ((*(p_has + 4) & 0x200) != 0)
  {
    v62 = 2654435761 * self->_xattrHasDemotion;
    if ((*(p_has + 4) & 0x400) != 0)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v62 = 0;
    if ((*(p_has + 4) & 0x400) != 0)
    {
LABEL_70:
      v61 = 2654435761 * self->_xattrHasPromotion;
      goto LABEL_73;
    }
  }

  v61 = 0;
LABEL_73:
  v60 = [(NSString *)self->_dbErrorDomain hash];
  v8 = *p_has;
  if ((*p_has & 0x100) != 0)
  {
    v59 = 2654435761 * self->_dbErrorCode;
    if ((v8 & 0x40) != 0)
    {
LABEL_75:
      v58 = 2654435761 * self->_dbCapabilities;
      if ((v8 & 0x20000) != 0)
      {
        goto LABEL_76;
      }

      goto LABEL_91;
    }
  }

  else
  {
    v59 = 0;
    if ((v8 & 0x40) != 0)
    {
      goto LABEL_75;
    }
  }

  v58 = 0;
  if ((v8 & 0x20000) != 0)
  {
LABEL_76:
    v57 = 2654435761 * self->_dbTransferState;
    if ((v8 & 0x10000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_92;
  }

LABEL_91:
  v57 = 0;
  if ((v8 & 0x10000) != 0)
  {
LABEL_77:
    v56 = 2654435761 * self->_dbSharingState;
    if ((v8 & 0x2000000000000) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_93;
  }

LABEL_92:
  v56 = 0;
  if ((v8 & 0x2000000000000) != 0)
  {
LABEL_78:
    v55 = 2654435761 * self->_dbIsApplibrary;
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_94;
  }

LABEL_93:
  v55 = 0;
  if ((v8 & 0x80) != 0)
  {
LABEL_79:
    v54 = 2654435761 * self->_dbEffectiveContentPolicy;
    if ((v8 & 0x4000000000000) != 0)
    {
      goto LABEL_80;
    }

    goto LABEL_95;
  }

LABEL_94:
  v54 = 0;
  if ((v8 & 0x4000000000000) != 0)
  {
LABEL_80:
    v53 = 2654435761 * self->_dbIsPackage;
    if ((v8 & 0x1000) != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_96;
  }

LABEL_95:
  v53 = 0;
  if ((v8 & 0x1000) != 0)
  {
LABEL_81:
    v52 = 2654435761 * self->_dbFsContentStatus;
    if ((v8 & 0x200) != 0)
    {
      goto LABEL_82;
    }

    goto LABEL_97;
  }

LABEL_96:
  v52 = 0;
  if ((v8 & 0x200) != 0)
  {
LABEL_82:
    v51 = 2654435761 * self->_dbFpContentStatus;
    if ((v8 & 0x2000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_98;
  }

LABEL_97:
  v51 = 0;
  if ((v8 & 0x2000) != 0)
  {
LABEL_83:
    v50 = 2654435761 * self->_dbFsDeletionStatus;
    if ((v8 & 0x400) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_99;
  }

LABEL_98:
  v50 = 0;
  if ((v8 & 0x400) != 0)
  {
LABEL_84:
    v49 = 2654435761 * self->_dbFpDeletionStatus;
    if ((v8 & 0x4000) != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_100;
  }

LABEL_99:
  v49 = 0;
  if ((v8 & 0x4000) != 0)
  {
LABEL_85:
    v48 = 2654435761 * self->_dbFsImportStatus;
    if ((v8 & 0x800) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_101;
  }

LABEL_100:
  v48 = 0;
  if ((v8 & 0x800) != 0)
  {
LABEL_86:
    v47 = 2654435761 * self->_dbFpImportStatus;
    if ((v8 & 0x8000000000000) != 0)
    {
      goto LABEL_87;
    }

LABEL_102:
    v46 = 0;
    if ((v8 & 0x800000) != 0)
    {
      goto LABEL_88;
    }

    goto LABEL_103;
  }

LABEL_101:
  v47 = 0;
  if ((v8 & 0x8000000000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_87:
  v46 = 2654435761 * self->_dbIsSuper;
  if ((v8 & 0x800000) != 0)
  {
LABEL_88:
    v45 = 2654435761 * self->_gencountDiff;
    goto LABEL_104;
  }

LABEL_103:
  v45 = 0;
LABEL_104:
  v9 = *(p_has + 4);
  if ((v9 & 0x40) != 0)
  {
    v44 = 2654435761 * self->_parentMatches;
    if ((v8 & 0x800000000000) != 0)
    {
LABEL_106:
      v43 = 2654435761 * self->_appLibraryMatches;
      if ((v9 & 8) != 0)
      {
        goto LABEL_107;
      }

      goto LABEL_115;
    }
  }

  else
  {
    v44 = 0;
    if ((v8 & 0x800000000000) != 0)
    {
      goto LABEL_106;
    }
  }

  v43 = 0;
  if ((v9 & 8) != 0)
  {
LABEL_107:
    v42 = 2654435761 * self->_mTimeBeforeMigrationStarted;
    if ((v8 & 0x20000000000000) != 0)
    {
      goto LABEL_108;
    }

    goto LABEL_116;
  }

LABEL_115:
  v42 = 0;
  if ((v8 & 0x20000000000000) != 0)
  {
LABEL_108:
    v41 = 2654435761 * self->_docIDMatches;
    if ((v8 & 0x4000000) != 0)
    {
      goto LABEL_109;
    }

    goto LABEL_117;
  }

LABEL_116:
  v41 = 0;
  if ((v8 & 0x4000000) != 0)
  {
LABEL_109:
    v40 = 2654435761 * self->_mTime;
    if ((v8 & 0x10) != 0)
    {
      goto LABEL_110;
    }

    goto LABEL_118;
  }

LABEL_117:
  v40 = 0;
  if ((v8 & 0x10) != 0)
  {
LABEL_110:
    v39 = 2654435761 * self->_bTime;
    if ((v8 & 0x1000000000000) != 0)
    {
      goto LABEL_111;
    }

LABEL_119:
    v38 = 0;
    if ((*(p_has + 4) & 0x100) != 0)
    {
      goto LABEL_112;
    }

    goto LABEL_120;
  }

LABEL_118:
  v39 = 0;
  if ((v8 & 0x1000000000000) == 0)
  {
    goto LABEL_119;
  }

LABEL_111:
  v38 = 2654435761 * self->_bTimeIsBusy;
  if ((*(p_has + 4) & 0x100) != 0)
  {
LABEL_112:
    v37 = 2654435761 * self->_xattrHasBeforeBounce;
    goto LABEL_121;
  }

LABEL_120:
  v37 = 0;
LABEL_121:
  v36 = [(NSString *)self->_nameUnicodeNorm hash];
  v10 = *(p_has + 4);
  if ((v10 & 0x10) != 0)
  {
    v35 = 2654435761 * self->_nameIsTrashed;
  }

  else
  {
    v35 = 0;
  }

  v11 = *p_has;
  if ((*p_has & 0x8000000000) != 0)
  {
    v34 = 2654435761 * self->_sysPageSize;
    if ((v11 & 0x10000000000) != 0)
    {
LABEL_126:
      v33 = 2654435761 * self->_sysUID;
      if ((v10 & 0x80) != 0)
      {
        goto LABEL_127;
      }

      goto LABEL_136;
    }
  }

  else
  {
    v34 = 0;
    if ((v11 & 0x10000000000) != 0)
    {
      goto LABEL_126;
    }
  }

  v33 = 0;
  if ((v10 & 0x80) != 0)
  {
LABEL_127:
    v31 = 2654435761 * self->_sysDocIDResolutionOK;
    if ((v11 & 0x40000000) != 0)
    {
      goto LABEL_128;
    }

    goto LABEL_137;
  }

LABEL_136:
  v31 = 0;
  if ((v11 & 0x40000000) != 0)
  {
LABEL_128:
    v12 = 2654435761 * self->_purgeGenCount;
    if ((v11 & 0x20000000) != 0)
    {
      goto LABEL_129;
    }

    goto LABEL_138;
  }

LABEL_137:
  v12 = 0;
  if ((v11 & 0x20000000) != 0)
  {
LABEL_129:
    v13 = 2654435761 * self->_purgeATime;
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_130;
    }

    goto LABEL_139;
  }

LABEL_138:
  v13 = 0;
  if ((v11 & 0x80000000) != 0)
  {
LABEL_130:
    v14 = 2654435761 * self->_purgeSyncRoot;
    if ((v11 & 0x80000) != 0)
    {
      goto LABEL_131;
    }

    goto LABEL_140;
  }

LABEL_139:
  v14 = 0;
  if ((v11 & 0x80000) != 0)
  {
LABEL_131:
    v15 = 2654435761 * self->_diagFailuresBitmap;
    if ((v11 & 0x40000) != 0)
    {
      goto LABEL_132;
    }

LABEL_141:
    v16 = 0;
    if ((v11 & 0x100000) != 0)
    {
      goto LABEL_133;
    }

    goto LABEL_142;
  }

LABEL_140:
  v15 = 0;
  if ((v11 & 0x40000) == 0)
  {
    goto LABEL_141;
  }

LABEL_132:
  v16 = 2654435761 * self->_diagErrorCode;
  if ((v11 & 0x100000) != 0)
  {
LABEL_133:
    v17 = 2654435761 * self->_diagUnderlyingErrorCode;
    goto LABEL_143;
  }

LABEL_142:
  v17 = 0;
LABEL_143:
  v18 = [(NSString *)self->_diagErrorDomain hash];
  v19 = [(NSString *)self->_diagUnderlyingErrorDomain hash];
  v20 = *p_has;
  if (*p_has)
  {
    v21 = 2654435761 * self->_apfsAvailableSpace;
    if ((v20 & 4) != 0)
    {
LABEL_145:
      v22 = 2654435761 * self->_apfsFlags;
      if ((v20 & 2) != 0)
      {
        goto LABEL_146;
      }

      goto LABEL_155;
    }
  }

  else
  {
    v21 = 0;
    if ((v20 & 4) != 0)
    {
      goto LABEL_145;
    }
  }

  v22 = 0;
  if ((v20 & 2) != 0)
  {
LABEL_146:
    v23 = 2654435761 * self->_apfsBlockSize;
    if ((v20 & 8) != 0)
    {
      goto LABEL_147;
    }

    goto LABEL_156;
  }

LABEL_155:
  v23 = 0;
  if ((v20 & 8) != 0)
  {
LABEL_147:
    v24 = 2654435761 * self->_apfsRole;
    if ((v20 & 0x400000000000) != 0)
    {
      goto LABEL_148;
    }

    goto LABEL_157;
  }

LABEL_156:
  v24 = 0;
  if ((v20 & 0x400000000000) != 0)
  {
LABEL_148:
    v25 = 2654435761 * self->_apfsEncrypted;
    if ((v20 & 0x1000000000) != 0)
    {
      goto LABEL_149;
    }

    goto LABEL_158;
  }

LABEL_157:
  v25 = 0;
  if ((v20 & 0x1000000000) != 0)
  {
LABEL_149:
    v26 = 2654435761 * self->_statDocID;
    if ((v20 & 0x2000000000) != 0)
    {
      goto LABEL_150;
    }

    goto LABEL_159;
  }

LABEL_158:
  v26 = 0;
  if ((v20 & 0x2000000000) != 0)
  {
LABEL_150:
    v27 = 2654435761 * self->_statLogicalSize;
    if ((v20 & 0x4000000000) != 0)
    {
      goto LABEL_151;
    }

LABEL_160:
    v28 = 0;
    if ((v20 & 0x800000000) != 0)
    {
      goto LABEL_152;
    }

LABEL_161:
    v29 = 0;
    return v95 ^ v96 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v87 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  }

LABEL_159:
  v27 = 0;
  if ((v20 & 0x4000000000) == 0)
  {
    goto LABEL_160;
  }

LABEL_151:
  v28 = 2654435761 * self->_statPhysicalSize;
  if ((v20 & 0x800000000) == 0)
  {
    goto LABEL_161;
  }

LABEL_152:
  v29 = 2654435761 * self->_statDirEntryCount;
  return v95 ^ v96 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v87 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy + 452;
  v6 = *(fromCopy + 452);
  if ((v6 & 0x2000000) != 0)
  {
    self->_itemNumber = *(fromCopy + 26);
    *&self->_has |= 0x2000000uLL;
    v6 = *(fromCopy + 452);
    if ((v6 & 0x80000000000) == 0)
    {
LABEL_3:
      if ((v6 & 0x40000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_120;
    }
  }

  else if ((v6 & 0x80000000000) == 0)
  {
    goto LABEL_3;
  }

  self->_itemType = *(fromCopy + 96);
  *&self->_has |= 0x80000000000uLL;
  v6 = *(fromCopy + 452);
  if ((v6 & 0x40000000000) == 0)
  {
LABEL_4:
    if ((v6 & 0x800000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_121;
  }

LABEL_120:
  self->_dataProtectionClass = *(fromCopy + 85);
  *&self->_has |= 0x40000000000uLL;
  v6 = *(fromCopy + 452);
  if ((v6 & 0x800000000000000) == 0)
  {
LABEL_5:
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_122;
  }

LABEL_121:
  self->_isOwnedByLoggedInUser = fromCopy[433];
  *&self->_has |= 0x800000000000000uLL;
  v6 = *(fromCopy + 452);
  if ((v6 & 0x1000000000000000) == 0)
  {
LABEL_6:
    if ((v6 & 0x200000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_123;
  }

LABEL_122:
  self->_isOwnedByRoot = fromCopy[434];
  *&self->_has |= 0x1000000000000000uLL;
  v6 = *(fromCopy + 452);
  if ((v6 & 0x200000000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x100000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_124;
  }

LABEL_123:
  self->_xattrCount = *(fromCopy + 104);
  *&self->_has |= 0x200000000000uLL;
  v6 = *(fromCopy + 452);
  if ((v6 & 0x100000000000000) == 0)
  {
LABEL_8:
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_125;
  }

LABEL_124:
  self->_isAppleDouble = fromCopy[430];
  *&self->_has |= 0x100000000000000uLL;
  v6 = *(fromCopy + 452);
  if ((v6 & 0x8000000000000000) == 0)
  {
LABEL_9:
    if ((v6 & 0x4000000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_125:
  self->_isResourceFork = fromCopy[437];
  *&self->_has |= 0x8000000000000000;
  if ((*(fromCopy + 452) & 0x4000000000000000) != 0)
  {
LABEL_10:
    self->_isQuarantined = fromCopy[436];
    *&self->_has |= 0x4000000000000000uLL;
  }

LABEL_11:
  v16 = fromCopy;
  if (*(fromCopy + 51))
  {
    [(AppTelemetryItemStatsInvestigation *)self setUtType:?];
    fromCopy = v16;
  }

  if ((v5[7] & 2) != 0)
  {
    self->_isBundleBit = fromCopy[431];
    *&self->_has |= 0x200000000000000uLL;
  }

  if (*(v5 + 4))
  {
    self->_isSparseFile = fromCopy[438];
    *(&self->_has + 4) |= 1u;
  }

  v7 = *v5;
  if ((*v5 & 0x20000000000) != 0)
  {
    self->_compressionType = *(fromCopy + 84);
    *&self->_has |= 0x20000000000uLL;
    v7 = *(fromCopy + 452);
    if ((v7 & 0x100000000) == 0)
    {
LABEL_19:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_129;
    }
  }

  else if ((v7 & 0x100000000) == 0)
  {
    goto LABEL_19;
  }

  self->_readErrorCode = *(fromCopy + 33);
  *&self->_has |= 0x100000000uLL;
  v7 = *(fromCopy + 452);
  if ((v7 & 0x20) == 0)
  {
LABEL_20:
    if ((v7 & 0x100000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_130;
  }

LABEL_129:
  self->_cloneErrorCode = *(fromCopy + 6);
  *&self->_has |= 0x20uLL;
  v7 = *(fromCopy + 452);
  if ((v7 & 0x100000000000) == 0)
  {
LABEL_21:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_131;
  }

LABEL_130:
  self->_syncRootEnum = *(fromCopy + 100);
  *&self->_has |= 0x100000000000uLL;
  v7 = *(fromCopy + 452);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_22:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_132;
  }

LABEL_131:
  self->_pathLength = *(fromCopy + 29);
  *&self->_has |= 0x10000000uLL;
  v7 = *(fromCopy + 452);
  if ((v7 & 0x200000) == 0)
  {
LABEL_23:
    if ((v7 & 0x400000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_133;
  }

LABEL_132:
  self->_fileNameLength = *(fromCopy + 22);
  *&self->_has |= 0x200000uLL;
  v7 = *(fromCopy + 452);
  if ((v7 & 0x400000000) == 0)
  {
LABEL_24:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_134;
  }

LABEL_133:
  self->_stMode = *(fromCopy + 35);
  *&self->_has |= 0x400000000uLL;
  v7 = *(fromCopy + 452);
  if ((v7 & 0x200000000) == 0)
  {
LABEL_25:
    if ((v7 & 0x40000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_134:
  self->_stFlags = *(fromCopy + 34);
  *&self->_has |= 0x200000000uLL;
  if ((*(fromCopy + 452) & 0x40000000000000) != 0)
  {
LABEL_26:
    self->_hasAcls = fromCopy[428];
    *&self->_has |= 0x40000000000000uLL;
  }

LABEL_27:
  if ((*(v5 + 4) & 0x20) != 0)
  {
    self->_parentHasAcls = fromCopy[443];
    *(&self->_has + 4) |= 0x20u;
  }

  if ((v5[7] & 0x20) != 0)
  {
    self->_isPurgable = fromCopy[435];
    *&self->_has |= 0x2000000000000000uLL;
  }

  v8 = *(v5 + 4);
  if ((v8 & 4) != 0)
  {
    self->_isUrgent = fromCopy[440];
    *(&self->_has + 4) |= 4u;
    v8 = *(v5 + 4);
  }

  if ((v8 & 2) != 0)
  {
    self->_isUnderDirStatFolder = fromCopy[439];
    *(&self->_has + 4) |= 2u;
  }

  if ((v5[7] & 4) != 0)
  {
    self->_isFileNameNonAscii = fromCopy[432];
    *&self->_has |= 0x400000000000000uLL;
  }

  if (*(fromCopy + 47))
  {
    [(AppTelemetryItemStatsInvestigation *)self setFinderInfoFlagsBase64:?];
    fromCopy = v16;
  }

  v9 = *v5;
  if ((*v5 & 0x1000000) != 0)
  {
    self->_hasMoreLinks = *(fromCopy + 25);
    *&self->_has |= 0x1000000uLL;
    v9 = *(fromCopy + 452);
    if ((v9 & 0x400000) == 0)
    {
LABEL_41:
      if ((v9 & 0x8000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_138;
    }
  }

  else if ((v9 & 0x400000) == 0)
  {
    goto LABEL_41;
  }

  self->_fsGenCount = *(fromCopy + 23);
  *&self->_has |= 0x400000uLL;
  v9 = *(fromCopy + 452);
  if ((v9 & 0x8000) == 0)
  {
LABEL_42:
    if ((v9 & 0x80000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_139;
  }

LABEL_138:
  self->_dbGenCount = *(fromCopy + 16);
  *&self->_has |= 0x8000uLL;
  v9 = *(fromCopy + 452);
  if ((v9 & 0x80000000000000) == 0)
  {
LABEL_43:
    if ((v9 & 0x10000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_139:
  self->_hasLocalChanges = fromCopy[429];
  *&self->_has |= 0x80000000000000uLL;
  if ((*(fromCopy + 452) & 0x10000000000000) != 0)
  {
LABEL_44:
    self->_doGenCountsMatchInFileId = fromCopy[426];
    *&self->_has |= 0x10000000000000uLL;
  }

LABEL_45:
  if (*(fromCopy + 46))
  {
    [(AppTelemetryItemStatsInvestigation *)self setFileNameExtension:?];
    fromCopy = v16;
  }

  if ((v5[3] & 8) != 0)
  {
    self->_pathDepth = *(fromCopy + 28);
    *&self->_has |= 0x8000000uLL;
  }

  v10 = *(v5 + 4);
  if ((v10 & 0x200) != 0)
  {
    self->_xattrHasDemotion = fromCopy[447];
    *(&self->_has + 4) |= 0x200u;
    v10 = *(v5 + 4);
  }

  if ((v10 & 0x400) != 0)
  {
    self->_xattrHasPromotion = fromCopy[448];
    *(&self->_has + 4) |= 0x400u;
  }

  if (*(fromCopy + 43))
  {
    [(AppTelemetryItemStatsInvestigation *)self setDbErrorDomain:?];
    fromCopy = v16;
  }

  v11 = *v5;
  if ((*v5 & 0x100) != 0)
  {
    self->_dbErrorCode = *(fromCopy + 9);
    *&self->_has |= 0x100uLL;
    v11 = *(fromCopy + 452);
    if ((v11 & 0x40) == 0)
    {
LABEL_57:
      if ((v11 & 0x20000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_143;
    }
  }

  else if ((v11 & 0x40) == 0)
  {
    goto LABEL_57;
  }

  self->_dbCapabilities = *(fromCopy + 7);
  *&self->_has |= 0x40uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x20000) == 0)
  {
LABEL_58:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_144;
  }

LABEL_143:
  self->_dbTransferState = *(fromCopy + 18);
  *&self->_has |= 0x20000uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x10000) == 0)
  {
LABEL_59:
    if ((v11 & 0x2000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_145;
  }

LABEL_144:
  self->_dbSharingState = *(fromCopy + 17);
  *&self->_has |= 0x10000uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x2000000000000) == 0)
  {
LABEL_60:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_146;
  }

LABEL_145:
  self->_dbIsApplibrary = fromCopy[423];
  *&self->_has |= 0x2000000000000uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x80) == 0)
  {
LABEL_61:
    if ((v11 & 0x4000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_147;
  }

LABEL_146:
  self->_dbEffectiveContentPolicy = *(fromCopy + 8);
  *&self->_has |= 0x80uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x4000000000000) == 0)
  {
LABEL_62:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_148;
  }

LABEL_147:
  self->_dbIsPackage = fromCopy[424];
  *&self->_has |= 0x4000000000000uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x1000) == 0)
  {
LABEL_63:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_149;
  }

LABEL_148:
  self->_dbFsContentStatus = *(fromCopy + 13);
  *&self->_has |= 0x1000uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x200) == 0)
  {
LABEL_64:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_150;
  }

LABEL_149:
  self->_dbFpContentStatus = *(fromCopy + 10);
  *&self->_has |= 0x200uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x2000) == 0)
  {
LABEL_65:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_151;
  }

LABEL_150:
  self->_dbFsDeletionStatus = *(fromCopy + 14);
  *&self->_has |= 0x2000uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x400) == 0)
  {
LABEL_66:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_152;
  }

LABEL_151:
  self->_dbFpDeletionStatus = *(fromCopy + 11);
  *&self->_has |= 0x400uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x4000) == 0)
  {
LABEL_67:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_153;
  }

LABEL_152:
  self->_dbFsImportStatus = *(fromCopy + 15);
  *&self->_has |= 0x4000uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x800) == 0)
  {
LABEL_68:
    if ((v11 & 0x8000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_154;
  }

LABEL_153:
  self->_dbFpImportStatus = *(fromCopy + 12);
  *&self->_has |= 0x800uLL;
  v11 = *(fromCopy + 452);
  if ((v11 & 0x8000000000000) == 0)
  {
LABEL_69:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_154:
  self->_dbIsSuper = fromCopy[425];
  *&self->_has |= 0x8000000000000uLL;
  if ((*(fromCopy + 452) & 0x800000) != 0)
  {
LABEL_70:
    self->_gencountDiff = *(fromCopy + 24);
    *&self->_has |= 0x800000uLL;
  }

LABEL_71:
  if ((*(v5 + 4) & 0x40) != 0)
  {
    self->_parentMatches = fromCopy[444];
    *(&self->_has + 4) |= 0x40u;
  }

  if (v5[5] < 0)
  {
    self->_appLibraryMatches = fromCopy[421];
    *&self->_has |= 0x800000000000uLL;
  }

  if ((*(v5 + 4) & 8) != 0)
  {
    self->_mTimeBeforeMigrationStarted = fromCopy[441];
    *(&self->_has + 4) |= 8u;
  }

  v12 = *v5;
  if ((*v5 & 0x20000000000000) != 0)
  {
    self->_docIDMatches = fromCopy[427];
    *&self->_has |= 0x20000000000000uLL;
    v12 = *(fromCopy + 452);
    if ((v12 & 0x4000000) == 0)
    {
LABEL_79:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_158;
    }
  }

  else if ((v12 & 0x4000000) == 0)
  {
    goto LABEL_79;
  }

  self->_mTime = *(fromCopy + 27);
  *&self->_has |= 0x4000000uLL;
  v12 = *(fromCopy + 452);
  if ((v12 & 0x10) == 0)
  {
LABEL_80:
    if ((v12 & 0x1000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_158:
  self->_bTime = *(fromCopy + 5);
  *&self->_has |= 0x10uLL;
  if ((*(fromCopy + 452) & 0x1000000000000) != 0)
  {
LABEL_81:
    self->_bTimeIsBusy = fromCopy[422];
    *&self->_has |= 0x1000000000000uLL;
  }

LABEL_82:
  if ((*(v5 + 4) & 0x100) != 0)
  {
    self->_xattrHasBeforeBounce = fromCopy[446];
    *(&self->_has + 4) |= 0x100u;
  }

  if (*(fromCopy + 49))
  {
    [(AppTelemetryItemStatsInvestigation *)self setNameUnicodeNorm:?];
    fromCopy = v16;
  }

  if ((*(v5 + 4) & 0x10) != 0)
  {
    self->_nameIsTrashed = fromCopy[442];
    *(&self->_has + 4) |= 0x10u;
  }

  v13 = *v5;
  if ((*v5 & 0x8000000000) != 0)
  {
    self->_sysPageSize = *(fromCopy + 40);
    *&self->_has |= 0x8000000000uLL;
    v13 = *(fromCopy + 452);
  }

  if ((v13 & 0x10000000000) != 0)
  {
    self->_sysUID = *(fromCopy + 41);
    *&self->_has |= 0x10000000000uLL;
  }

  if ((*(v5 + 4) & 0x80) != 0)
  {
    self->_sysDocIDResolutionOK = fromCopy[445];
    *(&self->_has + 4) |= 0x80u;
  }

  v14 = *v5;
  if ((*v5 & 0x40000000) != 0)
  {
    self->_purgeGenCount = *(fromCopy + 31);
    *&self->_has |= 0x40000000uLL;
    v14 = *(fromCopy + 452);
    if ((v14 & 0x20000000) == 0)
    {
LABEL_96:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_162;
    }
  }

  else if ((v14 & 0x20000000) == 0)
  {
    goto LABEL_96;
  }

  self->_purgeATime = *(fromCopy + 30);
  *&self->_has |= 0x20000000uLL;
  v14 = *(fromCopy + 452);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_97:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_163;
  }

LABEL_162:
  self->_purgeSyncRoot = *(fromCopy + 32);
  *&self->_has |= 0x80000000uLL;
  v14 = *(fromCopy + 452);
  if ((v14 & 0x80000) == 0)
  {
LABEL_98:
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_164;
  }

LABEL_163:
  self->_diagFailuresBitmap = *(fromCopy + 20);
  *&self->_has |= 0x80000uLL;
  v14 = *(fromCopy + 452);
  if ((v14 & 0x40000) == 0)
  {
LABEL_99:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_164:
  self->_diagErrorCode = *(fromCopy + 19);
  *&self->_has |= 0x40000uLL;
  if ((*(fromCopy + 452) & 0x100000) != 0)
  {
LABEL_100:
    self->_diagUnderlyingErrorCode = *(fromCopy + 21);
    *&self->_has |= 0x100000uLL;
  }

LABEL_101:
  if (*(fromCopy + 44))
  {
    [(AppTelemetryItemStatsInvestigation *)self setDiagErrorDomain:?];
    fromCopy = v16;
  }

  if (*(fromCopy + 45))
  {
    [(AppTelemetryItemStatsInvestigation *)self setDiagUnderlyingErrorDomain:?];
    fromCopy = v16;
  }

  v15 = *v5;
  if (*v5)
  {
    self->_apfsAvailableSpace = *(fromCopy + 1);
    *&self->_has |= 1uLL;
    v15 = *(fromCopy + 452);
    if ((v15 & 4) == 0)
    {
LABEL_107:
      if ((v15 & 2) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_168;
    }
  }

  else if ((v15 & 4) == 0)
  {
    goto LABEL_107;
  }

  self->_apfsFlags = *(fromCopy + 3);
  *&self->_has |= 4uLL;
  v15 = *(fromCopy + 452);
  if ((v15 & 2) == 0)
  {
LABEL_108:
    if ((v15 & 8) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_169;
  }

LABEL_168:
  self->_apfsBlockSize = *(fromCopy + 2);
  *&self->_has |= 2uLL;
  v15 = *(fromCopy + 452);
  if ((v15 & 8) == 0)
  {
LABEL_109:
    if ((v15 & 0x400000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_170;
  }

LABEL_169:
  self->_apfsRole = *(fromCopy + 4);
  *&self->_has |= 8uLL;
  v15 = *(fromCopy + 452);
  if ((v15 & 0x400000000000) == 0)
  {
LABEL_110:
    if ((v15 & 0x1000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_171;
  }

LABEL_170:
  self->_apfsEncrypted = fromCopy[420];
  *&self->_has |= 0x400000000000uLL;
  v15 = *(fromCopy + 452);
  if ((v15 & 0x1000000000) == 0)
  {
LABEL_111:
    if ((v15 & 0x2000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_172;
  }

LABEL_171:
  self->_statDocID = *(fromCopy + 37);
  *&self->_has |= 0x1000000000uLL;
  v15 = *(fromCopy + 452);
  if ((v15 & 0x2000000000) == 0)
  {
LABEL_112:
    if ((v15 & 0x4000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_173;
  }

LABEL_172:
  self->_statLogicalSize = *(fromCopy + 38);
  *&self->_has |= 0x2000000000uLL;
  v15 = *(fromCopy + 452);
  if ((v15 & 0x4000000000) == 0)
  {
LABEL_113:
    if ((v15 & 0x800000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

LABEL_173:
  self->_statPhysicalSize = *(fromCopy + 39);
  *&self->_has |= 0x4000000000uLL;
  if ((*(fromCopy + 452) & 0x800000000) != 0)
  {
LABEL_114:
    self->_statDirEntryCount = *(fromCopy + 36);
    *&self->_has |= 0x800000000uLL;
  }

LABEL_115:
}

@end