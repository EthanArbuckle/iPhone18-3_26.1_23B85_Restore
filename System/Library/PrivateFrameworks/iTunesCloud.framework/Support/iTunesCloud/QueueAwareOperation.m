@interface QueueAwareOperation
- (NSOperationQueue)operationQueue;
- (QueueAwareOperation)initWithArtworkImporter:(id)a3 clientIdentity:(id)a4 operationQueue:(id)a5 artistPersistentIDsToUpdate:(id)a6 albumArtistPersistentIDsToUpdate:(id)a7;
@end

@implementation QueueAwareOperation

- (NSOperationQueue)operationQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_operationQueue);

  return WeakRetained;
}

- (QueueAwareOperation)initWithArtworkImporter:(id)a3 clientIdentity:(id)a4 operationQueue:(id)a5 artistPersistentIDsToUpdate:(id)a6 albumArtistPersistentIDsToUpdate:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = QueueAwareOperation;
  v16 = [(QueueAwareOperation *)&v24 init];
  if (v16)
  {
    v17 = [v12 musicLibrary];
    musicLibrary = v16->_musicLibrary;
    v16->_musicLibrary = v17;

    v19 = [v12 configuration];
    v20 = [v19 userIdentity];
    userIdentity = v16->_userIdentity;
    v16->_userIdentity = v20;

    objc_storeStrong(&v16->_artworkImporter, a3);
    objc_storeWeak(&v16->_operationQueue, v13);
    v22 = [v14 count];
    v16->_shouldProcessSpecificArtists = [v15 count] + v22 != 0;
    objc_storeStrong(&v16->_artistPersistentIDsToUpdate, a6);
    objc_storeStrong(&v16->_albumArtistPersistentIDsToUpdate, a7);
  }

  return v16;
}

@end