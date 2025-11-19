@interface VUIDownloadShowDataSource
- (VUIDownloadShowDataSource)initWithMediaEntity:(id)a3;
- (id)fetchRequestForMediaEntity:(id)a3;
- (void)controller:(id)a3 fetchRequests:(id)a4 didCompleteWithResult:(id)a5;
- (void)controller:(id)a3 fetchRequests:(id)a4 didFailWithError:(id)a5;
- (void)dealloc;
- (void)startFetch;
@end

@implementation VUIDownloadShowDataSource

- (VUIDownloadShowDataSource)initWithMediaEntity:(id)a3
{
  v5 = a3;
  v6 = [(VUIDownloadShowDataSource *)self fetchRequestForMediaEntity:v5];
  v9.receiver = self;
  v9.super_class = VUIDownloadShowDataSource;
  v7 = [(VUIMediaEntitiesDataSource *)&v9 initWithFetchRequest:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_showEntity, a3);
  }

  return v7;
}

- (id)fetchRequestForMediaEntity:(id)a3
{
  v3 = [a3 showIdentifier];
  v4 = [VUIMediaEntityFetchRequest episodesGroupedBySeasonIdentifierFetchRequestWithShowIdentifier:v3];

  return v4;
}

- (void)startFetch
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [VUIMediaEntitiesFetchController alloc];
  v4 = [(VUIDownloadShowDataSource *)self showEntity];
  v5 = [v4 mediaLibrary];
  v6 = [(VUIMediaEntitiesDataSource *)self fetchRequest];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [(VUIMediaEntitiesFetchController *)v3 initWithMediaLibrary:v5 fetchRequests:v7];
  fetchController = self->_fetchController;
  self->_fetchController = v8;

  [(VUIMediaEntitiesFetchController *)self->_fetchController setDelegate:self];
  [(VUIMediaLibraryFetchController *)self->_fetchController setLogNameSuffix:@"ShowDownloaded"];
  v10 = +[VUIMediaLibraryManager defaultManager];
  v11 = [v10 aggregateMediaLibrary];
  v12 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:v11];
  [v12 addFetchController:self->_fetchController];
}

- (void)dealloc
{
  if (self->_fetchController)
  {
    v3 = +[VUIMediaLibraryManager defaultManager];
    v4 = [v3 aggregateMediaLibrary];
    v5 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:v4];
    [v5 removeFetchController:self->_fetchController];

    [(VUIMediaEntitiesFetchController *)self->_fetchController setDelegate:0];
  }

  v6.receiver = self;
  v6.super_class = VUIDownloadShowDataSource;
  [(VUIDownloadShowDataSource *)&v6 dealloc];
}

- (void)controller:(id)a3 fetchRequests:(id)a4 didCompleteWithResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 fetchResponses];
  v12 = [v11 firstObject];

  v13 = [v12 grouping];
  v14 = objc_opt_new();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__VUIDownloadShowDataSource_controller_fetchRequests_didCompleteWithResult___block_invoke;
  v23[3] = &unk_1E8736808;
  v15 = v14;
  v24 = v15;
  [v13 enumerateObjectsUsingBlock:v23];
  v16 = [v15 copy];
  [(VUIMediaEntitiesDataSource *)self setGrouping:v16];

  [(VUILibraryDataSource *)self setHasCompletedInitialFetch:1];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v19 = __76__VUIDownloadShowDataSource_controller_fetchRequests_didCompleteWithResult___block_invoke_3;
  v20 = &unk_1E872E4B8;
  objc_copyWeak(&v21, &location);
  v17 = v18;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v19(v17);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v17);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __76__VUIDownloadShowDataSource_controller_fetchRequests_didCompleteWithResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 mediaEntities];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__VUIDownloadShowDataSource_controller_fetchRequests_didCompleteWithResult___block_invoke_2;
  v7[3] = &unk_1E872EDB8;
  v6 = v4;
  v8 = v6;
  [v5 enumerateObjectsUsingBlock:v7];

  if ([v6 count])
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __76__VUIDownloadShowDataSource_controller_fetchRequests_didCompleteWithResult___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 assetController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
    v5 = [v3 state];
    if ([v5 status])
    {
    }

    else
    {
      if ([v4 markedAsDeleted])
      {

        goto LABEL_8;
      }

      v6 = [v4 downloadExpirationDate];

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) addObject:v4];
LABEL_8:
  }
}

void __76__VUIDownloadShowDataSource_controller_fetchRequests_didCompleteWithResult___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 dataSourceDidFinishFetching:WeakRetained];
  }
}

- (void)controller:(id)a3 fetchRequests:(id)a4 didFailWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(VUIMediaEntitiesDataSource *)self setMediaEntities:MEMORY[0x1E695E0F0]];
  [(VUILibraryDataSource *)self setHasCompletedInitialFetch:1];
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __71__VUIDownloadShowDataSource_controller_fetchRequests_didFailWithError___block_invoke;
  v15 = &unk_1E872E4B8;
  objc_copyWeak(&v16, &location);
  v11 = &v12;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v14(v11);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __71__VUIDownloadShowDataSource_controller_fetchRequests_didFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 dataSourceDidFinishFetching:WeakRetained];
  }
}

@end