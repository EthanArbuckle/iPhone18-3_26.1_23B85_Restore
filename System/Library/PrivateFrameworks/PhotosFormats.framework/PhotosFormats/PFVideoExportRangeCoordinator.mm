@interface PFVideoExportRangeCoordinator
- (BOOL)waitForAvailabilityOfRange:(_NSRange)a3 timeout:(unint64_t)a4 error:(id *)a5;
- (PFVideoExportRangeCoordinator)init;
- (_NSRange)availableRange;
- (void)cancel;
- (void)updateAvailableRange:(_NSRange)a3;
@end

@implementation PFVideoExportRangeCoordinator

- (_NSRange)availableRange
{
  objc_copyStruct(v4, &self->_availableRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)cancel
{
  rangeCoordinatorStateQueue = self->_rangeCoordinatorStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PFVideoExportRangeCoordinator_cancel__block_invoke;
  block[3] = &unk_1E7B66D20;
  block[4] = self;
  dispatch_sync(rangeCoordinatorStateQueue, block);
}

uint64_t __39__PFVideoExportRangeCoordinator_cancel__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) enumerateObjectsUsingBlock:&__block_literal_global_12183];
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 setCancelled:1];
}

void __39__PFVideoExportRangeCoordinator_cancel__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setCancelled:1];
  [v2 resume];
}

- (BOOL)waitForAvailabilityOfRange:(_NSRange)a3 timeout:(unint64_t)a4 error:(id *)a5
{
  length = a3.length;
  location = a3.location;
  v46 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__12186;
  v38 = __Block_byref_object_dispose__12187;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  rangeCoordinatorStateQueue = self->_rangeCoordinatorStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PFVideoExportRangeCoordinator_waitForAvailabilityOfRange_timeout_error___block_invoke;
  block[3] = &unk_1E7B66748;
  v29 = a3;
  block[4] = self;
  block[5] = &v30;
  block[6] = &v34;
  dispatch_sync(rangeCoordinatorStateQueue, block);
  if (*(v31 + 24) == 1)
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v47.location = location;
      v47.length = length;
      v23 = NSStringFromRange(v47);
      *buf = 138543362;
      v41 = v23;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Request for range %{public}@ rejected in cancelled state", buf, 0xCu);
    }

    if (a5)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFVideoExportErrorDomain" code:5 userInfo:0];
LABEL_21:
      v21 = 0;
      *a5 = v13;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v35[5])
  {
    v14 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    [v35[5] waitWithTimeout:a4];
    v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v16 = self->_rangeCoordinatorStateQueue;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __74__PFVideoExportRangeCoordinator_waitForAvailabilityOfRange_timeout_error___block_invoke_235;
    v27[3] = &unk_1E7B66DC0;
    v27[4] = self;
    v27[5] = &v34;
    dispatch_sync(v16, v27);
    if ([v35[5] cancelled])
    {
      v17 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v48.location = location;
        v48.length = length;
        v24 = NSStringFromRange(v48);
        *buf = 138543618;
        v41 = v24;
        v42 = 2048;
        *&v43 = (v15 - v14) / 1000000000.0;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Request for range %{public}@ cancelled after %.3fs", buf, 0x16u);
      }

      if (a5)
      {
        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFVideoExportErrorDomain" code:5 userInfo:0];
        goto LABEL_21;
      }

LABEL_22:
      v21 = 0;
      goto LABEL_23;
    }

    v19 = [v35[5] requestedRangeIsAvailable];
    v20 = MEMORY[0x1E69E9C10];
    if ((v19 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v50.location = location;
        v50.length = length;
        v26 = NSStringFromRange(v50);
        *buf = 138543874;
        v41 = v26;
        v42 = 2048;
        v43 = location + length;
        v44 = 2048;
        v45 = (v15 - v14) / 1000000000.0;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Video export range coordinator: request for range %{public}@ (= file size %lu) timed out after %.3fs", buf, 0x20u);
      }

      if (a5)
      {
        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFVideoExportErrorDomain" code:4 userInfo:0];
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v49.location = location;
      v49.length = length;
      v25 = NSStringFromRange(v49);
      *buf = 138543618;
      v41 = v25;
      v42 = 2048;
      *&v43 = (v15 - v14) / 1000000000.0;
      _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Video export range coordinator: request for range %{public}@ unblocked after %.3fs, range available", buf, 0x16u);
    }
  }

  v21 = 1;
