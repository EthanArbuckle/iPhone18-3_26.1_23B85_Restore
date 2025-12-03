@interface SVXHomeHubManagerObserver
- (SVXHomeHubManagerObserver)initWithRemoraVirtualDeviceManager:(id)manager platformDependenciesTracker:(id)tracker;
@end

@implementation SVXHomeHubManagerObserver

- (SVXHomeHubManagerObserver)initWithRemoraVirtualDeviceManager:(id)manager platformDependenciesTracker:(id)tracker
{
  managerCopy = manager;
  trackerCopy = tracker;
  v13.receiver = self;
  v13.super_class = SVXHomeHubManagerObserver;
  v9 = [(SVXHomeHubManagerObserver *)&v13 init];
  if (v9)
  {
    v10 = +[SVXQueuePerformer sharedMainQueuePerformer];
    mainQueuePerformer = v9->_mainQueuePerformer;
    v9->_mainQueuePerformer = v10;

    objc_storeStrong(&v9->_remoraVirtualDeviceManager, manager);
    objc_storeStrong(&v9->_platformDependenciesTracker, tracker);
  }

  return v9;
}

@end