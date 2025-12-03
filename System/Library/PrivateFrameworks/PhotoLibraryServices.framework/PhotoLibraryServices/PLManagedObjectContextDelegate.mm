@interface PLManagedObjectContextDelegate
- (NSSQLiteDatabaseTraceDelegate)fetchRecorder;
- (NSSQLiteDatabaseTraceDelegate)photoKitFetchInstrumentation;
- (NSSQLiteDatabaseTraceDelegate)photoKitStatsTracker;
- (void)managedObjectContext:(id)context didExecuteFetchRequest:(id)request withSQLString:(id)string bindVariables:(id)variables rowCount:(int64_t)count;
- (void)managedObjectContext:(id)context willExecuteFetchRequest:(id)request;
- (void)setFetchRecorder:(id)recorder;
- (void)setPhotoKitFetchInstrumentation:(id)instrumentation;
- (void)setPhotoKitStatsTracker:(id)tracker;
@end

@implementation PLManagedObjectContextDelegate

id __54__PLManagedObjectContextDelegate_photoKitStatsTracker__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));

  return WeakRetained;
}

- (NSSQLiteDatabaseTraceDelegate)fetchRecorder
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

- (NSSQLiteDatabaseTraceDelegate)photoKitFetchInstrumentation
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

- (NSSQLiteDatabaseTraceDelegate)photoKitStatsTracker
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

id __47__PLManagedObjectContextDelegate_fetchRecorder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));

  return WeakRetained;
}

id __62__PLManagedObjectContextDelegate_photoKitFetchInstrumentation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));

  return WeakRetained;
}

- (void)managedObjectContext:(id)context didExecuteFetchRequest:(id)request withSQLString:(id)string bindVariables:(id)variables rowCount:(int64_t)count
{
  variablesCopy = variables;
  stringCopy = string;
  requestCopy = request;
  contextCopy = context;
  fetchRecorder = [(PLManagedObjectContextDelegate *)self fetchRecorder];
  [fetchRecorder managedObjectContext:contextCopy didExecuteFetchRequest:requestCopy withSQLString:stringCopy bindVariables:variablesCopy rowCount:count];

  photoKitFetchInstrumentation = [(PLManagedObjectContextDelegate *)self photoKitFetchInstrumentation];
  [photoKitFetchInstrumentation managedObjectContext:contextCopy didExecuteFetchRequest:requestCopy withSQLString:stringCopy bindVariables:variablesCopy rowCount:count];

  photoKitStatsTracker = [(PLManagedObjectContextDelegate *)self photoKitStatsTracker];
  [photoKitStatsTracker managedObjectContext:contextCopy didExecuteFetchRequest:requestCopy withSQLString:stringCopy bindVariables:variablesCopy rowCount:count];
}

- (void)managedObjectContext:(id)context willExecuteFetchRequest:(id)request
{
  requestCopy = request;
  contextCopy = context;
  fetchRecorder = [(PLManagedObjectContextDelegate *)self fetchRecorder];
  [fetchRecorder managedObjectContext:contextCopy willExecuteFetchRequest:requestCopy];

  photoKitFetchInstrumentation = [(PLManagedObjectContextDelegate *)self photoKitFetchInstrumentation];
  [photoKitFetchInstrumentation managedObjectContext:contextCopy willExecuteFetchRequest:requestCopy];

  photoKitStatsTracker = [(PLManagedObjectContextDelegate *)self photoKitStatsTracker];
  [photoKitStatsTracker managedObjectContext:contextCopy willExecuteFetchRequest:requestCopy];
}

- (void)setPhotoKitStatsTracker:(id)tracker
{
  trackerCopy = tracker;
  v3 = trackerCopy;
  PLRunWithUnfairLock();
}

- (void)setPhotoKitFetchInstrumentation:(id)instrumentation
{
  instrumentationCopy = instrumentation;
  v3 = instrumentationCopy;
  PLRunWithUnfairLock();
}

- (void)setFetchRecorder:(id)recorder
{
  recorderCopy = recorder;
  v3 = recorderCopy;
  PLRunWithUnfairLock();
}

@end