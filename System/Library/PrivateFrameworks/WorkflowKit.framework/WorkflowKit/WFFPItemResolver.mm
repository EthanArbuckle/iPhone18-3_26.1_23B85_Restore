@interface WFFPItemResolver
- (WFFPItemResolver)initWithDomainID:(id)a3 relativeSubpath:(id)a4 completionHandler:(id)a5;
- (void)collectionDidFinishGathering:(id)a3;
- (void)determineNextItemIfPossible;
- (void)startObservingFolderItemCollection:(id)a3;
@end

@implementation WFFPItemResolver

- (void)startObservingFolderItemCollection:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFFilesLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[WFFPItemResolver startObservingFolderItemCollection:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Observing new item: %@", buf, 0x16u);
  }

  v6 = [(WFFPItemResolver *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__WFFPItemResolver_startObservingFolderItemCollection___block_invoke;
  v9[3] = &unk_1E837F870;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __55__WFFPItemResolver_startObservingFolderItemCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collection];
  v3 = [v2 observing];

  if (v3)
  {
    v4 = [*(a1 + 32) collection];
    [v4 stopObserving];
  }

  v5 = [MEMORY[0x1E69673B0] defaultManager];
  v6 = [v5 collectionForFolderItem:*(a1 + 40)];
  [*(a1 + 32) setCollection:v6];

  v7 = *(a1 + 32);
  v8 = [v7 collection];
  [v8 setDelegate:v7];

  v9 = [*(a1 + 32) queue];
  v10 = [*(a1 + 32) collection];
  [v10 setWorkingQueue:v9];

  v11 = [*(a1 + 32) collection];
  [v11 startObserving];
}

- (void)determineNextItemIfPossible
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = getWFFilesLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(WFFPItemResolver *)self mutableComponents];
    *buf = 136315394;
    v21 = "[WFFPItemResolver determineNextItemIfPossible]";
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s Determining next item with mutable components: %@", buf, 0x16u);
  }

  v5 = [(WFFPItemResolver *)self mutableComponents];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(WFFPItemResolver *)self mutableComponents];
    v8 = [v7 firstObject];

    v9 = [(WFFPItemResolver *)self mutableComponents];
    [v9 removeObjectAtIndex:0];

    v10 = [(WFFPItemResolver *)self mutableComponents];
    v11 = [v10 count];

    v12 = [(WFFPItemResolver *)self collection];
    v13 = [v12 items];
    if (v11)
    {
      v14 = v18;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v15 = __47__WFFPItemResolver_determineNextItemIfPossible__block_invoke_2;
    }

    else
    {
      v14 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v15 = __47__WFFPItemResolver_determineNextItemIfPossible__block_invoke;
    }

    v14[2] = v15;
    v14[3] = &unk_1E83764B0;
    v14[4] = v8;
    v14[5] = self;
    v16 = v8;
    [v13 enumerateObjectsUsingBlock:v14];
  }

  else
  {
    v16 = [(WFFPItemResolver *)self completionHandler];
    (*(v16 + 2))(v16, 0, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __47__WFFPItemResolver_determineNextItemIfPossible__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 filename];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = [*(a1 + 40) completionHandler];
    (v8)[2](v8, v9, 0);

    *a4 = 1;
  }
}

void __47__WFFPItemResolver_determineNextItemIfPossible__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 filename];
  if ([v6 isEqualToString:*(a1 + 32)])
  {
    v7 = [v8 isFolder];

    if (v7)
    {
      [*(a1 + 40) startObservingFolderItemCollection:v8];
      *a4 = 1;
    }
  }

  else
  {
  }
}

- (void)collectionDidFinishGathering:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFFilesLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 items];
    v8 = 136315394;
    v9 = "[WFFPItemResolver collectionDidFinishGathering:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Collection Finished gathering with items: %@", &v8, 0x16u);
  }

  [(WFFPItemResolver *)self determineNextItemIfPossible];
  v7 = *MEMORY[0x1E69E9840];
}

- (WFFPItemResolver)initWithDomainID:(id)a3 relativeSubpath:(id)a4 completionHandler:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"WFFPItemResolver.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"domainID"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v32 = [MEMORY[0x1E696AAA8] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"WFFPItemResolver.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"relativeSubpath"}];

LABEL_3:
  v12 = [(WFFPItemResolver *)self init];
  if (v12)
  {
    v37 = 0;
    v13 = [MEMORY[0x1E69673E8] providerDomainWithID:v9 error:&v37];
    v14 = v37;
    if (v13)
    {
      v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INITIATED, 0);

      v17 = dispatch_queue_create("com.apple.shortcuts.WFFPItemResolver", v16);
      queue = v12->_queue;
      v12->_queue = v17;

      v19 = [v10 componentsSeparatedByString:@"/"];
      v20 = [v19 mutableCopy];

      v21 = [v11 copy];
      completionHandler = v12->_completionHandler;
      v12->_completionHandler = v21;

      if (([v10 isEqualToString:@"/"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", &stru_1F4A1C408) & 1) != 0 || objc_msgSend(v20, "count") == 1)
      {
        v23 = [MEMORY[0x1E69673B0] defaultManager];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __71__WFFPItemResolver_initWithDomainID_relativeSubpath_completionHandler___block_invoke;
        v35[3] = &unk_1E8376488;
        v24 = &v36;
        v36 = v12;
        [v23 fetchRootItemForProviderDomain:v13 completionHandler:v35];
      }

      else
      {
        [v20 removeObjectAtIndex:0];
        objc_storeStrong(&v12->_mutableComponents, v20);
        v28 = [MEMORY[0x1E69673B0] defaultManager];
        v29 = [v28 rootCollectionForProviderDomain:v13];
        collection = v12->_collection;
        v12->_collection = v29;

        [(FPItemCollection *)v12->_collection setDelegate:v12];
        [(FPItemCollection *)v12->_collection setWorkingQueue:v12->_queue];
        v23 = [(WFFPItemResolver *)v12 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__WFFPItemResolver_initWithDomainID_relativeSubpath_completionHandler___block_invoke_2;
        block[3] = &unk_1E837FA70;
        v24 = &v34;
        v34 = v12;
        dispatch_async(v23, block);
      }

      v25 = v12;
    }

    else
    {
      v16 = getWFFilesLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "[WFFPItemResolver initWithDomainID:relativeSubpath:completionHandler:]";
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Could not get provider domain with error: %@", buf, 0x16u);
      }

      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

void __71__WFFPItemResolver_initWithDomainID_relativeSubpath_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 completionHandler];
  v7[2](v7, v6, v5);
}

@end