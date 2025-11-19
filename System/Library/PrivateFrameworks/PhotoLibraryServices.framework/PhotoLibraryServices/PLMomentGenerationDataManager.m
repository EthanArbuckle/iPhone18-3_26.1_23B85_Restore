@interface PLMomentGenerationDataManager
+ (BOOL)isManagedObjectContextMomentarilyBlessed:(id)a3;
+ (void)initialize;
+ (void)setManagedObjectContextMomentarilyBlessed:(id)a3;
+ (void)setManagerMomentarilyBlessed:(id)a3;
- (BOOL)_batchDeleteForEntityName:(id)a3 error:(id *)a4;
- (BOOL)_deleteAllObjectsForEntityName:(id)a3 error:(id *)a4;
- (BOOL)cameraIsActive;
- (BOOL)deleteAllHighlightsWithError:(id *)a3;
- (BOOL)deleteAllMomentsWithError:(id *)a3;
- (BOOL)hasChanges;
- (BOOL)routineIsAvailable;
- (BOOL)save:(id *)a3;
- (BOOL)wantsMomentReplayLogging;
- (CNContactStore)_contactStore;
- (NSDictionary)generationOptions;
- (NSManagedObjectContext)managedObjectContext;
- (PLMomentGenerationDataManager)initWithLibraryServicesManager:(id)a3;
- (PLMomentGenerationDataManager)initWithManagedObjectContext:(id)a3 pathManagerForLightweightMigration:(id)a4;
- (PLPhotoLibrary)momentGenerationLibrary;
- (id)_currentHomeAddressDictionary;
- (id)_highlightRelationshipsToPrefetchForHighlightKind:(unsigned __int16)a3;
- (id)_highlightRelationshipsToPrefetchForHighlightOfAnyKind;
- (id)allAssetIDsToBeIncludedInMomentsWithError:(id *)a3;
- (id)allAssetsToBeIncludedInMomentsWithError:(id *)a3;
- (id)allEmptyPhotosHighlightsOfKind:(unsigned __int16)a3 error:(id *)a4;
- (id)allInvalidAssetsWithError:(id *)a3;
- (id)allInvalidMomentsWithError:(id *)a3;
- (id)allInvalidPhotosHighlightsOfAllKindsWithError:(id *)a3;
- (id)allMomentIDsWithError:(id *)a3;
- (id)allMomentsWithError:(id *)a3;
- (id)allPhotosHighlightsOfAllKindsWithError:(id *)a3;
- (id)allPhotosHighlightsOfKind:(unsigned __int16)a3 withPredicate:(id)a4 error:(id *)a5;
- (id)allPhotosHighlightsWithPredicate:(id)a3 error:(id *)a4;
- (id)assetWithUniqueID:(id)a3 error:(id *)a4;
- (id)assetsWithUniqueIDs:(id)a3 error:(id *)a4;
- (id)deletedObjects;
- (id)fetchChildHighlightItemsForHighlightItem:(id)a3;
- (id)fetchNeighborHighlightItemsForHighlightItems:(id)a3;
- (id)fetchParentHighlightItemsForHighlightItems:(id)a3;
- (id)highlightsIntersectingDateInterval:(id)a3 ofKind:(unsigned __int16)a4;
- (id)insertNewMoment;
- (id)insertNewPhotosHighlight;
- (id)insertedObjects;
- (id)locationsOfInterest;
- (id)momentWithUniqueID:(id)a3 error:(id *)a4;
- (id)momentsBetweenDate:(id)a3 andDate:(id)a4 sorted:(BOOL)a5 excludeExternal:(BOOL)a6;
- (id)momentsForAssetsWithUniqueIDs:(id)a3 error:(id *)a4;
- (id)momentsIntersectingDateInterval:(id)a3;
- (id)momentsRequiringLocationOfInterestUpdateWithError:(id *)a3;
- (id)momentsRequiringLocationProcessingWhenCoreRoutineIsAvailable:(id *)a3;
- (id)momentsRequiringLocationProcessingWhenFrequentLocationsAreAvailable:(id *)a3;
- (id)momentsRequiringLocationProcessingWhenFrequentLocationsChangedWithError:(id *)a3;
- (id)momentsWithUniqueIDs:(id)a3 error:(id *)a4;
- (id)orphanedAssetIDsWithError:(id *)a3;
- (id)prefetchedAssetsWithUniqueIDs:(id)a3 error:(id *)a4;
- (id)replayLogPath;
- (id)updatedObjects;
- (void)_finalizeInit;
- (void)_initIsolationQueue;
- (void)_networkReachabilityDidChange:(id)a3;
- (void)invalidateAllHighlightSubtitles;
- (void)logRoutineInformation;
- (void)performBlock:(id)a3 synchronously:(BOOL)a4 priority:(int64_t)a5 completionHandler:(id)a6;
- (void)performDataTransaction:(id)a3 synchronously:(BOOL)a4 priority:(int64_t)a5 completionHandler:(id)a6;
- (void)refreshAllObjects;
- (void)reloadGenerationOptions;
- (void)resetOnFailure;
- (void)runPeriodicMaintenanceTasks:(unint64_t)a3 withTransaction:(id)a4 progressReportBlock:(id)a5;
- (void)setPreviousValidatedModelVersion:(int64_t)a3;
- (void)setPreviousValidationSucceeded:(BOOL)a3;
- (void)setShouldPerformLightweightValidation:(BOOL)a3;
- (void)verifyAndRepairOrphanedAssets:(id)a3 completionBlock:(id)a4;
@end

@implementation PLMomentGenerationDataManager

