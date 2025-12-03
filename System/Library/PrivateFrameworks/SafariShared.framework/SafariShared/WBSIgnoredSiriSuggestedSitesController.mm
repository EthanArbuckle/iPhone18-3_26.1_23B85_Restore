@interface WBSIgnoredSiriSuggestedSitesController
+ (WBSIgnoredSiriSuggestedSitesController)sharedController;
+ (id)_databaseURL;
- (WBSIgnoredSiriSuggestedSitesController)initWithDatabaseURL:(id)l;
- (id)databaseController;
- (void)_pruneIgnoredSiriSuggestedSitesIfNeeded;
- (void)addIgnoredSiriSuggestedSiteWithURLString:(id)string inProfile:(id)profile withQuery:(id)query visitedURLString:(id)lString;
- (void)dealloc;
- (void)getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)profile withQuery:(id)query completionHandler:(id)handler;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile afterDate:(id)date;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile visitedURLHost:(id)host completionHandler:(id)handler;
- (void)removeIgnoredSiriSuggestedSitesWithURLHost:(id)host inProfile:(id)profile;
- (void)updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query visitedURLString:(id)string;
@end

@implementation WBSIgnoredSiriSuggestedSitesController

+ (id)_databaseURL
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];
  v4 = [safari_settingsDirectoryURL URLByAppendingPathComponent:@"IgnoredSiriSuggestedSites.db" isDirectory:0];

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

- (WBSIgnoredSiriSuggestedSitesController)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = WBSIgnoredSiriSuggestedSitesController;
  v5 = [(WBSIgnoredSiriSuggestedSitesController *)&v17 init];
  if (v5)
  {
    v6 = [WBSIgnoredSiriSuggestedSitesDatabaseController alloc];
    _databaseURL = lCopy;
    if (!lCopy)
    {
      _databaseURL = [objc_opt_class() _databaseURL];
    }

    v8 = [(WBSSQLiteStore *)v6 initWithURL:_databaseURL];
    databaseController = v5->_databaseController;
    v5->_databaseController = v8;

    if (!lCopy)
    {
    }

    v10 = v5->_databaseController;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__WBSIgnoredSiriSuggestedSitesController_initWithDatabaseURL___block_invoke;
    v14[3] = &unk_1E7FC84E0;
    v15 = lCopy;
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

- (void)addIgnoredSiriSuggestedSiteWithURLString:(id)string inProfile:(id)profile withQuery:(id)query visitedURLString:(id)lString
{
  stringCopy = string;
  profileCopy = profile;
  queryCopy = query;
  lStringCopy = lString;
  databaseController = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [databaseController addIgnoredSiriSuggestedSiteWithURLString:stringCopy inProfile:profileCopy withQuery:queryCopy visitedURLString:lStringCopy];
}

- (void)updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query visitedURLString:(id)string
{
  profileCopy = profile;
  queryCopy = query;
  stringCopy = string;
  databaseController = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [databaseController updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:profileCopy query:queryCopy visitedURLString:stringCopy];
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile
{
  profileCopy = profile;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [(WBSIgnoredSiriSuggestedSitesController *)self removeIgnoredSiriSuggestedSitesInProfile:profileCopy afterDate:distantPast];
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile afterDate:(id)date
{
  profileCopy = profile;
  dateCopy = date;
  databaseController = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [databaseController removeIgnoredSiriSuggestedSitesInProfile:profileCopy afterDate:dateCopy];
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query
{
  profileCopy = profile;
  queryCopy = query;
  databaseController = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [databaseController removeIgnoredSiriSuggestedSitesInProfile:profileCopy query:queryCopy];
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile visitedURLHost:(id)host completionHandler:(id)handler
{
  profileCopy = profile;
  hostCopy = host;
  handlerCopy = handler;
  databaseController = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [databaseController removeIgnoredSiriSuggestedSitesInProfile:profileCopy visitedURLHost:hostCopy completionHandler:handlerCopy];
}

- (void)removeIgnoredSiriSuggestedSitesWithURLHost:(id)host inProfile:(id)profile
{
  hostCopy = host;
  profileCopy = profile;
  databaseController = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [databaseController removeIgnoredSiriSuggestedSitesWithURLHost:hostCopy inProfile:profileCopy];
}

- (void)getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)profile withQuery:(id)query completionHandler:(id)handler
{
  profileCopy = profile;
  queryCopy = query;
  handlerCopy = handler;
  databaseController = [(WBSIgnoredSiriSuggestedSitesController *)self databaseController];
  [databaseController getIgnoredSiriSuggestedSitesURLStringsInProfile:profileCopy withQuery:queryCopy completionHandler:handlerCopy];
}

- (void)_pruneIgnoredSiriSuggestedSitesIfNeeded
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults doubleForKey:@"WBSDebugIgnoredSiriSuggestedSitesPruningTimeIntervalOverride"];
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