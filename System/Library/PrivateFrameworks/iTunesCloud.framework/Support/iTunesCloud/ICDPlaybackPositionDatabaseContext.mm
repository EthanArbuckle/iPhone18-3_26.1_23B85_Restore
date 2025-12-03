@interface ICDPlaybackPositionDatabaseContext
- (ICDPlaybackPositionDatabaseContext)initWithLibrary:(id)library;
@end

@implementation ICDPlaybackPositionDatabaseContext

- (ICDPlaybackPositionDatabaseContext)initWithLibrary:(id)library
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = ICDPlaybackPositionDatabaseContext;
  v5 = [(ICDPlaybackPositionDatabaseContext *)&v11 init];
  if (v5)
  {
    v5->_transactionEntityRevision = [libraryCopy currentRevision];
    v5->_lastSyncedEntityRevision = [libraryCopy lastSyncedEntityRevision];
    lastSyncedDomainVersion = [libraryCopy lastSyncedDomainVersion];
    lastSyncedDomainVersion = v5->_lastSyncedDomainVersion;
    v5->_lastSyncedDomainVersion = lastSyncedDomainVersion;

    v8 = +[NSMutableSet set];
    ubiquitousIdentifiersToSync = v5->_ubiquitousIdentifiersToSync;
    v5->_ubiquitousIdentifiersToSync = v8;
  }

  return v5;
}

@end