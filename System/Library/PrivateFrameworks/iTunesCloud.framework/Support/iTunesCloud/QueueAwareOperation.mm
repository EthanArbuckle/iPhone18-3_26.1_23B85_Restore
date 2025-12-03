@interface QueueAwareOperation
- (NSOperationQueue)operationQueue;
- (QueueAwareOperation)initWithArtworkImporter:(id)importer clientIdentity:(id)identity operationQueue:(id)queue artistPersistentIDsToUpdate:(id)update albumArtistPersistentIDsToUpdate:(id)toUpdate;
@end

@implementation QueueAwareOperation

- (NSOperationQueue)operationQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_operationQueue);

  return WeakRetained;
}

- (QueueAwareOperation)initWithArtworkImporter:(id)importer clientIdentity:(id)identity operationQueue:(id)queue artistPersistentIDsToUpdate:(id)update albumArtistPersistentIDsToUpdate:(id)toUpdate
{
  importerCopy = importer;
  queueCopy = queue;
  updateCopy = update;
  toUpdateCopy = toUpdate;
  v24.receiver = self;
  v24.super_class = QueueAwareOperation;
  v16 = [(QueueAwareOperation *)&v24 init];
  if (v16)
  {
    musicLibrary = [importerCopy musicLibrary];
    musicLibrary = v16->_musicLibrary;
    v16->_musicLibrary = musicLibrary;

    configuration = [importerCopy configuration];
    userIdentity = [configuration userIdentity];
    userIdentity = v16->_userIdentity;
    v16->_userIdentity = userIdentity;

    objc_storeStrong(&v16->_artworkImporter, importer);
    objc_storeWeak(&v16->_operationQueue, queueCopy);
    v22 = [updateCopy count];
    v16->_shouldProcessSpecificArtists = [toUpdateCopy count] + v22 != 0;
    objc_storeStrong(&v16->_artistPersistentIDsToUpdate, update);
    objc_storeStrong(&v16->_albumArtistPersistentIDsToUpdate, toUpdate);
  }

  return v16;
}

@end