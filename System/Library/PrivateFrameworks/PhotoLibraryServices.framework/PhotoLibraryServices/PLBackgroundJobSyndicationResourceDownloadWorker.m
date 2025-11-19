@interface PLBackgroundJobSyndicationResourceDownloadWorker
- (id)resourceIDsForPrefetchWithLibrary:(id)a3;
- (id)signalAgainDateWithLibrary:(id)a3;
@end

@implementation PLBackgroundJobSyndicationResourceDownloadWorker

- (id)signalAgainDateWithLibrary:(id)a3
{
  prefetchManager = self->super._prefetchManager;
  v4 = [a3 managedObjectContext];
  v5 = [(PLSyndicationResourcePrefetchEngine *)prefetchManager dateOfNextResourceToPrefetchWithManagedObjectContext:v4];

  return v5;
}

- (id)resourceIDsForPrefetchWithLibrary:(id)a3
{
  prefetchManager = self->super._prefetchManager;
  v4 = [a3 managedObjectContext];
  v5 = [(PLSyndicationResourcePrefetchEngine *)prefetchManager lowPriorityResourcesForPrefetchWithManagedObjectContext:v4];

  return v5;
}

@end