@interface WFFinderImageResizer
- (BOOL)unsafeComputeResizedSizesForImageContentItems:(id)items inSizes:(id)sizes intoSizesTable:(id)table error:(id *)error;
- (WFFinderImageResizer)init;
- (id)resizeImages:(id)images toSize:(id)size completion:(id)completion;
- (void)computeResizedSizesForImages:(id)images inSizes:(id)sizes completion:(id)completion;
@end

@implementation WFFinderImageResizer

- (BOOL)unsafeComputeResizedSizesForImageContentItems:(id)items inSizes:(id)sizes intoSizesTable:(id)table error:(id *)error
{
  itemsCopy = items;
  sizesCopy = sizes;
  tableCopy = table;
  if (itemsCopy)
  {
    if (sizesCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFinderImageResizer.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"sizes"}];

    if (tableCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFFinderImageResizer.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"items"}];

  if (!sizesCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (tableCopy)
  {
    goto LABEL_4;
  }

LABEL_15:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFFinderImageResizer.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"sizesTable"}];

LABEL_4:
  v14 = [itemsCopy count];
  v15 = [sizesCopy count] * v14;
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
  if ([itemsCopy count])
  {
    v18 = 0;
    do
    {
      if ([sizesCopy count])
      {
        v19 = 0;
        do
        {
          v20 = [itemsCopy objectAtIndexedSubscript:v18];
          [v16 addObject:v20];

          v21 = [sizesCopy objectAtIndexedSubscript:v19];
          [v17 addObject:v21];

          ++v19;
        }

        while (v19 < [sizesCopy count]);
      }

      ++v18;
    }

    while (v18 < [itemsCopy count]);
  }

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2810000000;
  v41[3] = &unk_1CAA79C87;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__57306;
  v39 = __Block_byref_object_dispose__57307;
  v40 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__WFFinderImageResizer_unsafeComputeResizedSizesForImageContentItems_inSizes_intoSizesTable_error___block_invoke;
  block[3] = &unk_1E837C348;
  v33 = v41;
  v34 = &v35;
  v22 = v16;
  v30 = v22;
  v23 = v17;
  v31 = v23;
  v24 = tableCopy;
  v32 = v24;
  dispatch_apply(v15, 0, block);
  if (error)
  {
    *error = v36[5];
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v41, 8);

  return error != 0;
}

void __99__WFFinderImageResizer_unsafeComputeResizedSizesForImageContentItems_inSizes_intoSizesTable_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
  v4 = *(*(*(a1 + 64) + 8) + 40);
  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  if (!v4)
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    v6 = [*(a1 + 40) objectAtIndexedSubscript:a2];
    v7 = getWFActionsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v19 = "[WFFinderImageResizer unsafeComputeResizedSizesForImageContentItems:inSizes:intoSizesTable:error:]_block_invoke";
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Starting resizing image %@ (descriptor: %@) for size estimation...", buf, 0x20u);
    }

    v17 = 0;
    v8 = WFConvertImage(v5, v6, &v17);
    v9 = v17;
    v10 = v17;
    os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
    v11 = getWFActionsLogObject();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = [v8 fileSize];
        *buf = 136315906;
        v19 = "[WFFinderImageResizer unsafeComputeResizedSizesForImageContentItems:inSizes:intoSizesTable:error:]_block_invoke";
        v20 = 2112;
        v21 = v5;
        v22 = 2112;
        v23 = v6;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Computed size for %@ (descriptor: %@): %lld", buf, 0x2Au);
      }

      v14 = [*(a1 + 48) objectForKeyedSubscript:v6];
      if (!v14)
      {
        v14 = objc_opt_new();
        [*(a1 + 48) setObject:v14 forKeyedSubscript:v6];
      }

      v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "fileSize")}];
      [v14 addObject:v15];

      os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v19 = "[WFFinderImageResizer unsafeComputeResizedSizesForImageContentItems:inSizes:intoSizesTable:error:]_block_invoke";
        v20 = 2112;
        v21 = v5;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Error updating file sizes for image %@, descriptor: %@", buf, 0x20u);
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v9);
      os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)resizeImages:(id)images toSize:(id)size completion:(id)completion
{
  imagesCopy = images;
  sizeCopy = size;
  completionCopy = completion;
  if (imagesCopy)
  {
    if (sizeCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFinderImageResizer.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"size"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFFinderImageResizer.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFFinderImageResizer.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"imageCollection"}];

  if (!sizeCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!completionCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(imagesCopy, "numberOfItems")}];
  queue = [(WFFinderImageResizer *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WFFinderImageResizer_resizeImages_toSize_completion___block_invoke;
  block[3] = &unk_1E837F510;
  v28 = completionCopy;
  v25 = imagesCopy;
  v26 = sizeCopy;
  v14 = v12;
  v27 = v14;
  v15 = sizeCopy;
  v16 = completionCopy;
  v17 = imagesCopy;
  dispatch_async(queue, block);

  v18 = v27;
  v19 = v14;

  return v14;
}

void __55__WFFinderImageResizer_resizeImages_toSize_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__WFFinderImageResizer_resizeImages_toSize_completion___block_invoke_2;
  v4[3] = &unk_1E837FF18;
  v7 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 generateCollectionByCoercingToItemClass:v3 completionHandler:v4];
}

