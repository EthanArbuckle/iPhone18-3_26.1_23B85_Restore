@interface ICDPlaybackPositionDatabaseContext
- (ICDPlaybackPositionDatabaseContext)initWithLibrary:(id)a3;
@end

@implementation ICDPlaybackPositionDatabaseContext

- (ICDPlaybackPositionDatabaseContext)initWithLibrary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICDPlaybackPositionDatabaseContext;
  v5 = [(ICDPlaybackPositionDatabaseContext *)&v11 init];
  if (v5)
  {
    v5->_transactionEntityRevision = [v4 currentRevision];
    v5->_lastSyncedEntityRevision = [v4 lastSyncedEntityRevision];
    v6 = [v4 lastSyncedDomainVersion];
    lastSyncedDomainVersion = v5->_lastSyncedDomainVersion;
    v5->_lastSyncedDomainVersion = v6;

    v8 = +[NSMutableSet set];
    ubiquitousIdentifiersToSync = v5->_ubiquitousIdentifiersToSync;
    v5->_ubiquitousIdentifiersToSync = v8;
  }

  return v5;
}

@end