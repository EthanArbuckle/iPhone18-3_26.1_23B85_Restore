@interface PLManagedObjectContextDelegate
- (NSSQLiteDatabaseTraceDelegate)fetchRecorder;
- (NSSQLiteDatabaseTraceDelegate)photoKitFetchInstrumentation;
- (NSSQLiteDatabaseTraceDelegate)photoKitStatsTracker;
- (void)managedObjectContext:(id)a3 didExecuteFetchRequest:(id)a4 withSQLString:(id)a5 bindVariables:(id)a6 rowCount:(int64_t)a7;
- (void)managedObjectContext:(id)a3 willExecuteFetchRequest:(id)a4;
- (void)setFetchRecorder:(id)a3;
- (void)setPhotoKitFetchInstrumentation:(id)a3;
- (void)setPhotoKitStatsTracker:(id)a3;
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

- (void)managedObjectContext:(id)a3 didExecuteFetchRequest:(id)a4 withSQLString:(id)a5 bindVariables:(id)a6 rowCount:(int64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(PLManagedObjectContextDelegate *)self fetchRecorder];
  [v16 managedObjectContext:v15 didExecuteFetchRequest:v14 withSQLString:v13 bindVariables:v12 rowCount:a7];

  v17 = [(PLManagedObjectContextDelegate *)self photoKitFetchInstrumentation];
  [v17 managedObjectContext:v15 didExecuteFetchRequest:v14 withSQLString:v13 bindVariables:v12 rowCount:a7];

  v18 = [(PLManagedObjectContextDelegate *)self photoKitStatsTracker];
  [v18 managedObjectContext:v15 didExecuteFetchRequest:v14 withSQLString:v13 bindVariables:v12 rowCount:a7];
}

- (void)managedObjectContext:(id)a3 willExecuteFetchRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLManagedObjectContextDelegate *)self fetchRecorder];
  [v8 managedObjectContext:v7 willExecuteFetchRequest:v6];

  v9 = [(PLManagedObjectContextDelegate *)self photoKitFetchInstrumentation];
  [v9 managedObjectContext:v7 willExecuteFetchRequest:v6];

  v10 = [(PLManagedObjectContextDelegate *)self photoKitStatsTracker];
  [v10 managedObjectContext:v7 willExecuteFetchRequest:v6];
}

- (void)setPhotoKitStatsTracker:(id)a3
{
  v4 = a3;
  v3 = v4;
  PLRunWithUnfairLock();
}

- (void)setPhotoKitFetchInstrumentation:(id)a3
{
  v4 = a3;
  v3 = v4;
  PLRunWithUnfairLock();
}

- (void)setFetchRecorder:(id)a3
{
  v4 = a3;
  v3 = v4;
  PLRunWithUnfairLock();
}

@end