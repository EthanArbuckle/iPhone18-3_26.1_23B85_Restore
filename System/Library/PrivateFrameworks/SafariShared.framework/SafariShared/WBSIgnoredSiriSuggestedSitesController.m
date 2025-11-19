@interface WBSIgnoredSiriSuggestedSitesController
+ (WBSIgnoredSiriSuggestedSitesController)sharedController;
+ (id)_databaseURL;
- (WBSIgnoredSiriSuggestedSitesController)initWithDatabaseURL:(id)a3;
- (id)databaseController;
- (void)_pruneIgnoredSiriSuggestedSitesIfNeeded;
- (void)addIgnoredSiriSuggestedSiteWithURLString:(id)a3 inProfile:(id)a4 withQuery:(id)a5 visitedURLString:(id)a6;
- (void)dealloc;
- (void)getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)a3 withQuery:(id)a4 completionHandler:(id)a5;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 afterDate:(id)a4;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 visitedURLHost:(id)a4 completionHandler:(id)a5;
- (void)removeIgnoredSiriSuggestedSitesWithURLHost:(id)a3 inProfile:(id)a4;
- (void)updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4 visitedURLString:(id)a5;
@end

@implementation WBSIgnoredSiriSuggestedSitesController

+ (id)_databaseURL
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 safari_settingsDirectoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"IgnoredSiriSuggestedSites.db" isDirectory:0];

  return v4;
}

+ (WBSIgnoredSiriSuggestedSitesController)sharedController
{
  if (+[WBSIgnoredSiriSuggestedSitesController sharedController]::onceToken != -1)
  {
    +[WBSIgnoredSiriSuggestedSitesController sharedController];
  }

  v3 = +[WBSIgnoredSiriSuggestedSitesController sharedController]::controller;

  return v3;
}

void __58__WBSIgnoredSiriSuggestedSitesController_sharedController__block_invoke()
{
  v0 = [[WBSIgnoredSiriSuggestedSitesController alloc] initWithDatabaseURL:0];
  v1 = +[WBSIgnoredSiriSuggestedSitesController sharedController]::controller;
  +[WBSIgnoredSiriSuggestedSitesController sharedController]::controller = v0;
}

- (WBSIgnoredSiriSuggestedSitesController)initWithDatabaseURL:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WBSIgnoredSiriSuggestedSitesController;
  v5 = [(WBSIgnoredSiriSuggestedSitesController *)&v17 init];
  if (v5)
  {
    v6 = [WBSIgnoredSiriSuggestedSitesDatabaseController alloc];
    v7 = v4;
    if (!v4)
    {
      v7 = [objc_opt_class() _databaseURL];
    }

    v8 = [(WBSSQLiteStore *)v6 initWithURL:v7];
    databaseController = v5->_databaseController;
    v5->_databaseController = v8;

    if (!v4)
    {
    }

    v10 = v5->_databaseController;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__WBSIgnoredSiriSuggestedSitesController_initWithDatabaseURL___block_invoke;
    v14[3] = &unk_1E7FC84E0;
    v15 = v4;
    v11 = v5;
    v16 = v11;
    [(WBSSQLiteStore *)v10 openAndCheckIntegrity:1 createIfNeeded:1 fallBackToMemoryStoreIfError:0 lockingPolicy:0 completionHandler:v14];
    v12 = v11;
  }

  return v5;
}

void __62__WBSIgnoredSiriSuggestedSitesController_initWithDatabaseURL___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v5;
      if (!v5)
      {
        v6 = [objc_opt_class() _databaseURL];
      }

      v7 = 134218243;
      v8 = a2;
      v9 = 2117;
      v10 = v6;
      _os_log_error_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_ERROR, "Failed to open the ignored suggested sites database. Error code: %ld URL: %{sensitive}@", &v7, 0x16u);
      if (!v5)
      {
      }
    }
  }
}

- (void)dealloc
{
  [(WBSIgnoredSiriSuggestedSitesController *)self _pruneIgnoredSiriSuggestedSitesIfNeeded];
  [(WBSSQLiteStore *)self->_databaseController savePendingChangesBeforeTermination];
  v3.receiver = self;
  v3.super_class = WBSIgnoredSiriSuggestedSitesController;
  [(WBSIgnoredSiriSuggestedSitesController *)&v3 dealloc];
}

- (id)databaseController
{
  [(WBSIgnoredSiriSuggestedSitesController *)self _pruneIgnoredSiriSuggestedSitesIfNeeded];
  databaseController = self->_databaseController;

  return databaseController;
}

- (void)addIgnoredSiriSuggestedSiteWithURLString:(id)a3 inProfile:(id)a4 withQuery:(id)a5 visitedURLString:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [v13 addIgnoredSiriSuggestedSiteWithURLString:v14 inProfile:v10 withQuery:v11 visitedURLString:v12];
}

- (void)updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4 visitedURLString:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [v10 updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:v11 query:v8 visitedURLString:v9];
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x1E695DF00] distantPast];
  [(WBSIgnoredSiriSuggestedSitesController *)self removeIgnoredSiriSuggestedSitesInProfile:v5 afterDate:v4];
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 afterDate:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [v7 removeIgnoredSiriSuggestedSitesInProfile:v8 afterDate:v6];
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [v7 removeIgnoredSiriSuggestedSitesInProfile:v8 query:v6];
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 visitedURLHost:(id)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [v10 removeIgnoredSiriSuggestedSitesInProfile:v11 visitedURLHost:v8 completionHandler:v9];
}

- (void)removeIgnoredSiriSuggestedSitesWithURLHost:(id)a3 inProfile:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [v7 removeIgnoredSiriSuggestedSitesWithURLHost:v8 inProfile:v6];
}

- (void)getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)a3 withQuery:(id)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [v10 getIgnoredSiriSuggestedSitesURLStringsInProfile:v11 withQuery:v8 completionHandler:v9];
}

- (void)_pruneIgnoredSiriSuggestedSitesIfNeeded
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v3 doubleForKey:@"WBSDebugIgnoredSiriSuggestedSitesPruningTimeIntervalOverride"];
  v5 = v4;

  if (([MEMORY[0x1E69C8880] isInternalInstall] & (v5 != 0.0)) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 86400.0;
  }

  if (!self->_dateOfLastPruning || ([MEMORY[0x1E695DF00] now], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceDate:", self->_dateOfLastPruning), v9 = v8, v7, v9 >= v6))
  {
    v10 = [MEMORY[0x1E695DF00] now];
    dateOfLastPruning = self->_dateOfLastPruning;
    self->_dateOfLastPruning = v10;

    databaseController = self->_databaseController;

    [(WBSIgnoredSiriSuggestedSitesDatabaseController *)databaseController pruneIgnoredSiriSuggestedSites];
  }
}

@end