@interface PLAppPrivateData(Globals)
- (BOOL)getCachedIsReadyForAnalysisFromSavedState;
- (void)saveCachedIsReadyForAnalysis:()Globals libraryServicesManager:;
@end

@implementation PLAppPrivateData(Globals)

- (void)saveCachedIsReadyForAnalysis:()Globals libraryServicesManager:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 getCachedIsReadyForAnalysisFromSavedState];
  if (a3)
  {
    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x1E695DF00] date];
      v9 = [@"GlobalValue" stringByAppendingPathExtension:@"isReadyForAnalysisDate"];
      [a1 setValue:v8 forKeyPath:v9];

      v10 = [v6 databaseContext];
      v11 = [v10 newShortLivedLibraryWithName:"-[PLAppPrivateData(Globals) saveCachedIsReadyForAnalysis:libraryServicesManager:]"];

      v12 = [v11 globalValues];
      [v12 setLibraryReadyForAnalysisDate:v8];

      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v8;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "ReadyForAnalysis marker date updated: %{public}@", &v19, 0xCu);
      }
    }
  }

  else if (v7)
  {
    v14 = [@"GlobalValue" stringByAppendingPathExtension:@"isReadyForAnalysisDate"];
    [a1 setValue:0 forKeyPath:v14];

    v15 = [v6 databaseContext];
    v16 = [v15 newShortLivedLibraryWithName:"-[PLAppPrivateData(Globals) saveCachedIsReadyForAnalysis:libraryServicesManager:]"];

    v17 = [v16 globalValues];
    [v17 setLibraryReadyForAnalysisDate:0];

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
  v3 = [a1 valueForKeyPath:v2];

  return v3 != 0;
}

@end