- (void)runPeriodicMaintenanceTasks:(unint64_t)a3 withTransaction:(id)a4 progressReportBlock:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if ([(PLMomentGenerationDataManager *)self cameraIsActive])
  {
    v10 = PLMomentsGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Periodic maintenance tasks: Skipped, Camera is active.", buf, 2u);
    }

    goto LABEL_44;
  }

  if (!v9)
  {
    v9 = &__block_literal_global_252;
  }

  v11 = PLMomentsGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Periodic maintenance tasks: Start", buf, 2u);
  }

  v10 = dispatch_group_create();
  if (v6)
  {
    v12 = PLMomentsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "Process recent highlights: Start", buf, 2u);
    }

    dispatch_group_enter(v10);
    v13 = [MEMORY[0x1E695DF00] now];
    generator = self->_generator;
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_253;
    v62[3] = &unk_1E7576F38;
    v65 = v9;
    v63 = v13;
    v64 = v10;
    v15 = v13;
    [(PLMomentGeneration *)generator processRecentHighlightsWithCompletionBlock:v62];

    if ((v6 & 0x20) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_10;
  }

  v16 = PLMomentsGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Location Of Interest Update: Start", buf, 2u);
  }

  dispatch_group_enter(v10);
  v17 = [MEMORY[0x1E695DF00] now];
  v18 = self->_generator;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_257;
  v58[3] = &unk_1E7576F38;
  v61 = v9;
  v59 = v17;
  v60 = v10;
  v19 = v17;
  [(PLMomentGeneration *)v18 locationOfInterestUpdateWithCompletionBlock:v58];

  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_22:
  v20 = PLMomentsGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Process unprocessed moment locations: Start", buf, 2u);
  }

  dispatch_group_enter(v10);
  v21 = [MEMORY[0x1E695DF00] now];
  v22 = self->_generator;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_261;
  v54[3] = &unk_1E7576F38;
  v57 = v9;
  v55 = v21;
  v56 = v10;
  v23 = v21;
  [(PLMomentGeneration *)v22 processUnprocessedMomentLocationsWithCompletionBlock:v54];

  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_25:
  v24 = PLMomentsGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "Update highlight titles: Start", buf, 2u);
  }

  dispatch_group_enter(v10);
  v25 = [MEMORY[0x1E695DF00] now];
  v26 = self->_generator;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_265;
  v50[3] = &unk_1E7576F38;
  v53 = v9;
  v51 = v25;
  v52 = v10;
  v27 = v25;
  [(PLMomentGeneration *)v26 updateHighlightTitlesWithCompletionBlock:v50];

  if ((v6 & 2) == 0)
  {
LABEL_13:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    v29 = PLMomentsGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEBUG, "Validate library: Start", buf, 2u);
    }

    dispatch_group_enter(v10);
    v30 = [MEMORY[0x1E695DF00] now];
    v31 = self->_generator;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_270;
    v44[3] = &unk_1E7576F38;
    v47 = v9;
    v45 = v30;
    v46 = v10;
    v32 = v30;
    [(PLMomentGeneration *)v31 validateLibraryWithCompletionBlock:v44];

    if ((v6 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

LABEL_28:
  v28 = PLMomentsGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "Run repair of orphaned assets: Start", buf, 2u);
  }

  dispatch_group_enter(v10);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_269;
  v48[3] = &unk_1E75781E8;
  v49 = v10;
  [(PLMomentGenerationDataManager *)self verifyAndRepairOrphanedAssets:v8 completionBlock:v48];

  if ((v6 & 0x10) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if ((v6 & 0x20) != 0)
  {
LABEL_34:
    v33 = PLMomentsGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEBUG, "Cleanup empty highlights: Start", buf, 2u);
    }

    dispatch_group_enter(v10);
    v34 = [MEMORY[0x1E695DF00] now];
    v35 = self->_generator;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_274;
    v40[3] = &unk_1E7576F38;
    v43 = v9;
    v41 = v34;
    v42 = v10;
    v36 = v34;
    [(PLMomentGeneration *)v35 cleanupEmptyHighlightsWithCompletionBlock:v40];
  }

LABEL_37:
  v37 = PLMomentsGetLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEBUG, "Wait for tasks to complete", buf, 2u);
  }

  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v38 = PLMomentsGetLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEBUG, "Release memory intensive objects", buf, 2u);
  }

  [(PLMomentGeneration *)self->_generator releaseMemoryIntensiveObjects];
  [v8 stillAlive];
  v39 = PLMomentsGetLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEBUG, "Periodic maintenance tasks: Done", buf, 2u);
  }

LABEL_44:
}

void __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_253(uint64_t a1)
{
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Process recent highlights: Done", v6, 2u);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DF00] now];
  (*(v3 + 16))(v3, v4, v5, @"highlights.task", 1);

  dispatch_group_leave(*(a1 + 40));
}

void __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_257(uint64_t a1)
{
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Location Of Interest Update: Done", v6, 2u);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DF00] now];
  (*(v3 + 16))(v3, v4, v5, @"loi.task", 1);

  dispatch_group_leave(*(a1 + 40));
}

void __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_261(uint64_t a1)
{
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Process unprocessed moment locations: Dont", v6, 2u);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DF00] now];
  (*(v3 + 16))(v3, v4, v5, @"locations.task", 1);

  dispatch_group_leave(*(a1 + 40));
}

void __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_265(uint64_t a1)
{
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Update highlight titles: Done", v6, 2u);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DF00] now];
  (*(v3 + 16))(v3, v4, v5, @"highlighttitles.task", 1);

  dispatch_group_leave(*(a1 + 40));
}