LABEL_23:
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v21;
}

uint64_t __74__PFVideoExportRangeCoordinator_waitForAvailabilityOfRange_timeout_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = NSIntersectionRange(*(a1 + 56), *(*(a1 + 32) + 32));
  result = [*(a1 + 32) cancelled];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    if (v4 != v2.location || v5 != v2.length)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v20.location = v4;
        v20.length = v5;
        v10 = NSStringFromRange(v20);
        v11 = NSStringFromRange(*(*(a1 + 32) + 32));
        v12 = NSStringFromRange(v2);
        v13 = 138543874;
        v14 = v10;
        v15 = 2114;
        v16 = v11;
        v17 = 2114;
        v18 = v12;
        _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Video export range coordinator range unavailable: requested range %{public}@, available range %{public}@, intersection %{public}@", &v13, 0x20u);

        v4 = *(a1 + 56);
        v5 = *(a1 + 64);
      }

      v7 = [PFVideoExportRangeWaitingCaller waitingCallerWithRequestedRange:v4, v5];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      return [*(*(a1 + 32) + 16) addObject:*(*(*(a1 + 48) + 8) + 40)];
    }
  }

  return result;
}

uint64_t __74__PFVideoExportRangeCoordinator_waitForAvailabilityOfRange_timeout_error___block_invoke_235(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) containsObject:*(*(*(a1 + 40) + 8) + 40)];
  if (result)
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = *(*(*(a1 + 40) + 8) + 40);

    return [v3 removeObject:v4];
  }

  return result;
}

- (void)updateAvailableRange:(_NSRange)a3
{
  rangeCoordinatorStateQueue = self->_rangeCoordinatorStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PFVideoExportRangeCoordinator_updateAvailableRange___block_invoke;
  block[3] = &unk_1E7B66720;
  block[4] = self;
  v5 = a3;
  dispatch_sync(rangeCoordinatorStateQueue, block);
}

void __54__PFVideoExportRangeCoordinator_updateAvailableRange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAvailableRange:{*(a1 + 40), *(a1 + 48)}];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12186;
  v9 = __Block_byref_object_dispose__12187;
  v10 = 0;
  v2 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__PFVideoExportRangeCoordinator_updateAvailableRange___block_invoke_229;
  v3[3] = &unk_1E7B666F8;
  v4 = *(a1 + 40);
  v3[4] = &v5;
  [v2 enumerateObjectsUsingBlock:v3];
  if (v6[5])
  {
    [*(*(a1 + 32) + 16) removeObjectsAtIndexes:?];
  }

  _Block_object_dispose(&v5, 8);
}

void __54__PFVideoExportRangeCoordinator_updateAvailableRange___block_invoke_229(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([v5 canResumeForRange:{*(a1 + 40), *(a1 + 48)}])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    if (v7)
    {
      v8 = v7;
      v9 = *(v6 + 40);
      *(v6 + 40) = v8;
    }

    else
    {
      v10 = [MEMORY[0x1E696AD50] indexSet];
      v11 = *(*(a1 + 32) + 8);
      v9 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    [*(*(*(a1 + 32) + 8) + 40) addIndex:a3];
    [v5 setRequestedRangeIsAvailable:1];
    [v5 resume];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromRange(*(a1 + 40));
      v13 = *(a1 + 48) + *(a1 + 40);
      v14 = 138543874;
      v15 = v12;
      v16 = 2048;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Range coordinator added range %{public}@ (= file size %lu bytes), unblocked waiting caller %@", &v14, 0x20u);
    }
  }
}

- (PFVideoExportRangeCoordinator)init
{
  v9.receiver = self;
  v9.super_class = PFVideoExportRangeCoordinator;
  v2 = [(PFVideoExportRangeCoordinator *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.pfvideoexport.range-coordinator", v3);
    rangeCoordinatorStateQueue = v2->_rangeCoordinatorStateQueue;
    v2->_rangeCoordinatorStateQueue = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    waitingCallers = v2->_waitingCallers;
    v2->_waitingCallers = v6;

    v2->_availableRange.location = 0;
    v2->_availableRange.length = 0;
  }

  return v2;
}

@end