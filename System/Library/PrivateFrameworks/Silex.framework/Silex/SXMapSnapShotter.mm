@interface SXMapSnapShotter
+ (id)serialQueue;
- (SXMapSnapShotter)init;
- (id)snapShotWithOptions:(id)options annotations:(id)annotations completionBlock:(id)block;
@end

@implementation SXMapSnapShotter

- (SXMapSnapShotter)init
{
  v6.receiver = self;
  v6.super_class = SXMapSnapShotter;
  v2 = [(SXMapSnapShotter *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    snapshotters = v2->_snapshotters;
    v2->_snapshotters = array;
  }

  return v2;
}

- (id)snapShotWithOptions:(id)options annotations:(id)annotations completionBlock:(id)block
{
  v51 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  annotationsCopy = annotations;
  blockCopy = block;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(annotationsCopy, "count")}];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = annotationsCopy;
  v12 = [v11 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v12)
  {
    v13 = *v45;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v44 + 1) + 8 * i);
        v16 = objc_alloc(MEMORY[0x1E696F2A8]);
        [v15 coordinate];
        v18 = v17;
        v20 = v19;
        title = [v15 title];
        v22 = [v16 initWithCoordinate:title title:1 representation:{v18, v20}];

        [v10 addObject:v22];
      }

      v12 = [v11 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v12);
  }

  [optionsCopy _setCustomFeatureAnnotations:v10];
  objc_initWeak(&location, self);
  v23 = [objc_alloc(MEMORY[0x1E696F2B8]) initWithOptions:optionsCopy];
  serialQueue = [objc_opt_class() serialQueue];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __68__SXMapSnapShotter_snapShotWithOptions_annotations_completionBlock___block_invoke;
  v37[3] = &unk_1E84FF918;
  objc_copyWeak(&v42, &location);
  v25 = blockCopy;
  v40 = v25;
  v41 = v48;
  v26 = optionsCopy;
  v38 = v26;
  v27 = v23;
  v39 = v27;
  [v27 startWithQueue:serialQueue completionHandler:v37];

  snapshotters = [(SXMapSnapShotter *)self snapshotters];
  [snapshotters addObject:v27];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __68__SXMapSnapShotter_snapShotWithOptions_annotations_completionBlock___block_invoke_3;
  v33[3] = &unk_1E84FF940;
  objc_copyWeak(&v36, &location);
  v34 = v27;
  v35 = v48;
  v29 = v27;
  v30 = MEMORY[0x1DA716BE0](v33);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);

  _Block_object_dispose(v48, 8);

  return v30;
}

void __68__SXMapSnapShotter_snapShotWithOptions_annotations_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SXMapSnapShotter_snapShotWithOptions_annotations_completionBlock___block_invoke_2;
  block[3] = &unk_1E84FF8F0;
  objc_copyWeak(&v15, (a1 + 64));
  v4 = *(a1 + 48);
  v12 = v3;
  *&v5 = v4;
  *(&v5 + 1) = *(a1 + 56);
  v10 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v14 = v10;
  v13 = v8;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v15);
}

void __68__SXMapSnapShotter_snapShotWithOptions_annotations_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (*(a1 + 56))
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v2 = 0;
    }

    else
    {
      v2 = [*(a1 + 32) image];
    }

    (*(*(a1 + 56) + 16))();
  }

  v3 = [WeakRetained snapshotters];
  [v3 removeObject:*(a1 + 48)];
}

void __68__SXMapSnapShotter_snapShotWithOptions_annotations_completionBlock___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = 1;
  [*(a1 + 32) cancel];
  v2 = [WeakRetained snapshotters];
  [v2 removeObject:*(a1 + 32)];
}

+ (id)serialQueue
{
  if (serialQueue_onceToken != -1)
  {
    +[SXMapSnapShotter serialQueue];
  }

  v3 = serialQueue___serialQueue;

  return v3;
}

void __31__SXMapSnapShotter_serialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.news.maps", v2);
  v1 = serialQueue___serialQueue;
  serialQueue___serialQueue = v0;
}

@end