void __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_269(uint64_t a1)
{
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Run repair of orphaned assets: Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_270(uint64_t a1)
{
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Validate library: Done", v6, 2u);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DF00] now];
  (*(v3 + 16))(v3, v4, v5, @"validatelibrary.task", 1);

  dispatch_group_leave(*(a1 + 40));
}

void __97__PLMomentGenerationDataManager_runPeriodicMaintenanceTasks_withTransaction_progressReportBlock___block_invoke_274(uint64_t a1)
{
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Cleanup empty highlights: Done", v6, 2u);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DF00] now];
  (*(v3 + 16))(v3, v4, v5, @"cleanup.task", 1);

  dispatch_group_leave(*(a1 + 40));
}

- (void)setPreviousValidationSucceeded:(BOOL)a3
{
  v3 = a3;
  self->_previousValidationSucceeded = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"com.apple.photos.validation.previousValidationSucceeded"];
}

- (void)setPreviousValidatedModelVersion:(int64_t)a3
{
  self->_previousValidatedModelVersion = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setInteger:a3 forKey:@"com.apple.photos.validation.previousValidatedModelVersion"];
}

- (void)setShouldPerformLightweightValidation:(BOOL)a3
{
  v3 = a3;
  self->_shouldPerformLightweightValidation = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"com.apple.photos.validation.performLightweightValidation"];
}

- (BOOL)cameraIsActive
{
  v2 = [(PLMomentGenerationDataManager *)self cameraWatcher];
  v3 = [v2 isCameraRunning];

  return v3;
}

- (id)locationsOfInterest
{
  if ([(PLMomentGenerationDataManager *)self routineIsAvailable])
  {
    v3 = [(PLRoutineService *)self->_routineManager allLocationsOfInterest];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)routineIsAvailable
{
  if ([(PLMomentGenerationDataManager *)self cameraIsActive])
  {
    return 0;
  }

  routineManager = self->_routineManager;

  return [(PLRoutineService *)routineManager routineIsAvailable];
}

- (void)logRoutineInformation
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(PLMomentGenerationDataManager *)self routineIsAvailable])
  {
    v3 = [(PLMomentGenerationDataManager *)self locationsOfInterest];
    v4 = PLMomentsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = [v3 count];
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Routine is available with %lu LOIs:", buf, 0xCu);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = PLMomentsGetLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            v18 = v10;
            _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "\t%{private}@", buf, 0xCu);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = PLMomentsGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Routine is not available", buf, 2u);
    }
  }
}

- (id)replayLogPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = [v3 stringByAppendingPathComponent:@"Logs/CrashReporter/DiagnosticLogs/com.apple.photos/"];
  v5 = [v4 stringByAppendingPathComponent:@"MomentsReplayLog.plist"];

  return v5;
}

- (BOOL)wantsMomentReplayLogging
{
  v2 = MEMORY[0x19EAEE230](self, a2);
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"PLMomentGenerationReplayLoggingEnabled", @"com.apple.mobileslideshow", 0) != 0;
  }

  return v2;
}

- (void)verifyAndRepairOrphanedAssets:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLMomentGenerationDataManager *)self isolationQueue];
  v11 = v7;
  v9 = v7;
  v10 = v6;
  pl_dispatch_async();
}

void __79__PLMomentGenerationDataManager_verifyAndRepairOrphanedAssets_completionBlock___block_invoke(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__233;
  v18 = __Block_byref_object_dispose__234;
  v19 = 0;
  v2 = a1[4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PLMomentGenerationDataManager_verifyAndRepairOrphanedAssets_completionBlock___block_invoke_235;
  v13[3] = &unk_1E7578910;
  v13[4] = v2;
  v13[5] = &v14;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__PLMomentGenerationDataManager_verifyAndRepairOrphanedAssets_completionBlock___block_invoke_236;
  v11[3] = &unk_1E75781E8;
  v12 = a1[5];
  [v2 performBlock:v13 synchronously:1 completionHandler:v11];
  v3 = v15[5];
  if (v3 && [v3 count])
  {
    v4 = PLMomentsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v15[5] count];
      *buf = 134217984;
      v21 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "MOMENTS: found %lu orphaned assets. Marking for moment generation", buf, 0xCu);
    }

    v6 = [a1[4] generator];
    v7 = v15[5];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__PLMomentGenerationDataManager_verifyAndRepairOrphanedAssets_completionBlock___block_invoke_237;
    v8[3] = &unk_1E7577C08;
    v9 = a1[5];
    v10 = a1[6];
    [v6 generateWithAssetInsertsAndUpdates:v7 assetDeletes:0 assetUpdatesForHighlights:0 momentUpdatesForHighlights:0 completionHandler:v8];
  }

  else
  {
    (*(a1[6] + 2))();
  }

  _Block_object_dispose(&v14, 8);
}

void __79__PLMomentGenerationDataManager_verifyAndRepairOrphanedAssets_completionBlock___block_invoke_235(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = [v2 orphanedAssetIDsWithError:&v8];
  v4 = v8;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = PLMomentsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "MOMENTS: error fetching orphaned assets: %@", buf, 0xCu);
    }
  }
}

uint64_t __79__PLMomentGenerationDataManager_verifyAndRepairOrphanedAssets_completionBlock___block_invoke_237(uint64_t a1)
{
  [*(a1 + 32) stillAlive];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)orphanedAssetIDsWithError:(id *)a3
{
  v17[5] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Asset"];
  v6 = MEMORY[0x1E696AB28];
  v7 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForAssetsIncludedInMoments"), 1}];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"visibilityState", 0, v7];
  v17[1] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != 1", @"hidden"];
  v17[2] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"trashedState", 0];
  v17[3] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL", @"moment"];
  v17[4] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v13 = [v6 andPredicateWithSubpredicates:v12];

  [v5 setPredicate:v13];
  [v5 setResultType:1];
  [v5 setIncludesPropertyValues:0];
  v14 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v15 = [v14 executeFetchRequest:v5 error:a3];

  return v15;
}

- (id)insertNewPhotosHighlight
{
  v2 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = 0;
  v3 = [PLPhotosHighlight insertNewPhotosHighlightInManagedObjectContext:v2 error:&v5];

  return v3;
}