void __55__WFFinderImageResizer_resizeImages_toSize_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__WFFinderImageResizer_resizeImages_toSize_completion___block_invoke_3;
    v6[3] = &unk_1E837C320;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [a2 transformItemsUsingBlock:v6 completionHandler:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __55__WFFinderImageResizer_resizeImages_toSize_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v9 = 0;
  v6 = a3;
  v7 = WFConvertImage(a2, v5, &v9);
  v8 = v9;
  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
  v6[2](v6, v7, v8);
}

- (void)computeResizedSizesForImages:(id)images inSizes:(id)sizes completion:(id)completion
{
  imagesCopy = images;
  sizesCopy = sizes;
  completionCopy = completion;
  if (imagesCopy)
  {
    if (sizesCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFinderImageResizer.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"sizes"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFFinderImageResizer.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFFinderImageResizer.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"imageCollection"}];

  if (!sizesCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!completionCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = [sizesCopy count] > 1;
  queue = [(WFFinderImageResizer *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WFFinderImageResizer_computeResizedSizesForImages_inSizes_completion___block_invoke;
  block[3] = &unk_1E837C2F8;
  v21 = imagesCopy;
  selfCopy = self;
  v23 = sizesCopy;
  v24 = completionCopy;
  v25 = v12;
  v14 = sizesCopy;
  v15 = completionCopy;
  v16 = imagesCopy;
  dispatch_async(queue, block);
}

void __72__WFFinderImageResizer_computeResizedSizesForImages_inSizes_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__WFFinderImageResizer_computeResizedSizesForImages_inSizes_completion___block_invoke_2;
  v7[3] = &unk_1E837C2D0;
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v7[4] = v5;
  v8 = v6;
  v10 = *(a1 + 64);
  [v2 generateCollectionByCoercingToItemClass:v3 completionHandler:v7];
}

void __72__WFFinderImageResizer_computeResizedSizesForImages_inSizes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [a2 items];
    v4 = objc_opt_new();
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) firstObject];
    v22[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v21 = 0;
    v8 = [v5 unsafeComputeResizedSizesForImageContentItems:v3 inSizes:v7 intoSizesTable:v4 error:&v21];
    v9 = v21;

    if (v8)
    {
      if (*(a1 + 56) == 1)
      {
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) subarrayWithRange:{1, objc_msgSend(*(a1 + 40), "count") - 1}];
        v20 = v9;
        v12 = [v10 unsafeComputeResizedSizesForImageContentItems:v3 inSizes:v11 intoSizesTable:v4 error:&v20];
        v13 = v20;

        if ((v12 & 1) == 0)
        {
          (*(*(a1 + 48) + 16))();
          v9 = v13;
          goto LABEL_11;
        }

        v9 = v13;
      }

      v14 = *(a1 + 48);
      v15 = [v4 copy];
      (*(v14 + 16))(v14, v15, 0);
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

LABEL_11:

    v19 = *MEMORY[0x1E69E9840];
    return;
  }

  v16 = *(a1 + 48);
  v17 = *(*(a1 + 48) + 16);
  v18 = *MEMORY[0x1E69E9840];

  v17();
}

- (WFFinderImageResizer)init
{
  v10.receiver = self;
  v10.super_class = WFFinderImageResizer;
  v2 = [(WFFinderImageResizer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_get_global_queue(0, 0);
    v6 = dispatch_queue_create_with_target_V2("com.apple.shortcuts.WFFinderImageResizer", v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = v2;
  }

  return v2;
}

@end