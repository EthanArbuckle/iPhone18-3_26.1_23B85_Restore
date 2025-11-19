@interface QLDiskCacheQueryOperation
- (BOOL)appendThumbnailRequest:(id)a3;
- (QLDiskCacheQueryOperation)initWithCacheThread:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)main;
@end

@implementation QLDiskCacheQueryOperation

- (void)dealloc
{
  v2 = self;
  objc_sync_enter(v2);
  queue = v2->_queue;
  v2->_queue = 0;

  objc_sync_exit(v2);
  v4.receiver = v2;
  v4.super_class = QLDiskCacheQueryOperation;
  [(QLDiskCacheQueryOperation *)&v4 dealloc];
}

- (void)main
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v2 = self;
  objc_sync_enter(v2);
  queue = v2->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__QLDiskCacheQueryOperation_main__block_invoke;
    block[3] = &unk_279ADD578;
    block[4] = v2;
    block[5] = &v21;
    dispatch_sync(queue, block);
  }

  objc_sync_exit(v2);

  if (v22[5])
  {
    v4 = [(_QLCacheThread *)v2->_cacheThread diskCache];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __33__QLDiskCacheQueryOperation_main__block_invoke_2;
    v19[3] = &unk_279ADD5C8;
    v19[4] = v2;
    v19[5] = &v21;
    v5 = [v4 doReading:v19];

    if ((v5 & 1) == 0)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [v22[5] allValues];
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v27 count:16];
      if (v7)
      {
        v8 = 0;
        v9 = *v16;
        do
        {
          v10 = 0;
          v11 = v8;
          do
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v8 = *(*(&v15 + 1) + 8 * v10);

            [(_QLCacheThread *)v2->_cacheThread _dispatchThumbnailRequestInServerThread:v8];
            ++v10;
            v11 = v8;
          }

          while (v7 != v10);
          v7 = [v6 countByEnumeratingWithState:&v15 objects:v27 count:16];
        }

        while (v7);
      }
    }
  }

  v12 = [(_QLCacheThread *)v2->_cacheThread serverThread];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __33__QLDiskCacheQueryOperation_main__block_invoke_25;
  v14[3] = &unk_279ADD0F8;
  v14[4] = v2;
  [v12 perform:v14];

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __33__QLDiskCacheQueryOperation_main__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailRequestBatch];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setThumbnailRequestBatch:0];
}