- (id)insertNewMoment
{
  v2 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v3 = +[PLMoment entityName];
  v4 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v3, v2, 0);

  return v4;
}

- (BOOL)deleteAllHighlightsWithError:(id *)a3
{
  v5 = +[PLPhotosHighlight entityName];
  LOBYTE(a3) = [(PLMomentGenerationDataManager *)self _deleteAllObjectsForEntityName:v5 error:a3];

  return a3;
}

- (BOOL)deleteAllMomentsWithError:(id *)a3
{
  v5 = +[PLMoment entityName];
  LOBYTE(a3) = [(PLMomentGenerationDataManager *)self _batchDeleteForEntityName:v5 error:a3];

  return a3;
}

- (BOOL)_deleteAllObjectsForEntityName:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v7];
  v9 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v10 = [PLEnumerateAndSaveController alloc];
  v11 = NSStringFromSelector(a2);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __70__PLMomentGenerationDataManager__deleteAllObjectsForEntityName_error___block_invoke;
  v25[3] = &unk_1E7575B30;
  v26 = v9;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70__PLMomentGenerationDataManager__deleteAllObjectsForEntityName_error___block_invoke_2;
  v22[3] = &unk_1E756AC10;
  v12 = v26;
  v23 = v12;
  v24 = &v27;
  v13 = [(PLEnumerateAndSaveController *)v10 initWithName:v11 fetchRequest:v8 context:v12 options:4 generateContextBlock:v25 didFetchObjectIDsBlock:0 processResultsBlock:v22];

  v21 = 0;
  v14 = [(PLEnumerateAndSaveController *)v13 processObjectsWithError:&v21];
  v15 = v21;
  if (v14)
  {
    v16 = PLMomentsGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v28[3];
      *buf = 138412546;
      v32 = v7;
      v33 = 2048;
      v34 = v17;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Finished deleting entity: %@, count deleted: %ld", buf, 0x16u);
    }
  }

  else
  {
    v18 = PLMomentsGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v32 = v7;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to delete objects of entity: %@, error: %@", buf, 0x16u);
    }

    if (a4)
    {
      v19 = v15;
      *a4 = v15;
    }
  }

  _Block_object_dispose(&v27, 8);
  return v14;
}

void __70__PLMomentGenerationDataManager__deleteAllObjectsForEntityName_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) deleteObject:*(*(&v9 + 1) + 8 * v8)];
        ++*(*(*(a1 + 40) + 8) + 24);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)_batchDeleteForEntityName:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v6];
  v8 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v7];
  [v8 setResultType:2];
  v9 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v17 = 0;
  v10 = [v9 executeRequest:v8 error:&v17];
  v11 = v17;
  v12 = PLMigrationGetLog();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to clear %@ references, %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 result];
    *buf = 138412546;
    v19 = v14;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Cleared all %@ %@ references from assets", buf, 0x16u);
  }

  if (a4)
  {
    v15 = v11;
    *a4 = v11;
  }

  return v11 == 0;
}

- (id)allAssetIDsToBeIncludedInMomentsWithError:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = [PLMoment allAssetsIncludedInMomentsInManagedObjectContext:v4 IDsOnly:1 error:a3];

  return v5;
}

- (id)allInvalidAssetsWithError:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = [PLMoment allInvalidAssetsInManagedObjectContext:v4 error:a3];

  return v5;
}

- (id)allAssetsToBeIncludedInMomentsWithError:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = [PLMoment allAssetsIncludedInMomentsInManagedObjectContext:v4 IDsOnly:0 error:a3];

  return v5;
}

- (id)allMomentIDsWithError:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = [PLMoment allMomentIDsInManagedObjectContext:v4 error:a3];

  return v5;
}

- (id)momentsRequiringLocationOfInterestUpdateWithError:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = [PLMoment momentsWithLocationOfInterestInManagedObjectContext:v4 error:a3];

  return v5;
}

- (id)momentsRequiringLocationProcessingWhenFrequentLocationsChangedWithError:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = [PLMoment momentsRequiringLocationProcessingWhenFrequentLocationsChangedInManagedObjectContext:v4 error:a3];

  return v5;
}

- (id)momentsRequiringLocationProcessingWhenFrequentLocationsAreAvailable:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = [PLMoment momentsRequiringLocationProcessingWhenFrequentLocationsAreAvailableInManagedObjectContext:v4 error:a3];

  return v5;
}

- (id)momentsRequiringLocationProcessingWhenCoreRoutineIsAvailable:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = [PLMoment momentsRequiringLocationProcessingWhenCoreRoutineIsAvailableInManagedObjectContext:v4 error:a3];

  return v5;
}

- (id)allInvalidMomentsWithError:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = [PLMoment allInvalidMomentsInManagedObjectContext:v4 error:a3];

  return v5;
}

- (id)allMomentsWithError:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = [PLMoment allMomentsInManagedObjectContext:v4 error:a3];

  return v5;
}

- (id)allPhotosHighlightsWithPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v8 = [(PLMomentGenerationDataManager *)self _highlightRelationshipsToPrefetchForHighlightOfAnyKind];
  v9 = [PLPhotosHighlight allPhotosHighlightsInManagedObjectContext:v7 predicate:v6 keyPathsForPrefetching:v8 error:a4];

  return v9;
}

- (id)allPhotosHighlightsOfKind:(unsigned __int16)a3 withPredicate:(id)a4 error:(id *)a5
{
  v6 = a3;
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %d", v6];
  v11 = v10;
  if (v8)
  {
    v12 = MEMORY[0x1E696AB28];
    v18[0] = v10;
    v18[1] = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v14 = [v12 andPredicateWithSubpredicates:v13];
  }

  else
  {
    v14 = v10;
  }

  v15 = [(PLMomentGenerationDataManager *)self _highlightRelationshipsToPrefetchForHighlightKind:v6];
  v16 = [PLPhotosHighlight allPhotosHighlightsInManagedObjectContext:v9 predicate:v14 keyPathsForPrefetching:v15 error:a5];

  return v16;
}

