@interface PLModelMigrationAction_CPLPrompting
+ (void)_resetICPLPrompt;
+ (void)_setLastWelcomedDBVersion;
+ (void)shouldRepromptUserIfNeededWithPathManager:(id)a3;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_CPLPrompting

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v7 = [(PLModelMigrationActionCore *)self startingSchemaVersion]- 11000;
  v8 = objc_opt_class();
  v9 = v8;
  if (v7 > 0x2D)
  {
    v10 = [(PLModelMigrationActionCore *)self pathManager];
    [v9 shouldRepromptUserIfNeededWithPathManager:v10];
  }

  else
  {
    [v8 _setLastWelcomedDBVersion];
  }

  [v6 setCompletedUnitCount:{objc_msgSend(v6, "completedUnitCount") + 1}];
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

+ (void)_resetICPLPrompt
{
  v3 = CFPreferencesCopyAppValue(@"iCloudPhotoLibraryLastResetWelcomePromptDBVersion", @"com.apple.mobileslideshow");
  if (v3)
  {
    v4 = v3;
    if ([v3 intValue] <= 12199)
    {
      CFPreferencesSetAppValue(@"iCloudPhotoLibraryHasBeenWelcomedAccountIdentifiers", 0, @"com.apple.mobileslideshow");
      CFPreferencesSetAppValue(@"iCloudPhotoLibraryHasBeenEnabledAccountIdentifiers", 0, @"com.apple.mobileslideshow");
    }

    CFRelease(v4);
  }

  else
  {
    CFPreferencesSetAppValue(@"iCloudPhotoLibraryHasBeenWelcomedAccountIdentifiers", 0, @"com.apple.mobileslideshow");
    CFPreferencesSetAppValue(@"iCloudPhotoLibraryHasBeenEnabledAccountIdentifiers", 0, @"com.apple.mobileslideshow");
  }

  [a1 _setLastWelcomedDBVersion];
}

+ (void)_setLastWelcomedDBVersion
{
  v2 = [MEMORY[0x1E696AD98] numberWithInt:12200];
  CFPreferencesSetAppValue(@"iCloudPhotoLibraryLastResetWelcomePromptDBVersion", v2, @"com.apple.mobileslideshow");

  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
}

+ (void)shouldRepromptUserIfNeededWithPathManager:(id)a3
{
  v4 = a3;
  if ([v4 isSystemPhotoLibraryPathManager])
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Resetting iCPL prompt if needed", v8, 2u);
    }

    v6 = [v4 libraryURL];
    v7 = PLIsCloudPhotoLibraryEnabledForPhotoLibraryURL(v6);

    if (v7)
    {
      [a1 _setLastWelcomedDBVersion];
    }

    else
    {
      [a1 _resetICPLPrompt];
    }
  }
}

@end