void __33__QLDiskCacheQueryOperation_main__block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cacheThread];
  v3 = [v2 diskCache];
  v4 = [v3 enumeratorForThumbnailRequests:*(*(*(a1 + 40) + 8) + 40)];

  v27 = 0;
  v5 = [v4 nextThumbnailRequestWithThumbnailData:&v27];
  v6 = v27;
  v8 = v6;
  if (v5)
  {
    v9 = MEMORY[0x277CDAB78];
    *&v7 = 138412546;
    v25 = v7;
    do
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v10 = [v5 activity];
      os_activity_scope_enter(v10, &state);

      [v5 setDidCheckCache:1];
      if ([v5 cancelled])
      {
        v11 = [*(a1 + 32) cacheThread];
        [v11 _thumbnailHasBeenCancelled:v5];
      }

      else if (v8)
      {
        v12 = *(v9 + 16);
        if (!v12)
        {
          QLTInitLogging();
          v12 = *(v9 + 16);
        }

        v13 = v12;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v5 request];
          v15 = [v5 request];
          v16 = [v15 fileIdentifier];
          *buf = v25;
          v29 = v14;
          v30 = 2112;
          v31 = v16;
          _os_log_impl(&dword_2615D3000, v13, OS_LOG_TYPE_INFO, "Thumbnail found in disk cache for request:%@ fi: %@", buf, 0x16u);
        }

        v11 = [*(a1 + 32) cacheThread];
        [v11 _sendThumbnailData:v8 forThumbnailRequest:v5];
      }

      else
      {
        v17 = *(v9 + 16);
        if (!v17)
        {
          QLTInitLogging();
          v17 = *(v9 + 16);
        }

        v18 = v17;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [v5 request];
          v20 = [v5 request];
          v21 = [v20 fileIdentifier];
          *buf = v25;
          v29 = v19;
          v30 = 2112;
          v31 = v21;
          _os_log_impl(&dword_2615D3000, v18, OS_LOG_TYPE_INFO, "No thumbnail found in disk cache for request: %@ fi: %@", buf, 0x16u);
        }

        v11 = [*(a1 + 32) cacheThread];
        [v11 _dispatchThumbnailRequestInServerThread:v5];
      }

      os_activity_scope_leave(&state);
      v27 = v8;
      v22 = [v4 nextThumbnailRequestWithThumbnailData:&v27];
      v23 = v27;

      v8 = v23;
      v5 = v22;
    }

    while (v22);
  }

  else
  {
    v23 = v6;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (QLDiskCacheQueryOperation)initWithCacheThread:(id)a3
{
  v5 = a3;
  v6 = [(QLDiskCacheQueryOperation *)self init];
  if (v6)
  {
    v7 = dispatch_queue_create("quicklookd.memoreycacheoperation", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:20];
    thumbnailRequestBatch = v6->_thumbnailRequestBatch;
    v6->_thumbnailRequestBatch = v9;

    v6->_thumbnailRequestCount = 0;
    objc_storeStrong(&v6->_cacheThread, a3);
  }

  return v6;
}

- (BOOL)appendThumbnailRequest:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = self;
  objc_sync_enter(v5);
  queue = v5->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__QLDiskCacheQueryOperation_appendThumbnailRequest___block_invoke;
    block[3] = &unk_279ADD5A0;
    block[4] = v5;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(queue, block);
  }

  objc_sync_exit(v5);

  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__QLDiskCacheQueryOperation_appendThumbnailRequest___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isReady])
  {
    v2 = [*(a1 + 32) thumbnailRequestBatch];
    if (v2)
    {
      v3 = v2;
      v4 = [*(a1 + 32) thumbnailRequestCount];

      if (v4 <= 19)
      {
        v5 = [*(a1 + 40) request];
        v6 = [v5 fileIdentifier];
        v7 = [v6 fileIdentifier];

        if (v7)
        {
          v8 = [*(a1 + 32) thumbnailRequestBatch];
          v9 = [v8 objectForKeyedSubscript:v7];

          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v10 = [*(a1 + 32) thumbnailRequestBatch];
            [v10 setObject:v9 forKeyedSubscript:v7];
          }

          [v9 addObject:*(a1 + 40)];
          [*(a1 + 32) setThumbnailRequestCount:{objc_msgSend(*(a1 + 32), "thumbnailRequestCount") + 1}];
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        else
        {
          v11 = MEMORY[0x277CDAB78];
          v12 = *(MEMORY[0x277CDAB78] + 16);
          if (!v12)
          {
            QLTInitLogging();
            v12 = *(v11 + 16);
          }

          if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            goto LABEL_13;
          }

          v13 = *(a1 + 40);
          v9 = v12;
          v14 = [v13 request];
          v16 = 138412290;
          v17 = v14;
          _os_log_impl(&dword_2615D3000, v9, OS_LOG_TYPE_INFO, "could not get pathID for %@", &v16, 0xCu);
        }

LABEL_13:
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v41 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__1;
  v36 = 0;
  v2 = self;
  objc_sync_enter(v2);
  queue = v2->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__QLDiskCacheQueryOperation_cancel__block_invoke;
    block[3] = &unk_279ADD578;
    block[4] = v2;
    block[5] = &v31;
    dispatch_sync(queue, block);
  }

  objc_sync_exit(v2);

  if (v32[5])
  {
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v26 = 0u;
    obj = [v32[5] allValues];
    v18 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (v18)
    {
      v17 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v5 = v4;
          v6 = [v5 countByEnumeratingWithState:&v22 objects:v39 count:16];
          if (v6)
          {
            v7 = *v23;
            do
            {
              v8 = 0;
              do
              {
                if (*v23 != v7)
                {
                  objc_enumerationMutation(v5);
                }

                v9 = *(*(&v22 + 1) + 8 * v8);
                v10 = *(MEMORY[0x277CDAB78] + 16);
                if (!v10)
                {
                  QLTInitLogging();
                  v10 = *(MEMORY[0x277CDAB78] + 16);
                }

                v11 = v10;
                if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
                {
                  v12 = [v9 request];
                  v13 = [v12 fileIdentifier];
                  *buf = 138412290;
                  v38 = v13;
                  _os_log_impl(&dword_2615D3000, v11, OS_LOG_TYPE_INFO, "Disk cache request cancel, sending the thumbnail request to the server thread (%@)", buf, 0xCu);
                }

                [(_QLCacheThread *)v2->_cacheThread _dispatchThumbnailRequestInServerThread:v9];
                ++v8;
              }

              while (v6 != v8);
              v6 = [v5 countByEnumeratingWithState:&v22 objects:v39 count:16];
            }

            while (v6);
          }
        }

        v18 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
      }

      while (v18);
    }
  }

  v21.receiver = v2;
  v21.super_class = QLDiskCacheQueryOperation;
  [(QLDiskCacheQueryOperation *)&v21 cancel];
  v14 = [(_QLCacheThread *)v2->_cacheThread serverThread];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __35__QLDiskCacheQueryOperation_cancel__block_invoke_26;
  v20[3] = &unk_279ADD0F8;
  v20[4] = v2;
  [v14 perform:v20];

  _Block_object_dispose(&v31, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __35__QLDiskCacheQueryOperation_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailRequestBatch];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setThumbnailRequestBatch:0];
}

@end