- (id)allEmptyPhotosHighlightsOfKind:(unsigned __int16)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v7 = [PLPhotosHighlight predicateForEmptyHighlightsOfKind:v5];
  v8 = [PLPhotosHighlight allPhotosHighlightsInManagedObjectContext:v6 predicate:v7 keyPathsForPrefetching:0 error:a4];

  return v8;
}

- (id)allInvalidPhotosHighlightsOfAllKindsWithError:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = +[PLPhotosHighlight predicateForInvalidHighlightsOfAllKinds];
  v6 = [PLPhotosHighlight allPhotosHighlightsInManagedObjectContext:v4 predicate:v5 keyPathsForPrefetching:0 error:a3];

  return v6;
}

- (id)allPhotosHighlightsOfAllKindsWithError:(id *)a3
{
  v5 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v6 = [(PLMomentGenerationDataManager *)self _highlightRelationshipsToPrefetchForHighlightOfAnyKind];
  v7 = [PLPhotosHighlight allPhotosHighlightsInManagedObjectContext:v5 predicate:0 keyPathsForPrefetching:v6 error:a3];

  return v7;
}

- (id)momentsBetweenDate:(id)a3 andDate:(id)a4 sorted:(BOOL)a5 excludeExternal:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v27[2] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E695D5E0];
  v11 = a4;
  v12 = a3;
  v13 = +[PLMoment entityName];
  v14 = [v10 fetchRequestWithEntityName:v13];

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K >= %@) AND (%K <= %@)", @"endDate", v12, @"startDate", v11];

  if (v6)
  {
    v16 = [PLMoment fetchPredicateForExcludingOriginatorState:8];
    v17 = MEMORY[0x1E696AB28];
    v27[0] = v15;
    v27[1] = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v19 = [v17 andPredicateWithSubpredicates:v18];
    [v14 setPredicate:v19];
  }

  else
  {
    [v14 setPredicate:v15];
  }

  [v14 setReturnsObjectsAsFaults:0];
  if (v7)
  {
    v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"representativeDate" ascending:1];
    v26[0] = v20;
    v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
    v26[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    [v14 setSortDescriptors:v22];
  }

  v23 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v24 = [v23 executeFetchRequest:v14 error:0];

  return v24;
}

- (id)momentsIntersectingDateInterval:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLMomentGenerationDataManager.m" lineNumber:621 description:{@"Invalid parameter not satisfying: %@", @"dateInterval"}];
  }

  v6 = MEMORY[0x1E696AE18];
  v7 = [v5 endDate];
  v8 = [v5 startDate];
  v9 = [v6 predicateWithFormat:@"(%K <= %@) AND (%K >= %@)", @"startDate", v7, @"endDate", v8];

  v10 = MEMORY[0x1E695D5E0];
  v11 = +[PLMoment entityName];
  v12 = [v10 fetchRequestWithEntityName:v11];

  [v12 setFetchBatchSize:100];
  [v12 setReturnsObjectsAsFaults:0];
  [v12 setPredicate:v9];
  v18[0] = @"assets";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v12 setRelationshipKeyPathsForPrefetching:v13];

  v14 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v15 = [v14 executeFetchRequest:v12 error:0];

  return v15;
}

- (id)highlightsIntersectingDateInterval:(id)a3 ofKind:(unsigned __int16)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLMomentGenerationDataManager.m" lineNumber:606 description:{@"Invalid parameter not satisfying: %@", @"dateInterval"}];
  }

  v8 = MEMORY[0x1E696AE18];
  v9 = [v7 endDate];
  v10 = [v7 startDate];
  v11 = [v8 predicateWithFormat:@"(%K <= %@) AND (%K >= %@) AND kind = %d", @"startDate", v9, @"endDate", v10, v4];

  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLPhotosHighlight entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  [v14 setFetchBatchSize:100];
  [v14 setReturnsObjectsAsFaults:0];
  [v14 setPredicate:v11];
  v15 = [(PLMomentGenerationDataManager *)self _highlightRelationshipsToPrefetchForHighlightKind:v4];
  [v14 setRelationshipKeyPathsForPrefetching:v15];

  v16 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v17 = [v16 executeFetchRequest:v14 error:0];

  return v17;
}

- (id)_highlightRelationshipsToPrefetchForHighlightOfAnyKind
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"parentPhotosHighlight";
  v4[1] = @"childPhotosHighlights";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_highlightRelationshipsToPrefetchForHighlightKind:(unsigned __int16)a3
{
  v3 = 0;
  v11[6] = *MEMORY[0x1E69E9840];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v8 = @"childPhotosHighlights";
      v4 = MEMORY[0x1E695DEC8];
      v5 = &v8;
      v6 = 1;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v10[0] = @"parentPhotosHighlight";
      v10[1] = @"dayGroupAssets";
      v10[2] = @"dayGroupSummaryAssets";
      v10[3] = @"dayGroupExtendedAssets";
      v10[4] = @"childDayGroupPhotosHighlights";
      v4 = MEMORY[0x1E695DEC8];
      v5 = v10;
      v6 = 5;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v9[0] = @"parentPhotosHighlight";
    v9[1] = @"childPhotosHighlights";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v9;
    v6 = 2;
  }

  else
  {
    v11[0] = @"parentPhotosHighlight";
    v11[1] = @"assets";
    v11[2] = @"summaryAssets";
    v11[3] = @"extendedAssets";
    v11[4] = @"moments";
    v11[5] = @"parentDayGroupPhotosHighlight";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v11;
    v6 = 6;
  }

  v3 = [v4 arrayWithObjects:v5 count:v6];
LABEL_11:

  return v3;
}

