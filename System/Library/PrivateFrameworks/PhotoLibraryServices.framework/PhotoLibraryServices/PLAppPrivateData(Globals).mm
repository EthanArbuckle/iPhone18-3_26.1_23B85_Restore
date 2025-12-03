@interface PLAppPrivateData(Globals)
- (BOOL)getCachedIsReadyForAnalysisFromSavedState;
- (void)saveCachedIsReadyForAnalysis:()Globals libraryServicesManager:;
@end

@implementation PLAppPrivateData(Globals)

- (void)saveCachedIsReadyForAnalysis:()Globals libraryServicesManager:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  getCachedIsReadyForAnalysisFromSavedState = [self getCachedIsReadyForAnalysisFromSavedState];
  if (a3)
  {
    if ((getCachedIsReadyForAnalysisFromSavedState & 1) == 0)
    {
      date = [MEMORY[0x1E695DF00] date];
      v9 = [@"GlobalValue" stringByAppendingPathExtension:@"isReadyForAnalysisDate"];
      [self setValue:date forKeyPath:v9];

      databaseContext = [v6 databaseContext];
      v11 = [databaseContext newShortLivedLibraryWithName:"-[PLAppPrivateData(Globals) saveCachedIsReadyForAnalysis:libraryServicesManager:]"];

      globalValues = [v11 globalValues];
      [globalValues setLibraryReadyForAnalysisDate:date];

      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = date;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "ReadyForAnalysis marker date updated: %{public}@", &v19, 0xCu);
      }
    }
  }

  else if (getCachedIsReadyForAnalysisFromSavedState)
  {
    v14 = [@"GlobalValue" stringByAppendingPathExtension:@"isReadyForAnalysisDate"];
    [self setValue:0 forKeyPath:v14];

    databaseContext2 = [v6 databaseContext];
    v16 = [databaseContext2 newShortLivedLibraryWithName:"-[PLAppPrivateData(Globals) saveCachedIsReadyForAnalysis:libraryServicesManager:]"];

    globalValues2 = [v16 globalValues];
    [globalValues2 setLibraryReadyForAnalysisDate:0];

    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "ReadyForAnalysis marker date dropped", &v19, 2u);
    }
  }
}

- (BOOL)getCachedIsReadyForAnalysisFromSavedState
{
  v2 = [@"GlobalValue" stringByAppendingPathExtension:@"isReadyForAnalysisDate"];
  v3 = [self valueForKeyPath:v2];

  return v3 != 0;
}

@end