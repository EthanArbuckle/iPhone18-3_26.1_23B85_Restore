@interface PGManagerWorkingContext
- (BOOL)isGraphReady;
- (CLSServiceManager)serviceManager;
- (PGCurationManager)curationManager;
- (PGManagerWorkingContext)initWithManager:(id)a3 loggingConnection:(id)a4;
- (PHPhotoLibrary)photoLibrary;
- (id)musicCuratorContextWithCurationOptions:(id)a3 error:(id *)a4;
- (id)musicCuratorContextWithRecentlyUsedSongAdamIDs:(id)a3 error:(id *)a4;
- (void)performSynchronousConcurrentGraphReadUsingBlock:(id)a3;
@end

@implementation PGManagerWorkingContext

- (void)performSynchronousConcurrentGraphReadUsingBlock:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained performSynchronousConcurrentGraphReadUsingBlock:v4];
}

- (BOOL)isGraphReady
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v3 = [WeakRetained isReady];

  return v3;
}

- (CLSServiceManager)serviceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v3 = [WeakRetained serviceManager];

  return v3;
}

- (PGCurationManager)curationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v3 = [WeakRetained curationManager];

  return v3;
}

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v3 = [WeakRetained photoLibrary];

  return v3;
}

- (PGManagerWorkingContext)initWithManager:(id)a3 loggingConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PGManagerWorkingContext;
  v8 = [(PGManagerWorkingContext *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_manager, v6);
    objc_storeStrong(&v9->_loggingConnection, a4);
    v10 = [v6 analytics];
    analytics = v9->_analytics;
    v9->_analytics = v10;

    v12 = [v6 locationCache];
    locationCache = v9->_locationCache;
    v9->_locationCache = v12;
  }

  return v9;
}

- (id)musicCuratorContextWithCurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v8 = [WeakRetained musicCuratorContextWithCurationOptions:v6 error:a4];

  return v8;
}

- (id)musicCuratorContextWithRecentlyUsedSongAdamIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v8 = [WeakRetained musicCuratorContextWithRecentlyUsedSongAdamIDs:v6 error:a4];

  return v8;
}

@end