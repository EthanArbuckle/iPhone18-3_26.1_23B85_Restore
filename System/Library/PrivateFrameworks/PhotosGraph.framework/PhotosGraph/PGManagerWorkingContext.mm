@interface PGManagerWorkingContext
- (BOOL)isGraphReady;
- (CLSServiceManager)serviceManager;
- (PGCurationManager)curationManager;
- (PGManagerWorkingContext)initWithManager:(id)manager loggingConnection:(id)connection;
- (PHPhotoLibrary)photoLibrary;
- (id)musicCuratorContextWithCurationOptions:(id)options error:(id *)error;
- (id)musicCuratorContextWithRecentlyUsedSongAdamIDs:(id)ds error:(id *)error;
- (void)performSynchronousConcurrentGraphReadUsingBlock:(id)block;
@end

@implementation PGManagerWorkingContext

- (void)performSynchronousConcurrentGraphReadUsingBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained performSynchronousConcurrentGraphReadUsingBlock:blockCopy];
}

- (BOOL)isGraphReady
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  isReady = [WeakRetained isReady];

  return isReady;
}

- (CLSServiceManager)serviceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  serviceManager = [WeakRetained serviceManager];

  return serviceManager;
}

- (PGCurationManager)curationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  curationManager = [WeakRetained curationManager];

  return curationManager;
}

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  photoLibrary = [WeakRetained photoLibrary];

  return photoLibrary;
}

- (PGManagerWorkingContext)initWithManager:(id)manager loggingConnection:(id)connection
{
  managerCopy = manager;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = PGManagerWorkingContext;
  v8 = [(PGManagerWorkingContext *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_manager, managerCopy);
    objc_storeStrong(&v9->_loggingConnection, connection);
    analytics = [managerCopy analytics];
    analytics = v9->_analytics;
    v9->_analytics = analytics;

    locationCache = [managerCopy locationCache];
    locationCache = v9->_locationCache;
    v9->_locationCache = locationCache;
  }

  return v9;
}

- (id)musicCuratorContextWithCurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v8 = [WeakRetained musicCuratorContextWithCurationOptions:optionsCopy error:error];

  return v8;
}

- (id)musicCuratorContextWithRecentlyUsedSongAdamIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v8 = [WeakRetained musicCuratorContextWithRecentlyUsedSongAdamIDs:dsCopy error:error];

  return v8;
}

@end