- (id)_currentHomeAddressDictionary
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = [(PLMomentGenerationDataManager *)self _contactStore];
  v23[0] = *MEMORY[0x1E695C360];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v21 = 0;
  v4 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch:v3 error:&v21];
  v5 = v21;

  if (v4)
  {
    [v4 postalAddresses];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      v10 = *MEMORY[0x1E695CB60];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 label];
          if ([v13 isEqualToString:v10])
          {
            v15 = [v12 value];
            v14 = [v15 dictionaryRepresentation];

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CNContactStore)_contactStore
{
  v9 = *MEMORY[0x1E69E9840];
  if (!self->_contactStore && ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 1) <= 1)
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "We should never attempt to access the contact store when it isn't authorized. %@", &v7, 0xCu);
    }
  }

  contactStore = self->_contactStore;

  return contactStore;
}

- (void)_networkReachabilityDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E698B610]];
  v7 = [v6 BOOLValue];

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__31517;
  v15 = __Block_byref_object_dispose__31518;
  v16 = 0;
  v8 = _networkReachabilityQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PLMomentGenerationDataManager__networkReachabilityDidChange___block_invoke;
  v10[3] = &unk_1E7578910;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v8, v10);

  v9 = v12[5];
  if (v9)
  {
    (*(v9 + 16))(v9, v7);
  }

  _Block_object_dispose(&v11, 8);
}

void __63__PLMomentGenerationDataManager__networkReachabilityDidChange___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 8));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)fetchParentHighlightItemsForHighlightItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) parentPhotosHighlight];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 allObjects];

  return v11;
}

- (id)fetchChildHighlightItemsForHighlightItem:(id)a3
{
  v3 = [a3 childPhotosHighlights];
  v4 = [v3 allObjects];

  return v4;
}

- (id)fetchNeighborHighlightItemsForHighlightItems:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 count])
  {
    v21 = MEMORY[0x1E695E0F0];
    goto LABEL_30;
  }

  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [MEMORY[0x1E695DF00] distantPast];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = v4;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v37 = self;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = [v12 startDate];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 earlierDate:v5];

          v5 = v15;
        }

        v16 = [v12 endDate];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 laterDate:v6];

          v6 = v18;
        }

        v19 = [v12 kind];
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v9);

    if (v19)
    {
      v20 = &PLYearGroupingRuleTimeIntervalForNeighbors;
      self = v37;
      goto LABEL_19;
    }

    self = v37;
  }

  else
  {
  }

  v19 = 0;
  v20 = &PLMonthGroupingRuleTimeIntervalForNeighbors;
LABEL_19:
  v22 = *v20;
  v23 = MEMORY[0x1E696AE18];
  v24 = [v5 dateByAddingTimeInterval:-*v20];
  v25 = [v23 predicateWithFormat:@"startDate >= %@", v24];

  v26 = MEMORY[0x1E696AE18];
  v27 = [v6 dateByAddingTimeInterval:v22];
  v28 = [v26 predicateWithFormat:@"endDate <= %@", v27];

  if (v19 - 1 < 2)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %d", v19, v36];
  }

  else
  {
    if (v19 && v19 != 3)
    {
      v29 = 0;
      goto LABEL_25;
    }

    [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %d || kind = %d", 0, 3];
  }
  v29 = ;
LABEL_25:
  v30 = MEMORY[0x1E696AB28];
  v46[0] = v25;
  v46[1] = v28;
  v46[2] = v29;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  v32 = [v30 andPredicateWithSubpredicates:v31];

  v39 = 0;
  v21 = [(PLMomentGenerationDataManager *)self allPhotosHighlightsWithPredicate:v32 error:&v39];
  v33 = v39;
  if (v33)
  {
    v34 = PLMomentsGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v33;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Error fetching child highlight: %@", buf, 0xCu);
    }
  }

  v4 = v38;
LABEL_30:

  return v21;
}

- (NSDictionary)generationOptions
{
  if (MEMORY[0x19EAEE230](self, a2))
  {
    v3 = self->_generationOptions;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)resetOnFailure
{
  v2 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  [v2 reset];
}

- (BOOL)save:(id *)a3
{
  v4 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v5 = [v4 save:a3];
  if (v5)
  {
    [v4 refreshAllObjects];
  }

  return v5;
}

- (BOOL)hasChanges
{
  v2 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v3 = [v2 hasChanges];

  return v3;
}

- (void)refreshAllObjects
{
  v2 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  [v2 refreshAllObjects];
}

- (id)momentsForAssetsWithUniqueIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = MEMORY[0x1E695D5E0];
    v8 = +[PLMoment entityName];
    v9 = [v7 fetchRequestWithEntityName:v8];

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY assets IN %@", v6];
    [v9 setPredicate:v10];
    if ([v6 count] >= 0x65)
    {
      [v9 setFetchBatchSize:100];
    }

    [v9 setReturnsObjectsAsFaults:0];
    v11 = [(PLMomentGenerationDataManager *)self managedObjectContext];
    v12 = [v11 executeFetchRequest:v9 error:a4];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)momentsWithUniqueIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = MEMORY[0x1E695D5E0];
    v8 = +[PLMoment entityName];
    v9 = [v7 fetchRequestWithEntityName:v8];

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v6];
    [v9 setPredicate:v10];
    if ([v6 count] >= 0x65)
    {
      [v9 setFetchBatchSize:100];
    }

    [v9 setReturnsObjectsAsFaults:0];
    v11 = [(PLMomentGenerationDataManager *)self managedObjectContext];
    v12 = [v11 executeFetchRequest:v9 error:a4];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)momentWithUniqueID:(id)a3 error:(id *)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLMomentGenerationDataManager.m" lineNumber:338 description:@"Must get object with NSManagedObjectID"];
  }

  v8 = v7;
  v9 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v10 = [v9 existingObjectWithID:v8 error:a4];

  return v10;
}

