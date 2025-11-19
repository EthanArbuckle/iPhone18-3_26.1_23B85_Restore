@interface SVXHomeHubManagerObserver
- (SVXHomeHubManagerObserver)initWithRemoraVirtualDeviceManager:(id)a3 platformDependenciesTracker:(id)a4;
@end

@implementation SVXHomeHubManagerObserver

- (SVXHomeHubManagerObserver)initWithRemoraVirtualDeviceManager:(id)a3 platformDependenciesTracker:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SVXHomeHubManagerObserver;
  v9 = [(SVXHomeHubManagerObserver *)&v13 init];
  if (v9)
  {
    v10 = +[SVXQueuePerformer sharedMainQueuePerformer];
    mainQueuePerformer = v9->_mainQueuePerformer;
    v9->_mainQueuePerformer = v10;

    objc_storeStrong(&v9->_remoraVirtualDeviceManager, a3);
    objc_storeStrong(&v9->_platformDependenciesTracker, a4);
  }

  return v9;
}

@end