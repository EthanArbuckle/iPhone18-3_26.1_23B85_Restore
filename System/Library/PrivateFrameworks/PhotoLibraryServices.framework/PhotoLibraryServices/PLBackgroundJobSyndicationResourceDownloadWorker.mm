@interface PLBackgroundJobSyndicationResourceDownloadWorker
- (id)resourceIDsForPrefetchWithLibrary:(id)library;
- (id)signalAgainDateWithLibrary:(id)library;
@end

@implementation PLBackgroundJobSyndicationResourceDownloadWorker

- (id)signalAgainDateWithLibrary:(id)library
{
  prefetchManager = self->super._prefetchManager;
  managedObjectContext = [library managedObjectContext];
  v5 = [(PLSyndicationResourcePrefetchEngine *)prefetchManager dateOfNextResourceToPrefetchWithManagedObjectContext:managedObjectContext];

  return v5;
}

- (id)resourceIDsForPrefetchWithLibrary:(id)library
{
  prefetchManager = self->super._prefetchManager;
  managedObjectContext = [library managedObjectContext];
  v5 = [(PLSyndicationResourcePrefetchEngine *)prefetchManager lowPriorityResourcesForPrefetchWithManagedObjectContext:managedObjectContext];

  return v5;
}

@end