- (id)prefetchedAssetsWithUniqueIDs:(id)a3 error:(id *)a4
{
  v19[6] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = +[PLManagedAsset entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v7];
  [v9 setPredicate:v10];
  v11 = [v7 count];

  if (v11 >= 0x65)
  {
    [v9 setFetchBatchSize:100];
  }

  [v9 setReturnsObjectsAsFaults:0];
  v19[0] = @"moment";
  v19[1] = @"additionalAttributes";
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"mediaAnalysisAttributes", @"syndicationProcessingValue"];
  v19[2] = v12;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"mediaAnalysisAttributes", @"syndicationProcessingVersion"];
  v19[3] = v13;
  v19[4] = @"libraryScope";
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"libraryScopeAssetContributors", @"participant.isCurrentUser"];
  v19[5] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:6];
  [v9 setRelationshipKeyPathsForPrefetching:v15];

  v16 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v17 = [v16 executeFetchRequest:v9 error:a4];

  return v17;
}

- (id)assetsWithUniqueIDs:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = +[PLManagedAsset entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v7];
  [v9 setPredicate:v10];
  v11 = [v7 count];

  if (v11 >= 0x65)
  {
    [v9 setFetchBatchSize:100];
  }

  [v9 setReturnsObjectsAsFaults:0];
  v16[0] = @"moment";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v12];

  v13 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v14 = [v13 executeFetchRequest:v9 error:a4];

  return v14;
}

- (id)assetWithUniqueID:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLMomentGenerationDataManager.m" lineNumber:286 description:@"Must get object with NSManagedObjectID"];
  }

  v7 = v6;
  v8 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v9 = [PLManagedAsset assetWithObjectID:v7 inManagedObjectContext:v8];

  return v9;
}

- (id)deletedObjects
{
  v2 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v3 = [v2 deletedObjects];

  return v3;
}

- (id)updatedObjects
{
  v2 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v3 = [v2 updatedObjects];

  return v3;
}

- (id)insertedObjects
{
  v2 = [(PLMomentGenerationDataManager *)self managedObjectContext];
  v3 = [v2 insertedObjects];

  return v3;
}

- (void)performDataTransaction:(id)a3 synchronously:(BOOL)a4 priority:(int64_t)a5 completionHandler:(id)a6
{
  v8 = a4;
  v13 = a3;
  v10 = a6;
  if (self->_isLightweightMigrationManager)
  {
    os_unfair_lock_lock(&self->_lightweightMigrationLock);
    if (v13)
    {
      v13[2](v13);
    }

    [(PLMomentGenerationDataManager *)self save:0];
    [(PLMomentGenerationDataManager *)self refreshAllObjects];
    if (v10)
    {
      v10[2](v10);
    }

    os_unfair_lock_unlock(&self->_lightweightMigrationLock);
  }

  else
  {
    v11 = [(PLMomentGenerationDataManager *)self momentGenerationLibrary];
    v12 = v11;
    if (v8)
    {
      [v11 performTransactionAndWait:v13 completionHandler:v10];
    }

    else
    {
      [v11 performTransaction:v13 completionHandler:v10 withPriority:a5];
    }
  }
}

- (void)performBlock:(id)a3 synchronously:(BOOL)a4 priority:(int64_t)a5 completionHandler:(id)a6
{
  v8 = a4;
  v13 = a3;
  v10 = a6;
  if (self->_isLightweightMigrationManager)
  {
    os_unfair_lock_lock(&self->_lightweightMigrationLock);
    if (v13)
    {
      v13[2](v13);
    }

    if (v10)
    {
      v10[2](v10);
    }

    os_unfair_lock_unlock(&self->_lightweightMigrationLock);
  }

  else
  {
    v11 = [(PLMomentGenerationDataManager *)self momentGenerationLibrary];
    v12 = v11;
    if (v8)
    {
      [v11 performBlockAndWait:v13 completionHandler:v10];
    }

    else
    {
      [v11 performBlock:v13 completionHandler:v10 withPriority:a5];
    }
  }
}

- (NSManagedObjectContext)managedObjectContext
{
  managedObjectContext = self->_managedObjectContext;
  if (managedObjectContext)
  {
    v3 = managedObjectContext;
  }

  else
  {
    v4 = [(PLMomentGenerationDataManager *)self momentGenerationLibrary];
    v3 = [v4 managedObjectContext];
  }

  return v3;
}

- (PLPhotoLibrary)momentGenerationLibrary
{
  if ((PLPlatformMomentsSupported() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PLMomentGenerationDataManager.m" lineNumber:180 description:@"Unsupported platform"];
  }

  if (self->_isLightweightMigrationManager)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLMomentGenerationDataManager.m" lineNumber:181 description:@"Moment Generation attempted to set up a photolibrary during lightweight migration"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);

  if (!WeakRetained)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLMomentGenerationDataManager.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"_libraryServicesManager"}];
  }

  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_momentGenerationLibrary)
  {
    v6 = objc_loadWeakRetained(&self->_libraryServicesManager);
    v7 = [v6 databaseContext];
    v8 = [v7 momentLibrary];
    momentGenerationLibrary = v5->_momentGenerationLibrary;
    v5->_momentGenerationLibrary = v8;

    v10 = v5->_momentGenerationLibrary;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__PLMomentGenerationDataManager_momentGenerationLibrary__block_invoke;
    v16[3] = &unk_1E75781E8;
    v16[4] = v5;
    [(PLPhotoLibrary *)v10 performBlockAndWait:v16];
  }

  objc_sync_exit(v5);

  v11 = v5->_momentGenerationLibrary;

  return v11;
}

void __56__PLMomentGenerationDataManager_momentGenerationLibrary__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 112) managedObjectContext];
  [PLMomentGenerationDataManager setManagedObjectContextMomentarilyBlessed:v1];
}

- (void)invalidateAllHighlightSubtitles
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695D560]);
  v4 = +[PLPhotosHighlight entity];
  v5 = [v3 initWithEntity:v4];

  v17 = @"subtitle";
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
  v18[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v5 setPropertiesToUpdate:v7];

  [v5 setResultType:2];
  v8 = [(PLMomentGenerationDataManager *)self momentGenerationLibrary];
  v9 = [v8 managedObjectContext];
  v14 = 0;
  v10 = [v9 executeRequest:v5 error:&v14];
  v11 = v14;

  v12 = PLMomentsGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 result];
    *buf = 138412290;
    v16 = v13;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Invalidate all titles for %@ Highlights", buf, 0xCu);
  }
}

- (void)reloadGenerationOptions
{
  if (PLIsAssetsd() && MEMORY[0x19EAEE230]())
  {
    v3 = objc_alloc(MEMORY[0x1E695E000]);
    v4 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.mobileslideshow"];
    v7 = [v3 initWithSuiteName:v4];

    v5 = [v7 objectForKey:@"MomentGenerationOptionsDictionary"];
    generationOptions = self->_generationOptions;
    self->_generationOptions = v5;
  }
}

- (void)_finalizeInit
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  self->_shouldPerformLightweightValidation = [v3 BOOLForKey:@"com.apple.photos.validation.performLightweightValidation"];

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  self->_previousValidatedModelVersion = [v4 integerForKey:@"com.apple.photos.validation.previousValidatedModelVersion"];

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  self->_previousValidationSucceeded = [v5 BOOLForKey:@"com.apple.photos.validation.previousValidationSucceeded"];

  v6 = objc_alloc_init(PLCameraAppWatcher);
  cameraWatcher = self->_cameraWatcher;
  self->_cameraWatcher = v6;
}

- (void)_initIsolationQueue
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = pl_dispatch_queue_create_with_fallback_qos();
  isolationQueue = self->_isolationQueue;
  self->_isolationQueue = v3;
}

- (PLMomentGenerationDataManager)initWithLibraryServicesManager:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PLMomentGenerationDataManager;
  v5 = [(PLMomentGenerationDataManager *)&v13 init];
  if (PLPlatformMomentsSupported())
  {
    if (v5)
    {
      [(PLMomentGenerationDataManager *)v5 _initIsolationQueue];
      objc_storeWeak(&v5->_libraryServicesManager, v4);
      [(PLMomentGenerationDataManager *)v5 reloadGenerationOptions];
      v6 = [PLMomentGeneration alloc];
      v7 = [v4 libraryBundle];
      v8 = [(PLMomentGeneration *)v6 initWithMomentGenerationDataManager:v5 bundle:v7];
      generator = v5->_generator;
      v5->_generator = v8;

      v10 = [[PLRoutineService alloc] initWithFetchDateInterval:0];
      routineManager = v5->_routineManager;
      v5->_routineManager = v10;

      [(PLMomentGenerationDataManager *)v5 _finalizeInit];
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (PLMomentGenerationDataManager)initWithManagedObjectContext:(id)a3 pathManagerForLightweightMigration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PLMomentGenerationDataManager;
  v8 = [(PLMomentGenerationDataManager *)&v17 init];
  if (!PLPlatformMomentsSupported())
  {
    v11 = v8;
    v8 = 0;
LABEL_8:

    goto LABEL_9;
  }

  if (v8)
  {
    [(PLMomentGenerationDataManager *)v8 _initIsolationQueue];
    v8->_isLightweightMigrationManager = 1;
    v8->_lightweightMigrationLock._os_unfair_lock_opaque = 0;
    [(PLMomentGenerationDataManager *)v8 setMomentGenerationLibrary:0];
    [(PLMomentGenerationDataManager *)v8 setManagedObjectContext:v6];
    objc_opt_class();
    v9 = v6;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [PLMomentGeneration alloc];
    v13 = [(PLMomentGenerationDataManager *)v11 pl_libraryBundle];
    v14 = [(PLMomentGeneration *)v12 initWithMomentGenerationDataManager:v8 bundle:v13];
    generator = v8->_generator;
    v8->_generator = v14;

    objc_storeStrong(&v8->_lightWeightMigrationPathManager, a4);
    [(PLMomentGenerationDataManager *)v8 _finalizeInit];
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

PLMomentProcessingData *__62__PLMomentGenerationDataManager_processingMomentsFromMoments___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PLMomentProcessingData alloc] initWithMoment:v2];

  return v3;
}

+ (BOOL)isManagedObjectContextMomentarilyBlessed:(id)a3
{
  v5 = a3;
  if ((PLPlatformMomentsSupported() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PLMomentGenerationDataManager.m" lineNumber:281 description:@"Unsupported platform"];
  }

  v6 = [v5 userInfo];
  v7 = [v6 objectForKey:@"MomentarilyBlessed"];
  v8 = [v7 BOOLValue];

  return v8;
}

+ (void)setManagedObjectContextMomentarilyBlessed:(id)a3
{
  v3 = [a3 userInfo];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"MomentarilyBlessed"];
}

+ (void)setManagerMomentarilyBlessed:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"PLMomentGenerationDataManager.m" lineNumber:268 description:@"Passed in incorrect data manager class"];
  }

  if ((PLPlatformMomentsSupported() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PLMomentGenerationDataManager.m" lineNumber:269 description:@"Unsupported platform"];
  }

  v5 = [v8 managedObjectContext];
  [a1 setManagedObjectContextMomentarilyBlessed:v5];
}

+ (void)initialize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___PLMomentGenerationDataManager;
  objc_msgSendSuper2(&v3, sel_initialize);
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 registerDefaults:&unk_1F0FC06E0];
}

@end